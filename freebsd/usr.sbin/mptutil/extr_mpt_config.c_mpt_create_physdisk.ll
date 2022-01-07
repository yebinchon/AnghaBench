; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_mpt_create_physdisk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_mpt_create_physdisk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_standalone_disk = type { i32, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64, i32 }

@MPI_CONFIG_PAGETYPE_RAID_PHYSDISK = common dso_local global i32 0, align 4
@MPI_RAIDPHYSDISKPAGE0_PAGEVERSION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"Unsupported RAID physdisk page 0 version %d\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@MPI_RAID_ACTION_CREATE_PHYSDISK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.mpt_standalone_disk*, i32*)* @mpt_create_physdisk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpt_create_physdisk(i32 %0, %struct.mpt_standalone_disk* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mpt_standalone_disk*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.mpt_standalone_disk* %1, %struct.mpt_standalone_disk** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_PHYSDISK, align 4
  %14 = call i32 @mpt_read_config_page_header(i32 %12, i32 %13, i32 0, i32 0, %struct.TYPE_9__* %8, i32* null)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* %10, align 4
  store i32 %18, i32* %4, align 4
  br label %65

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MPI_RAIDPHYSDISKPAGE0_PAGEVERSION, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @warnx(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %28, i32* %4, align 4
  br label %65

29:                                               ; preds = %19
  %30 = call %struct.TYPE_8__* @calloc(i32 1, i32 40)
  store %struct.TYPE_8__* %30, %struct.TYPE_8__** %9, align 8
  %31 = load i32, i32* @MPI_CONFIG_PAGETYPE_RAID_PHYSDISK, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 10, i32* %40, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i64 0, i64* %42, align 8
  %43 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %44 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mpt_standalone_disk*, %struct.mpt_standalone_disk** %6, align 8
  %49 = getelementptr inbounds %struct.mpt_standalone_disk, %struct.mpt_standalone_disk* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MPI_RAID_ACTION_CREATE_PHYSDISK, align 4
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %56 = call i32 @mpt_raid_action(i32 %53, i32 %54, i32 0, i32 0, i32 0, i32 0, %struct.TYPE_8__* %55, i32 40, i32* null, i32* %11, i32 4, i32* null, i32* null, i32 1)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %29
  %60 = load i32, i32* %10, align 4
  store i32 %60, i32* %4, align 4
  br label %65

61:                                               ; preds = %29
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 255
  %64 = load i32*, i32** %7, align 8
  store i32 %63, i32* %64, align 4
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %59, %24, %17
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @mpt_read_config_page_header(i32, i32, i32, i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @warnx(i8*, i64) #1

declare dso_local %struct.TYPE_8__* @calloc(i32, i32) #1

declare dso_local i32 @mpt_raid_action(i32, i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32, i32*, i32*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
