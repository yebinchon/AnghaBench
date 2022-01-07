; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_fman.c_fman_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_fman.c_fman_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.fman_softc = type { %struct.resource*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fman_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.fman_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call %struct.fman_softc* @device_get_softc(i32 %17)
  store %struct.fman_softc* %18, %struct.fman_softc** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @SYS_RES_IRQ, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %75

22:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %23

23:                                               ; preds = %70, %22
  %24 = load i32, i32* %15, align 4
  %25 = load %struct.fman_softc*, %struct.fman_softc** %12, align 8
  %26 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %73

30:                                               ; preds = %23
  %31 = load %struct.resource*, %struct.resource** %11, align 8
  %32 = load %struct.fman_softc*, %struct.fman_softc** %12, align 8
  %33 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %32, i32 0, i32 1
  %34 = call i64 @rman_is_region_manager(%struct.resource* %31, i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.fman_softc*, %struct.fman_softc** %12, align 8
  %38 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %37, i32 0, i32 0
  %39 = load %struct.resource*, %struct.resource** %38, align 8
  %40 = call i32 @rman_get_bustag(%struct.resource* %39)
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load %struct.fman_softc*, %struct.fman_softc** %12, align 8
  %43 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %42, i32 0, i32 0
  %44 = load %struct.resource*, %struct.resource** %43, align 8
  %45 = call i32 @rman_get_bushandle(%struct.resource* %44)
  %46 = load %struct.resource*, %struct.resource** %11, align 8
  %47 = call i64 @rman_get_start(%struct.resource* %46)
  %48 = load %struct.fman_softc*, %struct.fman_softc** %12, align 8
  %49 = getelementptr inbounds %struct.fman_softc, %struct.fman_softc* %48, i32 0, i32 0
  %50 = load %struct.resource*, %struct.resource** %49, align 8
  %51 = call i64 @rman_get_start(%struct.resource* %50)
  %52 = sub nsw i64 %47, %51
  %53 = load %struct.resource*, %struct.resource** %11, align 8
  %54 = call i32 @rman_get_size(%struct.resource* %53)
  %55 = call i32 @bus_space_subregion(i32 %41, i32 %45, i64 %52, i32 %54, i32* %14)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %36
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %6, align 4
  br label %82

60:                                               ; preds = %36
  %61 = load %struct.resource*, %struct.resource** %11, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @rman_set_bustag(%struct.resource* %61, i32 %62)
  %64 = load %struct.resource*, %struct.resource** %11, align 8
  %65 = load i32, i32* %14, align 4
  %66 = call i32 @rman_set_bushandle(%struct.resource* %64, i32 %65)
  %67 = load %struct.resource*, %struct.resource** %11, align 8
  %68 = call i32 @rman_activate_resource(%struct.resource* %67)
  store i32 %68, i32* %6, align 4
  br label %82

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %23

73:                                               ; preds = %23
  %74 = load i32, i32* @EINVAL, align 4
  store i32 %74, i32* %6, align 4
  br label %82

75:                                               ; preds = %5
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.resource*, %struct.resource** %11, align 8
  %81 = call i32 @bus_generic_activate_resource(i32 %76, i32 %77, i32 %78, i32 %79, %struct.resource* %80)
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %75, %73, %60, %58
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local %struct.fman_softc* @device_get_softc(i32) #1

declare dso_local i64 @rman_is_region_manager(%struct.resource*, i32*) #1

declare dso_local i32 @rman_get_bustag(%struct.resource*) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i32 @bus_generic_activate_resource(i32, i32, i32, i32, %struct.resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
