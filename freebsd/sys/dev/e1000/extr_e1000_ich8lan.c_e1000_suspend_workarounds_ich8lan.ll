; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_suspend_workarounds_ich8lan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_ich8lan.c_e1000_suspend_workarounds_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)*, i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.3*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.e1000_hw.2 = type opaque
%struct.e1000_hw.3 = type opaque
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.e1000_dev_spec_ich8lan }
%struct.e1000_dev_spec_ich8lan = type { i64, i32 }

@.str = private unnamed_addr constant [34 x i8] c"e1000_suspend_workarounds_ich8lan\00", align 1
@E1000_PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_GBE_DISABLE = common dso_local global i32 0, align 4
@e1000_phy_i217 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_LM = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_LPTLP_I218_V = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_LM3 = common dso_local global i64 0, align 8
@E1000_DEV_ID_PCH_I218_V3 = common dso_local global i64 0, align 8
@e1000_pch_spt = common dso_local global i64 0, align 8
@E1000_FEXTNVM6 = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_REQ_PLL_CLK = common dso_local global i32 0, align 4
@I217_EEE_ADVERTISEMENT = common dso_local global i32 0, align 4
@I82579_EEE_100_SUPPORTED = common dso_local global i64 0, align 8
@ADVERTISE_100_FULL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_D0A_LPLU = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_LPLU = common dso_local global i32 0, align 4
@I217_LPI_GPIO_CTRL = common dso_local global i32 0, align 4
@I217_LPI_GPIO_CTRL_AUTO_EN_LPI = common dso_local global i64 0, align 8
@E1000_FWSM = common dso_local global i32 0, align 4
@E1000_ICH_FWSM_FW_VALID = common dso_local global i32 0, align 4
@I217_PROXY_CTRL = common dso_local global i32 0, align 4
@I217_PROXY_CTRL_AUTO_DISABLE = common dso_local global i64 0, align 8
@I217_SxCTRL = common dso_local global i32 0, align 4
@I217_SxCTRL_ENABLE_LPI_RESET = common dso_local global i64 0, align 8
@I217_MEMPWR = common dso_local global i32 0, align 4
@I217_MEMPWR_DISABLE_SMB_RELEASE = common dso_local global i64 0, align 8
@I217_CGFREG = common dso_local global i32 0, align 4
@I217_CGFREG_ENABLE_MTA_RESET = common dso_local global i64 0, align 8
@e1000_ich8lan = common dso_local global i64 0, align 8
@e1000_pchlan = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_suspend_workarounds_ich8lan(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_dev_spec_ich8lan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store %struct.e1000_dev_spec_ich8lan* %12, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %15 = load i32, i32* @E1000_PHY_CTRL, align 4
  %16 = call i32 @E1000_READ_REG(%struct.e1000_hw* %14, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @E1000_PHY_CTRL_GBE_DISABLE, align 4
  %18 = load i32, i32* %4, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %21 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @e1000_phy_i217, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %244

26:                                               ; preds = %1
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %7, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_LM, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %52, label %33

33:                                               ; preds = %26
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* @E1000_DEV_ID_PCH_LPTLP_I218_V, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %52, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @E1000_DEV_ID_PCH_I218_LM3, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %7, align 8
  %43 = load i64, i64* @E1000_DEV_ID_PCH_I218_V3, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %47 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @e1000_pch_spt, align 8
  %51 = icmp sge i64 %49, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %45, %41, %37, %33, %26
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = load i32, i32* @E1000_FEXTNVM6, align 4
  %55 = call i32 @E1000_READ_REG(%struct.e1000_hw* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = load i32, i32* @E1000_FEXTNVM6, align 4
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %56, i32 %57, i32 %61)
  br label %63

63:                                               ; preds = %52, %45
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 1
  %68 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.1*
  %71 = call i64 %68(%struct.e1000_hw.1* %70)
  store i64 %71, i64* %5, align 8
  %72 = load i64, i64* %5, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %63
  br label %245

75:                                               ; preds = %63
  %76 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %77 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %137, label %80

80:                                               ; preds = %75
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = load i32, i32* @I217_EEE_ADVERTISEMENT, align 4
  %83 = call i64 @e1000_read_emi_reg_locked(%struct.e1000_hw* %81, i32 %82, i64* %9)
  store i64 %83, i64* %5, align 8
  %84 = load i64, i64* %5, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %235

87:                                               ; preds = %80
  %88 = load i64, i64* %9, align 8
  %89 = load i64, i64* @I82579_EEE_100_SUPPORTED, align 8
  %90 = and i64 %88, %89
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %136

92:                                               ; preds = %87
  %93 = load %struct.e1000_dev_spec_ich8lan*, %struct.e1000_dev_spec_ich8lan** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_dev_spec_ich8lan, %struct.e1000_dev_spec_ich8lan* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @I82579_EEE_100_SUPPORTED, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %136

99:                                               ; preds = %92
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @ADVERTISE_100_FULL, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %136

107:                                              ; preds = %99
  %108 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %109 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %110 = or i32 %108, %109
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %4, align 4
  %114 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %115 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 3
  %118 = load i32 (%struct.e1000_hw.3*, i32, i64*)*, i32 (%struct.e1000_hw.3*, i32, i64*)** %117, align 8
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %120 = bitcast %struct.e1000_hw* %119 to %struct.e1000_hw.3*
  %121 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %122 = call i32 %118(%struct.e1000_hw.3* %120, i32 %121, i64* %6)
  %123 = load i64, i64* @I217_LPI_GPIO_CTRL_AUTO_EN_LPI, align 8
  %124 = load i64, i64* %6, align 8
  %125 = or i64 %124, %123
  store i64 %125, i64* %6, align 8
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %127 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %129, align 8
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %132 = bitcast %struct.e1000_hw* %131 to %struct.e1000_hw.2*
  %133 = load i32, i32* @I217_LPI_GPIO_CTRL, align 4
  %134 = load i64, i64* %6, align 8
  %135 = call i32 %130(%struct.e1000_hw.2* %132, i32 %133, i64 %134)
  br label %136

136:                                              ; preds = %107, %99, %92, %87
  br label %137

137:                                              ; preds = %136, %75
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %139 = load i32, i32* @E1000_FWSM, align 4
  %140 = call i32 @E1000_READ_REG(%struct.e1000_hw* %138, i32 %139)
  %141 = load i32, i32* @E1000_ICH_FWSM_FW_VALID, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %212, label %144

144:                                              ; preds = %137
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 3
  %149 = load i32 (%struct.e1000_hw.3*, i32, i64*)*, i32 (%struct.e1000_hw.3*, i32, i64*)** %148, align 8
  %150 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %151 = bitcast %struct.e1000_hw* %150 to %struct.e1000_hw.3*
  %152 = load i32, i32* @I217_PROXY_CTRL, align 4
  %153 = call i32 %149(%struct.e1000_hw.3* %151, i32 %152, i64* %6)
  %154 = load i64, i64* @I217_PROXY_CTRL_AUTO_DISABLE, align 8
  %155 = load i64, i64* %6, align 8
  %156 = or i64 %155, %154
  store i64 %156, i64* %6, align 8
  %157 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %158 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 2
  %161 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %160, align 8
  %162 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %163 = bitcast %struct.e1000_hw* %162 to %struct.e1000_hw.2*
  %164 = load i32, i32* @I217_PROXY_CTRL, align 4
  %165 = load i64, i64* %6, align 8
  %166 = call i32 %161(%struct.e1000_hw.2* %163, i32 %164, i64 %165)
  %167 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %168 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 3
  %171 = load i32 (%struct.e1000_hw.3*, i32, i64*)*, i32 (%struct.e1000_hw.3*, i32, i64*)** %170, align 8
  %172 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %173 = bitcast %struct.e1000_hw* %172 to %struct.e1000_hw.3*
  %174 = load i32, i32* @I217_SxCTRL, align 4
  %175 = call i32 %171(%struct.e1000_hw.3* %173, i32 %174, i64* %6)
  %176 = load i64, i64* @I217_SxCTRL_ENABLE_LPI_RESET, align 8
  %177 = load i64, i64* %6, align 8
  %178 = or i64 %177, %176
  store i64 %178, i64* %6, align 8
  %179 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %180 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 2
  %183 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %182, align 8
  %184 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %185 = bitcast %struct.e1000_hw* %184 to %struct.e1000_hw.2*
  %186 = load i32, i32* @I217_SxCTRL, align 4
  %187 = load i64, i64* %6, align 8
  %188 = call i32 %183(%struct.e1000_hw.2* %185, i32 %186, i64 %187)
  %189 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %190 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 3
  %193 = load i32 (%struct.e1000_hw.3*, i32, i64*)*, i32 (%struct.e1000_hw.3*, i32, i64*)** %192, align 8
  %194 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %195 = bitcast %struct.e1000_hw* %194 to %struct.e1000_hw.3*
  %196 = load i32, i32* @I217_MEMPWR, align 4
  %197 = call i32 %193(%struct.e1000_hw.3* %195, i32 %196, i64* %6)
  %198 = load i64, i64* @I217_MEMPWR_DISABLE_SMB_RELEASE, align 8
  %199 = xor i64 %198, -1
  %200 = load i64, i64* %6, align 8
  %201 = and i64 %200, %199
  store i64 %201, i64* %6, align 8
  %202 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %203 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %205, align 8
  %207 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %208 = bitcast %struct.e1000_hw* %207 to %struct.e1000_hw.2*
  %209 = load i32, i32* @I217_MEMPWR, align 4
  %210 = load i64, i64* %6, align 8
  %211 = call i32 %206(%struct.e1000_hw.2* %208, i32 %209, i64 %210)
  br label %212

212:                                              ; preds = %144, %137
  %213 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %214 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 3
  %217 = load i32 (%struct.e1000_hw.3*, i32, i64*)*, i32 (%struct.e1000_hw.3*, i32, i64*)** %216, align 8
  %218 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %219 = bitcast %struct.e1000_hw* %218 to %struct.e1000_hw.3*
  %220 = load i32, i32* @I217_CGFREG, align 4
  %221 = call i32 %217(%struct.e1000_hw.3* %219, i32 %220, i64* %6)
  %222 = load i64, i64* @I217_CGFREG_ENABLE_MTA_RESET, align 8
  %223 = load i64, i64* %6, align 8
  %224 = or i64 %223, %222
  store i64 %224, i64* %6, align 8
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %226 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 2
  %229 = load i32 (%struct.e1000_hw.2*, i32, i64)*, i32 (%struct.e1000_hw.2*, i32, i64)** %228, align 8
  %230 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %231 = bitcast %struct.e1000_hw* %230 to %struct.e1000_hw.2*
  %232 = load i32, i32* @I217_CGFREG, align 4
  %233 = load i64, i64* %6, align 8
  %234 = call i32 %229(%struct.e1000_hw.2* %231, i32 %232, i64 %233)
  br label %235

235:                                              ; preds = %212, %86
  %236 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %237 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 2
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %239, align 8
  %241 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %242 = bitcast %struct.e1000_hw* %241 to %struct.e1000_hw.0*
  %243 = call i32 %240(%struct.e1000_hw.0* %242)
  br label %244

244:                                              ; preds = %235, %1
  br label %245

245:                                              ; preds = %244, %74
  %246 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %247 = load i32, i32* @E1000_PHY_CTRL, align 4
  %248 = load i32, i32* %4, align 4
  %249 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %246, i32 %247, i32 %248)
  %250 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %251 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @e1000_ich8lan, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %245
  %257 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %258 = call i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %257)
  br label %259

