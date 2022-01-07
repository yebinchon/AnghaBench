; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_timer_TermService.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_timer.c_timer_TermService.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i64, i64 }

@ITIMER_REAL = common dso_local global i32 0, align 4
@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to set itimer (%s)\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timer_TermService() #0 {
  %1 = alloca %struct.itimerval, align 8
  %2 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 1
  %3 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = load i32, i32* @ITIMER_REAL, align 4
  %11 = call i32 @setitimer(i32 %10, %struct.itimerval* %1, i32* null)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %18

13:                                               ; preds = %0
  %14 = load i32, i32* @LogERROR, align 4
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 @log_Printf(i32 %14, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %13, %0
  %19 = load i32, i32* @SIGALRM, align 4
  %20 = load i32, i32* @SIG_IGN, align 4
  %21 = call i32 @sig_signal(i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sig_signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
