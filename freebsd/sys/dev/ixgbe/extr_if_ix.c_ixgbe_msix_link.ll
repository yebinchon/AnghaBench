; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_msix_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_msix_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.ixgbe_hw, i32, i32 }
%struct.ixgbe_hw = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.ixgbe_hw.0*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.TYPE_5__ = type { i32 }

@IXGBE_EIMC = common dso_local global i32 0, align 4
@IXGBE_EIMC_OTHER = common dso_local global i32 0, align 4
@IXGBE_EICS = common dso_local global i32 0, align 4
@IXGBE_EICR_RTX_QUEUE = common dso_local global i32 0, align 4
@IXGBE_EICR = common dso_local global i32 0, align 4
@IXGBE_EICR_LSC = common dso_local global i32 0, align 4
@IXGBE_EIMC_LSC = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_LSC = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FDIR = common dso_local global i32 0, align 4
@IXGBE_EICR_FLOW_DIR = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_FDIR = common dso_local global i32 0, align 4
@IXGBE_EICR_ECC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"\0ACRITICAL: ECC ERROR!! Please Reboot!!\0A\00", align 1
@IXGBE_FEATURE_TEMP_SENSOR = common dso_local global i32 0, align 4
@IXGBE_EICR_GPI_SDP0_X550EM_a = common dso_local global i32 0, align 4
@IXGBE_ERR_OVERTEMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"\0ACRITICAL: OVER TEMP!! PHY IS SHUT DOWN!!\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"System shutdown required!\0A\00", align 1
@IXGBE_EICR_TS = common dso_local global i32 0, align 4
@IXGBE_FEATURE_SRIOV = common dso_local global i32 0, align 4
@IXGBE_EICR_MAILBOX = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_MBX = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_EICR_GPI_SDP0_X540 = common dso_local global i32 0, align 4
@IXGBE_REQUEST_TASK_MOD = common dso_local global i32 0, align 4
@ixgbe_mac_82599EB = common dso_local global i64 0, align 8
@IXGBE_REQUEST_TASK_MSF = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FAN_FAIL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ixgbe_phy_x550em_ext_t = common dso_local global i64 0, align 8
@IXGBE_REQUEST_TASK_PHY = common dso_local global i32 0, align 4
@FILTER_SCHEDULE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @ixgbe_msix_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_msix_link(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.adapter*
  store %struct.adapter* %10, %struct.adapter** %4, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 3
  store %struct.ixgbe_hw* %12, %struct.ixgbe_hw** %5, align 8
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %18 = load i32, i32* @IXGBE_EIMC, align 4
  %19 = load i32, i32* @IXGBE_EIMC_OTHER, align 4
  %20 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %17, i32 %18, i32 %19)
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = load i32, i32* @IXGBE_EICS, align 4
  %23 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @IXGBE_EICR_RTX_QUEUE, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %6, align 4
  %28 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %29 = load i32, i32* @IXGBE_EICR, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @IXGBE_EICR_LSC, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = load i32, i32* @IXGBE_EIMC, align 4
  %39 = load i32, i32* @IXGBE_EIMC_LSC, align 4
  %40 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %37, i32 %38, i32 %39)
  %41 = load i32, i32* @IXGBE_REQUEST_TASK_LSC, align 4
  %42 = load %struct.adapter*, %struct.adapter** %4, align 8
  %43 = getelementptr inbounds %struct.adapter, %struct.adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %36, %1
  %47 = load %struct.adapter*, %struct.adapter** %4, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @ixgbe_mac_82598EB, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %204

54:                                               ; preds = %46
  %55 = load %struct.adapter*, %struct.adapter** %4, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @IXGBE_EICR_FLOW_DIR, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load %struct.adapter*, %struct.adapter** %4, align 8
  %68 = getelementptr inbounds %struct.adapter, %struct.adapter* %67, i32 0, i32 4
  %69 = call i32 @atomic_cmpset_int(i32* %68, i32 0, i32 1)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @FILTER_HANDLED, align 4
  store i32 %72, i32* %2, align 4
  br label %312

73:                                               ; preds = %66
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %75 = load i32, i32* @IXGBE_EIMC, align 4
  %76 = load i32, i32* @IXGBE_EICR_FLOW_DIR, align 4
  %77 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %74, i32 %75, i32 %76)
  %78 = load i32, i32* @IXGBE_REQUEST_TASK_FDIR, align 4
  %79 = load %struct.adapter*, %struct.adapter** %4, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %99

