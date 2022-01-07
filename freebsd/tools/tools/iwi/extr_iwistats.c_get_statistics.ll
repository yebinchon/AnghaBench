; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/iwi/extr_iwistats.c_get_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/iwi/extr_iwistats.c_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statistic = type { i32, i8* }

@get_statistics.stats = internal global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"iwi%u\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid interface name '%s'\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dev.iwi.%u.stats\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't retrieve statistics\00", align 1
@tbl = common dso_local global %struct.statistic* null, align 8
@.str.4 = private unnamed_addr constant [11 x i8] c"%-60s[%u]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_statistics(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.statistic*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @sscanf(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %6)
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @EX_DATAERR, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @errx(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %10, %1
  store i64 1024, i64* %5, align 8
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @snprintf(i8* %15, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %19 = call i32 @sysctlbyname(i8* %18, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @get_statistics.stats, i64 0, i64 0), i64* %5, i32* null, i32 0)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EX_OSERR, align 4
  %23 = call i32 @err(i32 %22, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %14
  %25 = load %struct.statistic*, %struct.statistic** @tbl, align 8
  store %struct.statistic* %25, %struct.statistic** %3, align 8
  br label %26

26:                                               ; preds = %42, %24
  %27 = load %struct.statistic*, %struct.statistic** %3, align 8
  %28 = getelementptr inbounds %struct.statistic, %struct.statistic* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.statistic*, %struct.statistic** %3, align 8
  %33 = getelementptr inbounds %struct.statistic, %struct.statistic* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load %struct.statistic*, %struct.statistic** %3, align 8
  %36 = getelementptr inbounds %struct.statistic, %struct.statistic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [256 x i32], [256 x i32]* @get_statistics.stats, i64 0, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* %34, i32 %40)
  br label %42

42:                                               ; preds = %31
  %43 = load %struct.statistic*, %struct.statistic** %3, align 8
  %44 = getelementptr inbounds %struct.statistic, %struct.statistic* %43, i32 1
  store %struct.statistic* %44, %struct.statistic** %3, align 8
  br label %26

45:                                               ; preds = %26
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i64*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
