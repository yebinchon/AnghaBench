; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_schedule_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/posixsem/extr_posixsem.c_schedule_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@alarm_handler_installed = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@alarm_handler = common dso_local global i32 0, align 4
@SIG_ERR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"signal(SIGALRM)\00", align 1
@alarm_id = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ksem_post() already scheduled\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @schedule_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @schedule_post(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.itimerval, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @alarm_handler_installed, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @SIGALRM, align 4
  %11 = load i32, i32* @alarm_handler, align 4
  %12 = call i64 @signal(i32 %10, i32 %11)
  %13 = load i64, i64* @SIG_ERR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 @fail_errno(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

17:                                               ; preds = %9
  store i32 1, i32* @alarm_handler_installed, align 4
  br label %18

18:                                               ; preds = %17, %2
  %19 = load i32, i32* @alarm_id, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @fail_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* @alarm_id, align 4
  %25 = call i32 @bzero(%struct.itimerval* %6, i32 8)
  %26 = load i32, i32* %5, align 4
  %27 = sdiv i32 %26, 1000
  %28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %5, align 4
  %31 = srem i32 %30, 1000
  %32 = mul nsw i32 %31, 1000
  %33 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @ITIMER_REAL, align 4
  %36 = call i64 @setitimer(i32 %35, %struct.itimerval* %6, i32* null)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %23
  %39 = call i32 @fail_errno(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %41

40:                                               ; preds = %23
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %40, %38, %21, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i64 @signal(i32, i32) #1

declare dso_local i32 @fail_errno(i8*) #1

declare dso_local i32 @fail_err(i8*) #1

declare dso_local i32 @bzero(%struct.itimerval*, i32) #1

declare dso_local i64 @setitimer(i32, %struct.itimerval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
