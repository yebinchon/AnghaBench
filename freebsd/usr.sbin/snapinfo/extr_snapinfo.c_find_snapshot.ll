; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/snapinfo/extr_snapinfo.c_find_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/snapinfo/extr_snapinfo.c_find_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statfs = type { i32, i32 }
%struct.uufsd = type { i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i64* }

@.str = private unnamed_addr constant [17 x i8] c"ufs_disk_fillout\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"%s mounted on %s\0A\00", align 1
@FSMAXSNAP = common dso_local global i32 0, align 4
@inode = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"\09no snapshots found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.statfs*)* @find_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_snapshot(%struct.statfs* %0) #0 {
  %2 = alloca %struct.statfs*, align 8
  %3 = alloca %struct.uufsd, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.statfs* %0, %struct.statfs** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.statfs*, %struct.statfs** %2, align 8
  %7 = getelementptr inbounds %struct.statfs, %struct.statfs* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ufs_disk_fillout(%struct.uufsd* %3, i32 %8)
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i64, i64* @verbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %13
  %17 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %3, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* %18, i8* %21)
  br label %23

23:                                               ; preds = %16, %13
  store i32 0, i32* %4, align 4
  br label %24

24:                                               ; preds = %52, %23
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @FSMAXSNAP, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %28
  %38 = getelementptr inbounds %struct.uufsd, %struct.uufsd* %3, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* @inode, align 8
  %45 = load %struct.statfs*, %struct.statfs** %2, align 8
  %46 = getelementptr inbounds %struct.statfs, %struct.statfs* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @find_inum(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %37, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %4, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %4, align 4
  br label %24

55:                                               ; preds = %24
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %55
  %59 = load i64, i64* @verbose, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %58, %55
  ret i32 0
}

declare dso_local i32 @ufs_disk_fillout(%struct.uufsd*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @find_inum(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
