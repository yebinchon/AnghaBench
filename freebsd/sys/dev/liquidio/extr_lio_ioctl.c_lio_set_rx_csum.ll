; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_rx_csum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_ioctl.c_lio_set_rx_csum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.lio = type { i32 }

@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_LRO = common dso_local global i32 0, align 4
@LIO_CMD_LRO_DISABLE = common dso_local global i32 0, align 4
@LIO_LROIPV4 = common dso_local global i32 0, align 4
@LIO_LROIPV6 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Rx checksum offload capability not supported\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i64)* @lio_set_rx_csum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_set_rx_csum(%struct.ifnet* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %9 = call %struct.lio* @if_getsoftc(%struct.ifnet* %8)
  store %struct.lio* %9, %struct.lio** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %11 = call i32 @if_getcapabilities(%struct.ifnet* %10)
  %12 = load i32, i32* @IFCAP_RXCSUM, align 4
  %13 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %19 = load i32, i32* @IFCAP_RXCSUM, align 4
  %20 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @if_togglecapenable(%struct.ifnet* %18, i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %48

25:                                               ; preds = %17
  %26 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %27 = call i32 @if_getcapabilities(%struct.ifnet* %26)
  %28 = load i32, i32* @IFCAP_LRO, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %33 = call i32 @if_getcapenable(%struct.ifnet* %32)
  %34 = load i32, i32* @IFCAP_LRO, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %31
  %38 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %39 = load i32, i32* @LIO_CMD_LRO_DISABLE, align 4
  %40 = load i32, i32* @LIO_LROIPV4, align 4
  %41 = load i32, i32* @LIO_LROIPV6, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @lio_set_feature(%struct.ifnet* %38, i32 %39, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = load i32, i32* @IFCAP_LRO, align 4
  %46 = call i32 @if_togglecapenable(%struct.ifnet* %44, i32 %45)
  br label %47

47:                                               ; preds = %37, %31, %25
  br label %48

48:                                               ; preds = %47, %17
  br label %55

49:                                               ; preds = %2
  %50 = load %struct.lio*, %struct.lio** %6, align 8
  %51 = getelementptr inbounds %struct.lio, %struct.lio* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @lio_dev_info(i32 %52, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @ENODEV, align 4
  store i32 %54, i32* %3, align 4
  br label %63

55:                                               ; preds = %48
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = load i32, i32* @EINVAL, align 4
  br label %61

60:                                               ; preds = %55
  br label %61

61:                                               ; preds = %60, %58
  %62 = phi i32 [ %59, %58 ], [ 0, %60 ]
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %61, %49
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @if_getcapabilities(%struct.ifnet*) #1

declare dso_local i32 @if_togglecapenable(%struct.ifnet*, i32) #1

declare dso_local i32 @if_getcapenable(%struct.ifnet*) #1

declare dso_local i32 @lio_set_feature(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @lio_dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
