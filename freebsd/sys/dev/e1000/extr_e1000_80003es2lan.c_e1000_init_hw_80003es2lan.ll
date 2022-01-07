; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_hw_80003es2lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_80003es2lan.c_e1000_init_hw_80003es2lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_6__, %struct.e1000_mac_info }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.e1000_mac_info = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.2*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque

@.str = private unnamed_addr constant [26 x i8] c"e1000_init_hw_80003es2lan\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Error initializing identification LED\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Initializing the IEEE VLAN\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Zeroing the MTA\0A\00", align 1
@E1000_MTA = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_INBAND_PARAM = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_IBIST_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Error disabling far-end loopback\0A\00", align 1
@E1000_TXDCTL_WTHRESH = common dso_local global i32 0, align 4
@E1000_TXDCTL_FULL_TX_DESC_WB = common dso_local global i32 0, align 4
@E1000_TXDCTL_COUNT_DESC = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_RTLC = common dso_local global i32 0, align 4
@E1000_TCTL_EXT = common dso_local global i32 0, align 4
@E1000_TCTL_EXT_GCEX_MASK = common dso_local global i32 0, align 4
@DEFAULT_TCTL_EXT_GCEX_80003ES2LAN = common dso_local global i32 0, align 4
@E1000_TIPG = common dso_local global i32 0, align 4
@E1000_TIPG_IPGT_MASK = common dso_local global i32 0, align 4
@DEFAULT_TIPG_IPGT_1000_80003ES2LAN = common dso_local global i32 0, align 4
@E1000_FFLT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OFFSET_SHIFT = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OPMODE_MASK = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_init_hw_80003es2lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_init_hw_80003es2lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 1
  store %struct.e1000_mac_info* %10, %struct.e1000_mac_info** %4, align 8
  %11 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = call i32 @e1000_initialize_hw_bits_80003es2lan(%struct.e1000_hw* %12)
  %14 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %15 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i64 (%struct.e1000_hw.2*)*, i64 (%struct.e1000_hw.2*)** %16, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = bitcast %struct.e1000_hw* %18 to %struct.e1000_hw.2*
  %20 = call i64 %17(%struct.e1000_hw.2* %19)
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %1
  %26 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %28 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.1*)** %29, align 8
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = bitcast %struct.e1000_hw* %31 to %struct.e1000_hw.1*
  %33 = call i32 %30(%struct.e1000_hw.1* %32)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw* %34, i32 %37)
  %39 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %51, %25
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %43 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = load i32, i32* @E1000_MTA, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %47, i32 %48, i32 %49, i32 0)
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %40

54:                                               ; preds = %40
  %55 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %56 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.0*)** %57, align 8
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = bitcast %struct.e1000_hw* %59 to %struct.e1000_hw.0*
  %61 = call i64 %58(%struct.e1000_hw.0* %60)
  store i64 %61, i64* %6, align 8
  %62 = load i64, i64* %6, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %54
  %65 = load i64, i64* %6, align 8
  store i64 %65, i64* %2, align 8
  br label %194

66:                                               ; preds = %54
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %69 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %67, i32 %68, i32* %7)
  store i64 %69, i64* %6, align 8
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %85, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* @E1000_KMRNCTRLSTA_IBIST_DISABLE, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = load i32, i32* @E1000_KMRNCTRLSTA_INBAND_PARAM, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw* %76, i32 %77, i32 %78)
  store i64 %79, i64* %6, align 8
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %84

84:                                               ; preds = %82, %72
  br label %87

