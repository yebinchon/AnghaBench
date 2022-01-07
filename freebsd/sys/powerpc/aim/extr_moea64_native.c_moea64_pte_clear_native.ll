; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_clear_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_clear_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpte = type { i32, i32 }
%struct.pvo_entry = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@moea64_pteg_table = common dso_local global %struct.lpte* null, align 8
@MA_OWNED = common dso_local global i32 0, align 4
@moea64_eviction_lock = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*, i32)* @moea64_pte_clear_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea64_pte_clear_native(i32 %0, %struct.pvo_entry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lpte*, align 8
  %9 = alloca %struct.lpte, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.lpte*, %struct.lpte** @moea64_pteg_table, align 8
  %12 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %13 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.lpte, %struct.lpte* %11, i64 %16
  store %struct.lpte* %17, %struct.lpte** %8, align 8
  %18 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %19 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MA_OWNED, align 4
  %22 = call i32 @PMAP_LOCK_ASSERT(i32 %20, i32 %21)
  %23 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %24 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %23, %struct.lpte* %9)
  %25 = call i32 @rw_rlock(i32* @moea64_eviction_lock)
  %26 = load %struct.lpte*, %struct.lpte** %8, align 8
  %27 = getelementptr inbounds %struct.lpte, %struct.lpte* %26, i32 0, i32 0
  %28 = load volatile i32, i32* %27, align 4
  %29 = call i32 @be64toh(i32 %28)
  %30 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %31 = and i32 %29, %30
  %32 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %31, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  store i32 -1, i32* %4, align 4
  br label %76

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @LPTE_REF, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %62

43:                                               ; preds = %39
  %44 = call i32 (...) @PTESYNC()
  %45 = load %struct.lpte*, %struct.lpte** %8, align 8
  %46 = getelementptr inbounds %struct.lpte, %struct.lpte* %45, i32 0, i32 1
  %47 = load volatile i32, i32* %46, align 4
  %48 = call i32 @be64toh(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i32 0, i32 1
  %50 = getelementptr inbounds i32, i32* %49, i64 6
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.lpte*, %struct.lpte** %8, align 8
  %53 = getelementptr inbounds %struct.lpte, %struct.lpte* %52, i32 0, i32 1
  %54 = getelementptr inbounds i32, i32* %53, i64 6
  store volatile i32 %51, i32* %54, align 4
  %55 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %56 = call i32 (...) @critical_enter()
  %57 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %58 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @TLBIE(i32 %59)
  %61 = call i32 (...) @critical_exit()
  br label %70

62:                                               ; preds = %39
  %63 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %64 = load i32, i32* %5, align 4
  %65 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %66 = call i32 @moea64_pte_unset_native(i32 %64, %struct.pvo_entry* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %69 = call i32 @moea64_pte_insert_native(i32 %67, %struct.pvo_entry* %68)
  br label %70

70:                                               ; preds = %62, %43
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @LPTE_REF, align 4
  %73 = load i32, i32* @LPTE_CHG, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %70, %37
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @PTESYNC(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @TLBIE(i32) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @moea64_pte_unset_native(i32, %struct.pvo_entry*) #1

declare dso_local i32 @moea64_pte_insert_native(i32, %struct.pvo_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
