; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_setup_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_uss820dci.c_uss820dci_setup_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i64*, i32, %struct.uss820dci_td*, %struct.TYPE_6__, i32*, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.uss820dci_td**, %struct.uss820dci_td*, %struct.uss820dci_td*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.uss820dci_td = type { i32 }
%struct.uss820_std_temp = type { i64, i32, i32, i64, i32, %struct.uss820dci_td*, i32*, i32*, %struct.uss820dci_td*, i32 }
%struct.uss820dci_softc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"addr=%d endpt=%d sumlen=%d speed=%d\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@uss820dci_setup_rx = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@uss820dci_data_tx = common dso_local global i32 0, align 4
@uss820dci_data_rx = common dso_local global i32 0, align 4
@uss820dci_data_tx_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @uss820dci_setup_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uss820dci_setup_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.uss820_std_temp, align 8
  %4 = alloca %struct.uss820dci_softc*, align 8
  %5 = alloca %struct.uss820dci_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_xfer* %0, %struct.usb_xfer** %2, align 8
  %9 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %10 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %9, i32 0, i32 13
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %13 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @UE_GET_ADDR(i32 %14)
  %16 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %17 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %16, i32 0, i32 12
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %20 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %19, i32 0, i32 7
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @usbd_get_speed(i32 %23)
  %25 = call i32 @DPRINTFN(i32 9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %18, i32 %24)
  %26 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %27 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %26, i32 0, i32 11
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 9
  store i32 %28, i32* %29, align 8
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 8
  %32 = load %struct.uss820dci_td**, %struct.uss820dci_td*** %31, align 8
  %33 = getelementptr inbounds %struct.uss820dci_td*, %struct.uss820dci_td** %32, i64 0
  %34 = load %struct.uss820dci_td*, %struct.uss820dci_td** %33, align 8
  store %struct.uss820dci_td* %34, %struct.uss820dci_td** %5, align 8
  %35 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %37 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %36, i32 0, i32 10
  store %struct.uss820dci_td* %35, %struct.uss820dci_td** %37, align 8
  %38 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 9
  store %struct.uss820dci_td* %38, %struct.uss820dci_td** %40, align 8
  %41 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 7
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 5
  store %struct.uss820dci_td* null, %struct.uss820dci_td** %42, align 8
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 8
  %45 = load %struct.uss820dci_td**, %struct.uss820dci_td*** %44, align 8
  %46 = getelementptr inbounds %struct.uss820dci_td*, %struct.uss820dci_td** %45, i64 0
  %47 = load %struct.uss820dci_td*, %struct.uss820dci_td** %46, align 8
  %48 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 8
  store %struct.uss820dci_td* %47, %struct.uss820dci_td** %48, align 8
  %49 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 0
  store i64 0, i64* %49, align 8
  %50 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %51 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 5
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %1
  %56 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %57 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br label %61

61:                                               ; preds = %55, %1
  %62 = phi i1 [ true, %1 ], [ %60, %55 ]
  %63 = zext i1 %62 to i32
  %64 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %66 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 7
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32 %77)
  store %struct.uss820dci_softc* %78, %struct.uss820dci_softc** %4, align 8
  %79 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %80 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @UE_ADDR, align 4
  %83 = and i32 %81, %82
  store i32 %83, i32* %7, align 4
  %84 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %85 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %61
  %90 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %91 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %90, i32 0, i32 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %129

95:                                               ; preds = %89
  %96 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 6
  store i32* @uss820dci_setup_rx, i32** %96, align 8
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %98 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 3
  store i64 %101, i64* %102, align 8
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %104 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 7
  store i32* %106, i32** %107, align 8
  %108 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 4
  store i32 %112, i32* %113, align 8
  %114 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %115 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 1
  br i1 %117, label %118, label %127

118:                                              ; preds = %95
  %119 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %120 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %124, %118
  br label %127

127:                                              ; preds = %126, %95
  %128 = call i32 @uss820dci_setup_standard_chain_sub(%struct.uss820_std_temp* %3)
  br label %129

129:                                              ; preds = %127, %89
  store i32 1, i32* %6, align 4
  br label %131

130:                                              ; preds = %61
  store i32 0, i32* %6, align 4
  br label %131

131:                                              ; preds = %130, %129
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %134 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %137, label %156

137:                                              ; preds = %131
  %138 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %139 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @UE_DIR_IN, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %137
  %145 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 6
  store i32* @uss820dci_data_tx, i32** %145, align 8
  br label %148

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 6
  store i32* @uss820dci_data_rx, i32** %147, align 8
  br label %148

