; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xferstat = type { i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@v_progress = common dso_local global i64 0, align 8
@v_level = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%-46s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xferstat*, i8*, i8*, i8*)* @stat_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_start(%struct.xferstat* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.xferstat*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.xferstat* %0, %struct.xferstat** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %10 = call i32 @memset(%struct.xferstat* %9, i32 0, i32 56)
  %11 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %12 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @snprintf(i8* %13, i32 8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %14)
  %16 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %17 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %16, i32 0, i32 5
  %18 = call i32 @gettimeofday(i32* %17, i32* null)
  %19 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %20 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %23 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 4
  %24 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %25 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %24, i32 0, i32 7
  store i32 %21, i32* %25, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %28 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %27, i32 0, i32 4
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %31 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %34 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %33, i32 0, i32 2
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %37 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = load i64, i64* @v_progress, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %4
  %41 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %42 = call i32 @stat_display(%struct.xferstat* %41, i32 1)
  br label %53

43:                                               ; preds = %4
  %44 = load i64, i64* @v_level, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32, i32* @stderr, align 4
  %48 = load %struct.xferstat*, %struct.xferstat** %5, align 8
  %49 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @fprintf(i32 %47, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %46, %43
  br label %53

53:                                               ; preds = %52, %40
  ret void
}

declare dso_local i32 @memset(%struct.xferstat*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @stat_display(%struct.xferstat*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
