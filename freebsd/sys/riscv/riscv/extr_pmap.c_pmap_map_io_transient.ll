; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_map_io_transient.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_pmap.c_pmap_map_io_transient.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@DMAP_MAX_PHYSADDR = common dso_local global i64 0, align 8
@kernel_arena = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vmem_alloc failed: %d\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"pmap_map_io_transient: TODO: Map out of DMAP data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_map_io_transient(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %59, %4
  %16 = load i32, i32* %13, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %62

19:                                               ; preds = %15
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %13, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @VM_PAGE_TO_PHYS(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @DMAP_MAX_PHYSADDR, align 8
  %28 = icmp sge i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i64 @__predict_false(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %19
  %33 = load i32, i32* @kernel_arena, align 4
  %34 = load i32, i32* @PAGE_SIZE, align 4
  %35 = load i32, i32* @M_BESTFIT, align 4
  %36 = load i32, i32* @M_WAITOK, align 4
  %37 = or i32 %35, %36
  %38 = load i32*, i32** %7, align 8
  %39 = load i32, i32* %13, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = call i32 @vmem_alloc(i32 %33, i32 %34, i32 %37, i32* %41)
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp eq i32 %43, 0
  %45 = zext i1 %44 to i32
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 @KASSERT(i32 %45, i8* %48)
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %11, align 4
  br label %58

51:                                               ; preds = %19
  %52 = load i64, i64* %10, align 8
  %53 = call i32 @PHYS_TO_DMAP(i64 %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %53, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %32
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %13, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %13, align 4
  br label %15

62:                                               ; preds = %15
  %63 = load i32, i32* %11, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %62
  %66 = load i32, i32* @FALSE, align 4
  store i32 %66, i32* %5, align 4
  br label %95

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = call i32 (...) @sched_pin()
  br label %72

72:                                               ; preds = %70, %67
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %90, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %73
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = call i64 @VM_PAGE_TO_PHYS(i32 %82)
  store i64 %83, i64* %10, align 8
  %84 = load i64, i64* %10, align 8
  %85 = load i64, i64* @DMAP_MAX_PHYSADDR, align 8
  %86 = icmp sge i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %77
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %13, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %13, align 4
  br label %73

93:                                               ; preds = %73
  %94 = load i32, i32* %11, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %93, %65
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local i64 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @vmem_alloc(i32, i32, i32, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PHYS_TO_DMAP(i64) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
