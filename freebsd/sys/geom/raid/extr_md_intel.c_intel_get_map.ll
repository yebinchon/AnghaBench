; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_get_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_get_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_raid_map = type { i64, i32* }
%struct.intel_raid_vol = type { %struct.intel_raid_map*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_raid_map* (%struct.intel_raid_vol*, i32)* @intel_get_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_raid_map* @intel_get_map(%struct.intel_raid_vol* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_raid_map*, align 8
  %4 = alloca %struct.intel_raid_vol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_raid_map*, align 8
  store %struct.intel_raid_vol* %0, %struct.intel_raid_vol** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %4, align 8
  %9 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  %14 = icmp sgt i32 %7, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store %struct.intel_raid_map* null, %struct.intel_raid_map** %3, align 8
  br label %38

16:                                               ; preds = %2
  %17 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %4, align 8
  %18 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %17, i32 0, i32 0
  %19 = load %struct.intel_raid_map*, %struct.intel_raid_map** %18, align 8
  %20 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %19, i64 0
  store %struct.intel_raid_map* %20, %struct.intel_raid_map** %6, align 8
  br label %21

21:                                               ; preds = %33, %16
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %36

24:                                               ; preds = %21
  %25 = load %struct.intel_raid_map*, %struct.intel_raid_map** %6, align 8
  %26 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.intel_raid_map*, %struct.intel_raid_map** %6, align 8
  %29 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = bitcast i32* %31 to %struct.intel_raid_map*
  store %struct.intel_raid_map* %32, %struct.intel_raid_map** %6, align 8
  br label %33

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %5, align 4
  br label %21

36:                                               ; preds = %21
  %37 = load %struct.intel_raid_map*, %struct.intel_raid_map** %6, align 8
  store %struct.intel_raid_map* %37, %struct.intel_raid_map** %3, align 8
  br label %38

38:                                               ; preds = %36, %15
  %39 = load %struct.intel_raid_map*, %struct.intel_raid_map** %3, align 8
  ret %struct.intel_raid_map* %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
