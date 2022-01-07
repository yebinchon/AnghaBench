; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_hw_82599.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82599.c_ixgbe_reset_hw_82599.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, i64, %struct.TYPE_6__, i32 }
%struct.TYPE_8__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.2*, i32, i8*)*, i32 (%struct.ixgbe_hw.3*, i32*, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32)*, i32 (%struct.ixgbe_hw.5*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.6*, i32)*, i32 (%struct.ixgbe_hw.7*)*, i32 (%struct.ixgbe_hw.8*, i32)*, i32 (%struct.ixgbe_hw.9*, i32*, i32*, i8*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque
%struct.ixgbe_hw.7 = type opaque
%struct.ixgbe_hw.8 = type opaque
%struct.ixgbe_hw.9 = type opaque
%struct.TYPE_6__ = type { i32, i8*, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.10*)*, i32 (%struct.ixgbe_hw.11*)* }
%struct.ixgbe_hw.10 = type opaque
%struct.ixgbe_hw.11 = type opaque

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"ixgbe_reset_hw_82599\00", align 1
@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_CTRL_LNK_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST_MASK = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_AUTOC2 = common dso_local global i32 0, align 4
@IXGBE_AUTOC2_LINK_DISABLE_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@IXGBE_AUTOC2_UPPER_MASK = common dso_local global i32 0, align 4
@IXGBE_RAH_AV = common dso_local global i32 0, align 4
@IXGBE_CLEAR_VMDQ_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_reset_hw_82599(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %5, align 4
  %11 = load i8*, i8** @FALSE, align 8
  %12 = ptrtoint i8* %11 to i32
  store i32 %12, i32* %10, align 4
  %13 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %17, align 8
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %20 = bitcast %struct.ixgbe_hw* %19 to %struct.ixgbe_hw.0*
  %21 = call i64 %18(%struct.ixgbe_hw.0* %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @IXGBE_SUCCESS, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %396

26:                                               ; preds = %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = call i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw* %27)
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %30 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64 (%struct.ixgbe_hw.10*)*, i64 (%struct.ixgbe_hw.10*)** %32, align 8
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = bitcast %struct.ixgbe_hw* %34 to %struct.ixgbe_hw.10*
  %36 = call i64 %33(%struct.ixgbe_hw.10* %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  br label %396

41:                                               ; preds = %26
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = load i64 (%struct.ixgbe_hw.1*)*, i64 (%struct.ixgbe_hw.1*)** %51, align 8
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = bitcast %struct.ixgbe_hw* %53 to %struct.ixgbe_hw.1*
  %55 = call i64 %52(%struct.ixgbe_hw.1* %54)
  store i64 %55, i64* %4, align 8
  %56 = load i8*, i8** @FALSE, align 8
  %57 = ptrtoint i8* %56 to i32
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  br label %61

61:                                               ; preds = %47, %41
  %62 = load i64, i64* %4, align 8
  %63 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  br label %396

66:                                               ; preds = %61
  %67 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** @FALSE, align 8
  %72 = icmp eq i8* %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %66
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32 (%struct.ixgbe_hw.11*)*, i32 (%struct.ixgbe_hw.11*)** %77, align 8
  %79 = icmp ne i32 (%struct.ixgbe_hw.11*)* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %73
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32 (%struct.ixgbe_hw.11*)*, i32 (%struct.ixgbe_hw.11*)** %84, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = bitcast %struct.ixgbe_hw* %86 to %struct.ixgbe_hw.11*
  %88 = call i32 %85(%struct.ixgbe_hw.11* %87)
  br label %89

89:                                               ; preds = %80, %73, %66
  %90 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %91 = load i32, i32* @IXGBE_AUTOC, align 4
  %92 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %90, i32 %91)
  %93 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %94 = and i32 %92, %93
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %162, %89
  %96 = load i32, i32* @IXGBE_CTRL_LNK_RST, align 4
  store i32 %96, i32* %5, align 4
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %116, label %101

101:                                              ; preds = %95
  %102 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %103 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 9
  %106 = load i32 (%struct.ixgbe_hw.9*, i32*, i32*, i8*)*, i32 (%struct.ixgbe_hw.9*, i32*, i32*, i8*)** %105, align 8
  %107 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %108 = bitcast %struct.ixgbe_hw* %107 to %struct.ixgbe_hw.9*
  %109 = load i8*, i8** @FALSE, align 8
  %110 = call i32 %106(%struct.ixgbe_hw.9* %108, i32* %3, i32* %10, i8* %109)
  %111 = load i32, i32* %10, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = load i32, i32* @IXGBE_CTRL_RST, align 4
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %113, %101
  br label %116

116:                                              ; preds = %115, %95
  %117 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %118 = load i32, i32* @IXGBE_CTRL, align 4
  %119 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %117, i32 %118)
  %120 = load i32, i32* %5, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %5, align 4
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %123 = load i32, i32* @IXGBE_CTRL, align 4
  %124 = load i32, i32* %5, align 4
  %125 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %127 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %126)
  store i32 0, i32* %6, align 4
  br label %128

