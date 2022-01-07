; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pmap_early_io_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pmap_early_io_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64 }

@pmap_bootstrapped = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Do not use after PMAP is up!\00", align 1
@TLB1_ENTRIES = common dso_local global i32 0, align 4
@MAS1_VALID = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@tlb1_map_base = common dso_local global i64 0, align 8
@_TLB_ENTRY_SHARED = common dso_local global i32 0, align 4
@_TLB_ENTRY_IO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_early_io_map(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @pmap_bootstrapped, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %53, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @TLB1_ENTRIES, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %56

20:                                               ; preds = %16
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @tlb1_read_entry(%struct.TYPE_3__* %10, i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MAS1_VALID, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %53

29:                                               ; preds = %20
  %30 = load i64, i64* %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %30, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %5, align 8
  %37 = add nsw i64 %35, %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %39, %41
  %43 = icmp sle i64 %37, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %47, %49
  %51 = add nsw i64 %46, %50
  store i64 %51, i64* %3, align 8
  br label %105

52:                                               ; preds = %34, %29
  br label %53

53:                                               ; preds = %52, %28
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %16

56:                                               ; preds = %16
  %57 = load i64, i64* %4, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = call i64 @rounddown(i64 %57, i32 %58)
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %5, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = sub nsw i64 %61, %62
  %64 = add nsw i64 %60, %63
  %65 = load i32, i32* @PAGE_SIZE, align 4
  %66 = call i64 @roundup(i64 %64, i32 %65)
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* @tlb1_map_base, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call i32 @ilog2(i64 %68)
  %70 = and i32 %69, -2
  %71 = shl i32 1, %70
  %72 = call i64 @roundup2(i64 %67, i32 %71)
  store i64 %72, i64* @tlb1_map_base, align 8
  %73 = load i64, i64* @tlb1_map_base, align 8
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %6, align 8
  %76 = sub nsw i64 %74, %75
  %77 = add nsw i64 %73, %76
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %100, %56
  %79 = load i64, i64* %5, align 8
  %80 = call i32 @ilog2(i64 %79)
  %81 = and i32 %80, -2
  %82 = shl i32 1, %81
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* @tlb1_map_base, align 8
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load i32, i32* @_TLB_ENTRY_SHARED, align 4
  %88 = load i32, i32* @_TLB_ENTRY_IO, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @tlb1_set_entry(i64 %84, i64 %85, i64 %86, i32 %89)
  %91 = load i64, i64* %8, align 8
  %92 = load i64, i64* %5, align 8
  %93 = sub nsw i64 %92, %91
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* %6, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %6, align 8
  %97 = load i64, i64* %8, align 8
  %98 = load i64, i64* @tlb1_map_base, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* @tlb1_map_base, align 8
  br label %100

100:                                              ; preds = %78
  %101 = load i64, i64* %5, align 8
  %102 = icmp sgt i64 %101, 0
  br i1 %102, label %78, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %7, align 8
  store i64 %104, i64* %3, align 8
  br label %105

105:                                              ; preds = %103, %44
  %106 = load i64, i64* %3, align 8
  ret i64 %106
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @tlb1_read_entry(%struct.TYPE_3__*, i32) #1

declare dso_local i64 @rounddown(i64, i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @roundup2(i64, i32) #1

declare dso_local i32 @ilog2(i64) #1

declare dso_local i32 @tlb1_set_entry(i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
