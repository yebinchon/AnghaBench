; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_ctloutput.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_ctloutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.sockopt = type { i64 }
%struct.inpcb = type { i32 }
%struct.tcpcb = type { i64 }
%struct.tcp_bbr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOPT_SET = common dso_local global i64 0, align 8
@SOPT_GET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*)* @bbr_ctloutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_ctloutput(%struct.socket* %0, %struct.sockopt* %1, %struct.inpcb* %2, %struct.tcpcb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.socket*, align 8
  %7 = alloca %struct.sockopt*, align 8
  %8 = alloca %struct.inpcb*, align 8
  %9 = alloca %struct.tcpcb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.tcp_bbr*, align 8
  store %struct.socket* %0, %struct.socket** %6, align 8
  store %struct.sockopt* %1, %struct.sockopt** %7, align 8
  store %struct.inpcb* %2, %struct.inpcb** %8, align 8
  store %struct.tcpcb* %3, %struct.tcpcb** %9, align 8
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %10, align 4
  %13 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %14 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.tcp_bbr*
  store %struct.tcp_bbr* %16, %struct.tcp_bbr** %11, align 8
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %18 = icmp eq %struct.tcp_bbr* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %4
  br label %48

20:                                               ; preds = %4
  %21 = load %struct.sockopt*, %struct.sockopt** %7, align 8
  %22 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SOPT_SET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load %struct.socket*, %struct.socket** %6, align 8
  %28 = load %struct.sockopt*, %struct.sockopt** %7, align 8
  %29 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %30 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %31 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %32 = call i32 @bbr_set_sockopt(%struct.socket* %27, %struct.sockopt* %28, %struct.inpcb* %29, %struct.tcpcb* %30, %struct.tcp_bbr* %31)
  store i32 %32, i32* %5, align 4
  br label %52

33:                                               ; preds = %20
  %34 = load %struct.sockopt*, %struct.sockopt** %7, align 8
  %35 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SOPT_GET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.socket*, %struct.socket** %6, align 8
  %41 = load %struct.sockopt*, %struct.sockopt** %7, align 8
  %42 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %43 = load %struct.tcpcb*, %struct.tcpcb** %9, align 8
  %44 = load %struct.tcp_bbr*, %struct.tcp_bbr** %11, align 8
  %45 = call i32 @bbr_get_sockopt(%struct.socket* %40, %struct.sockopt* %41, %struct.inpcb* %42, %struct.tcpcb* %43, %struct.tcp_bbr* %44)
  store i32 %45, i32* %5, align 4
  br label %52

46:                                               ; preds = %33
  br label %47

47:                                               ; preds = %46
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.inpcb*, %struct.inpcb** %8, align 8
  %50 = call i32 @INP_WUNLOCK(%struct.inpcb* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %39, %26
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @bbr_set_sockopt(%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*, %struct.tcp_bbr*) #1

declare dso_local i32 @bbr_get_sockopt(%struct.socket*, %struct.sockopt*, %struct.inpcb*, %struct.tcpcb*, %struct.tcp_bbr*) #1

declare dso_local i32 @INP_WUNLOCK(%struct.inpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
