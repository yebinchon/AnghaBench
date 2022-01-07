; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_try_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_try_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chipc_softc = type { i32 }
%struct.resource = type { i32 }
%struct.rman = type { i32 }
%struct.chipc_region = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.chipc_softc*, i32, i32, i32, %struct.resource*, i32)* @chipc_try_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_try_activate_resource(%struct.chipc_softc* %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.chipc_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.resource*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.rman*, align 8
  %15 = alloca %struct.chipc_region*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.chipc_softc* %0, %struct.chipc_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.resource* %4, %struct.resource** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.chipc_softc*, %struct.chipc_softc** %8, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call %struct.rman* @chipc_get_rman(%struct.chipc_softc* %21, i32 %22)
  store %struct.rman* %23, %struct.rman** %14, align 8
  %24 = load %struct.rman*, %struct.rman** %14, align 8
  %25 = icmp eq %struct.rman* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %6
  %27 = load %struct.resource*, %struct.resource** %12, align 8
  %28 = load %struct.rman*, %struct.rman** %14, align 8
  %29 = call i32 @rman_is_region_manager(%struct.resource* %27, %struct.rman* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26, %6
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %7, align 4
  br label %100

33:                                               ; preds = %26
  %34 = load %struct.resource*, %struct.resource** %12, align 8
  %35 = call i64 @rman_get_start(%struct.resource* %34)
  store i64 %35, i64* %17, align 8
  %36 = load %struct.resource*, %struct.resource** %12, align 8
  %37 = call i64 @rman_get_end(%struct.resource* %36)
  store i64 %37, i64* %18, align 8
  %38 = load %struct.resource*, %struct.resource** %12, align 8
  %39 = call i64 @rman_get_size(%struct.resource* %38)
  store i64 %39, i64* %19, align 8
  %40 = load %struct.chipc_softc*, %struct.chipc_softc** %8, align 8
  %41 = load i64, i64* %17, align 8
  %42 = load i64, i64* %18, align 8
  %43 = call %struct.chipc_region* @chipc_find_region(%struct.chipc_softc* %40, i64 %41, i64 %42)
  store %struct.chipc_region* %43, %struct.chipc_region** %15, align 8
  %44 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %45 = icmp eq %struct.chipc_region* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %7, align 4
  br label %100

48:                                               ; preds = %33
  %49 = load i64, i64* %17, align 8
  %50 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %51 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  store i64 %53, i64* %16, align 8
  %54 = load %struct.chipc_softc*, %struct.chipc_softc** %8, align 8
  %55 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %56 = load i32, i32* @RF_ACTIVE, align 4
  %57 = call i32 @chipc_retain_region(%struct.chipc_softc* %54, %struct.chipc_region* %55, i32 %56)
  store i32 %57, i32* %20, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %48
  %60 = load i32, i32* %20, align 4
  store i32 %60, i32* %7, align 4
  br label %100

61:                                               ; preds = %48
  %62 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %63 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %61
  %69 = load %struct.resource*, %struct.resource** %12, align 8
  %70 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %71 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* %19, align 8
  %77 = call i32 @chipc_init_child_resource(%struct.resource* %69, i32 %74, i64 %75, i64 %76)
  store i32 %77, i32* %20, align 4
  %78 = load i32, i32* %20, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %94

81:                                               ; preds = %68
  %82 = load %struct.resource*, %struct.resource** %12, align 8
  %83 = call i32 @rman_activate_resource(%struct.resource* %82)
  store i32 %83, i32* %20, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %94

86:                                               ; preds = %81
  br label %93

87:                                               ; preds = %61
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @ENOMEM, align 4
  store i32 %91, i32* %20, align 4
  br label %94

92:                                               ; preds = %87
  br label %93

93:                                               ; preds = %92, %86
  store i32 0, i32* %7, align 4
  br label %100

94:                                               ; preds = %90, %85, %80
  %95 = load %struct.chipc_softc*, %struct.chipc_softc** %8, align 8
  %96 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %97 = load i32, i32* @RF_ACTIVE, align 4
  %98 = call i32 @chipc_release_region(%struct.chipc_softc* %95, %struct.chipc_region* %96, i32 %97)
  %99 = load i32, i32* %20, align 4
  store i32 %99, i32* %7, align 4
  br label %100

100:                                              ; preds = %94, %93, %59, %46, %31
  %101 = load i32, i32* %7, align 4
  ret i32 %101
}

declare dso_local %struct.rman* @chipc_get_rman(%struct.chipc_softc*, i32) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i64 @rman_get_start(%struct.resource*) #1

declare dso_local i64 @rman_get_end(%struct.resource*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local %struct.chipc_region* @chipc_find_region(%struct.chipc_softc*, i64, i64) #1

declare dso_local i32 @chipc_retain_region(%struct.chipc_softc*, %struct.chipc_region*, i32) #1

declare dso_local i32 @chipc_init_child_resource(%struct.resource*, i32, i64, i64) #1

declare dso_local i32 @rman_activate_resource(%struct.resource*) #1

declare dso_local i32 @chipc_release_region(%struct.chipc_softc*, %struct.chipc_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
