; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_arg2.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/touch/extr_touch.c_stime_arg2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }
%struct.tm = type { i32, i32, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [10 x i8] c"localtime\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"out of range or illegal time specification: MMDDhhmm[yy]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.timespec*)* @stime_arg2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stime_arg2(i8* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timespec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.tm*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.timespec* %2, %struct.timespec** %6, align 8
  %9 = call i32 @time(i32* null)
  store i32 %9, i32* %7, align 4
  %10 = call %struct.tm* @localtime(i32* %7)
  store %struct.tm* %10, %struct.tm** %8, align 8
  %11 = icmp eq %struct.tm* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %3
  %15 = load i8*, i8** %4, align 8
  %16 = call i8* @ATOI2(i8* %15)
  %17 = load %struct.tm*, %struct.tm** %8, align 8
  %18 = getelementptr inbounds %struct.tm, %struct.tm* %17, i32 0, i32 5
  store i8* %16, i8** %18, align 8
  %19 = load %struct.tm*, %struct.tm** %8, align 8
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %19, i32 0, i32 5
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %20, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = call i8* @ATOI2(i8* %23)
  %25 = load %struct.tm*, %struct.tm** %8, align 8
  %26 = getelementptr inbounds %struct.tm, %struct.tm* %25, i32 0, i32 4
  store i8* %24, i8** %26, align 8
  %27 = load i8*, i8** %4, align 8
  %28 = call i8* @ATOI2(i8* %27)
  %29 = load %struct.tm*, %struct.tm** %8, align 8
  %30 = getelementptr inbounds %struct.tm, %struct.tm* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = call i8* @ATOI2(i8* %31)
  %33 = load %struct.tm*, %struct.tm** %8, align 8
  %34 = getelementptr inbounds %struct.tm, %struct.tm* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %14
  %38 = load i8*, i8** %4, align 8
  %39 = call i8* @ATOI2(i8* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.tm*, %struct.tm** %8, align 8
  %42 = getelementptr inbounds %struct.tm, %struct.tm* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.tm*, %struct.tm** %8, align 8
  %44 = getelementptr inbounds %struct.tm, %struct.tm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %45, 39
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.tm*, %struct.tm** %8, align 8
  %49 = getelementptr inbounds %struct.tm, %struct.tm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 100
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %47, %37
  br label %53

53:                                               ; preds = %52, %14
  %54 = load %struct.tm*, %struct.tm** %8, align 8
  %55 = getelementptr inbounds %struct.tm, %struct.tm* %54, i32 0, i32 1
  store i32 -1, i32* %55, align 4
  %56 = load %struct.tm*, %struct.tm** %8, align 8
  %57 = call i32 @mktime(%struct.tm* %56)
  %58 = load %struct.timespec*, %struct.timespec** %6, align 8
  %59 = getelementptr inbounds %struct.timespec, %struct.timespec* %58, i64 1
  %60 = getelementptr inbounds %struct.timespec, %struct.timespec* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  %61 = load %struct.timespec*, %struct.timespec** %6, align 8
  %62 = getelementptr inbounds %struct.timespec, %struct.timespec* %61, i64 0
  %63 = getelementptr inbounds %struct.timespec, %struct.timespec* %62, i32 0, i32 0
  store i32 %57, i32* %63, align 8
  %64 = load %struct.timespec*, %struct.timespec** %6, align 8
  %65 = getelementptr inbounds %struct.timespec, %struct.timespec* %64, i64 0
  %66 = getelementptr inbounds %struct.timespec, %struct.timespec* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, -1
  br i1 %68, label %69, label %71

69:                                               ; preds = %53
  %70 = call i32 @errx(i32 1, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %53
  %72 = load %struct.timespec*, %struct.timespec** %6, align 8
  %73 = getelementptr inbounds %struct.timespec, %struct.timespec* %72, i64 1
  %74 = getelementptr inbounds %struct.timespec, %struct.timespec* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.timespec*, %struct.timespec** %6, align 8
  %76 = getelementptr inbounds %struct.timespec, %struct.timespec* %75, i64 0
  %77 = getelementptr inbounds %struct.timespec, %struct.timespec* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  ret void
}

declare dso_local i32 @time(i32*) #1

declare dso_local %struct.tm* @localtime(i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i8* @ATOI2(i8*) #1

declare dso_local i32 @mktime(%struct.tm*) #1

declare dso_local i32 @errx(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
