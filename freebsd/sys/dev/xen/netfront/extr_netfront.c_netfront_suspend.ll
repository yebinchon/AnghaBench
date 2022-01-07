; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i64, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @netfront_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfront_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netfront_info*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.netfront_info* @device_get_softc(i32 %5)
  store %struct.netfront_info* %6, %struct.netfront_info** %3, align 8
  store i64 0, i64* %4, align 8
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i64, i64* %4, align 8
  %9 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %10 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ult i64 %8, %11
  br i1 %12, label %13, label %29

13:                                               ; preds = %7
  %14 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %15 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %14, i32 0, i32 2
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* %4, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = call i32 @XN_RX_LOCK(i32* %18)
  %20 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %21 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = call i32 @XN_TX_LOCK(i32* %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i64, i64* %4, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %4, align 8
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %31 = call i32 @netfront_carrier_off(%struct.netfront_info* %30)
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %51, %29
  %33 = load i64, i64* %4, align 8
  %34 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %35 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %54

38:                                               ; preds = %32
  %39 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %40 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %4, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = call i32 @XN_RX_UNLOCK(i32* %43)
  %45 = load %struct.netfront_info*, %struct.netfront_info** %3, align 8
  %46 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %4, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = call i32 @XN_TX_UNLOCK(i32* %49)
  br label %51

51:                                               ; preds = %38
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, 1
  store i64 %53, i64* %4, align 8
  br label %32

54:                                               ; preds = %32
  ret i32 0
}

declare dso_local %struct.netfront_info* @device_get_softc(i32) #1

declare dso_local i32 @XN_RX_LOCK(i32*) #1

declare dso_local i32 @XN_TX_LOCK(i32*) #1

declare dso_local i32 @netfront_carrier_off(%struct.netfront_info*) #1

declare dso_local i32 @XN_RX_UNLOCK(i32*) #1

declare dso_local i32 @XN_TX_UNLOCK(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