128:                                              ; preds = %142, %116
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 10
  br i1 %130, label %131, label %145

131:                                              ; preds = %128
  %132 = call i32 @usec_delay(i32 1)
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %134 = load i32, i32* @IXGBE_CTRL, align 4
  %135 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %133, i32 %134)
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* %5, align 4
  %137 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %131
  br label %145

141:                                              ; preds = %131
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %128

145:                                              ; preds = %140, %128
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @IXGBE_CTRL_RST_MASK, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %145
  %151 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %151, i64* %4, align 8
  %152 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %153

153:                                              ; preds = %150, %145
  %154 = call i32 @msec_delay(i32 50)
  %155 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %156 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %153
  %163 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %166 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = and i32 %168, %164
  store i32 %169, i32* %167, align 8
  br label %95

170:                                              ; preds = %153
  %171 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %172 = load i32, i32* @IXGBE_AUTOC, align 4
  %173 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %171, i32 %172)
  store i32 %173, i32* %7, align 4
  %174 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %175 = load i32, i32* @IXGBE_AUTOC2, align 4
  %176 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %174, i32 %175)
  store i32 %176, i32* %8, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %179 = and i32 %177, %178
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %192

181:                                              ; preds = %170
  %182 = load i32, i32* @IXGBE_AUTOC2_LINK_DISABLE_MASK, align 4
  %183 = xor i32 %182, -1
  %184 = load i32, i32* %8, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %8, align 4
  %186 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %187 = load i32, i32* @IXGBE_AUTOC2, align 4
  %188 = load i32, i32* %8, align 4
  %189 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %186, i32 %187, i32 %188)
  %190 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %191 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %190)
  br label %192

192:                                              ; preds = %181, %170
  %193 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %194 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = load i8*, i8** @FALSE, align 8
  %198 = icmp eq i8* %196, %197
  br i1 %198, label %199, label %212

199:                                              ; preds = %192
  %200 = load i32, i32* %7, align 4
  %201 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %202 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 2
  store i32 %200, i32* %203, align 8
  %204 = load i32, i32* %8, align 4
  %205 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %206 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %206, i32 0, i32 3
  store i32 %204, i32* %207, align 4
  %208 = load i8*, i8** @TRUE, align 8
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %210 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 1
  store i8* %208, i8** %211, align 8
  br label %295

212:                                              ; preds = %192
  %213 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %214 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %213, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %212
  %219 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %220 = call i64 @ixgbe_mng_enabled(%struct.ixgbe_hw* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %218, %212
  %223 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %224 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %240

227:                                              ; preds = %222, %218
  %228 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %229 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %233 = xor i32 %232, -1
  %234 = and i32 %231, %233
  %235 = load i32, i32* %9, align 4
  %236 = or i32 %234, %235
  %237 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %238 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 2
  store i32 %236, i32* %239, align 8
  br label %240

240:                                              ; preds = %227, %222
  %241 = load i32, i32* %7, align 4
  %242 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %243 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %241, %245
  br i1 %246, label %247, label %266

247:                                              ; preds = %240
  %248 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %249 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 8
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 2
  %252 = load i64 (%struct.ixgbe_hw.2*, i32, i8*)*, i64 (%struct.ixgbe_hw.2*, i32, i8*)** %251, align 8
  %253 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %254 = bitcast %struct.ixgbe_hw* %253 to %struct.ixgbe_hw.2*
  %255 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %256 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = load i8*, i8** @FALSE, align 8
  %260 = call i64 %252(%struct.ixgbe_hw.2* %254, i32 %258, i8* %259)
  store i64 %260, i64* %4, align 8
  %261 = load i64, i64* %4, align 8
  %262 = load i64, i64* @IXGBE_SUCCESS, align 8
  %263 = icmp ne i64 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %247
  br label %396

265:                                              ; preds = %247
  br label %266

266:                                              ; preds = %265, %240
  %267 = load i32, i32* %8, align 4
  %268 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %269 = and i32 %267, %268
  %270 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %271 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %275 = and i32 %273, %274
  %276 = icmp ne i32 %269, %275
  br i1 %276, label %277, label %294

277:                                              ; preds = %266
  %278 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %279 = xor i32 %278, -1
  %280 = load i32, i32* %8, align 4
  %281 = and i32 %280, %279
  store i32 %281, i32* %8, align 4
  %282 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %283 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %283, i32 0, i32 3
  %285 = load i32, i32* %284, align 4
  %286 = load i32, i32* @IXGBE_AUTOC2_UPPER_MASK, align 4
  %287 = and i32 %285, %286
  %288 = load i32, i32* %8, align 4
  %289 = or i32 %288, %287
  store i32 %289, i32* %8, align 4
  %290 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %291 = load i32, i32* @IXGBE_AUTOC2, align 4
  %292 = load i32, i32* %8, align 4
  %293 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %290, i32 %291, i32 %292)
  br label %294

