; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidformat_is_temperature.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/prometheus_sysctl_exporter/extr_prometheus_sysctl_exporter.c_oidformat_is_temperature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oidformat = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.oidformat*)* @oidformat_is_temperature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oidformat_is_temperature(%struct.oidformat* %0) #0 {
  %2 = alloca %struct.oidformat*, align 8
  store %struct.oidformat* %0, %struct.oidformat** %2, align 8
  %3 = load %struct.oidformat*, %struct.oidformat** %2, align 8
  %4 = getelementptr inbounds %struct.oidformat, %struct.oidformat* %3, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = icmp eq i32 %8, 73
  br i1 %9, label %10, label %18

10:                                               ; preds = %1
  %11 = load %struct.oidformat*, %struct.oidformat** %2, align 8
  %12 = getelementptr inbounds %struct.oidformat, %struct.oidformat* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 1
  %15 = load i8, i8* %14, align 1
  %16 = sext i8 %15 to i32
  %17 = icmp eq i32 %16, 75
  br label %18

18:                                               ; preds = %10, %1
  %19 = phi i1 [ false, %1 ], [ %17, %10 ]
  %20 = zext i1 %19 to i32
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
