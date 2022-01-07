; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidvalue_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidvalue_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidvalue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, double, double }

@.str = private unnamed_addr constant [4 x i8] c"%jd\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-Inf\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"+Inf\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Nan\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%.6f\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oidvalue*, i32*)* @oidvalue_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oidvalue_print(%struct.oidvalue* %0, i32* %1) #0 {
  %3 = alloca %struct.oidvalue*, align 8
  %4 = alloca i32*, align 8
  store %struct.oidvalue* %0, %struct.oidvalue** %3, align 8
  store i32* %1, i32** %4, align 8
  %5 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %6 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %53 [
    i32 129, label %8
    i32 128, label %15
    i32 132, label %22
  ]

8:                                                ; preds = %2
  %9 = load i32*, i32** %4, align 8
  %10 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %11 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load double, double* %12, align 8
  %14 = call i32 (i32*, i8*, ...) @fprintf(i32* %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), double %13)
  br label %53

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %18 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load double, double* %19, align 8
  %21 = call i32 (i32*, i8*, ...) @fprintf(i32* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double %20)
  br label %53

22:                                               ; preds = %2
  %23 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %24 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load double, double* %25, align 8
  %27 = call i32 @fpclassify(double %26)
  switch i32 %27, label %45 [
    i32 131, label %28
    i32 130, label %42
  ]

28:                                               ; preds = %22
  %29 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %30 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load double, double* %31, align 8
  %33 = call i32 @signbit(double %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 (i32*, i8*, ...) @fprintf(i32* %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %41

38:                                               ; preds = %28
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 (i32*, i8*, ...) @fprintf(i32* %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %35
  br label %52

42:                                               ; preds = %22
  %43 = load i32*, i32** %4, align 8
  %44 = call i32 (i32*, i8*, ...) @fprintf(i32* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  br label %52

45:                                               ; preds = %22
  %46 = load i32*, i32** %4, align 8
  %47 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %48 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = load double, double* %49, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %46, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), double %50)
  br label %52

52:                                               ; preds = %45, %42, %41
  br label %53

53:                                               ; preds = %2, %52, %15, %8
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @fpclassify(double) #1

declare dso_local i32 @signbit(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
