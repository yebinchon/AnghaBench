; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netif_disconnect_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netif_disconnect_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netfront_info*)* @netif_disconnect_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netif_disconnect_backend(%struct.netfront_info* %0) #0 {
  %2 = alloca %struct.netfront_info*, align 8
  %3 = alloca i64, align 8
  store %struct.netfront_info* %0, %struct.netfront_info** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %23, %1
  %5 = load i64, i64* %3, align 8
  %6 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %7 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ult i64 %5, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %4
  %11 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %12 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* %3, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = call i32 @XN_RX_LOCK(i32* %15)
  %17 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %18 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  %22 = call i32 @XN_TX_LOCK(i32* %21)
  br label %23

23:                                               ; preds = %10
  %24 = load i64, i64* %3, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %3, align 8
  br label %4

26:                                               ; preds = %4
  %27 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %28 = call i32 @netfront_carrier_off(%struct.netfront_info* %27)
  store i64 0, i64* %3, align 8
  br label %29

29:                                               ; preds = %48, %26
  %30 = load i64, i64* %3, align 8
  %31 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %32 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ult i64 %30, %33
  br i1 %34, label %35, label %51

35:                                               ; preds = %29
  %36 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %37 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %36, i32 0, i32 2
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @XN_RX_UNLOCK(i32* %40)
  %42 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %43 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %3, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = call i32 @XN_TX_UNLOCK(i32* %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i64, i64* %3, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %3, align 8
  br label %29

51:                                               ; preds = %29
  store i64 0, i64* %3, align 8
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i64, i64* %3, align 8
  %54 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %55 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ult i64 %53, %56
  br i1 %57, label %58, label %74

58:                                               ; preds = %52
  %59 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %60 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %3, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @disconnect_rxq(i32* %63)
  %65 = load %struct.netfront_info*, %struct.netfront_info** %2, align 8
  %66 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* %3, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = call i32 @disconnect_txq(i32* %69)
  br label %71

71:                                               ; preds = %58
  %72 = load i64, i64* %3, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %3, align 8
  br label %52

74:                                               ; preds = %52
  ret void
}

declare dso_local i32 @XN_RX_LOCK(i32*) #1

declare dso_local i32 @XN_TX_LOCK(i32*) #1

declare dso_local i32 @netfront_carrier_off(%struct.netfront_info*) #1

declare dso_local i32 @XN_RX_UNLOCK(i32*) #1

declare dso_local i32 @XN_TX_UNLOCK(i32*) #1

declare dso_local i32 @disconnect_rxq(i32*) #1

declare dso_local i32 @disconnect_txq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
