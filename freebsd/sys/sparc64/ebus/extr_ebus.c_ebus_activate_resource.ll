; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_activate_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/ebus/extr_ebus.c_ebus_activate_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.ebus_softc = type { i32, i32, %struct.ebus_rinfo* }
%struct.ebus_rinfo = type { %struct.resource*, i32 }

@EBUS_PCI = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, %struct.resource*)* @ebus_activate_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ebus_activate_resource(i32 %0, i32 %1, i32 %2, i32 %3, %struct.resource* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.resource*, align 8
  %12 = alloca %struct.ebus_softc*, align 8
  %13 = alloca %struct.ebus_rinfo*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.resource* %4, %struct.resource** %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.ebus_softc* @device_get_softc(i32 %18)
  store %struct.ebus_softc* %19, %struct.ebus_softc** %12, align 8
  %20 = load %struct.ebus_softc*, %struct.ebus_softc** %12, align 8
  %21 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EBUS_PCI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %88

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @SYS_RES_IRQ, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %88

30:                                               ; preds = %26
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %83, %30
  %32 = load i32, i32* %16, align 4
  %33 = load %struct.ebus_softc*, %struct.ebus_softc** %12, align 8
  %34 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %86

37:                                               ; preds = %31
  %38 = load %struct.ebus_softc*, %struct.ebus_softc** %12, align 8
  %39 = getelementptr inbounds %struct.ebus_softc, %struct.ebus_softc* %38, i32 0, i32 2
  %40 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %40, i64 %42
  store %struct.ebus_rinfo* %43, %struct.ebus_rinfo** %13, align 8
  %44 = load %struct.resource*, %struct.resource** %11, align 8
  %45 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %13, align 8
  %46 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %45, i32 0, i32 1
  %47 = call i64 @rman_is_region_manager(%struct.resource* %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %37
  %50 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %13, align 8
  %51 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %50, i32 0, i32 0
  %52 = load %struct.resource*, %struct.resource** %51, align 8
  %53 = call i32 @rman_get_bustag(%struct.resource* %52)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %13, align 8
  %56 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %55, i32 0, i32 0
  %57 = load %struct.resource*, %struct.resource** %56, align 8
  %58 = call i32 @rman_get_bushandle(%struct.resource* %57)
  %59 = load %struct.resource*, %struct.resource** %11, align 8
  %60 = call i64 @rman_get_start(%struct.resource* %59)
  %61 = load %struct.ebus_rinfo*, %struct.ebus_rinfo** %13, align 8
  %62 = getelementptr inbounds %struct.ebus_rinfo, %struct.ebus_rinfo* %61, i32 0, i32 0
  %63 = load %struct.resource*, %struct.resource** %62, align 8
  %64 = call i64 @rman_get_start(%struct.resource* %63)
  %65 = sub nsw i64 %60, %64
  %66 = load %struct.resource*, %struct.resource** %11, align 8
  %67 = call i32 @rman_get_size(%struct.resource* %66)
  %68 = call i32 @bus_space_subregion(i32 %54, i32 %58, i64 %65, i32 %67, i32* %15)
  store i32 %68, i32* %17, align 4
  %69 = load i32, i32* %17, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %49
  %72 = load i32, i32* %17, align 4
  store i32 %72, i32* %6, align 4
  br label %95

73:                                               ; preds = %49
  %74 = load %struct.resource*, %struct.resource** %11, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @rman_set_bustag(%struct.resource* %74, i32 %75)
  %77 = load %struct.resource*, %struct.resource** %11, align 8
  %78 = load i32, i32* %15, align 4
  %79 = call i32 @rman_set_bushandle(%struct.resource* %77, i32 %78)
  %80 = load %struct.resource*, %struct.resource** %11, align 8
  %81 = call i32 @rman_activate_resource(%struct.resource* %80)
  store i32 %81, i32* %6, align 4
  br label %95

82:                                               ; preds = %37
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %16, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %16, align 4
  br label %31

86:                                               ; preds = %31
  %87 = load i32, i32* @EINVAL, align 4
  store i32 %87, i32* %6, align 4
  br label %95

88:                                               ; preds = %26, %5
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load %struct.resource*, %struct.resource** %11, align 8
  %94 = call i32 @bus_generic_activate_resource(i32 %89, i32 %90, i32 %91, i32 %92, %struct.resource* %93)
  store i32 %94, i32* %6, align 4
  br label %95

95:                                               ; preds = %88, %86, %73, %71
  %96 = load i32, i32* %6, align 4
  ret i32 %96
}

declare dso_local %struct.ebus_softc* @device_get_softc(i32) #1

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
