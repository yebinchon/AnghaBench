; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_get_vol_curr_migr_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_get_vol_curr_migr_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_raid_vol = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_raid_vol*)* @intel_get_vol_curr_migr_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_get_vol_curr_migr_unit(%struct.intel_raid_vol* %0) #0 {
  %2 = alloca %struct.intel_raid_vol*, align 8
  %3 = alloca i32, align 4
  store %struct.intel_raid_vol* %0, %struct.intel_raid_vol** %2, align 8
  %4 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %2, align 8
  %5 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = trunc i64 %6 to i32
  %8 = shl i32 %7, 32
  store i32 %8, i32* %3, align 4
  %9 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %2, align 8
  %10 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* %3, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %11
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
