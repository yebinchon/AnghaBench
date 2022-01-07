; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_meta_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_intel.c_intel_meta_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_raid_conf = type { i32 }

@M_MD_INTEL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intel_raid_conf* (%struct.intel_raid_conf*)* @intel_meta_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intel_raid_conf* @intel_meta_copy(%struct.intel_raid_conf* %0) #0 {
  %2 = alloca %struct.intel_raid_conf*, align 8
  %3 = alloca %struct.intel_raid_conf*, align 8
  store %struct.intel_raid_conf* %0, %struct.intel_raid_conf** %2, align 8
  %4 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %5 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @M_MD_INTEL, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call %struct.intel_raid_conf* @malloc(i32 %6, i32 %7, i32 %8)
  store %struct.intel_raid_conf* %9, %struct.intel_raid_conf** %3, align 8
  %10 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %3, align 8
  %11 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %12 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %2, align 8
  %13 = getelementptr inbounds %struct.intel_raid_conf, %struct.intel_raid_conf* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @memcpy(%struct.intel_raid_conf* %10, %struct.intel_raid_conf* %11, i32 %14)
  %16 = load %struct.intel_raid_conf*, %struct.intel_raid_conf** %3, align 8
  ret %struct.intel_raid_conf* %16
}

declare dso_local %struct.intel_raid_conf* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.intel_raid_conf*, %struct.intel_raid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