83:                                               ; preds = %61, %54
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %83
  %89 = load %struct.adapter*, %struct.adapter** %4, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @iflib_get_dev(i32 %91)
  %93 = call i32 @device_printf(i32 %92, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %95 = load i32, i32* @IXGBE_EICR, align 4
  %96 = load i32, i32* @IXGBE_EICR_ECC, align 4
  %97 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %94, i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %88, %83
  br label %99

99:                                               ; preds = %98, %73
  %100 = load %struct.adapter*, %struct.adapter** %4, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IXGBE_FEATURE_TEMP_SENSOR, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %185

106:                                              ; preds = %99
  %107 = load %struct.adapter*, %struct.adapter** %4, align 8
  %108 = getelementptr inbounds %struct.adapter, %struct.adapter* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  switch i32 %111, label %150 [
    i32 128, label %112
  ]

112:                                              ; preds = %106
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X550EM_a, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %112
  br label %184

118:                                              ; preds = %112
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %120 = load i32, i32* @IXGBE_EIMC, align 4
  %121 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X550EM_a, align 4
  %122 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %119, i32 %120, i32 %121)
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %124 = load i32, i32* @IXGBE_EICR, align 4
  %125 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X550EM_a, align 4
  %126 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %123, i32 %124, i32 %125)
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %128 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %130, align 8
  %132 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %133 = bitcast %struct.ixgbe_hw* %132 to %struct.ixgbe_hw.0*
  %134 = call i32 %131(%struct.ixgbe_hw.0* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = load i32, i32* @IXGBE_ERR_OVERTEMP, align 4
  %137 = icmp ne i32 %135, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %118
  br label %184

139:                                              ; preds = %118
  %140 = load %struct.adapter*, %struct.adapter** %4, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @iflib_get_dev(i32 %142)
  %144 = call i32 @device_printf(i32 %143, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.adapter*, %struct.adapter** %4, align 8
  %146 = getelementptr inbounds %struct.adapter, %struct.adapter* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @iflib_get_dev(i32 %147)
  %149 = call i32 @device_printf(i32 %148, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %184

150:                                              ; preds = %106
  %151 = load i32, i32* %6, align 4
  %152 = load i32, i32* @IXGBE_EICR_TS, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %150
  br label %184

156:                                              ; preds = %150
  %157 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %158 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %160, align 8
  %162 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %163 = bitcast %struct.ixgbe_hw* %162 to %struct.ixgbe_hw.0*
  %164 = call i32 %161(%struct.ixgbe_hw.0* %163)
  store i32 %164, i32* %8, align 4
  %165 = load i32, i32* %8, align 4
  %166 = load i32, i32* @IXGBE_ERR_OVERTEMP, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %156
  br label %184

169:                                              ; preds = %156
  %170 = load %struct.adapter*, %struct.adapter** %4, align 8
  %171 = getelementptr inbounds %struct.adapter, %struct.adapter* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @iflib_get_dev(i32 %172)
  %174 = call i32 @device_printf(i32 %173, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %175 = load %struct.adapter*, %struct.adapter** %4, align 8
  %176 = getelementptr inbounds %struct.adapter, %struct.adapter* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @iflib_get_dev(i32 %177)
  %179 = call i32 @device_printf(i32 %178, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %180 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %181 = load i32, i32* @IXGBE_EICR, align 4
  %182 = load i32, i32* @IXGBE_EICR_TS, align 4
  %183 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %180, i32 %181, i32 %182)
  br label %184

184:                                              ; preds = %169, %168, %155, %139, %138, %117
  br label %185

185:                                              ; preds = %184, %99
  %186 = load %struct.adapter*, %struct.adapter** %4, align 8
  %187 = getelementptr inbounds %struct.adapter, %struct.adapter* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %185
  %193 = load i32, i32* %6, align 4
  %194 = load i32, i32* @IXGBE_EICR_MAILBOX, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %203

197:                                              ; preds = %192
  %198 = load i32, i32* @IXGBE_REQUEST_TASK_MBX, align 4
  %199 = load %struct.adapter*, %struct.adapter** %4, align 8
  %200 = getelementptr inbounds %struct.adapter, %struct.adapter* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = or i32 %201, %198
  store i32 %202, i32* %200, align 4
  br label %203

203:                                              ; preds = %197, %192, %185
  br label %204

204:                                              ; preds = %203, %46
  %205 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %206 = call i64 @ixgbe_is_sfp(%struct.ixgbe_hw* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %262

208:                                              ; preds = %204
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = load i64, i64* @ixgbe_mac_X540, align 8
  %215 = icmp sge i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %208
  %217 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  store i32 %217, i32* %7, align 4
  br label %221

218:                                              ; preds = %208
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %220 = call i32 @IXGBE_EICR_GPI_SDP2_BY_MAC(%struct.ixgbe_hw* %219)
  store i32 %220, i32* %7, align 4
  br label %221

221:                                              ; preds = %218, %216
  %222 = load i32, i32* %6, align 4
  %223 = load i32, i32* %7, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %236

226:                                              ; preds = %221
  %227 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %228 = load i32, i32* @IXGBE_EICR, align 4
  %229 = load i32, i32* %7, align 4
  %230 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %227, i32 %228, i32 %229)
  %231 = load i32, i32* @IXGBE_REQUEST_TASK_MOD, align 4
  %232 = load %struct.adapter*, %struct.adapter** %4, align 8
  %233 = getelementptr inbounds %struct.adapter, %struct.adapter* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = or i32 %234, %231
  store i32 %235, i32* %233, align 4
  br label %236

236:                                              ; preds = %226, %221
  %237 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %238 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = load i64, i64* @ixgbe_mac_82599EB, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %261

244:                                              ; preds = %236
  %245 = load i32, i32* %6, align 4
  %246 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %247 = call i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw* %246)
  %248 = and i32 %245, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %261

250:                                              ; preds = %244
  %251 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %252 = load i32, i32* @IXGBE_EICR, align 4
  %253 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %254 = call i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw* %253)
  %255 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %251, i32 %252, i32 %254)
  %256 = load i32, i32* @IXGBE_REQUEST_TASK_MSF, align 4
  %257 = load %struct.adapter*, %struct.adapter** %4, align 8
  %258 = getelementptr inbounds %struct.adapter, %struct.adapter* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = or i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %261

261:                                              ; preds = %250, %244, %236
  br label %262

262:                                              ; preds = %261, %204
  %263 = load %struct.adapter*, %struct.adapter** %4, align 8
  %264 = getelementptr inbounds %struct.adapter, %struct.adapter* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* @IXGBE_FEATURE_FAN_FAIL, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %262
  %270 = load %struct.adapter*, %struct.adapter** %4, align 8
  %271 = load i32, i32* %6, align 4
  %272 = load i32, i32* @TRUE, align 4
  %273 = call i32 @ixgbe_check_fan_failure(%struct.adapter* %270, i32 %271, i32 %272)
  %274 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %275 = load i32, i32* @IXGBE_EICR, align 4
  %276 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %277 = call i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw* %276)
  %278 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %274, i32 %275, i32 %277)
  br label %279

