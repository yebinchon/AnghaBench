; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_exit_persist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_exit_persist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64, i32 }
%struct.tcp_rack = type { %struct.TYPE_3__, i64, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@HPTS_REMOVE_OUTPUT = common dso_local global i32 0, align 4
@TF_FORCEDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_rack*)* @rack_exit_persist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_exit_persist(%struct.tcpcb* %0, %struct.tcp_rack* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_rack*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %4, align 8
  %5 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %6 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = load i32, i32* @HPTS_REMOVE_OUTPUT, align 4
  %16 = call i32 @tcp_hpts_remove(%struct.TYPE_4__* %14, i32 %15)
  %17 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %18 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %11, %2
  %21 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %24 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* @TF_FORCEDATA, align 4
  %27 = xor i32 %26, -1
  %28 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %29 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = and i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %33 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  ret void
}

declare dso_local i32 @tcp_hpts_remove(%struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
