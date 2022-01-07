; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_reset_hw_82598.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_82598.c_ixgbe_reset_hw_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i64, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.ixgbe_hw.4 = type opaque
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.ixgbe_hw.5*)*, i32 (%struct.ixgbe_hw.6*)* }
%struct.ixgbe_hw.5 = type opaque
%struct.ixgbe_hw.6 = type opaque

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [21 x i8] c"ixgbe_reset_hw_82598\00", align 1
@IXGBE_ATLAS_PDN_LPBK = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_REG_EN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_10G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_10G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_1G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_1G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_AN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_AN_QL_ALL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_SUPPORTED = common dso_local global i64 0, align 8
@IXGBE_ERR_SFP_NOT_PRESENT = common dso_local global i64 0, align 8
@IXGBE_CTRL = common dso_local global i32 0, align 4
@IXGBE_CTRL_RST = common dso_local global i32 0, align 4
@IXGBE_ERR_RESET_FAILED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"Reset polling failed to complete.\0A\00", align 1
@IXGBE_FLAGS_DOUBLE_RESET_REQUIRED = common dso_local global i32 0, align 4
@IXGBE_GHECCR = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*)* @ixgbe_reset_hw_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_reset_hw_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %10 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %11, i64* %4, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i64 (%struct.ixgbe_hw.0*)*, i64 (%struct.ixgbe_hw.0*)** %16, align 8
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %19 = bitcast %struct.ixgbe_hw* %18 to %struct.ixgbe_hw.0*
  %20 = call i64 %17(%struct.ixgbe_hw.0* %19)
  store i64 %20, i64* %3, align 8
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @IXGBE_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %286

25:                                               ; preds = %1
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 4
  %30 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %29, align 8
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = bitcast %struct.ixgbe_hw* %31 to %struct.ixgbe_hw.4*
  %33 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %34 = call i32 %30(%struct.ixgbe_hw.4* %32, i32 %33, i32* %9)
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %132

39:                                               ; preds = %25
  %40 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 4
  %44 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %43, align 8
  %45 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %46 = bitcast %struct.ixgbe_hw* %45 to %struct.ixgbe_hw.4*
  %47 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %48 = call i32 %44(%struct.ixgbe_hw.4* %46, i32 %47, i32* %9)
  %49 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 3
  %57 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.3*
  %60 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 %57(%struct.ixgbe_hw.3* %59, i32 %60, i32 %61)
  %63 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 4
  %67 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %66, align 8
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %69 = bitcast %struct.ixgbe_hw* %68 to %struct.ixgbe_hw.4*
  %70 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %71 = call i32 %67(%struct.ixgbe_hw.4* %69, i32 %70, i32* %9)
  %72 = load i32, i32* @IXGBE_ATLAS_PDN_TX_10G_QL_ALL, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %77 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 3
  %80 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %79, align 8
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %82 = bitcast %struct.ixgbe_hw* %81 to %struct.ixgbe_hw.3*
  %83 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %84 = load i32, i32* %9, align 4
  %85 = call i32 %80(%struct.ixgbe_hw.3* %82, i32 %83, i32 %84)
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 4
  %90 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %89, align 8
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %92 = bitcast %struct.ixgbe_hw* %91 to %struct.ixgbe_hw.4*
  %93 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %94 = call i32 %90(%struct.ixgbe_hw.4* %92, i32 %93, i32* %9)
  %95 = load i32, i32* @IXGBE_ATLAS_PDN_TX_1G_QL_ALL, align 4
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, %96
  store i32 %98, i32* %9, align 4
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 3
  %103 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %102, align 8
  %104 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %105 = bitcast %struct.ixgbe_hw* %104 to %struct.ixgbe_hw.3*
  %106 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 %103(%struct.ixgbe_hw.3* %105, i32 %106, i32 %107)
  %109 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %110 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 4
  %113 = load i32 (%struct.ixgbe_hw.4*, i32, i32*)*, i32 (%struct.ixgbe_hw.4*, i32, i32*)** %112, align 8
  %114 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %115 = bitcast %struct.ixgbe_hw* %114 to %struct.ixgbe_hw.4*
  %116 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %117 = call i32 %113(%struct.ixgbe_hw.4* %115, i32 %116, i32* %9)
  %118 = load i32, i32* @IXGBE_ATLAS_PDN_TX_AN_QL_ALL, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %9, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %9, align 4
  %122 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %123 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32 (%struct.ixgbe_hw.3*, i32, i32)*, i32 (%struct.ixgbe_hw.3*, i32, i32)** %125, align 8
  %127 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %128 = bitcast %struct.ixgbe_hw* %127 to %struct.ixgbe_hw.3*
  %129 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i32 %126(%struct.ixgbe_hw.3* %128, i32 %129, i32 %130)
  br label %132

132:                                              ; preds = %39, %25
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %134 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @FALSE, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %166

139:                                              ; preds = %132
  %140 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %141 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 0
  %144 = load i64 (%struct.ixgbe_hw.5*)*, i64 (%struct.ixgbe_hw.5*)** %143, align 8
  %145 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %146 = bitcast %struct.ixgbe_hw* %145 to %struct.ixgbe_hw.5*
  %147 = call i64 %144(%struct.ixgbe_hw.5* %146)
  store i64 %147, i64* %4, align 8
  %148 = load i64, i64* %4, align 8
  %149 = load i64, i64* @IXGBE_ERR_SFP_NOT_SUPPORTED, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %139
  br label %286

