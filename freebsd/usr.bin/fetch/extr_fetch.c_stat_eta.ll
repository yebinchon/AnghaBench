; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_eta.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/fetch/extr_fetch.c_stat_eta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xferstat = type { double, double, double, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, %struct.xferstat*)* @stat_eta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_eta(i8* %0, i64 %1, %struct.xferstat* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xferstat*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.xferstat* %2, %struct.xferstat** %6, align 8
  %11 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %12 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %16 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %14, %18
  store i64 %19, i64* %7, align 8
  %20 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %21 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %20, i32 0, i32 0
  %22 = load double, double* %21, align 8
  %23 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %24 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %23, i32 0, i32 1
  %25 = load double, double* %24, align 8
  %26 = fsub double %22, %25
  store double %26, double* %9, align 8
  %27 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %28 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %27, i32 0, i32 2
  %29 = load double, double* %28, align 8
  %30 = load %struct.xferstat*, %struct.xferstat** %6, align 8
  %31 = getelementptr inbounds %struct.xferstat, %struct.xferstat* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  store double %33, double* %10, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sitofp i64 %34 to double
  %36 = load double, double* %10, align 8
  %37 = fmul double %35, %36
  %38 = load double, double* %9, align 8
  %39 = fdiv double %37, %38
  %40 = fptosi double %39 to i64
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %3
  %44 = load i8*, i8** %4, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @stat_seconds(i8* %44, i64 %45, i64 %46)
  br label %53

48:                                               ; preds = %3
  %49 = load i8*, i8** %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @stat_seconds(i8* %49, i64 %50, i64 %51)
  br label %53

53:                                               ; preds = %48, %43
  ret void
}

declare dso_local i32 @stat_seconds(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
