; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_lqr.c_lqr_Stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@LQM_LQR = common dso_local global i32 0, align 4
@LogLQM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Stop sending LQR, Use LCP ECHO instead.\0A\00", align 1
@LQM_ECHO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Stop sending LCP ECHO.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lqr_Stop(%struct.physical* %0, i32 %1) #0 {
  %3 = alloca %struct.physical*, align 8
  %4 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @LQM_LQR, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %15

8:                                                ; preds = %2
  %9 = load i32, i32* @LogLQM, align 4
  %10 = load %struct.physical*, %struct.physical** %3, align 8
  %11 = getelementptr inbounds %struct.physical, %struct.physical* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @log_Printf(i32 %9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %13)
  br label %15

15:                                               ; preds = %8, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @LQM_ECHO, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %15
  %20 = load i32, i32* @LogLQM, align 4
  %21 = load %struct.physical*, %struct.physical** %3, align 8
  %22 = getelementptr inbounds %struct.physical, %struct.physical* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @log_Printf(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  br label %26

26:                                               ; preds = %19, %15
  %27 = load i32, i32* %4, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.physical*, %struct.physical** %3, align 8
  %30 = getelementptr inbounds %struct.physical, %struct.physical* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %28
  store i32 %34, i32* %32, align 4
  %35 = load %struct.physical*, %struct.physical** %3, align 8
  %36 = getelementptr inbounds %struct.physical, %struct.physical* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %26
  %42 = load %struct.physical*, %struct.physical** %3, align 8
  %43 = getelementptr inbounds %struct.physical, %struct.physical* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SendLqrReport(i32 %46)
  br label %54

48:                                               ; preds = %26
  %49 = load %struct.physical*, %struct.physical** %3, align 8
  %50 = getelementptr inbounds %struct.physical, %struct.physical* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = call i32 @timer_Stop(i32* %52)
  br label %54

54:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @SendLqrReport(i32) #1

declare dso_local i32 @timer_Stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
