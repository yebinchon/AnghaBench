; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_insert_native.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/aim/extr_moea64_native.c_moea64_pte_insert_native.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvo_entry = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.lpte = type { i32 }

@moea64_eviction_lock = common dso_local global i32 0, align 4
@LPTE_VALID = common dso_local global i32 0, align 4
@LPTE_WIRED = common dso_local global i32 0, align 4
@LPTE_LOCKED = common dso_local global i32 0, align 4
@PVO_HID = common dso_local global i32 0, align 4
@LPTE_HID = common dso_local global i32 0, align 4
@moea64_pteg_mask = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"moea64_pte_insert: overflow\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.pvo_entry*)* @moea64_pte_insert_native to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @moea64_pte_insert_native(i32 %0, %struct.pvo_entry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvo_entry*, align 8
  %6 = alloca %struct.lpte, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.pvo_entry* %1, %struct.pvo_entry** %5, align 8
  %8 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %9 = call i32 @moea64_pte_from_pvo(%struct.pvo_entry* %8, %struct.lpte* %6)
  %10 = call i32 @rw_rlock(i32* @moea64_eviction_lock)
  %11 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %12 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = and i64 %14, -8
  store i64 %15, i64* %13, align 8
  %16 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %17 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i32, i32* @LPTE_VALID, align 4
  %21 = load i32, i32* @LPTE_WIRED, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @LPTE_LOCKED, align 4
  %24 = or i32 %22, %23
  %25 = call i64 @moea64_insert_to_pteg_native(%struct.lpte* %6, i64 %19, i32 %24)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %2
  %29 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %30 = load i64, i64* %7, align 8
  %31 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %32 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 %30, i64* %33, align 8
  store i32 0, i32* %3, align 4
  br label %130

34:                                               ; preds = %2
  %35 = load i32, i32* @PVO_HID, align 4
  %36 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %37 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = xor i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load i32, i32* @LPTE_HID, align 4
  %41 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = xor i32 %42, %40
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* @moea64_pteg_mask, align 4
  %45 = shl i32 %44, 3
  %46 = sext i32 %45 to i64
  %47 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %48 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = xor i64 %50, %46
  store i64 %51, i64* %49, align 8
  %52 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %53 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* @LPTE_VALID, align 4
  %57 = load i32, i32* @LPTE_WIRED, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @LPTE_LOCKED, align 4
  %60 = or i32 %58, %59
  %61 = call i64 @moea64_insert_to_pteg_native(%struct.lpte* %6, i64 %55, i32 %60)
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, -1
  br i1 %63, label %64, label %70

64:                                               ; preds = %34
  %65 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %68 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  store i64 %66, i64* %69, align 8
  store i32 0, i32* %3, align 4
  br label %130

70:                                               ; preds = %34
  %71 = call i32 @rw_try_upgrade(i32* @moea64_eviction_lock)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = call i32 @rw_runlock(i32* @moea64_eviction_lock)
  %75 = call i32 @rw_wlock(i32* @moea64_eviction_lock)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %78 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @LPTE_WIRED, align 4
  %82 = load i32, i32* @LPTE_LOCKED, align 4
  %83 = or i32 %81, %82
  %84 = call i64 @moea64_insert_to_pteg_native(%struct.lpte* %6, i64 %80, i32 %83)
  store i64 %84, i64* %7, align 8
  %85 = load i64, i64* %7, align 8
  %86 = icmp ne i64 %85, -1
  br i1 %86, label %87, label %93

87:                                               ; preds = %76
  %88 = call i32 @rw_wunlock(i32* @moea64_eviction_lock)
  %89 = load i64, i64* %7, align 8
  %90 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %91 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  store i32 0, i32* %3, align 4
  br label %130

93:                                               ; preds = %76
  %94 = load i32, i32* @PVO_HID, align 4
  %95 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %96 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = xor i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load i32, i32* @LPTE_HID, align 4
  %100 = getelementptr inbounds %struct.lpte, %struct.lpte* %6, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = xor i32 %101, %99
  store i32 %102, i32* %100, align 4
  %103 = load i32, i32* @moea64_pteg_mask, align 4
  %104 = shl i32 %103, 3
  %105 = sext i32 %104 to i64
  %106 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %107 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = xor i64 %109, %105
  store i64 %110, i64* %108, align 8
  %111 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %112 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @LPTE_WIRED, align 4
  %116 = load i32, i32* @LPTE_LOCKED, align 4
  %117 = or i32 %115, %116
  %118 = call i64 @moea64_insert_to_pteg_native(%struct.lpte* %6, i64 %114, i32 %117)
  store i64 %118, i64* %7, align 8
  %119 = load i64, i64* %7, align 8
  %120 = icmp ne i64 %119, -1
  br i1 %120, label %121, label %127

121:                                              ; preds = %93
  %122 = call i32 @rw_wunlock(i32* @moea64_eviction_lock)
  %123 = load i64, i64* %7, align 8
  %124 = load %struct.pvo_entry*, %struct.pvo_entry** %5, align 8
  %125 = getelementptr inbounds %struct.pvo_entry, %struct.pvo_entry* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  store i32 0, i32* %3, align 4
  br label %130

127:                                              ; preds = %93
  %128 = call i32 @rw_wunlock(i32* @moea64_eviction_lock)
  %129 = call i32 @panic(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %130

130:                                              ; preds = %127, %121, %87, %64, %28
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local i32 @moea64_pte_from_pvo(%struct.pvo_entry*, %struct.lpte*) #1

declare dso_local i32 @rw_rlock(i32*) #1

declare dso_local i64 @moea64_insert_to_pteg_native(%struct.lpte*, i64, i32) #1

declare dso_local i32 @rw_runlock(i32*) #1

declare dso_local i32 @rw_try_upgrade(i32*) #1

declare dso_local i32 @rw_wlock(i32*) #1

declare dso_local i32 @rw_wunlock(i32*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
