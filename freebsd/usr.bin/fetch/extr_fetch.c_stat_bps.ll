; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_bps.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_bps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xferstat = type { double, double, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { double, i64 }
%struct.TYPE_4__ = type { double, i64 }

@.str = private unnamed_addr constant [7 x i8] c"?? Bps\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%sps\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.xferstat*)* @stat_bps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_bps(i8* %0, i64 %1, %struct.xferstat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xferstat*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.xferstat* %2, %struct.xferstat** %6, align 8
  %10 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %11 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sitofp i64 %13 to double
  %15 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %16 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load double, double* %17, align 8
  %19 = fdiv double %18, 1.000000e+06
  %20 = fadd double %14, %19
  %21 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %22 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = sitofp i64 %24 to double
  %26 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %27 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = fdiv double %29, 1.000000e+06
  %31 = fadd double %25, %30
  %32 = fsub double %20, %31
  store double %32, double* %8, align 8
  %33 = load double, double* %8, align 8
  %34 = fcmp oeq double %33, 0.000000e+00
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %5, align 8
  %38 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %36, i64 %37, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %57

39:                                               ; preds = %3
  %40 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %41 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %40, i32 0, i32 0
  %42 = load double, double* %41, align 8
  %43 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %44 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %43, i32 0, i32 1
  %45 = load double, double* %44, align 8
  %46 = fsub double %42, %45
  %47 = load double, double* %8, align 8
  %48 = fdiv double %46, %47
  store double %48, double* %9, align 8
  %49 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %50 = load double, double* %9, align 8
  %51 = fptosi double %50 to i32
  %52 = call i32 @stat_bytes(i8* %49, i32 16, i32 %51)
  %53 = load i8*, i8** %4, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %56 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %53, i64 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  br label %57

57:                                               ; preds = %39, %35
  ret void
}

declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #1

declare dso_local i32 @stat_bytes(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
