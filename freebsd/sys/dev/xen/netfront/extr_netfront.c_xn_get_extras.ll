; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_get_extras.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_xn_get_extras.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_rxq = type { i32 }
%struct.netif_extra_info = type { i32, i32 }
%struct.mbuf = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_TYPE_MAX = common dso_local global i32 0, align 4
@XEN_NETIF_EXTRA_FLAG_MORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_rxq*, %struct.netif_extra_info*, i64, i64*)* @xn_get_extras to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xn_get_extras(%struct.netfront_rxq* %0, %struct.netif_extra_info* %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.netfront_rxq*, align 8
  %6 = alloca %struct.netif_extra_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.netif_extra_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  store %struct.netfront_rxq* %0, %struct.netfront_rxq** %5, align 8
  store %struct.netif_extra_info* %1, %struct.netif_extra_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %72, %4
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, 1
  %17 = load i64, i64* %7, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @__predict_false(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %10, align 4
  br label %79

24:                                               ; preds = %13
  %25 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %26 = getelementptr inbounds %struct.netfront_rxq, %struct.netfront_rxq* %25, i32 0, i32 0
  %27 = load i64*, i64** %8, align 8
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = call i64 @RING_GET_RESPONSE(i32* %26, i64 %29)
  %31 = inttoptr i64 %30 to %struct.netif_extra_info*
  store %struct.netif_extra_info* %31, %struct.netif_extra_info** %9, align 8
  %32 = load %struct.netif_extra_info*, %struct.netif_extra_info** %9, align 8
  %33 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %24
  %37 = load %struct.netif_extra_info*, %struct.netif_extra_info** %9, align 8
  %38 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XEN_NETIF_EXTRA_TYPE_MAX, align 4
  %41 = icmp sge i32 %39, %40
  br label %42

42:                                               ; preds = %36, %24
  %43 = phi i1 [ true, %24 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @__predict_false(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %10, align 4
  br label %59

49:                                               ; preds = %42
  %50 = load %struct.netif_extra_info*, %struct.netif_extra_info** %6, align 8
  %51 = load %struct.netif_extra_info*, %struct.netif_extra_info** %9, align 8
  %52 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %50, i64 %55
  %57 = load %struct.netif_extra_info*, %struct.netif_extra_info** %9, align 8
  %58 = call i32 @memcpy(%struct.netif_extra_info* %56, %struct.netif_extra_info* %57, i32 8)
  br label %59

59:                                               ; preds = %49, %47
  %60 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %61 = load i64*, i64** %8, align 8
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.mbuf* @xn_get_rx_mbuf(%struct.netfront_rxq* %60, i64 %62)
  store %struct.mbuf* %63, %struct.mbuf** %11, align 8
  %64 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %65 = load i64*, i64** %8, align 8
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @xn_get_rx_ref(%struct.netfront_rxq* %64, i64 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.netfront_rxq*, %struct.netfront_rxq** %5, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @xn_move_rx_slot(%struct.netfront_rxq* %68, %struct.mbuf* %69, i32 %70)
  br label %72

72:                                               ; preds = %59
  %73 = load %struct.netif_extra_info*, %struct.netif_extra_info** %9, align 8
  %74 = getelementptr inbounds %struct.netif_extra_info, %struct.netif_extra_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @XEN_NETIF_EXTRA_FLAG_MORE, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %13, label %79

79:                                               ; preds = %72, %22
  %80 = load i32, i32* %10, align 4
  ret i32 %80
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @RING_GET_RESPONSE(i32*, i64) #1

declare dso_local i32 @memcpy(%struct.netif_extra_info*, %struct.netif_extra_info*, i32) #1

declare dso_local %struct.mbuf* @xn_get_rx_mbuf(%struct.netfront_rxq*, i64) #1

declare dso_local i32 @xn_get_rx_ref(%struct.netfront_rxq*, i64) #1

declare dso_local i32 @xn_move_rx_slot(%struct.netfront_rxq*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
