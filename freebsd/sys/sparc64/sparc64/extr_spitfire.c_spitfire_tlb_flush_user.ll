; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_spitfire.c_spitfire_tlb_flush_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_spitfire.c_spitfire_tlb_flush_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPITFIRE_TLB_ENTRIES = common dso_local global i64 0, align 8
@TLB_DAR_T32 = common dso_local global i32 0, align 4
@ASI_DTLB_DATA_ACCESS_REG = common dso_local global i32 0, align 4
@ASI_DTLB_TAG_READ_REG = common dso_local global i32 0, align 4
@TD_V = common dso_local global i32 0, align 4
@TD_L = common dso_local global i32 0, align 4
@TLB_CTX_KERNEL = common dso_local global i64 0, align 8
@ASI_ITLB_DATA_ACCESS_REG = common dso_local global i32 0, align 4
@ASI_ITLB_TAG_READ_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spitfire_tlb_flush_user() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %63, %0
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @SPITFIRE_TLB_ENTRIES, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %66

9:                                                ; preds = %5
  %10 = load i32, i32* @TLB_DAR_T32, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @TLB_DAR_SLOT(i32 %10, i64 %11)
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %15 = call i32 @ldxa(i64 %13, i32 %14)
  store i32 %15, i32* %1, align 4
  %16 = load i64, i64* %4, align 8
  %17 = load i32, i32* @ASI_DTLB_TAG_READ_REG, align 4
  %18 = call i32 @ldxa(i64 %16, i32 %17)
  store i32 %18, i32* %2, align 4
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @TD_V, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %9
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @TD_L, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load i32, i32* %2, align 4
  %30 = call i64 @TLB_TAR_CTX(i32 %29)
  %31 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %4, align 8
  %35 = load i32, i32* @ASI_DTLB_DATA_ACCESS_REG, align 4
  %36 = call i32 @stxa_sync(i64 %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33, %28, %23, %9
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %40 = call i32 @ldxa(i64 %38, i32 %39)
  store i32 %40, i32* %1, align 4
  %41 = load i64, i64* %4, align 8
  %42 = load i32, i32* @ASI_ITLB_TAG_READ_REG, align 4
  %43 = call i32 @ldxa(i64 %41, i32 %42)
  store i32 %43, i32* %2, align 4
  %44 = load i32, i32* %1, align 4
  %45 = load i32, i32* @TD_V, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %62

48:                                               ; preds = %37
  %49 = load i32, i32* %1, align 4
  %50 = load i32, i32* @TD_L, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* %2, align 4
  %55 = call i64 @TLB_TAR_CTX(i32 %54)
  %56 = load i64, i64* @TLB_CTX_KERNEL, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %53
  %59 = load i64, i64* %4, align 8
  %60 = load i32, i32* @ASI_ITLB_DATA_ACCESS_REG, align 4
  %61 = call i32 @stxa_sync(i64 %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %58, %53, %48, %37
  br label %63

63:                                               ; preds = %62
  %64 = load i64, i64* %3, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %3, align 8
  br label %5

66:                                               ; preds = %5
  ret void
}

declare dso_local i64 @TLB_DAR_SLOT(i32, i64) #1

declare dso_local i32 @ldxa(i64, i32) #1

declare dso_local i64 @TLB_TAR_CTX(i32) #1

declare dso_local i32 @stxa_sync(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
