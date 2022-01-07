; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_map_tsb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/sparc64/extr_pmap.c_pmap_map_tsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsb_kernel_size = common dso_local global i32 0, align 4
@tsb_kernel = common dso_local global i64 0, align 8
@tsb_kernel_phys = common dso_local global i64 0, align 8
@TD_V = common dso_local global i32 0, align 4
@TD_4M = common dso_local global i32 0, align 4
@TD_L = common dso_local global i32 0, align 4
@TD_CP = common dso_local global i32 0, align 4
@TD_CV = common dso_local global i32 0, align 4
@TD_P = common dso_local global i32 0, align 4
@TD_W = common dso_local global i32 0, align 4
@AA_DMMU_TAR = common dso_local global i32 0, align 4
@ASI_DMMU = common dso_local global i32 0, align 4
@TLB_CTX_KERNEL = common dso_local global i32 0, align 4
@ASI_DTLB_DATA_IN_REG = common dso_local global i32 0, align 4
@PAGE_SIZE_4M = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_map_tsb() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %45, %0
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @tsb_kernel_size, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %51

9:                                                ; preds = %5
  %10 = load i64, i64* @tsb_kernel, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %10, %12
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* @tsb_kernel_phys, align 8
  %15 = load i32, i32* %4, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  store i64 %17, i64* %2, align 8
  %18 = load i32, i32* @TD_V, align 4
  %19 = load i32, i32* @TD_4M, align 4
  %20 = or i32 %18, %19
  %21 = load i64, i64* %2, align 8
  %22 = call i32 @TD_PA(i64 %21)
  %23 = or i32 %20, %22
  %24 = load i32, i32* @TD_L, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @TD_CP, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @TD_CV, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @TD_P, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @TD_W, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* @AA_DMMU_TAR, align 4
  %35 = load i32, i32* @ASI_DMMU, align 4
  %36 = load i64, i64* %1, align 8
  %37 = call i32 @TLB_TAR_VA(i64 %36)
  %38 = load i32, i32* @TLB_CTX_KERNEL, align 4
  %39 = call i32 @TLB_TAR_CTX(i32 %38)
  %40 = or i32 %37, %39
  %41 = call i32 @stxa(i32 %34, i32 %35, i32 %40)
  %42 = load i32, i32* @ASI_DTLB_DATA_IN_REG, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @stxa_sync(i32 0, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %9
  %46 = load i64, i64* @PAGE_SIZE_4M, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %4, align 4
  br label %5

51:                                               ; preds = %5
  ret void
}

declare dso_local i32 @TD_PA(i64) #1

declare dso_local i32 @stxa(i32, i32, i32) #1

declare dso_local i32 @TLB_TAR_VA(i64) #1

declare dso_local i32 @TLB_TAR_CTX(i32) #1

declare dso_local i32 @stxa_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
