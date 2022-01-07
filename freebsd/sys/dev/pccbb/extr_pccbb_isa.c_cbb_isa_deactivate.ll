; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_isa.c_cbb_isa_deactivate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb_isa.c_cbb_isa_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32*, i32* }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @cbb_isa_deactivate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbb_isa_deactivate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cbb_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.cbb_softc* @device_get_softc(i32 %4)
  store %struct.cbb_softc* %5, %struct.cbb_softc** %3, align 8
  %6 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %7 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SYS_RES_IRQ, align 4
  %13 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %14 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_release_resource(i32 %11, i32 %12, i32 0, i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %19 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %18, i32 0, i32 1
  store i32* null, i32** %19, align 8
  %20 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %21 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %17
  %25 = load i32, i32* %2, align 4
  %26 = load i32, i32* @SYS_RES_IOPORT, align 4
  %27 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %28 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @bus_release_resource(i32 %25, i32 %26, i32 0, i32* %29)
  br label %31

31:                                               ; preds = %24, %17
  %32 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %33 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  ret void
}

declare dso_local %struct.cbb_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
