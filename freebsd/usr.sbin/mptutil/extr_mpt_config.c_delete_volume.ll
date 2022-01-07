; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_delete_volume.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_delete_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"delete: volume required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"Invalid volume %s\00", align 1
@MPI_RAID_ACTION_DELETE_VOLUME = common dso_local global i32 0, align 4
@MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS = common dso_local global i32 0, align 4
@MPI_RAID_ACTION_ADATA_ZERO_LBA0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to delete volume\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @delete_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @delete_volume(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 2
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = call i32 @warnx(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %71

15:                                               ; preds = %2
  %16 = load i32, i32* @mpt_unit, align 4
  %17 = call i32 @mpt_open(i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @errno, align 4
  store i32 %21, i32* %8, align 4
  %22 = call i32 @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %8, align 4
  store i32 %23, i32* %3, align 4
  br label %71

24:                                               ; preds = %15
  %25 = load i32, i32* %9, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = getelementptr inbounds i8*, i8** %26, i64 1
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @mpt_lookup_volume(i32 %25, i8* %28, i32* %6, i32* %7)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = load i8**, i8*** %5, align 8
  %35 = getelementptr inbounds i8*, i8** %34, i64 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 (i32, i8*, ...) @warnc(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* %8, align 4
  store i32 %40, i32* %3, align 4
  br label %71

41:                                               ; preds = %24
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i64 @mpt_lock_volume(i32 %42, i32 %43)
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* @errno, align 4
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %41
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @MPI_RAID_ACTION_DELETE_VOLUME, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MPI_RAID_ACTION_ADATA_DEL_PHYS_DISKS, align 4
  %56 = load i32, i32* @MPI_RAID_ACTION_ADATA_ZERO_LBA0, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @mpt_raid_action(i32 %51, i32 %52, i32 %53, i32 %54, i32 0, i32 %57, i32* null, i32 0, i32* null, i32* null, i32 0, i32* null, i32* null, i32 0)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %50
  %62 = load i32, i32* %8, align 4
  %63 = call i32 (i32, i8*, ...) @warnc(i32 %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @close(i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %3, align 4
  br label %71

67:                                               ; preds = %50
  %68 = call i32 @mpt_rescan_bus(i32 -1, i32 -1)
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @close(i32 %69)
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %67, %61, %46, %32, %20, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*) #1

declare dso_local i32 @mpt_lookup_volume(i32, i8*, i32*, i32*) #1

declare dso_local i32 @warnc(i32, i8*, ...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i64 @mpt_lock_volume(i32, i32) #1

declare dso_local i32 @mpt_raid_action(i32, i32, i32, i32, i32, i32, i32*, i32, i32*, i32*, i32, i32*, i32*, i32) #1

declare dso_local i32 @mpt_rescan_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
