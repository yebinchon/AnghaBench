; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_cpustats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vmstat/extr_vmstat.c_cpustats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@CPUSTATES = common dso_local global i32 0, align 4
@cur = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [15 x i8] c"cpu-statistics\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@CP_USER = common dso_local global i64 0, align 8
@CP_NICE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@CP_SYS = common dso_local global i64 0, align 8
@CP_INTR = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"idle\00", align 1
@CP_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpustats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpustats() #0 {
  %1 = alloca double, align 8
  %2 = alloca double, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store double 0.000000e+00, double* %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %17, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CPUSTATES, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %5
  %10 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %11 = load i32, i32* %3, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds double, double* %10, i64 %12
  %14 = load double, double* %13, align 8
  %15 = load double, double* %2, align 8
  %16 = fadd double %15, %14
  store double %16, double* %2, align 8
  br label %17

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %3, align 4
  br label %5

20:                                               ; preds = %5
  %21 = load double, double* %2, align 8
  %22 = fcmp ogt double %21, 0.000000e+00
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load double, double* %2, align 8
  %25 = fdiv double 1.000000e+02, %24
  store double %25, double* %1, align 8
  br label %27

26:                                               ; preds = %20
  store double 0.000000e+00, double* %1, align 8
  br label %27

27:                                               ; preds = %26, %23
  store i32 0, i32* %4, align 4
  %28 = call i32 @xo_open_container(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %29 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %30 = load i64, i64* @CP_USER, align 8
  %31 = getelementptr inbounds double, double* %29, i64 %30
  %32 = load double, double* %31, align 8
  %33 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %34 = load i64, i64* @CP_NICE, align 8
  %35 = getelementptr inbounds double, double* %33, i64 %34
  %36 = load double, double* %35, align 8
  %37 = fadd double %32, %36
  %38 = load double, double* %1, align 8
  %39 = fmul double %37, %38
  %40 = call i32 @percent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), double %39, i32* %4)
  %41 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %42 = load i64, i64* @CP_SYS, align 8
  %43 = getelementptr inbounds double, double* %41, i64 %42
  %44 = load double, double* %43, align 8
  %45 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %46 = load i64, i64* @CP_INTR, align 8
  %47 = getelementptr inbounds double, double* %45, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fadd double %44, %48
  %50 = load double, double* %1, align 8
  %51 = fmul double %49, %50
  %52 = call i32 @percent(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), double %51, i32* %4)
  %53 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %54 = load i64, i64* @CP_IDLE, align 8
  %55 = getelementptr inbounds double, double* %53, i64 %54
  %56 = load double, double* %55, align 8
  %57 = load double, double* %1, align 8
  %58 = fmul double %56, %57
  %59 = call i32 @percent(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), double %58, i32* %4)
  %60 = call i32 @xo_close_container(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local i32 @percent(i8*, double, i32*) #1

declare dso_local i32 @xo_close_container(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
