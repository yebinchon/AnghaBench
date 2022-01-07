; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_set_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_rman.c_rman_set_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.resource_map = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"rman_set_mapping: size mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rman_set_mapping(%struct.resource* %0, %struct.resource_map* %1) #0 {
  %3 = alloca %struct.resource*, align 8
  %4 = alloca %struct.resource_map*, align 8
  store %struct.resource* %0, %struct.resource** %3, align 8
  store %struct.resource_map* %1, %struct.resource_map** %4, align 8
  %5 = load %struct.resource*, %struct.resource** %3, align 8
  %6 = call i64 @rman_get_size(%struct.resource* %5)
  %7 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %8 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %6, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.resource*, %struct.resource** %3, align 8
  %14 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %15 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @rman_set_bustag(%struct.resource* %13, i32 %16)
  %18 = load %struct.resource*, %struct.resource** %3, align 8
  %19 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %20 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rman_set_bushandle(%struct.resource* %18, i32 %21)
  %23 = load %struct.resource*, %struct.resource** %3, align 8
  %24 = load %struct.resource_map*, %struct.resource_map** %4, align 8
  %25 = getelementptr inbounds %struct.resource_map, %struct.resource_map* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @rman_set_virtual(%struct.resource* %23, i32 %26)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @rman_get_size(%struct.resource*) #1

declare dso_local i32 @rman_set_bustag(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

declare dso_local i32 @rman_set_virtual(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
