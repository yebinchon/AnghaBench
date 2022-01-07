; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_zonecheck.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/diskinfo/extr_diskinfo.c_zonecheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_zone_args = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@DISK_ZONE_GET_PARAMS = common dso_local global i32 0, align 4
@DIOCZONECMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Not_Zoned\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Host_Aware\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Drive_Managed\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Host_Managed\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Unknown_zone_mode_%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*, i64)* @zonecheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zonecheck(i32 %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.disk_zone_args, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = call i32 @bzero(%struct.disk_zone_args* %9, i32 8)
  %12 = load i32, i32* @DISK_ZONE_GET_PARAMS, align 4
  %13 = getelementptr inbounds %struct.disk_zone_args, %struct.disk_zone_args* %9, i32 0, i32 1
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @DIOCZONECMD, align 4
  %16 = call i32 @ioctl(i32 %14, i32 %15, %struct.disk_zone_args* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %4
  %20 = getelementptr inbounds %struct.disk_zone_args, %struct.disk_zone_args* %9, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %43 [
    i32 128, label %27
    i32 130, label %31
    i32 131, label %35
    i32 129, label %39
  ]

27:                                               ; preds = %19
  %28 = load i8*, i8** %7, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %28, i64 %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %49

31:                                               ; preds = %19
  %32 = load i8*, i8** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %32, i64 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %49

35:                                               ; preds = %19
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  br label %49

39:                                               ; preds = %19
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %40, i64 %41, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  br label %49

43:                                               ; preds = %19
  %44 = load i8*, i8** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %44, i64 %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  br label %49

49:                                               ; preds = %43, %39, %35, %31, %27
  br label %50

50:                                               ; preds = %49, %4
  %51 = load i32, i32* %10, align 4
  ret i32 %51
}

declare dso_local i32 @bzero(%struct.disk_zone_args*, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.disk_zone_args*) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
