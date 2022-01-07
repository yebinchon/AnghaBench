; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_print_swap.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pstat/extr_pstat.c_print_swap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double }
%struct.kvm_swap = type { double, double, i32 }

@swtot = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@nswdev = common dso_local global i32 0, align 4
@totalflag = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_swap*)* @print_swap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_swap(%struct.kvm_swap* %0) #0 {
  %2 = alloca %struct.kvm_swap*, align 8
  store %struct.kvm_swap* %0, %struct.kvm_swap** %2, align 8
  %3 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %4 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %3, i32 0, i32 0
  %5 = load double, double* %4, align 8
  %6 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swtot, i32 0, i32 0), align 8
  %7 = fadd double %6, %5
  store double %7, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swtot, i32 0, i32 0), align 8
  %8 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %9 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %8, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swtot, i32 0, i32 1), align 8
  %12 = fadd double %11, %10
  store double %12, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @swtot, i32 0, i32 1), align 8
  %13 = load i32, i32* @nswdev, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @nswdev, align 4
  %15 = load i64, i64* @totalflag, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %1
  %18 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %19 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %22 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %21, i32 0, i32 0
  %23 = load double, double* %22, align 8
  %24 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %25 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %28 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %27, i32 0, i32 0
  %29 = load double, double* %28, align 8
  %30 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %31 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %30, i32 0, i32 1
  %32 = load double, double* %31, align 8
  %33 = fsub double %29, %32
  %34 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %35 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %34, i32 0, i32 1
  %36 = load double, double* %35, align 8
  %37 = fmul double %36, 1.000000e+02
  %38 = load %struct.kvm_swap*, %struct.kvm_swap** %2, align 8
  %39 = getelementptr inbounds %struct.kvm_swap, %struct.kvm_swap* %38, i32 0, i32 0
  %40 = load double, double* %39, align 8
  %41 = fdiv double %37, %40
  %42 = call i32 @print_swap_line(i32 %20, double %23, double %26, double %33, double %41)
  br label %43

43:                                               ; preds = %17, %1
  ret void
}

declare dso_local i32 @print_swap_line(i32, double, double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
