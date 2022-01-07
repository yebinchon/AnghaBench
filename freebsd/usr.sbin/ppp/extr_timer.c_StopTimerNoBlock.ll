; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_StopTimerNoBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_StopTimerNoBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pppTimer = type { i64, i64, %struct.pppTimer*, %struct.pppTimer*, i32 }
%struct.itimerval = type { i32 }

@TIMER_STOPPED = common dso_local global i64 0, align 8
@TimerList = common dso_local global %struct.pppTimer* null, align 8
@ITIMER_REAL = common dso_local global i32 0, align 4
@ExpiredList = common dso_local global %struct.pppTimer* null, align 8
@TIMER_RUNNING = common dso_local global i64 0, align 8
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Oops, %s timer not found!!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pppTimer*)* @StopTimerNoBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StopTimerNoBlock(%struct.pppTimer* %0) #0 {
  %2 = alloca %struct.pppTimer*, align 8
  %3 = alloca %struct.itimerval, align 4
  %4 = alloca %struct.pppTimer*, align 8
  %5 = alloca %struct.pppTimer*, align 8
  store %struct.pppTimer* %0, %struct.pppTimer** %2, align 8
  %6 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %7 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @TIMER_STOPPED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %152

12:                                               ; preds = %1
  store %struct.pppTimer* null, %struct.pppTimer** %5, align 8
  %13 = load %struct.pppTimer*, %struct.pppTimer** @TimerList, align 8
  store %struct.pppTimer* %13, %struct.pppTimer** %4, align 8
  br label %14

14:                                               ; preds = %25, %12
  %15 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %16 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %17 = icmp ne %struct.pppTimer* %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %20 = icmp ne %struct.pppTimer* %19, null
  br label %21

21:                                               ; preds = %18, %14
  %22 = phi i1 [ false, %14 ], [ %20, %18 ]
  br i1 %22, label %23, label %29

23:                                               ; preds = %21
  %24 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  store %struct.pppTimer* %24, %struct.pppTimer** %5, align 8
  br label %25

25:                                               ; preds = %23
  %26 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %27 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %26, i32 0, i32 3
  %28 = load %struct.pppTimer*, %struct.pppTimer** %27, align 8
  store %struct.pppTimer* %28, %struct.pppTimer** %4, align 8
  br label %14

29:                                               ; preds = %21
  %30 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %31 = icmp ne %struct.pppTimer* %30, null
  br i1 %31, label %32, label %96

32:                                               ; preds = %29
  %33 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %34 = icmp ne %struct.pppTimer* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %32
  %36 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %37 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %36, i32 0, i32 3
  %38 = load %struct.pppTimer*, %struct.pppTimer** %37, align 8
  %39 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %40 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %39, i32 0, i32 3
  store %struct.pppTimer* %38, %struct.pppTimer** %40, align 8
  br label %50

41:                                               ; preds = %32
  %42 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %43 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %42, i32 0, i32 3
  %44 = load %struct.pppTimer*, %struct.pppTimer** %43, align 8
  store %struct.pppTimer* %44, %struct.pppTimer** @TimerList, align 8
  %45 = load %struct.pppTimer*, %struct.pppTimer** @TimerList, align 8
  %46 = icmp eq %struct.pppTimer* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = call i32 (...) @timer_TermService()
  br label %49

49:                                               ; preds = %47, %41
  br label %50

50:                                               ; preds = %49, %35
  %51 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %52 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %51, i32 0, i32 3
  %53 = load %struct.pppTimer*, %struct.pppTimer** %52, align 8
  %54 = icmp ne %struct.pppTimer* %53, null
  br i1 %54, label %55, label %95

55:                                               ; preds = %50
  %56 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %57 = icmp ne %struct.pppTimer* %56, null
  br i1 %57, label %72, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* @ITIMER_REAL, align 4
  %60 = call i64 @getitimer(i32 %59, %struct.itimerval* %3)
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @RESTVAL(i32 %64)
  %66 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %67 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %66, i32 0, i32 3
  %68 = load %struct.pppTimer*, %struct.pppTimer** %67, align 8
  %69 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, %65
  store i64 %71, i64* %69, align 8
  br label %82

