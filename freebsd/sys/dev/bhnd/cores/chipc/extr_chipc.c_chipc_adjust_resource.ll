; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_adjust_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_adjust_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.chipc_softc = type { i32 }
%struct.chipc_region = type { i64, i64 }
%struct.rman = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, %struct.resource*, i64, i64)* @chipc_adjust_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_adjust_resource(i32 %0, i32 %1, i32 %2, %struct.resource* %3, i64 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.chipc_softc*, align 8
  %15 = alloca %struct.chipc_region*, align 8
  %16 = alloca %struct.rman*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.resource* %3, %struct.resource** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %17 = load i32, i32* %8, align 4
  %18 = call %struct.chipc_softc* @device_get_softc(i32 %17)
  store %struct.chipc_softc* %18, %struct.chipc_softc** %14, align 8
  %19 = load %struct.chipc_softc*, %struct.chipc_softc** %14, align 8
  %20 = load i32, i32* %10, align 4
  %21 = call %struct.rman* @chipc_get_rman(%struct.chipc_softc* %19, i32 %20)
  store %struct.rman* %21, %struct.rman** %16, align 8
  %22 = load %struct.rman*, %struct.rman** %16, align 8
  %23 = icmp eq %struct.rman* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %6
  %25 = load %struct.resource*, %struct.resource** %11, align 8
  %26 = load %struct.rman*, %struct.rman** %16, align 8
  %27 = call i32 @rman_is_region_manager(%struct.resource* %25, %struct.rman* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %37, label %29

29:                                               ; preds = %24, %6
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i32 @bus_generic_adjust_resource(i32 %30, i32 %31, i32 %32, %struct.resource* %33, i64 %34, i64 %35)
  store i32 %36, i32* %7, align 4
  br label %73

37:                                               ; preds = %24
  %38 = load %struct.chipc_softc*, %struct.chipc_softc** %14, align 8
  %39 = load %struct.resource*, %struct.resource** %11, align 8
  %40 = call i32 @rman_get_start(%struct.resource* %39)
  %41 = load %struct.resource*, %struct.resource** %11, align 8
  %42 = call i32 @rman_get_end(%struct.resource* %41)
  %43 = call %struct.chipc_region* @chipc_find_region(%struct.chipc_softc* %38, i32 %40, i32 %42)
  store %struct.chipc_region* %43, %struct.chipc_region** %15, align 8
  %44 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %45 = icmp eq %struct.chipc_region* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %7, align 4
  br label %73

48:                                               ; preds = %37
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %12, align 8
  %51 = icmp sle i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %7, align 4
  br label %73

54:                                               ; preds = %48
  %55 = load i64, i64* %12, align 8
  %56 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %57 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp slt i64 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %13, align 8
  %62 = load %struct.chipc_region*, %struct.chipc_region** %15, align 8
  %63 = getelementptr inbounds %struct.chipc_region, %struct.chipc_region* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %7, align 4
  br label %73

68:                                               ; preds = %60
  %69 = load %struct.resource*, %struct.resource** %11, align 8
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @rman_adjust_resource(%struct.resource* %69, i64 %70, i64 %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %68, %66, %52, %46, %29
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @chipc_get_rman(%struct.chipc_softc*, i32) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @bus_generic_adjust_resource(i32, i32, i32, %struct.resource*, i64, i64) #1

declare dso_local %struct.chipc_region* @chipc_find_region(%struct.chipc_softc*, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_adjust_resource(%struct.resource*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
