; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/iostat/extr_iostat.c_cpustats.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/iostat/extr_iostat.c_cpustats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double* }

@CPUSTATES = common dso_local global i32 0, align 4
@cur = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c" %2.0f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cpustats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpustats() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  store double 0.000000e+00, double* %2, align 8
  store i32 0, i32* %1, align 4
  br label %3

3:                                                ; preds = %15, %0
  %4 = load i32, i32* %1, align 4
  %5 = load i32, i32* @CPUSTATES, align 4
  %6 = icmp slt i32 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %3
  %8 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %9 = load i32, i32* %1, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds double, double* %8, i64 %10
  %12 = load double, double* %11, align 8
  %13 = load double, double* %2, align 8
  %14 = fadd double %13, %12
  store double %14, double* %2, align 8
  br label %15

15:                                               ; preds = %7
  %16 = load i32, i32* %1, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %1, align 4
  br label %3

18:                                               ; preds = %3
  store i32 0, i32* %1, align 4
  br label %19

19:                                               ; preds = %41, %18
  %20 = load i32, i32* %1, align 4
  %21 = load i32, i32* @CPUSTATES, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load double*, double** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cur, i32 0, i32 0), align 8
  %25 = load i32, i32* %1, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  %29 = fmul double 1.000000e+02, %28
  %30 = load double, double* %2, align 8
  %31 = fcmp une double %30, 0.000000e+00
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load double, double* %2, align 8
  br label %35

34:                                               ; preds = %23
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi double [ %33, %32 ], [ 1.000000e+00, %34 ]
  %37 = fdiv double %29, %36
  %38 = fptosi double %37 to i32
  %39 = call double @rint(i32 %38)
  %40 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), double %39)
  br label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %1, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %1, align 4
  br label %19

44:                                               ; preds = %19
  ret void
}

declare dso_local i32 @printf(i8*, double) #1

declare dso_local double @rint(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
