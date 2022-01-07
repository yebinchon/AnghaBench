; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_what_can_we_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_what_can_we_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpcb = type { i64 }
%struct.tcp_bbr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcpcb*, %struct.tcp_bbr*, i64, i64, i64, i64)* @bbr_what_can_we_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bbr_what_can_we_send(%struct.tcpcb* %0, %struct.tcp_bbr* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.tcpcb*, align 8
  %9 = alloca %struct.tcp_bbr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.tcpcb* %0, %struct.tcpcb** %8, align 8
  store %struct.tcp_bbr* %1, %struct.tcp_bbr** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  %16 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %17 = call i64 @ctf_outstanding(%struct.tcpcb* %16)
  %18 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %19 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sge i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %6
  store i64 0, i64* %14, align 8
  br label %69

23:                                               ; preds = %6
  %24 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %25 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %26 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tcp_bbr*, %struct.tcp_bbr** %9, align 8
  %30 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = call i64 @ctf_flight_size(%struct.tcpcb* %24, i64 %33)
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* %10, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i64 0, i64* %7, align 8
  br label %71

39:                                               ; preds = %23
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %15, align 8
  %42 = sub nsw i64 %40, %41
  store i64 %42, i64* %14, align 8
  %43 = load i64, i64* %14, align 8
  %44 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %45 = call i64 @ctf_outstanding(%struct.tcpcb* %44)
  %46 = add nsw i64 %43, %45
  %47 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %48 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %39
  %52 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %53 = getelementptr inbounds %struct.tcpcb, %struct.tcpcb* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.tcpcb*, %struct.tcpcb** %8, align 8
  %56 = call i64 @ctf_outstanding(%struct.tcpcb* %55)
  %57 = sub nsw i64 %54, %56
  store i64 %57, i64* %14, align 8
  br label %58

58:                                               ; preds = %51, %39
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %12, align 8
  %61 = add nsw i64 %59, %60
  %62 = load i64, i64* %11, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %12, align 8
  %67 = sub nsw i64 %65, %66
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %64, %58
  br label %69

69:                                               ; preds = %68, %22
  %70 = load i64, i64* %14, align 8
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %69, %38
  %72 = load i64, i64* %7, align 8
  ret i64 %72
}

declare dso_local i64 @ctf_outstanding(%struct.tcpcb*) #1

declare dso_local i64 @ctf_flight_size(%struct.tcpcb*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
