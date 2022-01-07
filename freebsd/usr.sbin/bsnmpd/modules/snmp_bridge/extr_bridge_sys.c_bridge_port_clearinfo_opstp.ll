; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_clearinfo_opstp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_bridge/extr_bridge_sys.c_bridge_port_clearinfo_opstp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bridge_port = type { i64, i64, i32, i32, i32, i64 }

@dot1dStpPortEnable_enabled = common dso_local global i64 0, align 8
@dot1dStpPortEnable_disabled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bridge_port*)* @bridge_port_clearinfo_opstp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bridge_port_clearinfo_opstp(%struct.bridge_port* %0) #0 {
  %2 = alloca %struct.bridge_port*, align 8
  store %struct.bridge_port* %0, %struct.bridge_port** %2, align 8
  %3 = load %struct.bridge_port*, %struct.bridge_port** %2, align 8
  %4 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @dot1dStpPortEnable_enabled, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load %struct.bridge_port*, %struct.bridge_port** %2, align 8
  %10 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %9, i32 0, i32 5
  store i64 0, i64* %10, align 8
  %11 = load %struct.bridge_port*, %struct.bridge_port** %2, align 8
  %12 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %11, i32 0, i32 4
  %13 = call i32 @bzero(i32* %12, i32 4)
  %14 = load %struct.bridge_port*, %struct.bridge_port** %2, align 8
  %15 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %14, i32 0, i32 3
  %16 = call i32 @bzero(i32* %15, i32 4)
  %17 = load %struct.bridge_port*, %struct.bridge_port** %2, align 8
  %18 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %17, i32 0, i32 2
  %19 = call i32 @bzero(i32* %18, i32 4)
  %20 = load %struct.bridge_port*, %struct.bridge_port** %2, align 8
  %21 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %8, %1
  %23 = load i64, i64* @dot1dStpPortEnable_disabled, align 8
  %24 = load %struct.bridge_port*, %struct.bridge_port** %2, align 8
  %25 = getelementptr inbounds %struct.bridge_port, %struct.bridge_port* %24, i32 0, i32 0
  store i64 %23, i64* %25, align 8
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
