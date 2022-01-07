; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.quicc_device = type { i8*, i32* }
%struct.quicc_softc = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@INTR_TYPE_TTY = common dso_local global i32 0, align 4
@quicc_bfe_intr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicc_bus_setup_intr(i64 %0, i64 %1, %struct.resource* %2, i32 %3, i32* %4, void (i8*)* %5, i8* %6, i8** %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca void (i8*)*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8**, align 8
  %18 = alloca %struct.quicc_device*, align 8
  %19 = alloca %struct.quicc_softc*, align 8
  store i64 %0, i64* %10, align 8
  store i64 %1, i64* %11, align 8
  store %struct.resource* %2, %struct.resource** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store void (i8*)* %5, void (i8*)** %15, align 8
  store i8* %6, i8** %16, align 8
  store i8** %7, i8*** %17, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i64 @device_get_parent(i64 %20)
  %22 = load i64, i64* %10, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %8
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %9, align 4
  br label %97

26:                                               ; preds = %8
  %27 = load i32*, i32** %14, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @INTR_MPSAFE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %9, align 4
  br label %97

36:                                               ; preds = %29, %26
  %37 = load i64, i64* %10, align 8
  %38 = call %struct.quicc_softc* @device_get_softc(i64 %37)
  store %struct.quicc_softc* %38, %struct.quicc_softc** %19, align 8
  %39 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %40 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %9, align 4
  br label %97

45:                                               ; preds = %36
  %46 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %47 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %45
  %51 = load i32*, i32** %14, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %77

53:                                               ; preds = %50
  %54 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %55 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %58 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %61 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @bus_teardown_intr(i64 %56, i32 %59, i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %66 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @INTR_TYPE_TTY, align 4
  %69 = load i32, i32* @INTR_MPSAFE, align 4
  %70 = or i32 %68, %69
  %71 = load i64, i64* @quicc_bfe_intr, align 8
  %72 = inttoptr i64 %71 to i32*
  %73 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %74 = load %struct.quicc_softc*, %struct.quicc_softc** %19, align 8
  %75 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %74, i32 0, i32 0
  %76 = call i32 @bus_setup_intr(i64 %64, i32 %67, i32 %70, i32* null, i32* %72, %struct.quicc_softc* %73, i32* %75)
  br label %77

77:                                               ; preds = %53, %50, %45
  %78 = load i64, i64* %11, align 8
  %79 = call %struct.quicc_device* @device_get_ivars(i64 %78)
  store %struct.quicc_device* %79, %struct.quicc_device** %18, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i32*, i32** %14, align 8
  br label %87

84:                                               ; preds = %77
  %85 = load void (i8*)*, void (i8*)** %15, align 8
  %86 = bitcast void (i8*)* %85 to i32*
  br label %87

87:                                               ; preds = %84, %82
  %88 = phi i32* [ %83, %82 ], [ %86, %84 ]
  %89 = load %struct.quicc_device*, %struct.quicc_device** %18, align 8
  %90 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %89, i32 0, i32 1
  store i32* %88, i32** %90, align 8
  %91 = load i8*, i8** %16, align 8
  %92 = load %struct.quicc_device*, %struct.quicc_device** %18, align 8
  %93 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %92, i32 0, i32 0
  store i8* %91, i8** %93, align 8
  %94 = load void (i8*)*, void (i8*)** %15, align 8
  %95 = bitcast void (i8*)* %94 to i8*
  %96 = load i8**, i8*** %17, align 8
  store i8* %95, i8** %96, align 8
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %87, %43, %34, %24
  %98 = load i32, i32* %9, align 4
  ret i32 %98
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.quicc_softc* @device_get_softc(i64) #1

declare dso_local i32 @bus_teardown_intr(i64, i32, i32) #1

declare dso_local i32 @bus_setup_intr(i64, i32, i32, i32*, i32*, %struct.quicc_softc*, i32*) #1

declare dso_local %struct.quicc_device* @device_get_ivars(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
