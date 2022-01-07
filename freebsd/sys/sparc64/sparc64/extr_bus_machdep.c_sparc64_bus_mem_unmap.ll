; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_bus_machdep.c_sparc64_bus_mem_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_bus_machdep.c_sparc64_bus_mem_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@PAGE_SIZE = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc64_bus_mem_unmap(%struct.TYPE_3__* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @rman_get_virtual(i32* %18)
  store i64 %19, i64* %8, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %52

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = call i64 @trunc_page(i64 %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = call i64 @round_page(i64 %26)
  %28 = add nsw i64 %25, %27
  store i64 %28, i64* %10, align 8
  %29 = load i64, i64* %8, align 8
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %37, %22
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* %10, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @pmap_kremove_flags(i64 %35)
  br label %37

37:                                               ; preds = %34
  %38 = load i64, i64* @PAGE_SIZE, align 8
  %39 = load i64, i64* %9, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %9, align 8
  br label %30

41:                                               ; preds = %30
  %42 = load i32, i32* @kernel_pmap, align 4
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* %7, align 8
  %46 = add nsw i64 %44, %45
  %47 = sub nsw i64 %46, 1
  %48 = call i32 @tlb_range_demap(i32 %42, i64 %43, i64 %47)
  %49 = load i64, i64* %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @kva_free(i64 %49, i64 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %41, %21
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i64 @rman_get_virtual(i32*) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @pmap_kremove_flags(i64) #1

declare dso_local i32 @tlb_range_demap(i32, i64, i64) #1

declare dso_local i32 @kva_free(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
