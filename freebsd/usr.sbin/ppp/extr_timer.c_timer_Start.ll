; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_timer_Start.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_timer_Start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppTimer = type { i64, i64, i64, %struct.pppTimer*, i32 }
%struct.itimerval = type { i32 }

@SIGALRM = common dso_local global i32 0, align 4
@SIG_BLOCK = common dso_local global i32 0, align 4
@TIMER_STOPPED = common dso_local global i64 0, align 8
@LogTIMER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s timer[%p] has 0 load!\0A\00", align 1
@SIG_SETMASK = common dso_local global i32 0, align 4
@TimerList = common dso_local global %struct.pppTimer* null, align 8
@ITIMER_REAL = common dso_local global i32 0, align 4
@TIMER_RUNNING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [70 x i8] c"timer_Start: Inserting %s timer[%p] before %s timer[%p], delta = %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"timer_Start: Inserting %s timer[%p]\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_Start(%struct.pppTimer* %0) #0 {
  %2 = alloca %struct.pppTimer*, align 8
  %3 = alloca %struct.itimerval, align 4
  %4 = alloca %struct.pppTimer*, align 8
  %5 = alloca %struct.pppTimer*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pppTimer* %0, %struct.pppTimer** %2, align 8
  store i64 0, i64* %6, align 8
  %9 = call i32 @sigemptyset(i32* %7)
  %10 = load i32, i32* @SIGALRM, align 4
  %11 = call i32 @sigaddset(i32* %7, i32 %10)
  %12 = load i32, i32* @SIG_BLOCK, align 4
  %13 = call i32 @sigprocmask(i32 %12, i32* %7, i32* %8)
  %14 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %15 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TIMER_STOPPED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %21 = call i32 @StopTimerNoBlock(%struct.pppTimer* %20)
  br label %22

22:                                               ; preds = %19, %1
  %23 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %24 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load i32, i32* @LogTIMER, align 4
  %29 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %30 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %33 = call i32 (i32, i8*, i32, %struct.pppTimer*, ...) @log_Printf(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %31, %struct.pppTimer* %32)
  %34 = load i32, i32* @SIG_SETMASK, align 4
  %35 = call i32 @sigprocmask(i32 %34, i32* %8, i32* null)
  br label %142

36:                                               ; preds = %22
  %37 = load %struct.pppTimer*, %struct.pppTimer** @TimerList, align 8
  %38 = icmp ne %struct.pppTimer* %37, null
  br i1 %38, label %39, label %51

39:                                               ; preds = %36
  %40 = load i32, i32* @ITIMER_REAL, align 4
  %41 = call i64 @getitimer(i32 %40, %struct.itimerval* %3)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @RESTVAL(i32 %45)
  %47 = load %struct.pppTimer*, %struct.pppTimer** @TimerList, align 8
  %48 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %6, align 8
  br label %51

51:                                               ; preds = %43, %39, %36
  store %struct.pppTimer* null, %struct.pppTimer** %5, align 8
  %52 = load %struct.pppTimer*, %struct.pppTimer** @TimerList, align 8
  store %struct.pppTimer* %52, %struct.pppTimer** %4, align 8
  br label %53

53:                                               ; preds = %74, %51
  %54 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %55 = icmp ne %struct.pppTimer* %54, null
  br i1 %55, label %56, label %78

56:                                               ; preds = %53
  %57 = load i64, i64* %6, align 8
  %58 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %59 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %57, %60
  %62 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %63 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sge i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %78

67:                                               ; preds = %56
  %68 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %69 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %6, align 8
  %72 = add nsw i64 %71, %70
  store i64 %72, i64* %6, align 8
  %73 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  store %struct.pppTimer* %73, %struct.pppTimer** %5, align 8
  br label %74

74:                                               ; preds = %67
  %75 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %76 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %75, i32 0, i32 3
  %77 = load %struct.pppTimer*, %struct.pppTimer** %76, align 8
  store %struct.pppTimer* %77, %struct.pppTimer** %4, align 8
  br label %53

78:                                               ; preds = %66, %53
  %79 = load i64, i64* @TIMER_RUNNING, align 8
  %80 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %81 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %83 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* %6, align 8
  %86 = sub nsw i64 %84, %85
  %87 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %88 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %87, i32 0, i32 2
  store i64 %86, i64* %88, align 8
  %89 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %90 = icmp ne %struct.pppTimer* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %78
  %92 = load i32, i32* @LogTIMER, align 4
  %93 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %94 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %97 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %98 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %101 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %102 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call i32 (i32, i8*, i32, %struct.pppTimer*, ...) @log_Printf(i32 %92, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i32 %95, %struct.pppTimer* %96, i32 %99, %struct.pppTimer* %100, i64 %103)
  br label %112

105:                                              ; preds = %78
  %106 = load i32, i32* @LogTIMER, align 4
  %107 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %108 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %111 = call i32 (i32, i8*, i32, %struct.pppTimer*, ...) @log_Printf(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %109, %struct.pppTimer* %110)
  br label %112

112:                                              ; preds = %105, %91
  %113 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %114 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %115 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %114, i32 0, i32 3
  store %struct.pppTimer* %113, %struct.pppTimer** %115, align 8
  %116 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %117 = icmp ne %struct.pppTimer* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %120 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %121 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %120, i32 0, i32 3
  store %struct.pppTimer* %119, %struct.pppTimer** %121, align 8
  br label %128

122:                                              ; preds = %112
  %123 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  store %struct.pppTimer* %123, %struct.pppTimer** @TimerList, align 8
  %124 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %125 = icmp ne %struct.pppTimer* %124, null
  %126 = zext i1 %125 to i32
  %127 = call i32 @timer_InitService(i32 %126)
  br label %128

128:                                              ; preds = %122, %118
  %129 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %130 = icmp ne %struct.pppTimer* %129, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %133 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %136 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = sub nsw i64 %137, %134
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %131, %128
  %140 = load i32, i32* @SIG_SETMASK, align 4
  %141 = call i32 @sigprocmask(i32 %140, i32* %8, i32* null)
  br label %142

142:                                              ; preds = %139, %27
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @sigprocmask(i32, i32*, i32*) #1

declare dso_local i32 @StopTimerNoBlock(%struct.pppTimer*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, %struct.pppTimer*, ...) #1

declare dso_local i64 @getitimer(i32, %struct.itimerval*) #1

declare dso_local i64 @RESTVAL(i32) #1

declare dso_local i32 @timer_InitService(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
