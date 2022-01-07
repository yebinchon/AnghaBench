; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/etherswitch/rtl8366/extr_rtl8366rb.c_smi_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366rb_softc = type { i64, i32 }

@RTL_WAITOK = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@RTL_SMI_ACQUIRED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@IIC_WAIT = common dso_local global i32 0, align 4
@IIC_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366rb_softc*, i32)* @smi_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smi_acquire(%struct.rtl8366rb_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtl8366rb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rtl8366rb_softc* %0, %struct.rtl8366rb_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @RTL_WAITOK, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %12 = call i32 @RTL_LOCK(%struct.rtl8366rb_softc* %11)
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %15 = call i64 @RTL_TRYLOCK(%struct.rtl8366rb_softc* %14)
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %10
  %21 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %22 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @RTL_SMI_ACQUIRED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %6, align 4
  br label %53

28:                                               ; preds = %20
  %29 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %30 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @device_get_parent(i32 %31)
  %33 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %34 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @RTL_WAITOK, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %28
  %40 = load i32, i32* @IIC_WAIT, align 4
  br label %43

41:                                               ; preds = %28
  %42 = load i32, i32* @IIC_DONTWAIT, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = call i32 @iicbus_request_bus(i32 %32, i32 %35, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* @RTL_SMI_ACQUIRED, align 8
  %50 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %51 = getelementptr inbounds %struct.rtl8366rb_softc, %struct.rtl8366rb_softc* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %43
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.rtl8366rb_softc*, %struct.rtl8366rb_softc** %4, align 8
  %55 = call i32 @RTL_UNLOCK(%struct.rtl8366rb_softc* %54)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @RTL_LOCK(%struct.rtl8366rb_softc*) #1

declare dso_local i64 @RTL_TRYLOCK(%struct.rtl8366rb_softc*) #1

declare dso_local i32 @iicbus_request_bus(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @RTL_UNLOCK(%struct.rtl8366rb_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