72:                                               ; preds = %58, %55
  %73 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %74 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %77 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %76, i32 0, i32 3
  %78 = load %struct.pppTimer*, %struct.pppTimer** %77, align 8
  %79 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %75
  store i64 %81, i64* %79, align 8
  br label %82

82:                                               ; preds = %72, %62
  %83 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %84 = icmp ne %struct.pppTimer* %83, null
  br i1 %84, label %94, label %85

85:                                               ; preds = %82
  %86 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %87 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %86, i32 0, i32 3
  %88 = load %struct.pppTimer*, %struct.pppTimer** %87, align 8
  %89 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = call i32 @timer_InitService(i32 1)
  br label %94

94:                                               ; preds = %92, %85, %82
  br label %95

95:                                               ; preds = %94, %50
  br label %144

96:                                               ; preds = %29
  store %struct.pppTimer* null, %struct.pppTimer** %5, align 8
  %97 = load %struct.pppTimer*, %struct.pppTimer** @ExpiredList, align 8
  store %struct.pppTimer* %97, %struct.pppTimer** %4, align 8
  br label %98

98:                                               ; preds = %109, %96
  %99 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %100 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %101 = icmp ne %struct.pppTimer* %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %98
  %103 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %104 = icmp ne %struct.pppTimer* %103, null
  br label %105

105:                                              ; preds = %102, %98
  %106 = phi i1 [ false, %98 ], [ %104, %102 ]
  br i1 %106, label %107, label %113

107:                                              ; preds = %105
  %108 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  store %struct.pppTimer* %108, %struct.pppTimer** %5, align 8
  br label %109

109:                                              ; preds = %107
  %110 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %111 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %110, i32 0, i32 2
  %112 = load %struct.pppTimer*, %struct.pppTimer** %111, align 8
  store %struct.pppTimer* %112, %struct.pppTimer** %4, align 8
  br label %98

113:                                              ; preds = %105
  %114 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %115 = icmp ne %struct.pppTimer* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %113
  %117 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %118 = icmp ne %struct.pppTimer* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %121 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %120, i32 0, i32 2
  %122 = load %struct.pppTimer*, %struct.pppTimer** %121, align 8
  %123 = load %struct.pppTimer*, %struct.pppTimer** %5, align 8
  %124 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %123, i32 0, i32 2
  store %struct.pppTimer* %122, %struct.pppTimer** %124, align 8
  br label %129

125:                                              ; preds = %116
  %126 = load %struct.pppTimer*, %struct.pppTimer** %4, align 8
  %127 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %126, i32 0, i32 2
  %128 = load %struct.pppTimer*, %struct.pppTimer** %127, align 8
  store %struct.pppTimer* %128, %struct.pppTimer** @ExpiredList, align 8
  br label %129

129:                                              ; preds = %125, %119
  br label %143

130:                                              ; preds = %113
  %131 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %132 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TIMER_RUNNING, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %142

136:                                              ; preds = %130
  %137 = load i32, i32* @LogERROR, align 4
  %138 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %139 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @log_Printf(i32 %137, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %136, %130
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143, %95
  %145 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %146 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %145, i32 0, i32 2
  store %struct.pppTimer* null, %struct.pppTimer** %146, align 8
  %147 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %148 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %147, i32 0, i32 3
  store %struct.pppTimer* null, %struct.pppTimer** %148, align 8
  %149 = load i64, i64* @TIMER_STOPPED, align 8
  %150 = load %struct.pppTimer*, %struct.pppTimer** %2, align 8
  %151 = getelementptr inbounds %struct.pppTimer, %struct.pppTimer* %150, i32 0, i32 0
  store i64 %149, i64* %151, align 8
  br label %152

152:                                              ; preds = %144, %11
  ret void
}

declare dso_local i32 @timer_TermService(...) #1

declare dso_local i64 @getitimer(i32, %struct.itimerval*) #1

declare dso_local i64 @RESTVAL(i32) #1

declare dso_local i32 @timer_InitService(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
