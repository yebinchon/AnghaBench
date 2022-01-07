; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_rotationrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_rotationrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diocgattr_arg = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"GEOM::rotation_rate\00", align 1
@DIOCGATTR = common dso_local global i32 0, align 4
@DISK_RR_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"Unknown\00", align 1
@DISK_RR_NON_ROTATING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@DISK_RR_MIN = common dso_local global i64 0, align 8
@DISK_RR_MAX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"Invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i64)* @rotationrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rotationrate(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.diocgattr_arg, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = getelementptr inbounds %struct.diocgattr_arg, %struct.diocgattr_arg* %7, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @strlcpy(i32 %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 4)
  %12 = getelementptr inbounds %struct.diocgattr_arg, %struct.diocgattr_arg* %7, i32 0, i32 0
  store i32 8, i32* %12, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @DIOCGATTR, align 4
  %15 = call i32 @ioctl(i32 %13, i32 %14, %struct.diocgattr_arg* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.diocgattr_arg, %struct.diocgattr_arg* %7, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @DISK_RR_UNKNOWN, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18, %3
  %25 = load i8*, i8** %5, align 8
  %26 = load i64, i64* %6, align 8
  %27 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %25, i64 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %63

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.diocgattr_arg, %struct.diocgattr_arg* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @DISK_RR_NON_ROTATING, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %35, i64 %36, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %62

38:                                               ; preds = %28
  %39 = getelementptr inbounds %struct.diocgattr_arg, %struct.diocgattr_arg* %7, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DISK_RR_MIN, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.diocgattr_arg, %struct.diocgattr_arg* %7, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DISK_RR_MAX, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  %51 = load i8*, i8** %5, align 8
  %52 = load i64, i64* %6, align 8
  %53 = getelementptr inbounds %struct.diocgattr_arg, %struct.diocgattr_arg* %7, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %51, i64 %52, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %55)
  br label %61

57:                                               ; preds = %44, %38
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %58, i64 %59, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  br label %61

61:                                               ; preds = %57, %50
  br label %62

62:                                               ; preds = %61, %34
  br label %63

63:                                               ; preds = %62, %24
  ret void
}

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.diocgattr_arg*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
