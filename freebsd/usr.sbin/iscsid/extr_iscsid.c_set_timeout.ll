; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_set_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iscsid/extr_iscsid.c_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.itimerval = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"session timeout disabled\00", align 1
@sigalrm_handler = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"setting session timeout to %d seconds\00", align 1
@ITIMER_REAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"setitimer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_timeout(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sigaction, align 4
  %4 = alloca %struct.itimerval, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp sle i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %39

10:                                               ; preds = %1
  %11 = call i32 @bzero(%struct.sigaction* %3, i32 16)
  %12 = load i32, i32* @sigalrm_handler, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 3
  store i32 %12, i32* %13, align 4
  %14 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %3, i32 0, i32 2
  %15 = call i32 @sigfillset(i32* %14)
  %16 = load i32, i32* @SIGALRM, align 4
  %17 = call i32 @sigaction(i32 %16, %struct.sigaction* %3, i32* null)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %10
  %21 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %10
  %23 = bitcast %struct.itimerval* %4 to %struct.sigaction*
  %24 = call i32 @bzero(%struct.sigaction* %23, i32 16)
  %25 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 4
  %27 = load i32, i32* %2, align 4
  %28 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* %2, align 4
  %31 = call i32 (i8*, ...) @log_debugx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @ITIMER_REAL, align 4
  %33 = bitcast %struct.itimerval* %4 to %struct.sigaction*
  %34 = call i32 @setitimer(i32 %32, %struct.sigaction* %33, i32* null)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %22
  %38 = call i32 @log_err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %8, %37, %22
  ret void
}

declare dso_local i32 @log_debugx(i8*, ...) #1

declare dso_local i32 @bzero(%struct.sigaction*, i32) #1

declare dso_local i32 @sigfillset(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @log_err(i32, i8*) #1

declare dso_local i32 @setitimer(i32, %struct.sigaction*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
