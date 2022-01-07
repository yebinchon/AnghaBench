; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidvalue_set_float.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidvalue_set_float.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidvalue = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { double }

@FLOAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oidvalue*, double)* @oidvalue_set_float to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oidvalue_set_float(%struct.oidvalue* %0, double %1) #0 {
  %3 = alloca %struct.oidvalue*, align 8
  %4 = alloca double, align 8
  store %struct.oidvalue* %0, %struct.oidvalue** %3, align 8
  store double %1, double* %4, align 8
  %5 = load i32, i32* @FLOAT, align 4
  %6 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %7 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  %8 = load double, double* %4, align 8
  %9 = load %struct.oidvalue*, %struct.oidvalue** %3, align 8
  %10 = getelementptr inbounds %struct.oidvalue, %struct.oidvalue* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store double %8, double* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
