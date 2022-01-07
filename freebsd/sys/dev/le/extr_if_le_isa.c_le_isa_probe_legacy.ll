; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_probe_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_isa.c_le_isa_probe_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.le_isa_param = type { i32, i32, i32 }
%struct.le_isa_softc = type { i32*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.lance_softc }
%struct.lance_softc = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@LE_CSR0 = common dso_local global i32 0, align 4
@LE_C0_STOP = common dso_local global i64 0, align 8
@LE_CSR3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.le_isa_param*)* @le_isa_probe_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @le_isa_probe_legacy(i32 %0, %struct.le_isa_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.le_isa_param*, align 8
  %6 = alloca %struct.le_isa_softc*, align 8
  %7 = alloca %struct.lance_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.le_isa_param* %1, %struct.le_isa_param** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.le_isa_softc* @device_get_softc(i32 %10)
  store %struct.le_isa_softc* %11, %struct.le_isa_softc** %6, align 8
  %12 = load %struct.le_isa_softc*, %struct.le_isa_softc** %6, align 8
  %13 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.lance_softc* %14, %struct.lance_softc** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SYS_RES_IOPORT, align 4
  %17 = load %struct.le_isa_param*, %struct.le_isa_param** %5, align 8
  %18 = getelementptr inbounds %struct.le_isa_param, %struct.le_isa_param* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @RF_ACTIVE, align 4
  %21 = call i32* @bus_alloc_resource_anywhere(i32 %15, i32 %16, i32* %9, i32 %19, i32 %20)
  %22 = load %struct.le_isa_softc*, %struct.le_isa_softc** %6, align 8
  %23 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %22, i32 0, i32 0
  store i32* %21, i32** %23, align 8
  %24 = load %struct.le_isa_softc*, %struct.le_isa_softc** %6, align 8
  %25 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %3, align 4
  br label %69

30:                                               ; preds = %2
  %31 = load %struct.le_isa_param*, %struct.le_isa_param** %5, align 8
  %32 = getelementptr inbounds %struct.le_isa_param, %struct.le_isa_param* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.le_isa_softc*, %struct.le_isa_softc** %6, align 8
  %35 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.le_isa_param*, %struct.le_isa_param** %5, align 8
  %37 = getelementptr inbounds %struct.le_isa_param, %struct.le_isa_param* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.le_isa_softc*, %struct.le_isa_softc** %6, align 8
  %40 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %42 = load i32, i32* @LE_CSR0, align 4
  %43 = load i64, i64* @LE_C0_STOP, align 8
  %44 = call i32 @le_isa_wrcsr(%struct.lance_softc* %41, i32 %42, i64 %43)
  %45 = call i32 @DELAY(i32 100)
  %46 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %47 = load i32, i32* @LE_CSR0, align 4
  %48 = call i64 @le_isa_rdcsr(%struct.lance_softc* %46, i32 %47)
  %49 = load i64, i64* @LE_C0_STOP, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %30
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %8, align 4
  br label %57

53:                                               ; preds = %30
  %54 = load %struct.lance_softc*, %struct.lance_softc** %7, align 8
  %55 = load i32, i32* @LE_CSR3, align 4
  %56 = call i32 @le_isa_wrcsr(%struct.lance_softc* %54, i32 %55, i64 0)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %53, %51
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SYS_RES_IOPORT, align 4
  %60 = load %struct.le_isa_softc*, %struct.le_isa_softc** %6, align 8
  %61 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @rman_get_rid(i32* %62)
  %64 = load %struct.le_isa_softc*, %struct.le_isa_softc** %6, align 8
  %65 = getelementptr inbounds %struct.le_isa_softc, %struct.le_isa_softc* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = call i32 @bus_release_resource(i32 %58, i32 %59, i32 %63, i32* %66)
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %57, %28
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.le_isa_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_anywhere(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @le_isa_wrcsr(%struct.lance_softc*, i32, i64) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @le_isa_rdcsr(%struct.lance_softc*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