148:                                              ; preds = %146, %144
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %150 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 7
  store i32* %154, i32** %155, align 8
  br label %156

156:                                              ; preds = %148, %131
  br label %157

157:                                              ; preds = %233, %156
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %160 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = icmp ne i32 %158, %161
  br i1 %162, label %163, label %234

163:                                              ; preds = %157
  %164 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %165 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i64, i64* %166, i64 %168
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 3
  store i64 %170, i64* %171, align 8
  %172 = load i32, i32* %6, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %6, align 4
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %176 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %174, %177
  br i1 %178, label %179, label %197

179:                                              ; preds = %163
  %180 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %181 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %194

185:                                              ; preds = %179
  %186 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %187 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %186, i32 0, i32 4
  %188 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %192, align 8
  br label %193

193:                                              ; preds = %191, %185
  br label %196

194:                                              ; preds = %179
  %195 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %195, align 8
  br label %196

196:                                              ; preds = %194, %193
  br label %197

197:                                              ; preds = %196, %163
  %198 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %197
  %202 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %202, align 8
  br label %212

203:                                              ; preds = %197
  %204 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %205 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %204, i32 0, i32 6
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  %209 = zext i1 %208 to i64
  %210 = select i1 %208, i32 0, i32 1
  %211 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 4
  store i32 %210, i32* %211, align 8
  br label %212

212:                                              ; preds = %203, %201
  %213 = call i32 @uss820dci_setup_standard_chain_sub(%struct.uss820_std_temp* %3)
  %214 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %215 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %214, i32 0, i32 4
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 2
  %217 = load i64, i64* %216, align 8
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %225

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 0
  %223 = load i64, i64* %222, align 8
  %224 = add nsw i64 %223, %221
  store i64 %224, i64* %222, align 8
  br label %233

225:                                              ; preds = %212
  %226 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %227 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %226, i32 0, i32 5
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 7
  store i32* %231, i32** %232, align 8
  br label %233

233:                                              ; preds = %225, %219
  br label %157

234:                                              ; preds = %157
  %235 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %236 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %235, i32 0, i32 4
  %237 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %276

240:                                              ; preds = %234
  %241 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %242 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %241, i32 0, i32 5
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 7
  store i32* %244, i32** %245, align 8
  %246 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 3
  store i64 0, i64* %246, align 8
  %247 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %247, align 8
  %248 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %248, align 8
  %249 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %250 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %275, label %254

254:                                              ; preds = %240
  %255 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %256 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @UE_DIR_IN, align 4
  %259 = and i32 %257, %258
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %263

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 6
  store i32* @uss820dci_data_rx, i32** %262, align 8
  store i32 0, i32* %8, align 4
  br label %265

263:                                              ; preds = %254
  %264 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 6
  store i32* @uss820dci_data_tx, i32** %264, align 8
  store i32 1, i32* %8, align 4
  br label %265

265:                                              ; preds = %263, %261
  %266 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 3
  store i64 0, i64* %266, align 8
  %267 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %267, align 8
  %268 = call i32 @uss820dci_setup_standard_chain_sub(%struct.uss820_std_temp* %3)
  %269 = load i32, i32* %8, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %274

271:                                              ; preds = %265
  %272 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 6
  store i32* @uss820dci_data_tx_sync, i32** %272, align 8
  %273 = call i32 @uss820dci_setup_standard_chain_sub(%struct.uss820_std_temp* %3)
  br label %274

274:                                              ; preds = %271, %265
  br label %275

275:                                              ; preds = %274, %240
  br label %276

276:                                              ; preds = %275, %234
  %277 = getelementptr inbounds %struct.uss820_std_temp, %struct.uss820_std_temp* %3, i32 0, i32 5
  %278 = load %struct.uss820dci_td*, %struct.uss820dci_td** %277, align 8
  store %struct.uss820dci_td* %278, %struct.uss820dci_td** %5, align 8
  %279 = load %struct.uss820dci_td*, %struct.uss820dci_td** %5, align 8
  %280 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %281 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %280, i32 0, i32 3
  store %struct.uss820dci_td* %279, %struct.uss820dci_td** %281, align 8
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @UE_GET_ADDR(i32) #1

declare dso_local i32 @usbd_get_speed(i32) #1

declare dso_local %struct.uss820dci_softc* @USS820_DCI_BUS2SC(i32) #1

declare dso_local i32 @uss820dci_setup_standard_chain_sub(%struct.uss820_std_temp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