279:                                              ; preds = %269, %262
  %280 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %281 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @ixgbe_phy_x550em_ext_t, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %301

286:                                              ; preds = %279
  %287 = load i32, i32* %6, align 4
  %288 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  %289 = and i32 %287, %288
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %301

291:                                              ; preds = %286
  %292 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %293 = load i32, i32* @IXGBE_EICR, align 4
  %294 = load i32, i32* @IXGBE_EICR_GPI_SDP0_X540, align 4
  %295 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %292, i32 %293, i32 %294)
  %296 = load i32, i32* @IXGBE_REQUEST_TASK_PHY, align 4
  %297 = load %struct.adapter*, %struct.adapter** %4, align 8
  %298 = getelementptr inbounds %struct.adapter, %struct.adapter* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  br label %301

301:                                              ; preds = %291, %286, %279
  %302 = load %struct.adapter*, %struct.adapter** %4, align 8
  %303 = getelementptr inbounds %struct.adapter, %struct.adapter* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %308

306:                                              ; preds = %301
  %307 = load i32, i32* @FILTER_SCHEDULE_THREAD, align 4
  br label %310

308:                                              ; preds = %301
  %309 = load i32, i32* @FILTER_HANDLED, align 4
  br label %310

310:                                              ; preds = %308, %306
  %311 = phi i32 [ %307, %306 ], [ %309, %308 ]
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %310, %71
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i64 @ixgbe_is_sfp(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_EICR_GPI_SDP2_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_EICR_GPI_SDP1_BY_MAC(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_check_fan_failure(%struct.adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
