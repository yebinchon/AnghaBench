; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_msgs.c_start_msgs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_msgs.c_start_msgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i64, i32 }

@current_state = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@disp_msg = common dso_local global i32 0, align 4
@MSG_INTERVAL = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_msgs() #0 {
  %1 = alloca %struct.itimerval, align 8
  %2 = load i32, i32* @current_state, align 4
  %3 = call i32 @message(i32 %2)
  %4 = load i32, i32* @SIGALRM, align 4
  %5 = load i32, i32* @disp_msg, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  %7 = load i32, i32* @MSG_INTERVAL, align 4
  %8 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  %10 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 1
  store i32 %7, i32* %11, align 8
  %12 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* @ITIMER_REAL, align 4
  %17 = call i32 @setitimer(i32 %16, %struct.itimerval* %1, %struct.itimerval* null)
  ret void
}

declare dso_local i32 @message(i32) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
