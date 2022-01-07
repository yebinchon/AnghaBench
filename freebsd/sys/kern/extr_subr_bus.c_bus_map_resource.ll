; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_map_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_map_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.resource = type { i32 }
%struct.resource_map_request = type { i32 }
%struct.resource_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_map_resource(%struct.TYPE_4__* %0, i32 %1, %struct.resource* %2, %struct.resource_map_request* %3, %struct.resource_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.resource*, align 8
  %10 = alloca %struct.resource_map_request*, align 8
  %11 = alloca %struct.resource_map*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.resource* %2, %struct.resource** %9, align 8
  store %struct.resource_map_request* %3, %struct.resource_map_request** %10, align 8
  store %struct.resource_map* %4, %struct.resource_map** %11, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %6, align 4
  br label %28

18:                                               ; preds = %5
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.resource*, %struct.resource** %9, align 8
  %25 = load %struct.resource_map_request*, %struct.resource_map_request** %10, align 8
  %26 = load %struct.resource_map*, %struct.resource_map** %11, align 8
  %27 = call i32 @BUS_MAP_RESOURCE(i32* %21, %struct.TYPE_4__* %22, i32 %23, %struct.resource* %24, %struct.resource_map_request* %25, %struct.resource_map* %26)
  store i32 %27, i32* %6, align 4
  br label %28

28:                                               ; preds = %18, %16
  %29 = load i32, i32* %6, align 4
  ret i32 %29
}

declare dso_local i32 @BUS_MAP_RESOURCE(i32*, %struct.TYPE_4__*, i32, %struct.resource*, %struct.resource_map_request*, %struct.resource_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
