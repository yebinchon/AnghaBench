; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ix_txrx.c_ixgbe_rx_checksum.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ix_txrx.c_ixgbe_rx_checksum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@IXGBE_RXDADV_PKTTYPE_ETQF = common dso_local global i32 0, align 4
@IXGBE_RXDADV_PKTTYPE_SCTP = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_IPCS = common dso_local global i32 0, align 4
@IXGBE_RXD_ERR_IPE = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_L4CS = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@IXGBE_RXD_ERR_TCPE = common dso_local global i32 0, align 4
@CSUM_SCTP_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.TYPE_3__*, i32)* @ixgbe_rx_checksum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_rx_checksum(i32 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 24
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @IXGBE_RXDADV_PKTTYPE_ETQF, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @IXGBE_RXDADV_PKTTYPE_SCTP, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %23, %18, %3
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @IXGBE_RXD_STAT_IPCS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @IXGBE_RXD_ERR_IPE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %37 = load i32, i32* @CSUM_IP_VALID, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %44

41:                                               ; preds = %30
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 0, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %35
  br label %45

45:                                               ; preds = %44, %25
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @IXGBE_RXD_STAT_L4CS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load i32, i32* @CSUM_DATA_VALID, align 4
  %52 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %53 = or i32 %51, %52
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i32, i32* @IXGBE_RXD_ERR_TCPE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %71, label %58

58:                                               ; preds = %50
  %59 = load i32, i32* %10, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %58
  %67 = call i32 @htons(i32 65535)
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %66, %58
  br label %71

71:                                               ; preds = %70, %50
  br label %72

72:                                               ; preds = %71, %45
  ret void
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
