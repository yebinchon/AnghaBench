; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_unset_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_unset_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpte = type { i32, i32 }
%struct.pvo_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@moea64_pteg_table = common dso_local global %struct.lpte* null, align 8
@moea64_eviction_lock = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@moea64_pte_overflow = common dso_local global i32 0, align 4
@LPTE_VALID = common dso_local global i32 0, align 4
@LPTE_LOCKED = common dso_local global i32 0, align 4
@moea64_pte_valid = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @moea64_pte_unset_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea64_pte_unset_native(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca %struct.lpte*, align 8
  %7 = alloca %struct.lpte, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  %9 = load %struct.lpte*, %struct.lpte** @moea64_pteg_table, align 8
  %10 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %11 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.lpte, %struct.lpte* %9, i64 %14
  store %struct.lpte* %15, %struct.lpte** %6, align 8
  %16 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %17 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %16, %struct.lpte* %7)
  %18 = call i32 @rw_rlock(i32* @moea64_eviction_lock)
  %19 = load %struct.lpte*, %struct.lpte** %6, align 8
  %20 = getelementptr inbounds %struct.lpte, %struct.lpte* %19, i32 0, i32 0
  %21 = load volatile i32, i32* %20, align 4
  %22 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %23 = and i32 %21, %22
  %24 = call i32 @be64toh(i32 %23)
  %25 = getelementptr inbounds %struct.lpte, %struct.lpte* %7, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %24, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load i32, i32* @moea64_pte_overflow, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* @moea64_pte_overflow, align 4
  %33 = call i32 @STAT_MOEA64(i32 %31)
  %34 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  store i32 -1, i32* %3, align 4
  br label %72

35:                                               ; preds = %2
  %36 = call i32 (...) @isync()
  %37 = call i32 (...) @critical_enter()
  %38 = load %struct.lpte*, %struct.lpte** %6, align 8
  %39 = getelementptr inbounds %struct.lpte, %struct.lpte* %38, i32 0, i32 0
  %40 = load volatile i32, i32* %39, align 4
  %41 = load i32, i32* @LPTE_VALID, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* @LPTE_LOCKED, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @be64toh(i32 %45)
  %47 = load %struct.lpte*, %struct.lpte** %6, align 8
  %48 = getelementptr inbounds %struct.lpte, %struct.lpte* %47, i32 0, i32 0
  store volatile i32 %46, i32* %48, align 4
  %49 = call i32 (...) @PTESYNC()
  %50 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %51 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @TLBIE(i32 %52)
  %54 = load %struct.lpte*, %struct.lpte** %6, align 8
  %55 = getelementptr inbounds %struct.lpte, %struct.lpte* %54, i32 0, i32 1
  %56 = load volatile i32, i32* %55, align 4
  %57 = call i32 @be64toh(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.lpte*, %struct.lpte** %6, align 8
  %59 = getelementptr inbounds %struct.lpte, %struct.lpte* %58, i32 0, i32 0
  %60 = bitcast i32* %59 to i64*
  %61 = getelementptr inbounds i64, i64* %60, i64 1
  store volatile i64 0, i64* %61, align 8
  %62 = call i32 (...) @critical_exit()
  %63 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %64 = load i32, i32* @moea64_pte_valid, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* @moea64_pte_valid, align 4
  %66 = call i32 @STAT_MOEA64(i32 %64)
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @LPTE_CHG, align 4
  %69 = load i32, i32* @LPTE_REF, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %67, %70
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %35, %30
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @STAT_MOEA64(i32) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @isync(...) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @PTESYNC(...) #1

declare dso_local i32 @TLBIE(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
