; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.siis_controller = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.resource* }
%struct.siis_channel = type { i32 }

@RF_ACTIVE = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @siis_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @siis_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.siis_controller*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.resource*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call %struct.siis_controller* @device_get_softc(i32 %24)
  store %struct.siis_controller* %25, %struct.siis_controller** %17, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.siis_controller* @device_get_softc(i32 %26)
  %28 = bitcast %struct.siis_controller* %27 to %struct.siis_channel*
  %29 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %18, align 4
  store %struct.resource* null, %struct.resource** %19, align 8
  %31 = load i32, i32* %18, align 4
  %32 = shl i32 %31, 13
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %11, align 4
  switch i32 %33, label %84 [
    i32 128, label %34
    i32 129, label %73
  ]

34:                                               ; preds = %8
  %35 = load %struct.siis_controller*, %struct.siis_controller** %17, align 8
  %36 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @rman_get_start(i32 %37)
  store i32 %38, i32* %21, align 4
  %39 = load %struct.siis_controller*, %struct.siis_controller** %17, align 8
  %40 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %39, i32 0, i32 2
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %20, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %21, align 4
  %45 = load i32, i32* %20, align 4
  %46 = add nsw i32 %44, %45
  %47 = add nsw i32 %46, 8192
  %48 = load i32, i32* @RF_ACTIVE, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call %struct.resource* @rman_reserve_resource(i32* %40, i32 %43, i32 %47, i32 8192, i32 %48, i32 %49)
  store %struct.resource* %50, %struct.resource** %19, align 8
  %51 = load %struct.resource*, %struct.resource** %19, align 8
  %52 = icmp ne %struct.resource* %51, null
  br i1 %52, label %53, label %72

53:                                               ; preds = %34
  %54 = load %struct.siis_controller*, %struct.siis_controller** %17, align 8
  %55 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @rman_get_bushandle(i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = load %struct.siis_controller*, %struct.siis_controller** %17, align 8
  %59 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @rman_get_bustag(i32 %60)
  store i32 %61, i32* %23, align 4
  %62 = load i32, i32* %23, align 4
  %63 = load i32, i32* %22, align 4
  %64 = load i32, i32* %20, align 4
  %65 = call i32 @bus_space_subregion(i32 %62, i32 %63, i32 %64, i32 8192, i32* %22)
  %66 = load %struct.resource*, %struct.resource** %19, align 8
  %67 = load i32, i32* %22, align 4
  %68 = call i32 @rman_set_bushandle(%struct.resource* %66, i32 %67)
  %69 = load %struct.resource*, %struct.resource** %19, align 8
  %70 = load i32, i32* %23, align 4
  %71 = call i32 @rman_set_bustag(%struct.resource* %69, i32 %70)
  br label %72

72:                                               ; preds = %53, %34
  br label %84

73:                                               ; preds = %8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ATA_IRQ_RID, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.siis_controller*, %struct.siis_controller** %17, align 8
  %80 = getelementptr inbounds %struct.siis_controller, %struct.siis_controller* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load %struct.resource*, %struct.resource** %81, align 8
  store %struct.resource* %82, %struct.resource** %19, align 8
  br label %83

83:                                               ; preds = %78, %73
  br label %84

84:                                               ; preds = %8, %83, %72
  %85 = load %struct.resource*, %struct.resource** %19, align 8
  ret %struct.resource* %85
}

declare dso_local %struct.siis_controller* @device_get_softc(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
