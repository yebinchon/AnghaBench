; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/timeout/extr_timeout.c_set_interval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/timeout/extr_timeout.c_set_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ITIMER_REAL = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"setitimer()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @set_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_interval(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.itimerval, align 8
  store double %0, double* %2, align 8
  %4 = call i32 @memset(%struct.itimerval* %3, i32 0, i32 16)
  %5 = load double, double* %2, align 8
  %6 = fptosi double %5 to i64
  %7 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = load double, double* %2, align 8
  %10 = fptosi double %9 to i64
  %11 = sitofp i64 %10 to double
  %12 = load double, double* %2, align 8
  %13 = fsub double %12, %11
  store double %13, double* %2, align 8
  %14 = load double, double* %2, align 8
  %15 = fmul double %14, 1.000000e+06
  %16 = fptosi double %15 to i64
  %17 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %3, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load i32, i32* @ITIMER_REAL, align 4
  %20 = call i32 @setitimer(i32 %19, %struct.itimerval* %3, i32* null)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load i32, i32* @EX_OSERR, align 4
  %24 = call i32 @err(i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @memset(%struct.itimerval*, i32, i32) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
