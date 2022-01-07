; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_replace_inval_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_replace_inval_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { i32 }
%struct.lpte = type { i32, i32 }

@moea64_eviction_lock = common dso_local global i32 0, align 4
@LPTE_AVPN_MASK = common dso_local global i32 0, align 4
@moea64_pte_overflow = common dso_local global i32 0, align 4
@LPTE_VALID = common dso_local global i32 0, align 4
@LPTE_LOCKED = common dso_local global i32 0, align 4
@LPTE_CHG = common dso_local global i32 0, align 4
@LPTE_REF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*, %struct.lpte*)* @moea64_pte_replace_inval_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea64_pte_replace_inval_native(i32 %0, %struct.pvo_entry* %1, %struct.lpte* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pvo_entry*, align 8
  %7 = alloca %struct.lpte*, align 8
  %8 = alloca %struct.lpte, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %6, align 8
  store %struct.lpte* %2, %struct.lpte** %7, align 8
  %10 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %11 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %10, %struct.lpte* %8)
  %12 = call i32 @rw_rlock(i32* @moea64_eviction_lock)
  %13 = load %struct.lpte*, %struct.lpte** %7, align 8
  %14 = getelementptr inbounds %struct.lpte, %struct.lpte* %13, i32 0, i32 0
  %15 = load volatile i32, i32* %14, align 4
  %16 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %17 = and i32 %15, %16
  %18 = call i32 @be64toh(i32 %17)
  %19 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LPTE_AVPN_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %18, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %3
  %25 = load i32, i32* @moea64_pte_overflow, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* @moea64_pte_overflow, align 4
  %27 = call i32 @STAT_MOEA64(i32 %25)
  %28 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  store i32 -1, i32* %4, align 4
  br label %74

29:                                               ; preds = %3
  %30 = call i32 (...) @isync()
  %31 = call i32 (...) @critical_enter()
  %32 = load %struct.lpte*, %struct.lpte** %7, align 8
  %33 = getelementptr inbounds %struct.lpte, %struct.lpte* %32, i32 0, i32 0
  %34 = load volatile i32, i32* %33, align 4
  %35 = load i32, i32* @LPTE_VALID, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = load i32, i32* @LPTE_LOCKED, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @be64toh(i32 %39)
  %41 = load %struct.lpte*, %struct.lpte** %7, align 8
  %42 = getelementptr inbounds %struct.lpte, %struct.lpte* %41, i32 0, i32 0
  store volatile i32 %40, i32* %42, align 4
  %43 = call i32 (...) @PTESYNC()
  %44 = load %struct.pvo_entry*, %struct.pvo_entry** %6, align 8
  %45 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @TLBIE(i32 %46)
  %48 = load %struct.lpte*, %struct.lpte** %7, align 8
  %49 = getelementptr inbounds %struct.lpte, %struct.lpte* %48, i32 0, i32 1
  %50 = load volatile i32, i32* %49, align 4
  %51 = call i32 @be64toh(i32 %50)
  store i32 %51, i32* %9, align 4
  %52 = call i32 (...) @EIEIO()
  %53 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i8* @htobe64(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  %57 = load %struct.lpte*, %struct.lpte** %7, align 8
  %58 = getelementptr inbounds %struct.lpte, %struct.lpte* %57, i32 0, i32 1
  store volatile i32 %56, i32* %58, align 4
  %59 = call i32 (...) @EIEIO()
  %60 = getelementptr inbounds %struct.lpte, %struct.lpte* %8, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @htobe64(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load %struct.lpte*, %struct.lpte** %7, align 8
  %65 = getelementptr inbounds %struct.lpte, %struct.lpte* %64, i32 0, i32 0
  store volatile i32 %63, i32* %65, align 4
  %66 = call i32 (...) @PTESYNC()
  %67 = call i32 (...) @critical_exit()
  %68 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @LPTE_CHG, align 4
  %71 = load i32, i32* @LPTE_REF, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %29, %24
  %75 = load i32, i32* %4, align 4
  ret i32 %75
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

declare dso_local i32 @EIEIO(...) #1

declare dso_local i8* @htobe64(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
