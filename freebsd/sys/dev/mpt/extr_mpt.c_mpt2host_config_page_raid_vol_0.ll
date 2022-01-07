; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt2host_config_page_raid_vol_0.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt.c_mpt2host_config_page_raid_vol_0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@VolumeStatus = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@VolumeSettings = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@MaxLBA = common dso_local global i32 0, align 4
@MaxLBAHigh = common dso_local global i32 0, align 4
@StripeSize = common dso_local global i32 0, align 4
@Reserved2 = common dso_local global i32 0, align 4
@Reserved3 = common dso_local global i32 0, align 4
@MPI_RAID_VOL_PAGE_0_PHYSDISK_MAX = common dso_local global i32 0, align 4
@PhysDisk = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpt2host_config_page_raid_vol_0(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %4 = load i32*, i32** %2, align 8
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @VolumeStatus, i32 0, i32 0), align 4
  %6 = call i32 @MPT_2_HOST16(i32* %4, i32 %5)
  %7 = load i32*, i32** %2, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @VolumeSettings, i32 0, i32 0), align 4
  %9 = call i32 @MPT_2_HOST16(i32* %7, i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* @MaxLBA, align 4
  %12 = call i32 @MPT_2_HOST32(i32* %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = load i32, i32* @MaxLBAHigh, align 4
  %15 = call i32 @MPT_2_HOST32(i32* %13, i32 %14)
  %16 = load i32*, i32** %2, align 8
  %17 = load i32, i32* @StripeSize, align 4
  %18 = call i32 @MPT_2_HOST32(i32* %16, i32 %17)
  %19 = load i32*, i32** %2, align 8
  %20 = load i32, i32* @Reserved2, align 4
  %21 = call i32 @MPT_2_HOST32(i32* %19, i32 %20)
  %22 = load i32*, i32** %2, align 8
  %23 = load i32, i32* @Reserved3, align 4
  %24 = call i32 @MPT_2_HOST32(i32* %22, i32 %23)
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %38, %1
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @MPI_RAID_VOL_PAGE_0_PHYSDISK_MAX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

29:                                               ; preds = %25
  %30 = load i32*, i32** %2, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PhysDisk, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MPT_2_HOST16(i32* %30, i32 %36)
  br label %38

38:                                               ; preds = %29
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %25

41:                                               ; preds = %25
  ret void
}

declare dso_local i32 @MPT_2_HOST16(i32*, i32) #1

declare dso_local i32 @MPT_2_HOST32(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
