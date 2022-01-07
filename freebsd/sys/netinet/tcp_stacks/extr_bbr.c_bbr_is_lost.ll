; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_is_lost.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_is_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i32 }
%struct.bbr_sendmap = type { i64*, i32 }

@BBR_RTT_RACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcp_bbr*, %struct.bbr_sendmap*, i64)* @bbr_is_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bbr_is_lost(%struct.tcp_bbr* %0, %struct.bbr_sendmap* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_bbr*, align 8
  %6 = alloca %struct.bbr_sendmap*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %5, align 8
  store %struct.bbr_sendmap* %1, %struct.bbr_sendmap** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %10 = load %struct.tcp_bbr*, %struct.tcp_bbr** %5, align 8
  %11 = load i32, i32* @BBR_RTT_RACK, align 4
  %12 = call i32 @bbr_get_rtt(%struct.tcp_bbr* %10, i32 %11)
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %15 = call i64 @bbr_calc_thresh_rack(%struct.tcp_bbr* %9, i32 %12, i64 %13, %struct.bbr_sendmap* %14)
  store i64 %15, i64* %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %18 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load %struct.bbr_sendmap*, %struct.bbr_sendmap** %6, align 8
  %21 = getelementptr inbounds %struct.bbr_sendmap, %struct.bbr_sendmap* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %19, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %16, %26
  %28 = load i64, i64* %8, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %32

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i64 @bbr_calc_thresh_rack(%struct.tcp_bbr*, i32, i64, %struct.bbr_sendmap*) #1

declare dso_local i32 @bbr_get_rtt(%struct.tcp_bbr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
