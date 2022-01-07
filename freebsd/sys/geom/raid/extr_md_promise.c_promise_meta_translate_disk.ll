; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_translate_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_translate_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_volume = type { i64, i32 }

@G_RAID_VOLUME_RL_RAID1E = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_volume*, i32)* @promise_meta_translate_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @promise_meta_translate_disk(%struct.g_raid_volume* %0, i32 %1) #0 {
  %3 = alloca %struct.g_raid_volume*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.g_raid_volume* %0, %struct.g_raid_volume** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %2
  %10 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %11 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @G_RAID_VOLUME_RL_RAID1E, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %3, align 8
  %17 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 2
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %6, align 4
  %25 = srem i32 %23, %24
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %22, %27
  store i32 %28, i32* %5, align 4
  br label %31

29:                                               ; preds = %9, %2
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %15
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
