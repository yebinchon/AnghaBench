; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_unset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_mmu_phyp.c_mphyp_pte_unset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.lpte = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@H_REMOVE = common dso_local global i32 0, align 4
@H_AVPN = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@H_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Error removing page: %d\00", align 1
@moea64_pte_overflow = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @mphyp_pte_unset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mphyp_pte_unset(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca %struct.lpte, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  %9 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %10 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PMAP_LOCK_ASSERT(i32 %11, i32 %12)
  %14 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %15 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %14, %struct.lpte* %6)
  %16 = load i32, i32* @H_REMOVE, align 4
  %17 = load i32, i32* @H_AVPN, align 4
  %18 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %19 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %25 = and i32 %23, %24
  %26 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 0
  %27 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 1
  %28 = call i32 @phyp_pft_hcall(i32 %16, i32 %17, i32 %21, i32 %25, i32 0, i32* %26, i32* %27, i32* %7)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @H_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @H_NOT_FOUND, align 4
  %35 = icmp eq i32 %33, %34
  br label %36

36:                                               ; preds = %32, %2
  %37 = phi i1 [ true, %2 ], [ %35, %32 ]
  %38 = zext i1 %37 to i32
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @KASSERT(i32 %38, i8* %41)
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @H_NOT_FOUND, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load i32, i32* @moea64_pte_overflow, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* @moea64_pte_overflow, align 4
  %49 = call i32 @STAT_MOEA64(i32 %47)
  store i32 -1, i32* %3, align 4
  br label %57

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @LPTE_REF, align 4
  %54 = load i32, i32* @LPTE_CHG, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %50, %46
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @phyp_pft_hcall(i32, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