152:                                              ; preds = %139
  %153 = load i64, i64* %4, align 8
  %154 = load i64, i64* @IXGBE_ERR_SFP_NOT_PRESENT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %152
  br label %167

157:                                              ; preds = %152
  %158 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %159 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32 (%struct.ixgbe_hw.6*)*, i32 (%struct.ixgbe_hw.6*)** %161, align 8
  %163 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %164 = bitcast %struct.ixgbe_hw* %163 to %struct.ixgbe_hw.6*
  %165 = call i32 %162(%struct.ixgbe_hw.6* %164)
  br label %166

166:                                              ; preds = %157, %132
  br label %167

167:                                              ; preds = %213, %166, %156
  %168 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %169 = load i32, i32* @IXGBE_CTRL, align 4
  %170 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %168, i32 %169)
  %171 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %172 = or i32 %170, %171
  store i32 %172, i32* %5, align 4
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %174 = load i32, i32* @IXGBE_CTRL, align 4
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %173, i32 %174, i32 %175)
  %177 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %178 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %177)
  store i32 0, i32* %7, align 4
  br label %179

179:                                              ; preds = %193, %167
  %180 = load i32, i32* %7, align 4
  %181 = icmp slt i32 %180, 10
  br i1 %181, label %182, label %196

182:                                              ; preds = %179
  %183 = call i32 @usec_delay(i32 1)
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %185 = load i32, i32* @IXGBE_CTRL, align 4
  %186 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %184, i32 %185)
  store i32 %186, i32* %5, align 4
  %187 = load i32, i32* %5, align 4
  %188 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %182
  br label %196

192:                                              ; preds = %182
  br label %193

193:                                              ; preds = %192
  %194 = load i32, i32* %7, align 4
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %7, align 4
  br label %179

196:                                              ; preds = %191, %179
  %197 = load i32, i32* %5, align 4
  %198 = load i32, i32* @IXGBE_CTRL_RST, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %204

201:                                              ; preds = %196
  %202 = load i64, i64* @IXGBE_ERR_RESET_FAILED, align 8
  store i64 %202, i64* %3, align 8
  %203 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %196
  %205 = call i32 @msec_delay(i32 50)
  %206 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %207 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %204
  %214 = load i32, i32* @IXGBE_FLAGS_DOUBLE_RESET_REQUIRED, align 4
  %215 = xor i32 %214, -1
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %217 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, %215
  store i32 %220, i32* %218, align 8
  br label %167

221:                                              ; preds = %204
  %222 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %223 = load i32, i32* @IXGBE_GHECCR, align 4
  %224 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %222, i32 %223)
  store i32 %224, i32* %6, align 4
  %225 = load i32, i32* %6, align 4
  %226 = and i32 %225, -2359873
  store i32 %226, i32* %6, align 4
  %227 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %228 = load i32, i32* @IXGBE_GHECCR, align 4
  %229 = load i32, i32* %6, align 4
  %230 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %227, i32 %228, i32 %229)
  %231 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %232 = load i32, i32* @IXGBE_AUTOC, align 4
  %233 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %231, i32 %232)
  store i32 %233, i32* %8, align 4
  %234 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %235 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @FALSE, align 8
  %239 = icmp eq i64 %237, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %221
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %243 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %243, i32 0, i32 2
  store i32 %241, i32* %244, align 8
  %245 = load i64, i64* @TRUE, align 8
  %246 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %247 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 1
  store i64 %245, i64* %248, align 8
  br label %265

249:                                              ; preds = %221
  %250 = load i32, i32* %8, align 4
  %251 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %252 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 2
  %254 = load i32, i32* %253, align 8
  %255 = icmp ne i32 %250, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %249
  %257 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %258 = load i32, i32* @IXGBE_AUTOC, align 4
  %259 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %260 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 2
  %262 = load i32, i32* %261, align 8
  %263 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %257, i32 %258, i32 %262)
  br label %264

264:                                              ; preds = %256, %249
  br label %265

265:                                              ; preds = %264, %240
  %266 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %267 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 2
  %270 = load i32 (%struct.ixgbe_hw.2*, i32)*, i32 (%struct.ixgbe_hw.2*, i32)** %269, align 8
  %271 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %272 = bitcast %struct.ixgbe_hw* %271 to %struct.ixgbe_hw.2*
  %273 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %274 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %274, i32 0, i32 4
  %276 = load i32, i32* %275, align 8
  %277 = call i32 %270(%struct.ixgbe_hw.2* %272, i32 %276)
  %278 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %279 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %278, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 3
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %281, align 8
  %283 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %284 = bitcast %struct.ixgbe_hw* %283 to %struct.ixgbe_hw.1*
  %285 = call i32 %282(%struct.ixgbe_hw.1* %284)
  br label %286

286:                                              ; preds = %265, %151, %24
  %287 = load i64, i64* %4, align 8
  %288 = load i64, i64* @IXGBE_SUCCESS, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %292

290:                                              ; preds = %286
  %291 = load i64, i64* %4, align 8
  store i64 %291, i64* %3, align 8
  br label %292

292:                                              ; preds = %290, %286
  %293 = load i64, i64* %3, align 8
  ret i64 %293
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
