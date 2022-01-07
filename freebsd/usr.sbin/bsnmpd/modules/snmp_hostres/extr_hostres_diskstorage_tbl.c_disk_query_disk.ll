; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_disk_query_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_disk_query_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_entry = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@_PATH_DEV = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"OPENING device %s\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"OPEN device %s failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@DIOCGMEDIASIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"DIOCGMEDIASIZE for device %s failed: %s\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disk_entry*)* @disk_query_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_query_disk(%struct.disk_entry* %0) #0 {
  %2 = alloca %struct.disk_entry*, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.disk_entry* %0, %struct.disk_entry** %2, align 8
  %6 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %7 = icmp eq %struct.disk_entry* %6, null
  br i1 %7, label %16, label %8

8:                                                ; preds = %1
  %9 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %10 = getelementptr inbounds %struct.disk_entry, %struct.disk_entry* %9, i32 0, i32 0
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds i8, i8* %11, i64 0
  %13 = load i8, i8* %12, align 1
  %14 = sext i8 %13 to i32
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %8, %1
  br label %74

17:                                               ; preds = %8
  %18 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %19 = load i8*, i8** @_PATH_DEV, align 8
  %20 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %21 = getelementptr inbounds %struct.disk_entry, %struct.disk_entry* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @snprintf(i8* %18, i32 128, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %19, i8* %22)
  %24 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %25 = getelementptr inbounds %struct.disk_entry, %struct.disk_entry* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %27 = call i32 (i8*, i8*, ...) @HRDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %29 = load i32, i32* @O_RDONLY, align 4
  %30 = load i32, i32* @O_NONBLOCK, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @open(i8* %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %39

34:                                               ; preds = %17
  %35 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %36 = load i32, i32* @errno, align 4
  %37 = call i32 @strerror(i32 %36)
  %38 = call i32 (i8*, i8*, ...) @HRDBG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %35, i32 %37)
  br label %74

39:                                               ; preds = %17
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @DIOCGMEDIASIZE, align 4
  %42 = call i64 @ioctl(i32 %40, i32 %41, i32* %5)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %46 = load i32, i32* @errno, align 4
  %47 = call i32 @strerror(i32 %46)
  %48 = call i32 (i8*, i8*, ...) @HRDBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 %47)
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @close(i32 %49)
  br label %74

51:                                               ; preds = %39
  %52 = load i32, i32* %5, align 4
  %53 = sdiv i32 %52, 1024
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @INT_MAX, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* @INT_MAX, align 4
  br label %61

59:                                               ; preds = %51
  %60 = load i32, i32* %5, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi i32 [ %58, %57 ], [ %60, %59 ]
  %63 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %64 = getelementptr inbounds %struct.disk_entry, %struct.disk_entry* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %66 = getelementptr inbounds %struct.disk_entry, %struct.disk_entry* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %69 = getelementptr inbounds %struct.disk_entry, %struct.disk_entry* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @partition_tbl_handle_disk(i32 %67, i8* %70)
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @close(i32 %72)
  br label %74

74:                                               ; preds = %61, %44, %34, %16
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @HRDBG(i8*, i8*, ...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @partition_tbl_handle_disk(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
