; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_remove_spare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mptutil/extr_mpt_config.c_remove_spare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mpt_drive_list = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"remove spare: drive required\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mpt_unit = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"mpt_open\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Failed to find drive %s\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to fetch drive info\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"Drive %u is not a hot spare\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Failed to delete physical disk page\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @remove_spare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_spare(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.mpt_drive_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %3, align 4
  br label %103

16:                                               ; preds = %2
  %17 = load i32, i32* @mpt_unit, align 4
  %18 = call i32 @mpt_open(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @errno, align 4
  store i32 %22, i32* %9, align 4
  %23 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %3, align 4
  br label %103

25:                                               ; preds = %16
  %26 = load i32, i32* %10, align 4
  %27 = call %struct.mpt_drive_list* @mpt_pd_list(i32 %26)
  store %struct.mpt_drive_list* %27, %struct.mpt_drive_list** %7, align 8
  %28 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %7, align 8
  %29 = icmp eq %struct.mpt_drive_list* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @close(i32 %31)
  %33 = load i32, i32* @errno, align 4
  store i32 %33, i32* %3, align 4
  br label %103

34:                                               ; preds = %25
  %35 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %7, align 8
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 1
  %38 = load i8*, i8** %37, align 8
  %39 = call i32 @mpt_lookup_drive(%struct.mpt_drive_list* %35, i8* %38, i32* %8)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %34
  %43 = load i8**, i8*** %5, align 8
  %44 = getelementptr inbounds i8*, i8** %43, i64 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @close(i32 %47)
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %3, align 4
  br label %103

50:                                               ; preds = %34
  %51 = load %struct.mpt_drive_list*, %struct.mpt_drive_list** %7, align 8
  %52 = call i32 @mpt_free_pd_list(%struct.mpt_drive_list* %51)
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call %struct.TYPE_6__* @mpt_pd_info(i32 %53, i32 %54, i32* null)
  store %struct.TYPE_6__* %55, %struct.TYPE_6__** %6, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %57 = icmp eq %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %50
  %59 = load i32, i32* @errno, align 4
  store i32 %59, i32* %9, align 4
  %60 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %103

64:                                               ; preds = %50
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %71)
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %74 = call i32 @free(%struct.TYPE_6__* %73)
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @close(i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  store i32 %77, i32* %3, align 4
  br label %103

78:                                               ; preds = %64
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i64 @mpt_delete_physdisk(i32 %79, i32 %80)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %78
  %84 = load i32, i32* @errno, align 4
  store i32 %84, i32* %9, align 4
  %85 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %87 = call i32 @free(%struct.TYPE_6__* %86)
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @close(i32 %88)
  %90 = load i32, i32* %9, align 4
  store i32 %90, i32* %3, align 4
  br label %103

91:                                               ; preds = %78
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @mpt_rescan_bus(i32 %94, i32 %97)
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = call i32 @free(%struct.TYPE_6__* %99)
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @close(i32 %101)
  store i32 0, i32* %3, align 4
  br label %103

103:                                              ; preds = %91, %83, %70, %58, %42, %30, %21, %13
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @mpt_open(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local %struct.mpt_drive_list* @mpt_pd_list(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @mpt_lookup_drive(%struct.mpt_drive_list*, i8*, i32*) #1

declare dso_local i32 @mpt_free_pd_list(%struct.mpt_drive_list*) #1

declare dso_local %struct.TYPE_6__* @mpt_pd_info(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

declare dso_local i64 @mpt_delete_physdisk(i32, i32) #1

declare dso_local i32 @mpt_rescan_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
