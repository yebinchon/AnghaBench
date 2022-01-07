; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_pci.c_mvs_alloc_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.mvs_controller = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { %struct.resource* }
%struct.mvs_channel = type { i32 }

@PORT_SIZE = common dso_local global i64 0, align 8
@RF_ACTIVE = common dso_local global i32 0, align 4
@ATA_IRQ_RID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.resource* (i32, i32, i32, i32*, i32, i32, i32, i32)* @mvs_alloc_resource to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.resource* @mvs_alloc_resource(i32 %0, i32 %1, i32 %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.mvs_controller*, align 8
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
  %25 = call %struct.mvs_controller* @device_get_softc(i32 %24)
  store %struct.mvs_controller* %25, %struct.mvs_controller** %17, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.mvs_controller* @device_get_softc(i32 %26)
  %28 = bitcast %struct.mvs_controller* %27 to %struct.mvs_channel*
  %29 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %18, align 4
  store %struct.resource* null, %struct.resource** %19, align 8
  %31 = load i32, i32* %18, align 4
  %32 = ashr i32 %31, 2
  %33 = call i32 @HC_BASE(i32 %32)
  %34 = load i32, i32* %18, align 4
  %35 = and i32 %34, 3
  %36 = call i32 @PORT_BASE(i32 %35)
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %20, align 4
  %38 = load i32, i32* %11, align 4
  switch i32 %38, label %95 [
    i32 128, label %39
    i32 129, label %84
  ]

39:                                               ; preds = %8
  %40 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %41 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @rman_get_start(i32 %42)
  store i32 %43, i32* %21, align 4
  %44 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %45 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %44, i32 0, i32 2
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* %20, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %21, align 4
  %50 = load i32, i32* %20, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* @PORT_SIZE, align 8
  %54 = add nsw i64 %52, %53
  %55 = sub nsw i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = load i64, i64* @PORT_SIZE, align 8
  %58 = load i32, i32* @RF_ACTIVE, align 4
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.resource* @rman_reserve_resource(i32* %45, i32 %48, i32 %56, i64 %57, i32 %58, i32 %59)
  store %struct.resource* %60, %struct.resource** %19, align 8
  %61 = load %struct.resource*, %struct.resource** %19, align 8
  %62 = icmp ne %struct.resource* %61, null
  br i1 %62, label %63, label %83

63:                                               ; preds = %39
  %64 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %65 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @rman_get_bushandle(i32 %66)
  store i32 %67, i32* %22, align 4
  %68 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %69 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @rman_get_bustag(i32 %70)
  store i32 %71, i32* %23, align 4
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %22, align 4
  %74 = load i32, i32* %20, align 4
  %75 = load i64, i64* @PORT_SIZE, align 8
  %76 = call i32 @bus_space_subregion(i32 %72, i32 %73, i32 %74, i64 %75, i32* %22)
  %77 = load %struct.resource*, %struct.resource** %19, align 8
  %78 = load i32, i32* %22, align 4
  %79 = call i32 @rman_set_bushandle(%struct.resource* %77, i32 %78)
  %80 = load %struct.resource*, %struct.resource** %19, align 8
  %81 = load i32, i32* %23, align 4
  %82 = call i32 @rman_set_bustag(%struct.resource* %80, i32 %81)
  br label %83

83:                                               ; preds = %63, %39
  br label %95

84:                                               ; preds = %8
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ATA_IRQ_RID, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %94

89:                                               ; preds = %84
  %90 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %91 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load %struct.resource*, %struct.resource** %92, align 8
  store %struct.resource* %93, %struct.resource** %19, align 8
  br label %94

94:                                               ; preds = %89, %84
  br label %95

95:                                               ; preds = %8, %94, %83
  %96 = load %struct.resource*, %struct.resource** %19, align 8
  ret %struct.resource* %96
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

declare dso_local i32 @HC_BASE(i32) #1

declare dso_local i32 @PORT_BASE(i32) #1

declare dso_local i32 @rman_get_start(i32) #1

declare dso_local %struct.resource* @rman_reserve_resource(i32*, i32, i32, i64, i32, i32) #1

declare dso_local i32 @rman_get_bushandle(i32) #1

declare dso_local i32 @rman_get_bustag(i32) #1

declare dso_local i32 @bus_space_subregion(i32, i32, i32, i64, i32*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
