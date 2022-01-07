; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_set_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ctld/extr_ctld.c_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"session timeout disabled\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@sigalrm_received = common dso_local global i32 0, align 4
@sigalrm_handler_fatal = common dso_local global i32 0, align 4
@sigalrm_handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"setting session timeout to %d seconds\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_timeout(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigaction, align 4
  %6 = alloca %struct.itimerval, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp sle i32 %8, 0
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = bitcast %struct.itimerval* %6 to %struct.sigaction*
  %13 = call i32 @bzero(%struct.sigaction* %12, i32 16)
  %14 = load i32, i32* @ITIMER_REAL, align 4
  %15 = bitcast %struct.itimerval* %6 to %struct.sigaction*
  %16 = call i32 @setitimer(i32 %14, %struct.sigaction* %15, i32* null)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %10
  %20 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %10
  store i32 0, i32* @sigalrm_received, align 4
  br label %58

22:                                               ; preds = %2
  store i32 0, i32* @sigalrm_received, align 4
  %23 = call i32 @bzero(%struct.sigaction* %5, i32 16)
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @sigalrm_handler_fatal, align 4
  %28 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 3
  store i32 %27, i32* %28, align 4
  br label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @sigalrm_handler, align 4
  %31 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 3
  store i32 %30, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %26
  %33 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %5, i32 0, i32 2
  %34 = call i32 @sigfillset(i32* %33)
  %35 = load i32, i32* @SIGALRM, align 4
  %36 = call i32 @sigaction(i32 %35, %struct.sigaction* %5, i32* null)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %32
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = bitcast %struct.itimerval* %6 to %struct.sigaction*
  %45 = call i32 @bzero(%struct.sigaction* %44, i32 16)
  %46 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %3, align 4
  %49 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %6, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ITIMER_REAL, align 4
  %52 = bitcast %struct.itimerval* %6 to %struct.sigaction*
  %53 = call i32 @setitimer(i32 %51, %struct.sigaction* %52, i32* null)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %41
  %57 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %58

58:                                               ; preds = %21, %56, %41
  ret void
}

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @bzero(%struct.sigaction*, i32) #1

declare dso_local i32 @setitimer(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
