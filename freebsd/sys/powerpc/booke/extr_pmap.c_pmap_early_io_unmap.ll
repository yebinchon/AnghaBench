; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pmap_early_io_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_pmap.c_pmap_early_io_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@TLB1_ENTRIES = common dso_local global i32 0, align 4
@MAS1_VALID = common dso_local global i32 0, align 4
@tlb1_map_base = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_early_io_unmap(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_4__, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = call i64 @roundup(i64 %8, i32 %9)
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  store i64 %11, i64* %7, align 8
  store i32 0, i32* %5, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @TLB1_ENTRIES, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = icmp sgt i64 %17, 0
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ]
  br i1 %20, label %21, label %61

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @tlb1_read_entry(%struct.TYPE_4__* %6, i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MAS1_VALID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %58

30:                                               ; preds = %21
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %31, %33
  br i1 %34, label %35, label %57

35:                                               ; preds = %30
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %7, align 8
  %38 = add nsw i64 %36, %37
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %40, %42
  %44 = icmp sge i64 %38, %43
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, i64* %4, align 8
  %50 = load i32, i32* @MAS1_VALID, align 4
  %51 = xor i32 %50, -1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = and i32 %53, %51
  store i32 %54, i32* %52, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @tlb1_write_entry(%struct.TYPE_4__* %6, i32 %55)
  br label %57

57:                                               ; preds = %45, %35, %30
  br label %58

58:                                               ; preds = %57, %29
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %12

61:                                               ; preds = %19
  %62 = load i64, i64* @tlb1_map_base, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* %7, align 8
  %65 = add nsw i64 %63, %64
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @tlb1_map_base, align 8
  %70 = sub nsw i64 %69, %68
  store i64 %70, i64* @tlb1_map_base, align 8
  br label %71

71:                                               ; preds = %67, %61
  ret void
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @tlb1_read_entry(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @tlb1_write_entry(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
