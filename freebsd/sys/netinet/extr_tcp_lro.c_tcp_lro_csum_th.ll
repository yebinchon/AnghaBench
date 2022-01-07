; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_csum_th.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_csum_th.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.tcphdr*)* @tcp_lro_csum_th to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @tcp_lro_csum_th(%struct.tcphdr* %0) #0 {
  %2 = alloca %struct.tcphdr*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  store %struct.tcphdr* %0, %struct.tcphdr** %2, align 8
  %6 = load %struct.tcphdr*, %struct.tcphdr** %2, align 8
  %7 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %6, i32 0, i32 0
  store i32 0, i32* %7, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.tcphdr*, %struct.tcphdr** %2, align 8
  %9 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.tcphdr*, %struct.tcphdr** %2, align 8
  %12 = bitcast %struct.tcphdr* %11 to i64*
  store i64* %12, i64** %4, align 8
  br label %13

13:                                               ; preds = %16, %1
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %35

16:                                               ; preds = %13
  %17 = load i64*, i64** %4, align 8
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* %3, align 4
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i32 1
  store i64* %24, i64** %4, align 8
  %25 = load i64*, i64** %4, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %28, %26
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %3, align 4
  %31 = load i64*, i64** %4, align 8
  %32 = getelementptr inbounds i64, i64* %31, i32 1
  store i64* %32, i64** %4, align 8
  %33 = load i64, i64* %5, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %5, align 8
  br label %13

35:                                               ; preds = %13
  br label %36

36:                                               ; preds = %39, %35
  %37 = load i32, i32* %3, align 4
  %38 = icmp sgt i32 %37, 65535
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* %3, align 4
  %41 = ashr i32 %40, 16
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 65535
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %3, align 4
  br label %36

45:                                               ; preds = %36
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 65535
  %48 = sext i32 %47 to i64
  ret i64 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
