; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_format_nice.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_machine.c_format_nice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@format_nice.nicebuf = internal global [5 x i8] zeroinitializer, align 1
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@P_KPROC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@PRI_MIN_REALTIME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"%sr%d%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@NZERO = common dso_local global i32 0, align 4
@PRI_MIN_IDLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [8 x i8] c"%si%d%s\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.kinfo_proc*)* @format_nice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @format_nice(%struct.kinfo_proc* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.kinfo_proc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %3, align 8
  %7 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %8 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @PRI_NEED_RR(i32 %10)
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  store i8* %14, i8** %4, align 8
  %15 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %16 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @P_KPROC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0)
  store i8* %22, i8** %5, align 8
  %23 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %24 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @PRI_BASE(i32 %26)
  switch i32 %27, label %94 [
    i32 130, label %28
    i32 129, label %29
    i32 128, label %54
    i32 131, label %69
  ]

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %96

29:                                               ; preds = %1
  %30 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %31 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @P_KPROC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %38 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  br label %46

41:                                               ; preds = %29
  %42 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %43 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %41, %36
  %47 = phi i32 [ %40, %36 ], [ %45, %41 ]
  %48 = load i32, i32* @PRI_MIN_REALTIME, align 4
  %49 = sub nsw i32 %47, %48
  store i32 %49, i32* %6, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %4, align 8
  %53 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @format_nice.nicebuf, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* %50, i32 %51, i8* %52)
  br label %95

54:                                               ; preds = %1
  %55 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %56 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @P_KPROC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %96

62:                                               ; preds = %54
  %63 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %64 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @NZERO, align 4
  %67 = sub nsw i32 %65, %66
  %68 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @format_nice.nicebuf, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %67)
  br label %95

69:                                               ; preds = %1
  %70 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %71 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @P_KPROC, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %78 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  br label %86

81:                                               ; preds = %69
  %82 = load %struct.kinfo_proc*, %struct.kinfo_proc** %3, align 8
  %83 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  br label %86

86:                                               ; preds = %81, %76
  %87 = phi i32 [ %80, %76 ], [ %85, %81 ]
  %88 = load i32, i32* @PRI_MIN_IDLE, align 4
  %89 = sub nsw i32 %87, %88
  store i32 %89, i32* %6, align 4
  %90 = load i8*, i8** %5, align 8
  %91 = load i32, i32* %6, align 4
  %92 = load i8*, i8** %4, align 8
  %93 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @format_nice.nicebuf, i64 0, i64 0), i32 5, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i8* %90, i32 %91, i8* %92)
  br label %95

94:                                               ; preds = %1
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %96

95:                                               ; preds = %86, %62, %46
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @format_nice.nicebuf, i64 0, i64 0), i8** %2, align 8
  br label %96

96:                                               ; preds = %95, %94, %61, %28
  %97 = load i8*, i8** %2, align 8
  ret i8* %97
}

declare dso_local i64 @PRI_NEED_RR(i32) #1

declare dso_local i32 @PRI_BASE(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
