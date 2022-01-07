; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_lpd_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_common.c_lpd_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@TIMESTR_SIZE = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@LPD_TIMESTAMP_PATTERN = common dso_local global i32 0, align 4
@daylight = common dso_local global i64 0, align 8
@timezone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpd_gettime(%struct.timespec* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.timespec, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i32, i32* @TIMESTR_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %9, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %10, align 8
  %16 = load %struct.timespec*, %struct.timespec** %4, align 8
  %17 = icmp eq %struct.timespec* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.timespec* %7, %struct.timespec** %4, align 8
  br label %19

19:                                               ; preds = %18, %3
  %20 = load %struct.timespec*, %struct.timespec** %4, align 8
  %21 = call i32 @memset(%struct.timespec* %20, i32 0, i32 8)
  %22 = load i32, i32* @CLOCK_REALTIME, align 4
  %23 = load %struct.timespec*, %struct.timespec** %4, align 8
  %24 = call i64 @clock_gettime(i32 %22, %struct.timespec* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %19
  %27 = load %struct.timespec*, %struct.timespec** %4, align 8
  %28 = call i32 @memset(%struct.timespec* %27, i32 0, i32 8)
  %29 = call i32 @gettimeofday(%struct.timeval* %8, i32* null)
  %30 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.timespec*, %struct.timespec** %4, align 8
  %33 = getelementptr inbounds %struct.timespec, %struct.timespec* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = mul nsw i32 %35, 1000
  %37 = load %struct.timespec*, %struct.timespec** %4, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %26, %19
  %40 = load i8*, i8** %5, align 8
  %41 = icmp eq i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i64, i64* %6, align 8
  %44 = icmp ult i64 %43, 1
  br i1 %44, label %45, label %46

45:                                               ; preds = %42, %39
  store i32 1, i32* %11, align 4
  br label %69

46:                                               ; preds = %42
  %47 = load i32, i32* @TIMESTR_SIZE, align 4
  %48 = load i32, i32* @LPD_TIMESTAMP_PATTERN, align 4
  %49 = load %struct.timespec*, %struct.timespec** %4, align 8
  %50 = getelementptr inbounds %struct.timespec, %struct.timespec* %49, i32 0, i32 1
  %51 = call i32 @localtime(i32* %50)
  %52 = call i32 @strftime(i8* %15, i32 %47, i32 %48, i32 %51)
  %53 = load i64, i64* %6, align 8
  %54 = load i32, i32* @TIMESTR_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %53, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load i32, i32* @TIMESTR_SIZE, align 4
  %59 = sext i32 %58 to i64
  store i64 %59, i64* %6, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @TIMESTR_SIZE, align 4
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8, i8* %60, i64 %63
  store i8 0, i8* %64, align 1
  br label %65

65:                                               ; preds = %57, %46
  %66 = load i8*, i8** %5, align 8
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @strlcpy(i8* %66, i8* %15, i64 %67)
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %65, %45
  %70 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %70)
  %71 = load i32, i32* %11, align 4
  switch i32 %71, label %73 [
    i32 0, label %72
    i32 1, label %72
  ]

72:                                               ; preds = %69, %69
  ret void

73:                                               ; preds = %69
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.timespec*, i32, i32) #2

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #2

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #2

declare dso_local i32 @strftime(i8*, i32, i32, i32) #2

declare dso_local i32 @localtime(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
