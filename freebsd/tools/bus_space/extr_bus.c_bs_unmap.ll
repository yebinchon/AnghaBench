; ModuleID = '/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/bus_space/extr_bus.c_bs_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i64, i32, i32 }

@MAP_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bs_unmap(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call %struct.resource* @rid_lookup(i32 %5)
  store %struct.resource* %6, %struct.resource** %4, align 8
  %7 = load %struct.resource*, %struct.resource** %4, align 8
  %8 = icmp eq %struct.resource* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = load %struct.resource*, %struct.resource** %4, align 8
  %12 = getelementptr inbounds %struct.resource, %struct.resource* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, -1
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = load %struct.resource*, %struct.resource** %4, align 8
  %17 = getelementptr inbounds %struct.resource, %struct.resource* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MAP_FAILED, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %15
  %22 = load %struct.resource*, %struct.resource** %4, align 8
  %23 = getelementptr inbounds %struct.resource, %struct.resource* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.resource*, %struct.resource** %4, align 8
  %26 = getelementptr inbounds %struct.resource, %struct.resource* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @munmap(i64 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %15
  %30 = load %struct.resource*, %struct.resource** %4, align 8
  %31 = getelementptr inbounds %struct.resource, %struct.resource* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @close(i32 %32)
  br label %34

34:                                               ; preds = %29, %10
  %35 = load %struct.resource*, %struct.resource** %4, align 8
  %36 = getelementptr inbounds %struct.resource, %struct.resource* %35, i32 0, i32 2
  store i32 -1, i32* %36, align 8
  store i32 1, i32* %2, align 4
  br label %37

37:                                               ; preds = %34, %9
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.resource* @rid_lookup(i32) #1

declare dso_local i32 @munmap(i64, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
