; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.rm_priotracker = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@mphyp_eviction_lock = common dso_local global i32 0, align 4
@brokenkvm = common dso_local global i64 0, align 8
@LPTE_REF = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@H_CLEAR_MOD = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Error clearing page change bit: %d\00", align 1
@H_CLEAR_REF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Error clearing page reference bit: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*, i32)* @mphyp_pte_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mphyp_pte_clear(i32 %0, %struct.pvo_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rm_priotracker, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %14 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @PMAP_LOCK_ASSERT(i32 %15, i32 %16)
  %18 = call i32 @rm_rlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %8)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %21 = call i32 @mphyp_pte_synch(i32 %19, %struct.pvo_entry* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = call i32 @rm_runlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %8)
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %89

27:                                               ; preds = %3
  %28 = load i64, i64* @brokenkvm, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = call i32 @rm_runlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %8)
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @LPTE_REF, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %4, align 4
  br label %89

36:                                               ; preds = %27
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @LPTE_CHG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %61

41:                                               ; preds = %36
  %42 = load i32, i32* @H_CLEAR_MOD, align 4
  %43 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %44 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @phyp_pft_hcall(i32 %42, i32 0, i32 %46, i32 0, i32 0, i32* %10, i32* %11, i32* %11)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = load i32, i32* @H_SUCCESS, align 4
  %50 = icmp eq i32 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %51, i8* %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @LPTE_CHG, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %41, %36
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @LPTE_REF, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load i32, i32* @H_CLEAR_REF, align 4
  %68 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %69 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @phyp_pft_hcall(i32 %67, i32 0, i32 %71, i32 0, i32 0, i32* %10, i32* %11, i32* %11)
  store i32 %72, i32* %12, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* @H_SUCCESS, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = inttoptr i64 %78 to i8*
  %80 = call i32 @KASSERT(i32 %76, i8* %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* @LPTE_REF, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* %9, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %9, align 4
  br label %86

86:                                               ; preds = %66, %61
  %87 = call i32 @rm_runlock(i32* @mphyp_eviction_lock, %struct.rm_priotracker* %8)
  %88 = load i32, i32* %9, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %30, %24
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @mphyp_pte_synch(i32, %struct.pvo_entry*) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @phyp_pft_hcall(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
