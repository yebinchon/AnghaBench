; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ipw/extr_ipwstats.c_get_statistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ipw/extr_ipwstats.c_get_statistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.statistic = type { i64, i8*, i32 }

@get_statistics.stats = internal global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [6 x i8] c"ipw%u\00", align 1
@EX_DATAERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid interface name '%s'\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"dev.ipw.%u.stats\00", align 1
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Can't retrieve statistics\00", align 1
@tbl = common dso_local global %struct.statistic* null, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"%-60s[\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%u%%\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"0x%08X\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @get_statistics to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_statistics(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.statistic*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i32 @sscanf(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* %5)
  %9 = icmp ne i32 %8, 1
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @EX_DATAERR, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @errx(i32 %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %12)
  br label %14

14:                                               ; preds = %10, %1
  store i32 1024, i32* %6, align 4
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @snprintf(i8* %15, i32 32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %16)
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %19 = call i32 @sysctlbyname(i8* %18, i32* getelementptr inbounds ([256 x i32], [256 x i32]* @get_statistics.stats, i64 0, i64 0), i32* %6, i32* null, i32 0)
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

26:                                               ; preds = %73, %24
  %27 = load %struct.statistic*, %struct.statistic** %3, align 8
  %28 = getelementptr inbounds %struct.statistic, %struct.statistic* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %76

31:                                               ; preds = %26
  %32 = load %struct.statistic*, %struct.statistic** %3, align 8
  %33 = getelementptr inbounds %struct.statistic, %struct.statistic* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load %struct.statistic*, %struct.statistic** %3, align 8
  %37 = getelementptr inbounds %struct.statistic, %struct.statistic* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %64 [
    i32 129, label %39
    i32 131, label %46
    i32 128, label %56
    i32 130, label %63
  ]

39:                                               ; preds = %31
  %40 = load %struct.statistic*, %struct.statistic** %3, align 8
  %41 = getelementptr inbounds %struct.statistic, %struct.statistic* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds [256 x i32], [256 x i32]* @get_statistics.stats, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %44)
  br label %71

46:                                               ; preds = %31
  %47 = load %struct.statistic*, %struct.statistic** %3, align 8
  %48 = getelementptr inbounds %struct.statistic, %struct.statistic* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* @get_statistics.stats, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)
  %55 = call i32 (i8*, ...) @printf(i8* %54)
  br label %71

56:                                               ; preds = %31
  %57 = load %struct.statistic*, %struct.statistic** %3, align 8
  %58 = getelementptr inbounds %struct.statistic, %struct.statistic* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [256 x i32], [256 x i32]* @get_statistics.stats, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %61)
  br label %71

63:                                               ; preds = %31
  br label %64

64:                                               ; preds = %31, %63
  %65 = load %struct.statistic*, %struct.statistic** %3, align 8
  %66 = getelementptr inbounds %struct.statistic, %struct.statistic* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds [256 x i32], [256 x i32]* @get_statistics.stats, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %64, %56, %46, %39
  %72 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71
  %74 = load %struct.statistic*, %struct.statistic** %3, align 8
  %75 = getelementptr inbounds %struct.statistic, %struct.statistic* %74, i32 1
  store %struct.statistic* %75, %struct.statistic** %3, align 8
  br label %26

76:                                               ; preds = %26
  ret void
}

declare dso_local i32 @sscanf(i8*, i8*, i32*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @sysctlbyname(i8*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
