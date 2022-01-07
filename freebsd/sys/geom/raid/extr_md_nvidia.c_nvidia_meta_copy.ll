; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_nvidia.c_nvidia_meta_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvidia_raid_conf = type { i32 }

@M_MD_NVIDIA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nvidia_raid_conf* (%struct.nvidia_raid_conf*)* @nvidia_meta_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nvidia_raid_conf* @nvidia_meta_copy(%struct.nvidia_raid_conf* %0) #0 {
  %2 = alloca %struct.nvidia_raid_conf*, align 8
  %3 = alloca %struct.nvidia_raid_conf*, align 8
  store %struct.nvidia_raid_conf* %0, %struct.nvidia_raid_conf** %2, align 8
  %4 = load i32, i32* @M_MD_NVIDIA, align 4
  %5 = load i32, i32* @M_WAITOK, align 4
  %6 = call %struct.nvidia_raid_conf* @malloc(i32 4, i32 %4, i32 %5)
  store %struct.nvidia_raid_conf* %6, %struct.nvidia_raid_conf** %3, align 8
  %7 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %3, align 8
  %8 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %2, align 8
  %9 = call i32 @memcpy(%struct.nvidia_raid_conf* %7, %struct.nvidia_raid_conf* %8, i32 4)
  %10 = load %struct.nvidia_raid_conf*, %struct.nvidia_raid_conf** %3, align 8
  ret %struct.nvidia_raid_conf* %10
}

declare dso_local %struct.nvidia_raid_conf* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.nvidia_raid_conf*, %struct.nvidia_raid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
