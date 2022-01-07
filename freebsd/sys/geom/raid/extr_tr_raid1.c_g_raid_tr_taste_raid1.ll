; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_taste_raid1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid1.c_g_raid_tr_taste_raid1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }
%struct.g_raid_volume = type { i32 }
%struct.g_raid_tr_raid1_object = type { i32 }

@G_RAID_VOLUME_RL_RAID1 = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R1SM = common dso_local global i64 0, align 8
@G_RAID_VOLUME_RLQ_R1MM = common dso_local global i64 0, align 8
@G_RAID_TR_TASTE_FAIL = common dso_local global i32 0, align 4
@G_RAID_TR_TASTE_SUCCEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_raid_tr_object*, %struct.g_raid_volume*)* @g_raid_tr_taste_raid1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_raid_tr_taste_raid1(%struct.g_raid_tr_object* %0, %struct.g_raid_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_raid_tr_object*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_tr_raid1_object*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %4, align 8
  store %struct.g_raid_volume* %1, %struct.g_raid_volume** %5, align 8
  %7 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %8 = bitcast %struct.g_raid_tr_object* %7 to %struct.g_raid_tr_raid1_object*
  store %struct.g_raid_tr_raid1_object* %8, %struct.g_raid_tr_raid1_object** %6, align 8
  %9 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %10 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @G_RAID_VOLUME_RL_RAID1, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %32, label %16

16:                                               ; preds = %2
  %17 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %18 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @G_RAID_VOLUME_RLQ_R1SM, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %4, align 8
  %26 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @G_RAID_VOLUME_RLQ_R1MM, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24, %2
  %33 = load i32, i32* @G_RAID_TR_TASTE_FAIL, align 4
  store i32 %33, i32* %3, align 4
  br label %38

34:                                               ; preds = %24, %16
  %35 = load %struct.g_raid_tr_raid1_object*, %struct.g_raid_tr_raid1_object** %6, align 8
  %36 = getelementptr inbounds %struct.g_raid_tr_raid1_object, %struct.g_raid_tr_raid1_object* %35, i32 0, i32 0
  store i32 1, i32* %36, align 4
  %37 = load i32, i32* @G_RAID_TR_TASTE_SUCCEED, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %32
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
