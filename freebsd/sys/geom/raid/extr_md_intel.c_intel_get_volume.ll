; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_get_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_get_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_raid_vol = type { i64 }
%struct.intel_raid_conf = type { i64, i32* }
%struct.intel_raid_map = type { i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_raid_vol* (%struct.intel_raid_conf*, i32)* @intel_get_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_raid_vol* @intel_get_volume(%struct.intel_raid_conf* %0, i32 %1) #0 {
  %3 = alloca %struct.intel_raid_vol*, align 8
  %4 = alloca %struct.intel_raid_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.intel_raid_vol*, align 8
  %7 = alloca %struct.intel_raid_map*, align 8
  store %struct.intel_raid_conf* %0, %struct.intel_raid_conf** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store %struct.intel_raid_vol* null, %struct.intel_raid_vol** %3, align 8
  br label %45

11:                                               ; preds = %2
  %12 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %4, align 8
  %13 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %4, align 8
  %16 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = bitcast i32* %18 to %struct.intel_raid_vol*
  store %struct.intel_raid_vol* %19, %struct.intel_raid_vol** %6, align 8
  br label %20

20:                                               ; preds = %40, %11
  %21 = load i32, i32* %5, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %43

23:                                               ; preds = %20
  %24 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %6, align 8
  %25 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %6, align 8
  %26 = getelementptr inbounds %struct.intel_raid_vol, %struct.intel_raid_vol* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 1, i32 0
  %31 = call %struct.intel_raid_map* @intel_get_map(%struct.intel_raid_vol* %24, i32 %30)
  store %struct.intel_raid_map* %31, %struct.intel_raid_map** %7, align 8
  %32 = load %struct.intel_raid_map*, %struct.intel_raid_map** %7, align 8
  %33 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.intel_raid_map*, %struct.intel_raid_map** %7, align 8
  %36 = getelementptr inbounds %struct.intel_raid_map, %struct.intel_raid_map* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = bitcast i32* %38 to %struct.intel_raid_vol*
  store %struct.intel_raid_vol* %39, %struct.intel_raid_vol** %6, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %5, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %6, align 8
  store %struct.intel_raid_vol* %44, %struct.intel_raid_vol** %3, align 8
  br label %45

45:                                               ; preds = %43, %10
  %46 = load %struct.intel_raid_vol*, %struct.intel_raid_vol** %3, align 8
  ret %struct.intel_raid_vol* %46
}

declare dso_local %struct.intel_raid_map* @intel_get_map(%struct.intel_raid_vol*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