294:                                              ; preds = %277, %266
  br label %295

295:                                              ; preds = %294, %199
  %296 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %297 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 8
  %299 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i32 0, i32 8
  %300 = load i32 (%struct.ixgbe_hw.8*, i32)*, i32 (%struct.ixgbe_hw.8*, i32)** %299, align 8
  %301 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %302 = bitcast %struct.ixgbe_hw* %301 to %struct.ixgbe_hw.8*
  %303 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %304 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %304, i32 0, i32 10
  %306 = load i32, i32* %305, align 4
  %307 = call i32 %300(%struct.ixgbe_hw.8* %302, i32 %306)
  %308 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %309 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %309, i32 0, i32 4
  store i32 128, i32* %310, align 8
  %311 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %312 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 8
  %314 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i32 0, i32 7
  %315 = load i32 (%struct.ixgbe_hw.7*)*, i32 (%struct.ixgbe_hw.7*)** %314, align 8
  %316 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %317 = bitcast %struct.ixgbe_hw* %316 to %struct.ixgbe_hw.7*
  %318 = call i32 %315(%struct.ixgbe_hw.7* %317)
  %319 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %320 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %320, i32 0, i32 8
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 6
  %323 = load i32 (%struct.ixgbe_hw.6*, i32)*, i32 (%struct.ixgbe_hw.6*, i32)** %322, align 8
  %324 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %325 = bitcast %struct.ixgbe_hw* %324 to %struct.ixgbe_hw.6*
  %326 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %327 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %327, i32 0, i32 9
  %329 = load i32, i32* %328, align 8
  %330 = call i32 %323(%struct.ixgbe_hw.6* %325, i32 %329)
  %331 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %332 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %332, i32 0, i32 9
  %334 = load i32, i32* %333, align 8
  %335 = call i64 @ixgbe_validate_mac_addr(i32 %334)
  %336 = icmp eq i64 %335, 0
  br i1 %336, label %337, label %381

337:                                              ; preds = %295
  %338 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %339 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 4
  %341 = load i32, i32* %340, align 8
  %342 = sub nsw i32 %341, 1
  %343 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %344 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %344, i32 0, i32 5
  store i32 %342, i32* %345, align 4
  %346 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %347 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 8
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 5
  %350 = load i32 (%struct.ixgbe_hw.5*, i32, i32, i32, i32)*, i32 (%struct.ixgbe_hw.5*, i32, i32, i32, i32)** %349, align 8
  %351 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %352 = bitcast %struct.ixgbe_hw* %351 to %struct.ixgbe_hw.5*
  %353 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %354 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 5
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %358 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 9
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @IXGBE_RAH_AV, align 4
  %362 = call i32 %350(%struct.ixgbe_hw.5* %352, i32 %356, i32 %360, i32 0, i32 %361)
  %363 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %364 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 8
  %366 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %365, i32 0, i32 4
  %367 = load i32 (%struct.ixgbe_hw.4*, i32, i32)*, i32 (%struct.ixgbe_hw.4*, i32, i32)** %366, align 8
  %368 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %369 = bitcast %struct.ixgbe_hw* %368 to %struct.ixgbe_hw.4*
  %370 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %371 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 5
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @IXGBE_CLEAR_VMDQ_ALL, align 4
  %375 = call i32 %367(%struct.ixgbe_hw.4* %369, i32 %373, i32 %374)
  %376 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %377 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %377, i32 0, i32 4
  %379 = load i32, i32* %378, align 8
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* %378, align 8
  br label %381

381:                                              ; preds = %337, %295
  %382 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %383 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %382, i32 0, i32 0
  %384 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %383, i32 0, i32 8
  %385 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %384, i32 0, i32 3
  %386 = load i32 (%struct.ixgbe_hw.3*, i32*, i32*)*, i32 (%struct.ixgbe_hw.3*, i32*, i32*)** %385, align 8
  %387 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %388 = bitcast %struct.ixgbe_hw* %387 to %struct.ixgbe_hw.3*
  %389 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %390 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %389, i32 0, i32 0
  %391 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %390, i32 0, i32 7
  %392 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %393 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %393, i32 0, i32 6
  %395 = call i32 %386(%struct.ixgbe_hw.3* %388, i32* %391, i32* %394)
  br label %396

396:                                              ; preds = %381, %264, %65, %40, %25
  %397 = load i64, i64* %4, align 8
  ret i64 %397
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ixgbe_clear_tx_pending(%struct.ixgbe_hw*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i64 @ixgbe_mng_enabled(%struct.ixgbe_hw*) #1

declare dso_local i64 @ixgbe_validate_mac_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
