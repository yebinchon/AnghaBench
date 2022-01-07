; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/if_ntb/extr_if_ntb.c_ntb_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_net_ctx = type { i32, i64 }
%struct.ifreq = type { i32, i64 }

@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_TXCSUM = common dso_local global i32 0, align 4
@NTB_CSUM_FEATURES = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@IFCAP_TXCSUM_IPV6 = common dso_local global i32 0, align 4
@NTB_CSUM_FEATURES6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @ntb_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_ioctl(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.ntb_net_ctx*, align 8
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.ntb_net_ctx* @if_getsoftc(i32 %10)
  store %struct.ntb_net_ctx* %11, %struct.ntb_net_ctx** %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = inttoptr i64 %12 to %struct.ifreq*
  store %struct.ifreq* %13, %struct.ifreq** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %114 [
    i32 130, label %15
    i32 134, label %15
    i32 133, label %15
    i32 128, label %16
    i32 129, label %34
    i32 132, label %34
    i32 131, label %41
  ]

15:                                               ; preds = %3, %3, %3
  br label %119

16:                                               ; preds = %3
  %17 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %18 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %7, align 8
  %21 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ETHER_HDR_LEN, align 8
  %24 = sub nsw i64 %22, %23
  %25 = icmp sgt i64 %19, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %16
  %27 = load i32, i32* @EINVAL, align 4
  store i32 %27, i32* %9, align 4
  br label %119

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %31 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @if_setmtu(i32 %29, i64 %32)
  br label %119

34:                                               ; preds = %3, %3
  %35 = load i32, i32* %4, align 4
  %36 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %37 = load %struct.ntb_net_ctx*, %struct.ntb_net_ctx** %7, align 8
  %38 = getelementptr inbounds %struct.ntb_net_ctx, %struct.ntb_net_ctx* %37, i32 0, i32 0
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @ifmedia_ioctl(i32 %35, %struct.ifreq* %36, i32* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %119

41:                                               ; preds = %3
  %42 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %43 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @IFCAP_RXCSUM, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @IFCAP_RXCSUM, align 4
  %51 = call i32 @if_setcapenablebit(i32 %49, i32 %50, i32 0)
  br label %56

52:                                               ; preds = %41
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IFCAP_RXCSUM, align 4
  %55 = call i32 @if_setcapenablebit(i32 %53, i32 0, i32 %54)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %58 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @IFCAP_TXCSUM, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %56
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @IFCAP_TXCSUM, align 4
  %66 = call i32 @if_setcapenablebit(i32 %64, i32 %65, i32 0)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @NTB_CSUM_FEATURES, align 4
  %69 = call i32 @if_sethwassistbits(i32 %67, i32 %68, i32 0)
  br label %77

70:                                               ; preds = %56
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @IFCAP_TXCSUM, align 4
  %73 = call i32 @if_setcapenablebit(i32 %71, i32 0, i32 %72)
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @NTB_CSUM_FEATURES, align 4
  %76 = call i32 @if_sethwassistbits(i32 %74, i32 0, i32 %75)
  br label %77

77:                                               ; preds = %70, %63
  %78 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %79 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %87 = call i32 @if_setcapenablebit(i32 %85, i32 %86, i32 0)
  br label %92

88:                                               ; preds = %77
  %89 = load i32, i32* %4, align 4
  %90 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %91 = call i32 @if_setcapenablebit(i32 %89, i32 0, i32 %90)
  br label %92

92:                                               ; preds = %88, %84
  %93 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %94 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %102 = call i32 @if_setcapenablebit(i32 %100, i32 %101, i32 0)
  %103 = load i32, i32* %4, align 4
  %104 = load i32, i32* @NTB_CSUM_FEATURES6, align 4
  %105 = call i32 @if_sethwassistbits(i32 %103, i32 %104, i32 0)
  br label %113

106:                                              ; preds = %92
  %107 = load i32, i32* %4, align 4
  %108 = load i32, i32* @IFCAP_TXCSUM_IPV6, align 4
  %109 = call i32 @if_setcapenablebit(i32 %107, i32 0, i32 %108)
  %110 = load i32, i32* %4, align 4
  %111 = load i32, i32* @NTB_CSUM_FEATURES6, align 4
  %112 = call i32 @if_sethwassistbits(i32 %110, i32 0, i32 %111)
  br label %113

113:                                              ; preds = %106, %99
  br label %119

114:                                              ; preds = %3
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load i64, i64* %6, align 8
  %118 = call i32 @ether_ioctl(i32 %115, i32 %116, i64 %117)
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %114, %113, %34, %28, %26, %15
  %120 = load i32, i32* %9, align 4
  ret i32 %120
}

declare dso_local %struct.ntb_net_ctx* @if_getsoftc(i32) #1

declare dso_local i32 @if_setmtu(i32, i64) #1

declare dso_local i32 @ifmedia_ioctl(i32, %struct.ifreq*, i32*, i32) #1

declare dso_local i32 @if_setcapenablebit(i32, i32, i32) #1

declare dso_local i32 @if_sethwassistbits(i32, i32, i32) #1

declare dso_local i32 @ether_ioctl(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
