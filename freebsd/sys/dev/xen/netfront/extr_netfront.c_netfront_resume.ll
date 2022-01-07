; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/netfront/extr_netfront.c_netfront_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_info = type { i64, i32*, i32* }

@xen_suspend_cancelled = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @netfront_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netfront_resume(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.netfront_info*, align 8
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.netfront_info* @device_get_softc(i32 %6)
  store %struct.netfront_info* %7, %struct.netfront_info** %4, align 8
  %8 = load i64, i64* @xen_suspend_cancelled, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %30, %10
  %12 = load i64, i64* %5, align 8
  %13 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %14 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ult i64 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %19 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @XN_RX_LOCK(i32* %22)
  %24 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %25 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* %5, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @XN_TX_LOCK(i32* %28)
  br label %30

30:                                               ; preds = %17
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %5, align 8
  br label %11

33:                                               ; preds = %11
  %34 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %35 = call i32 @netfront_carrier_on(%struct.netfront_info* %34)
  store i64 0, i64* %5, align 8
  br label %36

36:                                               ; preds = %55, %33
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %39 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ult i64 %37, %40
  br i1 %41, label %42, label %58

42:                                               ; preds = %36
  %43 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %44 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds i32, i32* %45, i64 %46
  %48 = call i32 @XN_RX_UNLOCK(i32* %47)
  %49 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %50 = getelementptr inbounds %struct.netfront_info, %struct.netfront_info* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds i32, i32* %51, i64 %52
  %54 = call i32 @XN_TX_UNLOCK(i32* %53)
  br label %55

55:                                               ; preds = %42
  %56 = load i64, i64* %5, align 8
  %57 = add i64 %56, 1
  store i64 %57, i64* %5, align 8
  br label %36

58:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %62

59:                                               ; preds = %1
  %60 = load %struct.netfront_info*, %struct.netfront_info** %4, align 8
  %61 = call i32 @netif_disconnect_backend(%struct.netfront_info* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %59, %58
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.netfront_info* @device_get_softc(i32) #1

declare dso_local i32 @XN_RX_LOCK(i32*) #1

declare dso_local i32 @XN_TX_LOCK(i32*) #1

declare dso_local i32 @netfront_carrier_on(%struct.netfront_info*) #1

declare dso_local i32 @XN_RX_UNLOCK(i32*) #1

declare dso_local i32 @XN_TX_UNLOCK(i32*) #1

declare dso_local i32 @netif_disconnect_backend(%struct.netfront_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
