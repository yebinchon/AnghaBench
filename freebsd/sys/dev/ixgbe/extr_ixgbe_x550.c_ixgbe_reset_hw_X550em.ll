; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_hw_X550em.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_x550.c_ixgbe_reset_hw_X550em.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i64, %struct.TYPE_8__, i32, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.4*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.6*, i32*, i32*, i8*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.7*)*, i64 (%struct.ixgbe_hw.8*)* }
%struct.ixgbe_hw.7 = type opaque
%struct.ixgbe_hw.8 = type opaque

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"ixgbe_reset_hw_X550em\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to stop adapter, STATUS = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Failed to initialize PHY ops, STATUS = %d\0A\00", align 1
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_PHY_ADDR_INVALID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [49 x i8] c"Returning from reset HW due to PHY init failure\0A\00", align 1
@ixgbe_phy_x550em_ext_t = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Failed to start the external PHY, STATUS = %d\0A\00", align 1
@IXGBE_ERR_OVERTEMP = common dso_local global i64 0, align 8
@IXGBE_CTRL_LNK_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_ERROR_CAUTION = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"semaphore failed with %d\00", align 1
@IXGBE_ERR_SWFW_SYNC = common dso_local global i64 0, align 8
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_X_SFP = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"Reset HW failed, STATUS = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_hw_X550em(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** @FALSE, align 8
  %11 = ptrtoint i8* %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %12, i32 0, i32 3
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.0*
  %24 = call i64 %21(%struct.ixgbe_hw.0* %23)
  store i64 %24, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @IXGBE_SUCCESS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i64, i64* %5, align 8
  %30 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %2, align 8
  br label %277

32:                                               ; preds = %1
  %33 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %34 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %33)
  %35 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %36 = call i32 @ixgbe_set_mdio_speed(%struct.ixgbe_hw* %35)
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64 (%struct.ixgbe_hw.7*)*, i64 (%struct.ixgbe_hw.7*)** %40, align 8
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %43 = bitcast %struct.ixgbe_hw* %42 to %struct.ixgbe_hw.7*
  %44 = call i64 %41(%struct.ixgbe_hw.7* %43)
  store i64 %44, i64* %5, align 8
  %45 = load i64, i64* %5, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %32
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i64 %48)
  br label %50

50:                                               ; preds = %47, %32
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @IXGBE_ERR_PHY_ADDR_INVALID, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54, %50
  %59 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i64, i64* %5, align 8
  store i64 %60, i64* %2, align 8
  br label %277

61:                                               ; preds = %54
  %62 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %63 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %62, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @ixgbe_phy_x550em_ext_t, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %78

68:                                               ; preds = %61
  %69 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %70 = call i64 @ixgbe_init_ext_t_x550em(%struct.ixgbe_hw* %69)
  store i64 %70, i64* %5, align 8
  %71 = load i64, i64* %5, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i64 %74)
  %76 = load i64, i64* %5, align 8
  store i64 %76, i64* %2, align 8
  br label %277

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77, %61
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %80 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %86 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %88, align 8
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %91 = bitcast %struct.ixgbe_hw* %90 to %struct.ixgbe_hw.1*
  %92 = call i64 %89(%struct.ixgbe_hw.1* %91)
  store i64 %92, i64* %5, align 8
  %93 = load i8*, i8** @FALSE, align 8
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %96 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  store i32 %94, i32* %97, align 8
  br label %98

98:                                               ; preds = %84, %78
  %99 = load i64, i64* %5, align 8
  %100 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %98
  %103 = load i64, i64* %5, align 8
  store i64 %103, i64* %2, align 8
  br label %277

104:                                              ; preds = %98
  %105 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %106 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %104
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %112 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i64 (%struct.ixgbe_hw.8*)*, i64 (%struct.ixgbe_hw.8*)** %114, align 8
  %116 = icmp ne i64 (%struct.ixgbe_hw.8*)* %115, null
  br i1 %116, label %117, label %131

117:                                              ; preds = %110
  %118 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %119 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i64 (%struct.ixgbe_hw.8*)*, i64 (%struct.ixgbe_hw.8*)** %121, align 8
  %123 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %124 = bitcast %struct.ixgbe_hw* %123 to %struct.ixgbe_hw.8*
  %125 = call i64 %122(%struct.ixgbe_hw.8* %124)
  %126 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %117
  %129 = load i64, i64* @IXGBE_ERR_OVERTEMP, align 8
  store i64 %129, i64* %2, align 8
  br label %277

130:                                              ; preds = %117
  br label %131

131:                                              ; preds = %130, %110, %104
  br label %132

132:                                              ; preds = %226, %131
  %133 = load i32, i32* @IXGBE_CTRL_LNK_RST, align 4
  store i32 %133, i32* %6, align 4
  %134 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %135 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %132
  %139 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %140 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 6
  %143 = load i32 (%struct.ixgbe_hw.6*, i32*, i32*, i8*)*, i32 (%struct.ixgbe_hw.6*, i32*, i32*, i8*)** %142, align 8
  %144 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %145 = bitcast %struct.ixgbe_hw* %144 to %struct.ixgbe_hw.6*
  %146 = load i8*, i8** @FALSE, align 8
  %147 = call i32 %143(%struct.ixgbe_hw.6* %145, i32* %4, i32* %8, i8* %146)
  %148 = load i32, i32* %8, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %138
  %151 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %151, i32* %6, align 4
  br label %152

