; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidvalue_get_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidvalue_get_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidvalue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { double, double, double }

@llvm.used = appending global [1 x i8*] [i8* bitcast (double (%struct.oidvalue*)* @oidvalue_get_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @oidvalue_get_float(%struct.oidvalue* %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.oidvalue*, align 8
  store %struct.oidvalue* %0, %struct.oidvalue** %3, align 8
  %4 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %5 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %22 [
    i32 129, label %7
    i32 128, label %12
    i32 130, label %17
  ]

7:                                                ; preds = %1
  %8 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %9 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load double, double* %10, align 8
  store double %11, double* %2, align 8
  br label %24

12:                                               ; preds = %1
  %13 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %14 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load double, double* %15, align 8
  store double %16, double* %2, align 8
  br label %24

17:                                               ; preds = %1
  %18 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %19 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  store double %21, double* %2, align 8
  br label %24

22:                                               ; preds = %1
  %23 = call i32 @assert(i32 0)
  br label %24

24:                                               ; preds = %7, %12, %17, %22
  %25 = load double, double* %2, align 8
  ret double %25
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
