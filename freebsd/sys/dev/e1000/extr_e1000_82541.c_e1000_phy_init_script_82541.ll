; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_phy_init_script_82541.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82541.c_e1000_phy_init_script_82541.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.e1000_dev_spec_82541 }
%struct.e1000_dev_spec_82541 = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"e1000_phy_init_script_82541\00", align 1
@E1000_SUCCESS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_SPARE_FUSE_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_SPARE_FUSE_ENABLED = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_STATUS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_FINE_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_THRESH = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_COARSE_10 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_FINE_1 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_FINE_10 = common dso_local global i64 0, align 8
@IGP01E1000_ANALOG_FUSE_POLY_MASK = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_CONTROL = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_BYPASS = common dso_local global i32 0, align 4
@IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_phy_init_script_82541 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_phy_init_script_82541(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_dev_spec_82541*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.e1000_dev_spec_82541* %11, %struct.e1000_dev_spec_82541** %3, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_dev_spec_82541*, %struct.e1000_dev_spec_82541** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_dev_spec_82541, %struct.e1000_dev_spec_82541* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %18, i32* %4, align 4
  br label %247

19:                                               ; preds = %1
  %20 = call i32 @msec_delay(i32 20)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %24, align 8
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %27 = bitcast %struct.e1000_hw* %26 to %struct.e1000_hw.1*
  %28 = call i32 %25(%struct.e1000_hw.1* %27, i32 12123, i32* %5)
  store i32 %28, i32* %4, align 4
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.0*
  %36 = call i32 %33(%struct.e1000_hw.0* %35, i32 12123, i32 3)
  %37 = call i32 @msec_delay(i32 20)
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %41, align 8
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = bitcast %struct.e1000_hw* %43 to %struct.e1000_hw.0*
  %45 = call i32 %42(%struct.e1000_hw.0* %44, i32 0, i32 320)
  %46 = call i32 @msec_delay(i32 5)
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %133 [
    i32 131, label %51
    i32 129, label %51
    i32 130, label %124
    i32 128, label %124
  ]

51:                                               ; preds = %19, %19
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %53 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %55, align 8
  %57 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %58 = bitcast %struct.e1000_hw* %57 to %struct.e1000_hw.0*
  %59 = call i32 %56(%struct.e1000_hw.0* %58, i32 8085, i32 1)
  %60 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %61 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %63, align 8
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %66 = bitcast %struct.e1000_hw* %65 to %struct.e1000_hw.0*
  %67 = call i32 %64(%struct.e1000_hw.0* %66, i32 8049, i32 48417)
  %68 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %69 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %71, align 8
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %74 = bitcast %struct.e1000_hw* %73 to %struct.e1000_hw.0*
  %75 = call i32 %72(%struct.e1000_hw.0* %74, i32 8057, i32 24)
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %77 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %79, align 8
  %81 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %82 = bitcast %struct.e1000_hw* %81 to %struct.e1000_hw.0*
  %83 = call i32 %80(%struct.e1000_hw.0* %82, i32 7984, i32 5632)
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %85 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %87, align 8
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %90 = bitcast %struct.e1000_hw* %89 to %struct.e1000_hw.0*
  %91 = call i32 %88(%struct.e1000_hw.0* %90, i32 7985, i32 20)
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %95, align 8
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %98 = bitcast %struct.e1000_hw* %97 to %struct.e1000_hw.0*
  %99 = call i32 %96(%struct.e1000_hw.0* %98, i32 7986, i32 5660)
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %103, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %106 = bitcast %struct.e1000_hw* %105 to %struct.e1000_hw.0*
  %107 = call i32 %104(%struct.e1000_hw.0* %106, i32 8084, i32 3)
  %108 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %109 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %111, align 8
  %113 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %114 = bitcast %struct.e1000_hw* %113 to %struct.e1000_hw.0*
  %115 = call i32 %112(%struct.e1000_hw.0* %114, i32 8086, i32 63)
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %117 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %119, align 8
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %122 = bitcast %struct.e1000_hw* %121 to %struct.e1000_hw.0*
  %123 = call i32 %120(%struct.e1000_hw.0* %122, i32 8208, i32 8)
  br label %134

124:                                              ; preds = %19, %19
  %125 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %126 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %128, align 8
  %130 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %131 = bitcast %struct.e1000_hw* %130 to %struct.e1000_hw.0*
  %132 = call i32 %129(%struct.e1000_hw.0* %131, i32 8051, i32 153)
  br label %134

133:                                              ; preds = %19
  br label %134

134:                                              ; preds = %133, %124, %51
  %135 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %136 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %138, align 8
  %140 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %141 = bitcast %struct.e1000_hw* %140 to %struct.e1000_hw.0*
  %142 = call i32 %139(%struct.e1000_hw.0* %141, i32 0, i32 13056)
  %143 = call i32 @msec_delay(i32 20)
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %145 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %147, align 8
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %150 = bitcast %struct.e1000_hw* %149 to %struct.e1000_hw.0*
  %151 = load i32, i32* %5, align 4
  %152 = call i32 %148(%struct.e1000_hw.0* %150, i32 12123, i32 %151)
  %153 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %154 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = icmp eq i32 %156, 129
  br i1 %157, label %158, label %246

158:                                              ; preds = %134
  %159 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %160 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 1
  %163 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %162, align 8
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %165 = bitcast %struct.e1000_hw* %164 to %struct.e1000_hw.1*
  %166 = load i32, i32* @IGP01E1000_ANALOG_SPARE_FUSE_STATUS, align 4
  %167 = call i32 %163(%struct.e1000_hw.1* %165, i32 %166, i32* %6)
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IGP01E1000_ANALOG_SPARE_FUSE_ENABLED, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %245, label %172

172:                                              ; preds = %158
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %174 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 1
  %177 = load i32 (%struct.e1000_hw.1*, i32, i32*)*, i32 (%struct.e1000_hw.1*, i32, i32*)** %176, align 8
  %178 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %179 = bitcast %struct.e1000_hw* %178 to %struct.e1000_hw.1*
  %180 = load i32, i32* @IGP01E1000_ANALOG_FUSE_STATUS, align 4
  %181 = call i32 %177(%struct.e1000_hw.1* %179, i32 %180, i32* %6)
  %182 = load i32, i32* %6, align 4
  %183 = load i32, i32* @IGP01E1000_ANALOG_FUSE_FINE_MASK, align 4
  %184 = and i32 %182, %183
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_MASK, align 4
  %187 = and i32 %185, %186
  store i32 %187, i32* %8, align 4
  %188 = load i32, i32* %8, align 4
  %189 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_THRESH, align 4
  %190 = icmp sgt i32 %188, %189
  br i1 %190, label %191, label %202

191:                                              ; preds = %172
  %192 = load i64, i64* @IGP01E1000_ANALOG_FUSE_COARSE_10, align 8
  %193 = load i32, i32* %8, align 4
  %194 = sext i32 %193 to i64
  %195 = sub nsw i64 %194, %192
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %8, align 4
  %197 = load i64, i64* @IGP01E1000_ANALOG_FUSE_FINE_1, align 8
  %198 = load i32, i32* %7, align 4
  %199 = sext i32 %198 to i64
  %200 = sub nsw i64 %199, %197
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %7, align 4
  br label %213

202:                                              ; preds = %172
  %203 = load i32, i32* %8, align 4
  %204 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_THRESH, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = load i64, i64* @IGP01E1000_ANALOG_FUSE_FINE_10, align 8
  %208 = load i32, i32* %7, align 4
  %209 = sext i32 %208 to i64
  %210 = sub nsw i64 %209, %207
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %206, %202
  br label %213

213:                                              ; preds = %212, %191
  %214 = load i32, i32* %6, align 4
  %215 = load i32, i32* @IGP01E1000_ANALOG_FUSE_POLY_MASK, align 4
  %216 = and i32 %214, %215
  %217 = load i32, i32* %7, align 4
  %218 = load i32, i32* @IGP01E1000_ANALOG_FUSE_FINE_MASK, align 4
  %219 = and i32 %217, %218
  %220 = or i32 %216, %219
  %221 = load i32, i32* %8, align 4
  %222 = load i32, i32* @IGP01E1000_ANALOG_FUSE_COARSE_MASK, align 4
  %223 = and i32 %221, %222
  %224 = or i32 %220, %223
  store i32 %224, i32* %6, align 4
  %225 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %226 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %228, align 8
  %230 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %231 = bitcast %struct.e1000_hw* %230 to %struct.e1000_hw.0*
  %232 = load i32, i32* @IGP01E1000_ANALOG_FUSE_CONTROL, align 4
  %233 = load i32, i32* %6, align 4
  %234 = call i32 %229(%struct.e1000_hw.0* %231, i32 %232, i32 %233)
  %235 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %236 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 0
  %239 = load i32 (%struct.e1000_hw.0*, i32, i32)*, i32 (%struct.e1000_hw.0*, i32, i32)** %238, align 8
  %240 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %241 = bitcast %struct.e1000_hw* %240 to %struct.e1000_hw.0*
  %242 = load i32, i32* @IGP01E1000_ANALOG_FUSE_BYPASS, align 4
  %243 = load i32, i32* @IGP01E1000_ANALOG_FUSE_ENABLE_SW_CONTROL, align 4
  %244 = call i32 %239(%struct.e1000_hw.0* %241, i32 %242, i32 %243)
  br label %245

245:                                              ; preds = %213, %158
  br label %246

246:                                              ; preds = %245, %134
  br label %247

247:                                              ; preds = %246, %17
  %248 = load i32, i32* %4, align 4
  ret i32 %248
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @msec_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
