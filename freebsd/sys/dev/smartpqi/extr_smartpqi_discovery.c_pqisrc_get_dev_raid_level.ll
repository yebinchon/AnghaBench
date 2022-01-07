; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_dev_raid_level.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_discovery.c_pqisrc_get_dev_raid_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@.str = private unnamed_addr constant [4 x i8] c"IN\0A\00", align 1
@SA_RAID_UNKNOWN = common dso_local global i64 0, align 8
@VPD_PAGE = common dso_local global i32 0, align 4
@SA_VPD_LV_DEVICE_GEOMETRY = common dso_local global i32 0, align 4
@SA_RAID_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"RAID LEVEL: %x \0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"OUT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_3__*)* @pqisrc_get_dev_raid_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pqisrc_get_dev_raid_level(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %8 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %9 = load i64, i64* @SA_RAID_UNKNOWN, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i64* @os_mem_alloc(i32* %10, i32 64)
  store i64* %11, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = icmp ne i64* %12, null
  br i1 %13, label %14, label %41

14:                                               ; preds = %2
  %15 = load i32*, i32** %3, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VPD_PAGE, align 4
  %20 = load i32, i32* @SA_VPD_LV_DEVICE_GEOMETRY, align 4
  %21 = or i32 %19, %20
  %22 = load i64*, i64** %6, align 8
  %23 = call i32 @pqisrc_send_scsi_inquiry(i32* %15, i32 %18, i32 %21, i64* %22, i32 64)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %14
  %27 = load i64*, i64** %6, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @SA_RAID_MAX, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i64, i64* @SA_RAID_UNKNOWN, align 8
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %33, %26
  br label %36

36:                                               ; preds = %35, %14
  %37 = load i32*, i32** %3, align 8
  %38 = load i64*, i64** %6, align 8
  %39 = bitcast i64* %38 to i8*
  %40 = call i32 @os_mem_free(i32* %37, i8* %39, i32 64)
  br label %41

41:                                               ; preds = %36, %2
  %42 = load i64, i64* %5, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i32 @DBG_DISC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = call i32 @DBG_FUNC(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DBG_FUNC(i8*) #1

declare dso_local i64* @os_mem_alloc(i32*, i32) #1

declare dso_local i32 @pqisrc_send_scsi_inquiry(i32*, i32, i32, i64*, i32) #1

declare dso_local i32 @os_mem_free(i32*, i8*, i32) #1

declare dso_local i32 @DBG_DISC(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
