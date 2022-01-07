; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_req_rx_buff_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_req_rx_buff_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32, i32 }

@MCLBYTES = common dso_local global i32 0, align 4
@MJUMPAGESIZE = common dso_local global i32 0, align 4
@MJUM9BYTES = common dso_local global i32 0, align 4
@MJUM16BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*, i32)* @al_eth_req_rx_buff_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_req_rx_buff_size(%struct.al_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.al_eth_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MCLBYTES, align 4
  %6 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %6, i32 0, i32 1
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp sgt i32 %8, 2048
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 2048
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* @MJUMPAGESIZE, align 4
  %17 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  br label %20

19:                                               ; preds = %10
  br label %49

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %22, 4096
  br i1 %23, label %24, label %35

24:                                               ; preds = %21
  %25 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %26 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %27, 4096
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @MJUM9BYTES, align 4
  %31 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  br label %34

33:                                               ; preds = %24
  br label %49

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 9216
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 9216
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @MJUM16BYTES, align 4
  %45 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  br label %48

47:                                               ; preds = %38
  br label %49

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %19, %33, %47, %48, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
