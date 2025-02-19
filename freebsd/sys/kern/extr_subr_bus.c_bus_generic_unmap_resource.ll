; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_generic_unmap_resource.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bus.c_bus_generic_unmap_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.resource = type { i32 }
%struct.resource_map = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bus_generic_unmap_resource(%struct.TYPE_5__* %0, %struct.TYPE_5__* %1, i32 %2, %struct.resource* %3, %struct.resource_map* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.resource*, align 8
  %11 = alloca %struct.resource_map*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.resource* %3, %struct.resource** %10, align 8
  store %struct.resource_map* %4, %struct.resource_map** %11, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.resource*, %struct.resource** %10, align 8
  %23 = load %struct.resource_map*, %struct.resource_map** %11, align 8
  %24 = call i32 @BUS_UNMAP_RESOURCE(i64 %19, %struct.TYPE_5__* %20, i32 %21, %struct.resource* %22, %struct.resource_map* %23)
  store i32 %24, i32* %6, align 4
  br label %27

25:                                               ; preds = %5
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, i32* %6, align 4
  ret i32 %28
}

declare dso_local i32 @BUS_UNMAP_RESOURCE(i64, %struct.TYPE_5__*, i32, %struct.resource*, %struct.resource_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
