; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_rack = type { i32, i32 }

@rack_do_syn_sent = common dso_local global i32 0, align 4
@rack_do_syn_recv = common dso_local global i32 0, align 4
@rack_do_established = common dso_local global i32 0, align 4
@rack_do_close_wait = common dso_local global i32 0, align 4
@rack_do_fin_wait_1 = common dso_local global i32 0, align 4
@rack_do_closing = common dso_local global i32 0, align 4
@rack_do_lastack = common dso_local global i32 0, align 4
@rack_do_fin_wait_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_rack*)* @rack_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_set_state(%struct.tcpcb* %0, %struct.tcp_rack* %1) #0 {
  %3 = alloca %struct.tcpcb*, align 8
  %4 = alloca %struct.tcp_rack*, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %3, align 8
  store %struct.tcp_rack* %1, %struct.tcp_rack** %4, align 8
  %5 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %6 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %60 [
    i32 129, label %8
    i32 130, label %14
    i32 135, label %20
    i32 137, label %29
    i32 134, label %35
    i32 136, label %41
    i32 132, label %47
    i32 133, label %53
    i32 131, label %59
    i32 138, label %59
    i32 128, label %59
  ]

8:                                                ; preds = %2
  %9 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %10 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %9, i32 0, i32 0
  store i32 129, i32* %10, align 4
  %11 = load i32, i32* @rack_do_syn_sent, align 4
  %12 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %13 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  br label %61

14:                                               ; preds = %2
  %15 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %16 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %15, i32 0, i32 0
  store i32 130, i32* %16, align 4
  %17 = load i32, i32* @rack_do_syn_recv, align 4
  %18 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %19 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  br label %61

20:                                               ; preds = %2
  %21 = load %struct.tcpcb*, %struct.tcpcb** %3, align 8
  %22 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %23 = call i32 @rack_set_pace_segments(%struct.tcpcb* %21, %struct.tcp_rack* %22)
  %24 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %25 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %24, i32 0, i32 0
  store i32 135, i32* %25, align 4
  %26 = load i32, i32* @rack_do_established, align 4
  %27 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %28 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  br label %61

29:                                               ; preds = %2
  %30 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %31 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %30, i32 0, i32 0
  store i32 137, i32* %31, align 4
  %32 = load i32, i32* @rack_do_close_wait, align 4
  %33 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %34 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  br label %61

35:                                               ; preds = %2
  %36 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %36, i32 0, i32 0
  store i32 134, i32* %37, align 4
  %38 = load i32, i32* @rack_do_fin_wait_1, align 4
  %39 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %40 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  br label %61

41:                                               ; preds = %2
  %42 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %43 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %42, i32 0, i32 0
  store i32 136, i32* %43, align 4
  %44 = load i32, i32* @rack_do_closing, align 4
  %45 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %46 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %61

47:                                               ; preds = %2
  %48 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %49 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %48, i32 0, i32 0
  store i32 132, i32* %49, align 4
  %50 = load i32, i32* @rack_do_lastack, align 4
  %51 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %52 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %61

53:                                               ; preds = %2
  %54 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %55 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %54, i32 0, i32 0
  store i32 133, i32* %55, align 4
  %56 = load i32, i32* @rack_do_fin_wait_2, align 4
  %57 = load %struct.tcp_rack*, %struct.tcp_rack** %4, align 8
  %58 = getelementptr inbounds %struct.tcp_rack, %struct.tcp_rack* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %61

59:                                               ; preds = %2, %2, %2
  br label %60

60:                                               ; preds = %2, %59
  br label %61

61:                                               ; preds = %60, %53, %47, %41, %35, %29, %20, %14, %8
  ret void
}

declare dso_local i32 @rack_set_pace_segments(%struct.tcpcb*, %struct.tcp_rack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
