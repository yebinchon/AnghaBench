; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bfe_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bfe_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quicc_softc = type { i32*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"Quad integrated communications controller\00", align 1
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@QUICC_PRAM_REV_NUM = common dso_local global i32 0, align 4
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicc_bfe_probe(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.quicc_softc*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.quicc_softc* @device_get_softc(i32 %8)
  store %struct.quicc_softc* %9, %struct.quicc_softc** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %12 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @device_get_desc(i32 %13)
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @device_set_desc(i32 %17, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %2
  %20 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %21 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i32, i32* @SYS_RES_MEMORY, align 4
  %23 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %24 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %27 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %30 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %29, i32 0, i32 1
  %31 = load i32, i32* @RF_ACTIVE, align 4
  %32 = call i8* @bus_alloc_resource_any(i32 %25, i32 %28, i64* %30, i32 %31)
  %33 = bitcast i8* %32 to i32*
  %34 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %35 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %34, i32 0, i32 0
  store i32* %33, i32** %35, align 8
  %36 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %37 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %64

40:                                               ; preds = %19
  %41 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %42 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* @SYS_RES_IOPORT, align 4
  %44 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %45 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %48 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %51 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %50, i32 0, i32 1
  %52 = load i32, i32* @RF_ACTIVE, align 4
  %53 = call i8* @bus_alloc_resource_any(i32 %46, i32 %49, i64* %51, i32 %52)
  %54 = bitcast i8* %53 to i32*
  %55 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %56 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  %57 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %58 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %40
  %62 = load i32, i32* @ENXIO, align 4
  store i32 %62, i32* %3, align 4
  br label %92

63:                                               ; preds = %40
  br label %64

64:                                               ; preds = %63, %19
  %65 = load i32, i32* %5, align 4
  %66 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %67 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %69 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* @QUICC_PRAM_REV_NUM, align 4
  %72 = call i32 @quicc_read2(i32* %70, i32 %71)
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %4, align 4
  %74 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %75 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %78 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.quicc_softc*, %struct.quicc_softc** %6, align 8
  %81 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %80, i32 0, i32 0
  %82 = load i32*, i32** %81, align 8
  %83 = call i32 @bus_release_resource(i32 %73, i32 %76, i64 %79, i32* %82)
  %84 = load i32, i32* %7, align 4
  %85 = icmp eq i32 %84, 232
  br i1 %85, label %86, label %88

86:                                               ; preds = %64
  %87 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  br label %90

88:                                               ; preds = %64
  %89 = load i32, i32* @ENXIO, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %61
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.quicc_softc* @device_get_softc(i32) #1

declare dso_local i32* @device_get_desc(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @quicc_read2(i32*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
