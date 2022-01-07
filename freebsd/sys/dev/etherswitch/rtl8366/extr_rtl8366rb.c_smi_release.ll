; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i64, i32 }

@RTL_WAITOK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366rb_softc*, i32)* @smi_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_release(%struct.rtl8366rb_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8366rb_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.rtl8366rb_softc* %0, %struct.rtl8366rb_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @RTL_WAITOK, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %11 = call i32 @RTL_LOCK(%struct.rtl8366rb_softc* %10)
  br label %19

12:                                               ; preds = %2
  %13 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %14 = call i64 @RTL_TRYLOCK(%struct.rtl8366rb_softc* %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %17, i32* %3, align 4
  br label %34

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %18, %9
  %20 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %21 = call i32 @RTL_SMI_ACQUIRED_ASSERT(%struct.rtl8366rb_softc* %20)
  %22 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %23 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_get_parent(i32 %24)
  %26 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %27 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @iicbus_release_bus(i32 %25, i32 %28)
  %30 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %31 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %33 = call i32 @RTL_UNLOCK(%struct.rtl8366rb_softc* %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %19, %16
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @RTL_LOCK(%struct.rtl8366rb_softc*) #1

declare dso_local i64 @RTL_TRYLOCK(%struct.rtl8366rb_softc*) #1

declare dso_local i32 @RTL_SMI_ACQUIRED_ASSERT(%struct.rtl8366rb_softc*) #1

declare dso_local i32 @iicbus_release_bus(i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @RTL_UNLOCK(%struct.rtl8366rb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
