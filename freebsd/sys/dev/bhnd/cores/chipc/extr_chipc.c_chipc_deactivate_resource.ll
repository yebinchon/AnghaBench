; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_deactivate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_deactivate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.chipc_softc = type { i32 }
%struct.chipc_region = type { i32 }
%struct.rman = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @chipc_deactivate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_deactivate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.chipc_softc*, align 8
  %13 = alloca %struct.chipc_region*, align 8
  %14 = alloca %struct.rman*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.chipc_softc* @device_get_softc(i32 %16)
  store %struct.chipc_softc* %17, %struct.chipc_softc** %12, align 8
  %18 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call %struct.rman* @chipc_get_rman(%struct.chipc_softc* %18, i32 %19)
  store %struct.rman* %20, %struct.rman** %14, align 8
  %21 = load %struct.rman*, %struct.rman** %14, align 8
  %22 = icmp eq %struct.rman* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %5
  %24 = load %struct.resource*, %struct.resource** %11, align 8
  %25 = load %struct.rman*, %struct.rman** %14, align 8
  %26 = call i32 @rman_is_region_manager(%struct.resource* %24, %struct.rman* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23, %5
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.resource*, %struct.resource** %11, align 8
  %34 = call i32 @bus_generic_deactivate_resource(i32 %29, i32 %30, i32 %31, i32 %32, %struct.resource* %33)
  store i32 %34, i32* %6, align 4
  br label %57

35:                                               ; preds = %23
  %36 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %37 = load %struct.resource*, %struct.resource** %11, align 8
  %38 = call i32 @rman_get_start(%struct.resource* %37)
  %39 = load %struct.resource*, %struct.resource** %11, align 8
  %40 = call i32 @rman_get_end(%struct.resource* %39)
  %41 = call %struct.chipc_region* @chipc_find_region(%struct.chipc_softc* %36, i32 %38, i32 %40)
  store %struct.chipc_region* %41, %struct.chipc_region** %13, align 8
  %42 = load %struct.chipc_region*, %struct.chipc_region** %13, align 8
  %43 = icmp eq %struct.chipc_region* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %6, align 4
  br label %57

46:                                               ; preds = %35
  %47 = load %struct.resource*, %struct.resource** %11, align 8
  %48 = call i32 @rman_deactivate_resource(%struct.resource* %47)
  store i32 %48, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %15, align 4
  store i32 %51, i32* %6, align 4
  br label %57

52:                                               ; preds = %46
  %53 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %54 = load %struct.chipc_region*, %struct.chipc_region** %13, align 8
  %55 = load i32, i32* @RF_ACTIVE, align 4
  %56 = call i32 @chipc_release_region(%struct.chipc_softc* %53, %struct.chipc_region* %54, i32 %55)
  store i32 0, i32* %6, align 4
  br label %57

57:                                               ; preds = %52, %50, %44, %28
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @chipc_get_rman(%struct.chipc_softc*, i32) #1

declare dso_local i32 @rman_is_region_manager(%struct.resource*, %struct.rman*) #1

declare dso_local i32 @bus_generic_deactivate_resource(i32, i32, i32, i32, %struct.resource*) #1

declare dso_local %struct.chipc_region* @chipc_find_region(%struct.chipc_softc*, i32, i32) #1

declare dso_local i32 @rman_get_start(%struct.resource*) #1

declare dso_local i32 @rman_get_end(%struct.resource*) #1

declare dso_local i32 @rman_deactivate_resource(%struct.resource*) #1

declare dso_local i32 @chipc_release_region(%struct.chipc_softc*, %struct.chipc_region*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
