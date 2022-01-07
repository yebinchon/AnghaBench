; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_iostart_raid5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_raid5.c_g_raid_tr_iostart_raid5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i32 }
%struct.bio = type { i32 }

@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Invalid command here: %u (volume=%s)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_raid5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_raid5(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %6 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %7 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %6, i32 0, i32 0
  %8 = load %struct.g_raid_volume*, %struct.g_raid_volume** %7, align 8
  store %struct.g_raid_volume* %8, %struct.g_raid_volume** %5, align 8
  %9 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %10 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = load i32, i32* @EIO, align 4
  %17 = call i32 @g_raid_iodone(%struct.bio* %15, i32 %16)
  br label %40

18:                                               ; preds = %2
  %19 = load %struct.bio*, %struct.bio** %4, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %30 [
    i32 129, label %22
    i32 128, label %26
    i32 131, label %26
    i32 130, label %26
  ]

22:                                               ; preds = %18
  %23 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %24 = load %struct.bio*, %struct.bio** %4, align 8
  %25 = call i32 @g_raid_tr_iostart_raid5_read(%struct.g_raid_tr_object* %23, %struct.bio* %24)
  br label %40

26:                                               ; preds = %18, %18, %18
  %27 = load %struct.bio*, %struct.bio** %4, align 8
  %28 = load i32, i32* @ENODEV, align 4
  %29 = call i32 @g_raid_iodone(%struct.bio* %27, i32 %28)
  br label %40

30:                                               ; preds = %18
  %31 = load %struct.bio*, %struct.bio** %4, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %35 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = call i32 @KASSERT(i32 0, i8* %38)
  br label %40

40:                                               ; preds = %14, %30, %26, %22
  ret void
}

declare dso_local i32 @g_raid_iodone(%struct.bio*, i32) #1

declare dso_local i32 @g_raid_tr_iostart_raid5_read(%struct.g_raid_tr_object*, %struct.bio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