85:                                               ; preds = %66
  %86 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %84
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %89 = call i32 @E1000_TXDCTL(i32 0)
  %90 = call i32 @E1000_READ_REG(%struct.e1000_hw* %88, i32 %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %93 = xor i32 %92, -1
  %94 = and i32 %91, %93
  %95 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %98 = or i32 %96, %97
  store i32 %98, i32* %5, align 4
  %99 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %100 = call i32 @E1000_TXDCTL(i32 0)
  %101 = load i32, i32* %5, align 4
  %102 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %99, i32 %100, i32 %101)
  %103 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %104 = call i32 @E1000_TXDCTL(i32 1)
  %105 = call i32 @E1000_READ_REG(%struct.e1000_hw* %103, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* @E1000_TXDCTL_WTHRESH, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %106, %108
  %110 = load i32, i32* @E1000_TXDCTL_FULL_TX_DESC_WB, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @E1000_TXDCTL_COUNT_DESC, align 4
  %113 = or i32 %111, %112
  store i32 %113, i32* %5, align 4
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %115 = call i32 @E1000_TXDCTL(i32 1)
  %116 = load i32, i32* %5, align 4
  %117 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %114, i32 %115, i32 %116)
  %118 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %119 = load i32, i32* @E1000_TCTL, align 4
  %120 = call i32 @E1000_READ_REG(%struct.e1000_hw* %118, i32 %119)
  store i32 %120, i32* %5, align 4
  %121 = load i32, i32* @E1000_TCTL_RTLC, align 4
  %122 = load i32, i32* %5, align 4
  %123 = or i32 %122, %121
  store i32 %123, i32* %5, align 4
  %124 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %125 = load i32, i32* @E1000_TCTL, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %124, i32 %125, i32 %126)
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %129 = load i32, i32* @E1000_TCTL_EXT, align 4
  %130 = call i32 @E1000_READ_REG(%struct.e1000_hw* %128, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* @E1000_TCTL_EXT_GCEX_MASK, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %5, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %5, align 4
  %135 = load i32, i32* @DEFAULT_TCTL_EXT_GCEX_80003ES2LAN, align 4
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %5, align 4
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = load i32, i32* @E1000_TCTL_EXT, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %138, i32 %139, i32 %140)
  %142 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %143 = load i32, i32* @E1000_TIPG, align 4
  %144 = call i32 @E1000_READ_REG(%struct.e1000_hw* %142, i32 %143)
  store i32 %144, i32* %5, align 4
  %145 = load i32, i32* @E1000_TIPG_IPGT_MASK, align 4
  %146 = xor i32 %145, -1
  %147 = load i32, i32* %5, align 4
  %148 = and i32 %147, %146
  store i32 %148, i32* %5, align 4
  %149 = load i32, i32* @DEFAULT_TIPG_IPGT_1000_80003ES2LAN, align 4
  %150 = load i32, i32* %5, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %5, align 4
  %152 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %153 = load i32, i32* @E1000_TIPG, align 4
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %152, i32 %153, i32 %154)
  %156 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %157 = load i32, i32* @E1000_FFLT, align 4
  %158 = call i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw* %156, i32 %157, i32 1)
  store i32 %158, i32* %5, align 4
  %159 = load i32, i32* %5, align 4
  %160 = and i32 %159, -1048577
  store i32 %160, i32* %5, align 4
  %161 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %162 = load i32, i32* @E1000_FFLT, align 4
  %163 = load i32, i32* %5, align 4
  %164 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %161, i32 %162, i32 1, i32 %163)
  %165 = load i32, i32* @TRUE, align 4
  %166 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %167 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  %170 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %171 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET, align 4
  %172 = load i32, i32* @E1000_KMRNCTRLSTA_OFFSET_SHIFT, align 4
  %173 = ashr i32 %171, %172
  %174 = call i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw* %170, i32 %173, i32* %8)
  store i64 %174, i64* %6, align 8
  %175 = load i64, i64* %6, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %87
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* @E1000_KMRNCTRLSTA_OPMODE_MASK, align 4
  %180 = and i32 %178, %179
  %181 = load i32, i32* @E1000_KMRNCTRLSTA_OPMODE_INBAND_MDIO, align 4
  %182 = icmp eq i32 %180, %181
  br i1 %182, label %183, label %189

183:                                              ; preds = %177
  %184 = load i32, i32* @FALSE, align 4
  %185 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %186 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store i32 %184, i32* %188, align 8
  br label %189

189:                                              ; preds = %183, %177
  br label %190

190:                                              ; preds = %189, %87
  %191 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %192 = call i32 @e1000_clear_hw_cntrs_80003es2lan(%struct.e1000_hw* %191)
  %193 = load i64, i64* %6, align 8
  store i64 %193, i64* %2, align 8
  br label %194

194:                                              ; preds = %190, %64
  %195 = load i64, i64* %2, align 8
  ret i64 %195
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_initialize_hw_bits_80003es2lan(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_init_rx_addrs_generic(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i64 @e1000_read_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_kmrn_reg_80003es2lan(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_TXDCTL(i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_READ_REG_ARRAY(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000_clear_hw_cntrs_80003es2lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
