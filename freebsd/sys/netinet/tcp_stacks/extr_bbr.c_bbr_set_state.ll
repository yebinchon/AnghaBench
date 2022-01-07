; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_set_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i32 }
%struct.tcp_bbr = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@bbr_do_syn_sent = common dso_local global i32 0, align 4
@bbr_do_syn_recv = common dso_local global i32 0, align 4
@bbr_do_established = common dso_local global i32 0, align 4
@bbr_do_close_wait = common dso_local global i32 0, align 4
@bbr_do_fin_wait_1 = common dso_local global i32 0, align 4
@bbr_do_closing = common dso_local global i32 0, align 4
@bbr_do_lastack = common dso_local global i32 0, align 4
@bbr_do_fin_wait_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcpcb*, %struct.tcp_bbr*, i32)* @bbr_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_set_state(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i32 %2) #0 {
  %4 = alloca %struct.tcpcb*, align 8
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca i32, align 4
  store %struct.tcpcb* %0, %struct.tcpcb** %4, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.tcpcb*, %struct.tcpcb** %4, align 8
  %8 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %69 [
    i32 129, label %10
    i32 130, label %16
    i32 135, label %22
    i32 137, label %38
    i32 134, label %44
    i32 136, label %50
    i32 132, label %56
    i32 133, label %62
    i32 131, label %68
    i32 138, label %68
    i32 128, label %68
  ]

10:                                               ; preds = %3
  %11 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %12 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %11, i32 0, i32 0
  store i32 129, i32* %12, align 8
  %13 = load i32, i32* @bbr_do_syn_sent, align 4
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %15 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  br label %70

16:                                               ; preds = %3
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 0
  store i32 130, i32* %18, align 8
  %19 = load i32, i32* @bbr_do_syn_recv, align 4
  %20 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %21 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %70

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 2
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @max(i32 %23, i32 %28)
  %30 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %31 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %34 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %33, i32 0, i32 0
  store i32 135, i32* %34, align 8
  %35 = load i32, i32* @bbr_do_established, align 4
  %36 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %37 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %70

38:                                               ; preds = %3
  %39 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %40 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %39, i32 0, i32 0
  store i32 137, i32* %40, align 8
  %41 = load i32, i32* @bbr_do_close_wait, align 4
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %70

44:                                               ; preds = %3
  %45 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %46 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %45, i32 0, i32 0
  store i32 134, i32* %46, align 8
  %47 = load i32, i32* @bbr_do_fin_wait_1, align 4
  %48 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %49 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  br label %70

50:                                               ; preds = %3
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 0
  store i32 136, i32* %52, align 8
  %53 = load i32, i32* @bbr_do_closing, align 4
  %54 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %55 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %70

56:                                               ; preds = %3
  %57 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %58 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %57, i32 0, i32 0
  store i32 132, i32* %58, align 8
  %59 = load i32, i32* @bbr_do_lastack, align 4
  %60 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %61 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %70

62:                                               ; preds = %3
  %63 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %64 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %63, i32 0, i32 0
  store i32 133, i32* %64, align 8
  %65 = load i32, i32* @bbr_do_fin_wait_2, align 4
  %66 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %67 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  br label %70

68:                                               ; preds = %3, %3, %3
  br label %69

69:                                               ; preds = %3, %68
  br label %70

70:                                               ; preds = %69, %62, %56, %50, %44, %38, %22, %16, %10
  ret void
}

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
