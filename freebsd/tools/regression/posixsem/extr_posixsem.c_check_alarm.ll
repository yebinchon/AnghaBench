; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_check_alarm.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_check_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { i32 }

@ITIMER_REAL = common dso_local global i32 0, align 4
@alarm_errno = common dso_local global i64 0, align 8
@alarm_id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"ksem_post() (via timeout)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_alarm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.itimerval, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @bzero(%struct.itimerval* %4, i32 4)
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @ITIMER_REAL, align 4
  %10 = call i64 @setitimer(i32 %9, %struct.itimerval* %4, i32* null)
  store i64 0, i64* @alarm_errno, align 8
  store i32 -1, i32* @alarm_id, align 4
  store i32 0, i32* %2, align 4
  br label %27

11:                                               ; preds = %1
  %12 = load i32, i32* @ITIMER_REAL, align 4
  %13 = call i64 @setitimer(i32 %12, %struct.itimerval* %4, i32* null)
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %27

17:                                               ; preds = %11
  %18 = load i64, i64* @alarm_errno, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* @alarm_errno, align 8
  store i64 %24, i64* @errno, align 8
  %25 = call i32 @fail_errno(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i64 0, i64* @alarm_errno, align 8
  store i32 -1, i32* %2, align 4
  br label %27

26:                                               ; preds = %20, %17
  store i32 -1, i32* @alarm_id, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23, %15, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @bzero(%struct.itimerval*, i32) #1

declare dso_local i64 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @fail_errno(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
