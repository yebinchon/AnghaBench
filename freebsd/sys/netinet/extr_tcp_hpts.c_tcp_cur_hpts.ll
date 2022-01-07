; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_cur_hpts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_hpts.c_tcp_cur_hpts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.tcp_hpts_entry** }
%struct.tcp_hpts_entry = type { i32 }
%struct.inpcb = type { i64 }

@tcp_pace = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tcp_hpts_entry* @tcp_cur_hpts(%struct.inpcb* %0) #0 {
  %2 = alloca %struct.inpcb*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.tcp_hpts_entry*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %2, align 8
  %5 = load %struct.inpcb*, %struct.inpcb** %2, align 8
  %6 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %3, align 8
  %8 = load %struct.tcp_hpts_entry**, %struct.tcp_hpts_entry*** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tcp_pace, i32 0, i32 0), align 8
  %9 = load i64, i64* %3, align 8
  %10 = getelementptr inbounds %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %8, i64 %9
  %11 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %10, align 8
  store %struct.tcp_hpts_entry* %11, %struct.tcp_hpts_entry** %4, align 8
  %12 = load %struct.tcp_hpts_entry*, %struct.tcp_hpts_entry** %4, align 8
  ret %struct.tcp_hpts_entry* %12
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