152:                                              ; preds = %150, %138
  br label %153

153:                                              ; preds = %152, %132
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %155 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 2
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i64 (%struct.ixgbe_hw.2*, i32)*, i64 (%struct.ixgbe_hw.2*, i32)** %157, align 8
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %160 = bitcast %struct.ixgbe_hw* %159 to %struct.ixgbe_hw.2*
  %161 = load i32, i32* %9, align 4
  %162 = call i64 %158(%struct.ixgbe_hw.2* %160, i32 %161)
  store i64 %162, i64* %5, align 8
  %163 = load i64, i64* %5, align 8
  %164 = load i64, i64* @IXGBE_SUCCESS, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %171

166:                                              ; preds = %153
  %167 = load i32, i32* @IXGBE_ERROR_CAUTION, align 4
  %168 = load i64, i64* %5, align 8
  %169 = call i32 @ERROR_REPORT2(i32 %167, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %168)
  %170 = load i64, i64* @IXGBE_ERR_SWFW_SYNC, align 8
  store i64 %170, i64* %2, align 8
  br label %277

171:                                              ; preds = %153
  %172 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %173 = load i32, i32* @IXGBE_CTRL, align 4
  %174 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %172, i32 %173)
  %175 = load i32, i32* %6, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %6, align 4
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %178 = load i32, i32* @IXGBE_CTRL, align 4
  %179 = load i32, i32* %6, align 4
  %180 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %177, i32 %178, i32 %179)
  %181 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %182 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %181)
  %183 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %184 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 5
  %187 = load i32 (%struct.ixgbe_hw.5*, i32)*, i32 (%struct.ixgbe_hw.5*, i32)** %186, align 8
  %188 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %189 = bitcast %struct.ixgbe_hw* %188 to %struct.ixgbe_hw.5*
  %190 = load i32, i32* %9, align 4
  %191 = call i32 %187(%struct.ixgbe_hw.5* %189, i32 %190)
  store i32 0, i32* %7, align 4
  br label %192

192:                                              ; preds = %206, %171
  %193 = load i32, i32* %7, align 4
  %194 = icmp slt i32 %193, 10
  br i1 %194, label %195, label %209

195:                                              ; preds = %192
  %196 = call i32 @usec_delay(i32 1)
  %197 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %198 = load i32, i32* @IXGBE_CTRL, align 4
  %199 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %197, i32 %198)
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* %6, align 4
  %201 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %195
  br label %209

205:                                              ; preds = %195
  br label %206

206:                                              ; preds = %205
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %7, align 4
  br label %192

209:                                              ; preds = %204, %192
  %210 = load i32, i32* %6, align 4
  %211 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %209
  %215 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %215, i64* %5, align 8
  %216 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %209
  %218 = call i32 @msec_delay(i32 50)
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %220 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %234

226:                                              ; preds = %217
  %227 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %228 = xor i32 %227, -1
  %229 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %230 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = and i32 %232, %228
  store i32 %233, i32* %231, align 8
  br label %132

234:                                              ; preds = %217
  %235 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %236 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 2
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  %239 = load i32 (%struct.ixgbe_hw.4*, i32)*, i32 (%struct.ixgbe_hw.4*, i32)** %238, align 8
  %240 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %241 = bitcast %struct.ixgbe_hw* %240 to %struct.ixgbe_hw.4*
  %242 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %243 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 3
  %245 = load i32, i32* %244, align 8
  %246 = call i32 %239(%struct.ixgbe_hw.4* %241, i32 %245)
  %247 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %248 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %247, i32 0, i32 1
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %248, i32 0, i32 1
  store i32 128, i32* %249, align 4
  %250 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %251 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 2
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 3
  %254 = load i32 (%struct.ixgbe_hw.3*)*, i32 (%struct.ixgbe_hw.3*)** %253, align 8
  %255 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %256 = bitcast %struct.ixgbe_hw* %255 to %struct.ixgbe_hw.3*
  %257 = call i32 %254(%struct.ixgbe_hw.3* %256)
  %258 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %259 = call i32 @ixgbe_set_mdio_speed(%struct.ixgbe_hw* %258)
  %260 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %261 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = load i64, i64* @IXGBE_DEV_ID_X550EM_X_SFP, align 8
  %264 = icmp eq i64 %262, %263
  br i1 %264, label %265, label %268

265:                                              ; preds = %234
  %266 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %267 = call i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw* %266)
  br label %268

268:                                              ; preds = %265, %234
  %269 = load i64, i64* %5, align 8
  %270 = load i64, i64* @IXGBE_SUCCESS, align 8
  %271 = icmp ne i64 %269, %270
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load i64, i64* %5, align 8
  %274 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %273)
  br label %275

275:                                              ; preds = %272, %268
  %276 = load i64, i64* %5, align 8
  store i64 %276, i64* %2, align 8
  br label %277

277:                                              ; preds = %275, %166, %128, %102, %73, %58, %28
  %278 = load i64, i64* %2, align 8
  ret i64 %278
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_set_mdio_speed(%struct.ixgbe_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i64 @ixgbe_init_ext_t_x550em(%struct.ixgbe_hw*) #1

declare dso_local i32 @ERROR_REPORT2(i32, i8*, i64) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @ixgbe_setup_mux_ctl(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