259:                                              ; preds = %256, %245
  %260 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %261 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %260, i32 0, i32 2
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i64, i64* @e1000_pchlan, align 8
  %265 = icmp sge i64 %263, %264
  br i1 %265, label %266, label %302

266:                                              ; preds = %259
  %267 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %268 = load i32, i32* @FALSE, align 4
  %269 = call i32 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw* %267, i32 %268)
  %270 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %271 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %270, i32 0, i32 2
  %272 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @e1000_pchlan, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %266
  %277 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %278 = call i32 @e1000_phy_hw_reset_generic(%struct.e1000_hw* %277)
  br label %279

279:                                              ; preds = %276, %266
  %280 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %281 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 2
  %283 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %282, i32 0, i32 1
  %284 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %283, align 8
  %285 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %286 = bitcast %struct.e1000_hw* %285 to %struct.e1000_hw.1*
  %287 = call i64 %284(%struct.e1000_hw.1* %286)
  store i64 %287, i64* %5, align 8
  %288 = load i64, i64* %5, align 8
  %289 = icmp ne i64 %288, 0
  br i1 %289, label %290, label %291

290:                                              ; preds = %279
  br label %303

291:                                              ; preds = %279
  %292 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %293 = call i32 @e1000_write_smbus_addr(%struct.e1000_hw* %292)
  %294 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %295 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %296, i32 0, i32 0
  %298 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %297, align 8
  %299 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %300 = bitcast %struct.e1000_hw* %299 to %struct.e1000_hw.0*
  %301 = call i32 %298(%struct.e1000_hw.0* %300)
  br label %302

302:                                              ; preds = %291, %259
  br label %303

303:                                              ; preds = %302, %290
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_read_emi_reg_locked(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @e1000_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_oem_bits_config_ich8lan(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_phy_hw_reset_generic(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_write_smbus_addr(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
