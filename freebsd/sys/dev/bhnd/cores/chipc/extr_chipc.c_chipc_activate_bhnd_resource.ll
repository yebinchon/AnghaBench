; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_activate_bhnd_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/cores/chipc/extr_chipc.c_chipc_activate_bhnd_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_resource = type { i32, i32 }
%struct.chipc_softc = type { i32 }
%struct.rman = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.bhnd_resource*)* @chipc_activate_bhnd_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chipc_activate_bhnd_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.bhnd_resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bhnd_resource*, align 8
  %12 = alloca %struct.chipc_softc*, align 8
  %13 = alloca %struct.rman*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.bhnd_resource* %4, %struct.bhnd_resource** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.chipc_softc* @device_get_softc(i32 %15)
  store %struct.chipc_softc* %16, %struct.chipc_softc** %12, align 8
  %17 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call %struct.rman* @chipc_get_rman(%struct.chipc_softc* %17, i32 %18)
  store %struct.rman* %19, %struct.rman** %13, align 8
  %20 = load %struct.rman*, %struct.rman** %13, align 8
  %21 = icmp eq %struct.rman* %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %5
  %23 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %24 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.rman*, %struct.rman** %13, align 8
  %27 = call i32 @rman_is_region_manager(i32 %25, %struct.rman* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %22, %5
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %35 = call i32 @bhnd_bus_generic_activate_resource(i32 %30, i32 %31, i32 %32, i32 %33, %struct.bhnd_resource* %34)
  store i32 %35, i32* %6, align 4
  br label %61

36:                                               ; preds = %22
  %37 = load %struct.chipc_softc*, %struct.chipc_softc** %12, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %42 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @chipc_try_activate_resource(%struct.chipc_softc* %37, i32 %38, i32 %39, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %6, align 4
  br label %61

49:                                               ; preds = %36
  %50 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %51 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @rman_get_flags(i32 %52)
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load %struct.bhnd_resource*, %struct.bhnd_resource** %11, align 8
  %59 = getelementptr inbounds %struct.bhnd_resource, %struct.bhnd_resource* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %49
  store i32 0, i32* %6, align 4
  br label %61

61:                                               ; preds = %60, %47, %29
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local %struct.chipc_softc* @device_get_softc(i32) #1

declare dso_local %struct.rman* @chipc_get_rman(%struct.chipc_softc*, i32) #1

declare dso_local i32 @rman_is_region_manager(i32, %struct.rman*) #1

declare dso_local i32 @bhnd_bus_generic_activate_resource(i32, i32, i32, i32, %struct.bhnd_resource*) #1

declare dso_local i32 @chipc_try_activate_resource(%struct.chipc_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_flags(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
