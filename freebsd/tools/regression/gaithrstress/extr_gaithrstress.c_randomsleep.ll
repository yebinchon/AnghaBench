; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/gaithrstress/extr_gaithrstress.c_randomsleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/gaithrstress/extr_gaithrstress.c_randomsleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { double, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @randomsleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @randomsleep(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca double, align 8
  store double %0, double* %2, align 8
  %5 = bitcast %struct.timespec* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 24, i1 false)
  %6 = call i64 (...) @my_arc4random_r()
  %7 = sitofp i64 %6 to double
  %8 = fdiv double %7, 0x41F0000000000000
  %9 = load double, double* %2, align 8
  %10 = fmul double %8, %9
  store double %10, double* %4, align 8
  br label %11

11:                                               ; preds = %14, %1
  %12 = load double, double* %4, align 8
  %13 = fcmp oge double %12, 1.000000e+00
  br i1 %13, label %14, label %20

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 8
  %18 = load double, double* %4, align 8
  %19 = fsub double %18, 1.000000e+00
  store double %19, double* %4, align 8
  br label %11

20:                                               ; preds = %11
  %21 = load double, double* %4, align 8
  %22 = fmul double %21, 1.000000e+09
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %3, i32 0, i32 0
  store double %22, double* %23, align 8
  %24 = call i32 @nanosleep(%struct.timespec* %3, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @my_arc4random_r(...) #2

declare dso_local i32 @nanosleep(%struct.timespec*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
