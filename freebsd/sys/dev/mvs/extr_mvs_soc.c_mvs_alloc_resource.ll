; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_alloc_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs_soc.c_mvs_alloc_resource.c"
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
  %32 = and i32 %31, 3
  %33 = call i32 @PORT_BASE(i32 %32)
  store i32 %33, i32* %20, align 4
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %91 [
    i32 128, label %35
    i32 129, label %80
  ]

35:                                               ; preds = %8
  %36 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %37 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @rman_get_start(i32 %38)
  store i32 %39, i32* %21, align 4
  %40 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %41 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %40, i32 0, i32 2
  %42 = load i32, i32* %21, align 4
  %43 = load i32, i32* %20, align 4
  %44 = add nsw i32 %42, %43
  %45 = load i32, i32* %21, align 4
  %46 = load i32, i32* %20, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @PORT_SIZE, align 8
  %50 = add nsw i64 %48, %49
  %51 = sub nsw i64 %50, 1
  %52 = trunc i64 %51 to i32
  %53 = load i64, i64* @PORT_SIZE, align 8
  %54 = load i32, i32* @RF_ACTIVE, align 4
  %55 = load i32, i32* %10, align 4
  %56 = call %struct.resource* @rman_reserve_resource(i32* %41, i32 %44, i32 %52, i64 %53, i32 %54, i32 %55)
  store %struct.resource* %56, %struct.resource** %19, align 8
  %57 = load %struct.resource*, %struct.resource** %19, align 8
  %58 = icmp ne %struct.resource* %57, null
  br i1 %58, label %59, label %79

59:                                               ; preds = %35
  %60 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %61 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @rman_get_bushandle(i32 %62)
  store i32 %63, i32* %22, align 4
  %64 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %65 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @rman_get_bustag(i32 %66)
  store i32 %67, i32* %23, align 4
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %22, align 4
  %70 = load i32, i32* %20, align 4
  %71 = load i64, i64* @PORT_SIZE, align 8
  %72 = call i32 @bus_space_subregion(i32 %68, i32 %69, i32 %70, i64 %71, i32* %22)
  %73 = load %struct.resource*, %struct.resource** %19, align 8
  %74 = load i32, i32* %22, align 4
  %75 = call i32 @rman_set_bushandle(%struct.resource* %73, i32 %74)
  %76 = load %struct.resource*, %struct.resource** %19, align 8
  %77 = load i32, i32* %23, align 4
  %78 = call i32 @rman_set_bustag(%struct.resource* %76, i32 %77)
  br label %79

79:                                               ; preds = %59, %35
  br label %91

80:                                               ; preds = %8
  %81 = load i32*, i32** %12, align 8
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @ATA_IRQ_RID, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.mvs_controller*, %struct.mvs_controller** %17, align 8
  %87 = getelementptr inbounds %struct.mvs_controller, %struct.mvs_controller* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load %struct.resource*, %struct.resource** %88, align 8
  store %struct.resource* %89, %struct.resource** %19, align 8
  br label %90

90:                                               ; preds = %85, %80
  br label %91

91:                                               ; preds = %8, %90, %79
  %92 = load %struct.resource*, %struct.resource** %19, align 8
  ret %struct.resource* %92
}

declare dso_local %struct.mvs_controller* @device_get_softc(i32) #1

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
