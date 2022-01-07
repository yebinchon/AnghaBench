; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_hw_82571.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82571.c_e1000_init_hw_82571.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mac_info }
%struct.e1000_mac_info = type { i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [20 x i8] c"e1000_init_hw_82571\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i32 0, align 4
@E1000_TXDCTL_COUNT_DESC = common dso_local global i32 0, align 4
@E1000_GCR = common dso_local global i32 0, align 4
@E1000_GCR_L1_ACT_WITHOUT_L0S_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_82571 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_82571(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_mac_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  store %struct.e1000_mac_info* %9, %struct.e1000_mac_info** %3, align 8
  %10 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = call i32 @e1000_initialize_hw_bits_82571(%struct.e1000_hw* %14)
  %16 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %17 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %18, align 8
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = bitcast %struct.e1000_hw* %20 to %struct.e1000_hw.2*
  %22 = call i64 %19(%struct.e1000_hw.2* %21)
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %1
  %28 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %30 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %31, align 8
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = bitcast %struct.e1000_hw* %33 to %struct.e1000_hw.1*
  %35 = call i32 %32(%struct.e1000_hw.1* %34)
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = call i64 @e1000_get_laa_state_82571(%struct.e1000_hw* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %27
  %40 = load i64, i64* %7, align 8
  %41 = add nsw i64 %40, -1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %39, %27
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %43, i64 %44)
  %46 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i64 0, i64* %6, align 8
  br label %47

47:                                               ; preds = %58, %42
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %50 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %55 = load i32, i32* @E1000_MTA, align 4
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %54, i32 %55, i64 %56, i32 0)
  br label %58

58:                                               ; preds = %53
  %59 = load i64, i64* %6, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %6, align 8
  br label %47

61:                                               ; preds = %47
  %62 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %63 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = call i64 %65(%struct.e1000_hw.0* %67)
  store i64 %68, i64* %5, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = call i32 @E1000_TXDCTL(i32 0)
  %71 = call i32 @E1000_READ_REG(%struct.e1000_hw* %69, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %74 = xor i32 %73, -1
  %75 = and i32 %72, %74
  %76 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %4, align 4
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %81 = call i32 @E1000_TXDCTL(i32 0)
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %80, i32 %81, i32 %82)
  %84 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %3, align 8
  %85 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  switch i32 %86, label %101 [
    i32 130, label %87
    i32 129, label %90
    i32 128, label %90
  ]

87:                                               ; preds = %61
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %89 = call i32 @e1000_enable_tx_pkt_filtering_generic(%struct.e1000_hw* %88)
  br label %90

90:                                               ; preds = %61, %61, %87
  %91 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %92 = load i32, i32* @E1000_GCR, align 4
  %93 = call i32 @E1000_READ_REG(%struct.e1000_hw* %91, i32 %92)
  store i32 %93, i32* %4, align 4
  %94 = load i32, i32* @E1000_GCR_L1_ACT_WITHOUT_L0S_RX, align 4
  %95 = load i32, i32* %4, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %4, align 4
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %98 = load i32, i32* @E1000_GCR, align 4
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %97, i32 %98, i32 %99)
  br label %117

101:                                              ; preds = %61
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %103 = call i32 @E1000_TXDCTL(i32 1)
  %104 = call i32 @E1000_READ_REG(%struct.e1000_hw* %102, i32 %103)
  store i32 %104, i32* %4, align 4
  %105 = load i32, i32* %4, align 4
  %106 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  %109 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %112 = or i32 %110, %111
  store i32 %112, i32* %4, align 4
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %114 = call i32 @E1000_TXDCTL(i32 1)
  %115 = load i32, i32* %4, align 4
  %116 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %101, %90
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %119 = call i32 @e1000_clear_hw_cntrs_82571(%struct.e1000_hw* %118)
  %120 = load i64, i64* %5, align 8
  ret i64 %120
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_initialize_hw_bits_82571(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @e1000_get_laa_state_82571(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i64) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i64, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_enable_tx_pkt_filtering_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_clear_hw_cntrs_82571(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
