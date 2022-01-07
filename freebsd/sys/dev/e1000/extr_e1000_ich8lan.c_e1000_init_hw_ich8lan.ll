; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_hw_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_init_hw_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_5__, %struct.e1000_mac_info }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_mac_info = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.3*)* }
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque

@.str = private unnamed_addr constant [22 x i8] c"e1000_init_hw_ich8lan\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@e1000_phy_82578 = common dso_local global i64 0, align 8
@BM_PORT_GEN_CFG = common dso_local global i32 0, align 4
@BM_WUC_HOST_WU_BIT = common dso_local global i32 0, align 4
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i32 0, align 4
@E1000_TXDCTL_PTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_MAX_TX_DESC_PREFETCH = common dso_local global i32 0, align 4
@e1000_ich8lan = common dso_local global i64 0, align 8
@PCIE_ICH8_SNOOP_ALL = common dso_local global i32 0, align 4
@PCIE_NO_SNOOP_ALL = common dso_local global i64 0, align 8
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_RO_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store %struct.e1000_mac_info* %11, %struct.e1000_mac_info** %4, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = call i32 @e1000_initialize_hw_bits_ich8lan(%struct.e1000_hw* %13)
  %15 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %16 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i64 (%struct.e1000_hw.3*)*, i64 (%struct.e1000_hw.3*)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.3*
  %21 = call i64 %18(%struct.e1000_hw.3* %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %26

26:                                               ; preds = %24, %1
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %28 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %29 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %27, i32 %30)
  %32 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %9, align 4
  br label %33

33:                                               ; preds = %44, %26
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %41 = load i32, i32* @E1000_MTA, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %40, i32 %41, i32 %42, i32 0)
  br label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %33

47:                                               ; preds = %33
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %49 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @e1000_phy_82578, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %47
  %55 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %56 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 1
  %59 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %58, align 8
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %61 = bitcast %struct.e1000_hw* %60 to %struct.e1000_hw.1*
  %62 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %63 = call i32 %59(%struct.e1000_hw.1* %61, i32 %62, i32* %9)
  %64 = load i32, i32* @BM_WUC_HOST_WU_BIT, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %71, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = bitcast %struct.e1000_hw* %73 to %struct.e1000_hw.0*
  %75 = load i32, i32* @BM_PORT_GEN_CFG, align 4
  %76 = load i32, i32* %9, align 4
  %77 = call i32 %72(%struct.e1000_hw.0* %74, i32 %75, i32 %76)
  %78 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %79 = call i64 @e1000_phy_hw_reset_ich8lan(%struct.e1000_hw* %78)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %54
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %2, align 8
  br label %159

84:                                               ; preds = %54
  br label %85

85:                                               ; preds = %84, %47
  %86 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %87 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %88, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = bitcast %struct.e1000_hw* %90 to %struct.e1000_hw.2*
  %92 = call i64 %89(%struct.e1000_hw.2* %91)
  store i64 %92, i64* %8, align 8
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = call i32 @E1000_TXDCTL(i32 0)
  %95 = call i32 @E1000_READ_REG(%struct.e1000_hw* %93, i32 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %98 = xor i32 %97, -1
  %99 = and i32 %96, %98
  %100 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %101 = or i32 %99, %100
  store i32 %101, i32* %6, align 4
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @E1000_TXDCTL_PTHRESH, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = load i32, i32* @E1000_TXDCTL_MAX_TX_DESC_PREFETCH, align 4
  %107 = or i32 %105, %106
  store i32 %107, i32* %6, align 4
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %109 = call i32 @E1000_TXDCTL(i32 0)
  %110 = load i32, i32* %6, align 4
  %111 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %108, i32 %109, i32 %110)
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = call i32 @E1000_TXDCTL(i32 1)
  %114 = call i32 @E1000_READ_REG(%struct.e1000_hw* %112, i32 %113)
  store i32 %114, i32* %6, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %120 = or i32 %118, %119
  store i32 %120, i32* %6, align 4
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @E1000_TXDCTL_PTHRESH, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %121, %123
  %125 = load i32, i32* @E1000_TXDCTL_MAX_TX_DESC_PREFETCH, align 4
  %126 = or i32 %124, %125
  store i32 %126, i32* %6, align 4
  %127 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %128 = call i32 @E1000_TXDCTL(i32 1)
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %127, i32 %128, i32 %129)
  %131 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %132 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @e1000_ich8lan, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %136, label %138

136:                                              ; preds = %85
  %137 = load i32, i32* @PCIE_ICH8_SNOOP_ALL, align 4
  store i32 %137, i32* %7, align 4
  br label %142

138:                                              ; preds = %85
  %139 = load i64, i64* @PCIE_NO_SNOOP_ALL, align 8
  %140 = xor i64 %139, -1
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %7, align 4
  br label %142

142:                                              ; preds = %138, %136
  %143 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @e1000_set_pcie_no_snoop_generic(%struct.e1000_hw* %143, i32 %144)
  %146 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %147 = load i32, i32* @E1000_CTRL_EXT, align 4
  %148 = call i32 @E1000_READ_REG(%struct.e1000_hw* %146, i32 %147)
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* @E1000_CTRL_EXT_RO_DIS, align 4
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %153 = load i32, i32* @E1000_CTRL_EXT, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %152, i32 %153, i32 %154)
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = call i32 @e1000_clear_hw_cntrs_ich8lan(%struct.e1000_hw* %156)
  %158 = load i64, i64* %8, align 8
  store i64 %158, i64* %2, align 8
  br label %159

159:                                              ; preds = %142, %82
  %160 = load i64, i64* %2, align 8
  ret i64 %160
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_initialize_hw_bits_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i64 @e1000_phy_hw_reset_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_set_pcie_no_snoop_generic(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_clear_hw_cntrs_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
