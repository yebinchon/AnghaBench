; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_setup_standard_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_avr32dci.c_avr32dci_setup_standard_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_xfer = type { i32, i64*, i32, %struct.avr32dci_td*, %struct.TYPE_6__, i32*, %struct.TYPE_5__, %struct.TYPE_4__*, %struct.avr32dci_td**, %struct.avr32dci_td*, %struct.avr32dci_td*, i32, i32, i32 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i32, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.avr32dci_td = type { i32 }
%struct.avr32dci_std_temp = type { i64, i32, i32, i64, i32, %struct.avr32dci_td*, i32*, i32*, %struct.avr32dci_td*, i32 }
%struct.avr32dci_softc = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"addr=%d endpt=%d sumlen=%d speed=%d\0A\00", align 1
@UE_ADDR = common dso_local global i32 0, align 4
@avr32dci_setup_rx = common dso_local global i32 0, align 4
@UE_DIR_IN = common dso_local global i32 0, align 4
@avr32dci_data_tx = common dso_local global i32 0, align 4
@avr32dci_data_rx = common dso_local global i32 0, align 4
@avr32dci_data_tx_sync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_xfer*)* @avr32dci_setup_standard_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @avr32dci_setup_standard_chain(%struct.usb_xfer* %0) #0 {
  %2 = alloca %struct.usb_xfer*, align 8
  %3 = alloca %struct.avr32dci_std_temp, align 8
  %4 = alloca %struct.avr32dci_softc*, align 8
  %5 = alloca %struct.avr32dci_td*, align 8
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
  %29 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 9
  store i32 %28, i32* %29, align 8
  %30 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %31 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %30, i32 0, i32 8
  %32 = load %struct.avr32dci_td**, %struct.avr32dci_td*** %31, align 8
  %33 = getelementptr inbounds %struct.avr32dci_td*, %struct.avr32dci_td** %32, i64 0
  %34 = load %struct.avr32dci_td*, %struct.avr32dci_td** %33, align 8
  store %struct.avr32dci_td* %34, %struct.avr32dci_td** %5, align 8
  %35 = load %struct.avr32dci_td*, %struct.avr32dci_td** %5, align 8
  %36 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %37 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %36, i32 0, i32 10
  store %struct.avr32dci_td* %35, %struct.avr32dci_td** %37, align 8
  %38 = load %struct.avr32dci_td*, %struct.avr32dci_td** %5, align 8
  %39 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %40 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %39, i32 0, i32 9
  store %struct.avr32dci_td* %38, %struct.avr32dci_td** %40, align 8
  %41 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 7
  store i32* null, i32** %41, align 8
  %42 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 5
  store %struct.avr32dci_td* null, %struct.avr32dci_td** %42, align 8
  %43 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %44 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %43, i32 0, i32 8
  %45 = load %struct.avr32dci_td**, %struct.avr32dci_td*** %44, align 8
  %46 = getelementptr inbounds %struct.avr32dci_td*, %struct.avr32dci_td** %45, i64 0
  %47 = load %struct.avr32dci_td*, %struct.avr32dci_td** %46, align 8
  %48 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 8
  store %struct.avr32dci_td* %47, %struct.avr32dci_td** %48, align 8
  %49 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 0
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
  %64 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 1
  store i32 %63, i32* %64, align 8
  %65 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %66 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 2
  store i32 %71, i32* %72, align 4
  %73 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %74 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %73, i32 0, i32 7
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call %struct.avr32dci_softc* @AVR32_BUS2SC(i32 %77)
  store %struct.avr32dci_softc* %78, %struct.avr32dci_softc** %4, align 8
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
  %96 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 6
  store i32* @avr32dci_setup_rx, i32** %96, align 8
  %97 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %98 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = getelementptr inbounds i64, i64* %99, i64 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 3
  store i64 %101, i64* %102, align 8
  %103 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %104 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 0
  %107 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 7
  store i32* %106, i32** %107, align 8
  %108 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  %111 = zext i1 %110 to i64
  %112 = select i1 %110, i32 1, i32 0
  %113 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 4
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
  %125 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %125, align 8
  br label %126

126:                                              ; preds = %124, %118
  br label %127

127:                                              ; preds = %126, %95
  %128 = call i32 @avr32dci_setup_standard_chain_sub(%struct.avr32dci_std_temp* %3)
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
  %145 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 6
  store i32* @avr32dci_data_tx, i32** %145, align 8
  store i32 1, i32* %8, align 4
  br label %148

146:                                              ; preds = %137
  %147 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 6
  store i32* @avr32dci_data_rx, i32** %147, align 8
  store i32 0, i32* %8, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %150 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %6, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 7
  store i32* %154, i32** %155, align 8
  br label %157

156:                                              ; preds = %131
  store i32 0, i32* %8, align 4
  br label %157

157:                                              ; preds = %156, %148
  br label %158

158:                                              ; preds = %234, %157
  %159 = load i32, i32* %6, align 4
  %160 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %161 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = icmp ne i32 %159, %162
  br i1 %163, label %164, label %235

164:                                              ; preds = %158
  %165 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %166 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %165, i32 0, i32 1
  %167 = load i64*, i64** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64, i64* %167, i64 %169
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 3
  store i64 %171, i64* %172, align 8
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %177 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp eq i32 %175, %178
  br i1 %179, label %180, label %198

180:                                              ; preds = %164
  %181 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %182 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %181, i32 0, i32 4
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %195

186:                                              ; preds = %180
  %187 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %188 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %187, i32 0, i32 4
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %186
  %193 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %193, align 8
  br label %194

194:                                              ; preds = %192, %186
  br label %197

195:                                              ; preds = %180
  %196 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %196, align 8
  br label %197

197:                                              ; preds = %195, %194
  br label %198

198:                                              ; preds = %197, %164
  %199 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %203, align 8
  br label %213

204:                                              ; preds = %198
  %205 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %206 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %205, i32 0, i32 6
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 0
  %208 = load i64, i64* %207, align 8
  %209 = icmp ne i64 %208, 0
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 0, i32 1
  %212 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 4
  store i32 %211, i32* %212, align 8
  br label %213

213:                                              ; preds = %204, %202
  %214 = call i32 @avr32dci_setup_standard_chain_sub(%struct.avr32dci_std_temp* %3)
  %215 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %216 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %215, i32 0, i32 4
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 2
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = add nsw i64 %224, %222
  store i64 %225, i64* %223, align 8
  br label %234

226:                                              ; preds = %213
  %227 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %228 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %227, i32 0, i32 5
  %229 = load i32*, i32** %228, align 8
  %230 = load i32, i32* %6, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i32, i32* %229, i64 %231
  %233 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 7
  store i32* %232, i32** %233, align 8
  br label %234

234:                                              ; preds = %226, %220
  br label %158

235:                                              ; preds = %158
  %236 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %237 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %236, i32 0, i32 4
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 1
  %239 = load i64, i64* %238, align 8
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %281

241:                                              ; preds = %235
  %242 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %243 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %242, i32 0, i32 5
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 0
  %246 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 7
  store i32* %245, i32** %246, align 8
  %247 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 3
  store i64 0, i64* %247, align 8
  %248 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 4
  store i32 0, i32* %248, align 8
  %249 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 1
  store i32 0, i32* %249, align 8
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %241
  %253 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 6
  store i32* @avr32dci_data_tx_sync, i32** %253, align 8
  %254 = call i32 @avr32dci_setup_standard_chain_sub(%struct.avr32dci_std_temp* %3)
  br label %255

255:                                              ; preds = %252, %241
  %256 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %257 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %256, i32 0, i32 4
  %258 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %257, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %280, label %261

261:                                              ; preds = %255
  %262 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %263 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @UE_DIR_IN, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %261
  %269 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 6
  store i32* @avr32dci_data_rx, i32** %269, align 8
  store i32 0, i32* %8, align 4
  br label %272

270:                                              ; preds = %261
  %271 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 6
  store i32* @avr32dci_data_tx, i32** %271, align 8
  store i32 1, i32* %8, align 4
  br label %272

272:                                              ; preds = %270, %268
  %273 = call i32 @avr32dci_setup_standard_chain_sub(%struct.avr32dci_std_temp* %3)
  %274 = load i32, i32* %8, align 4
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %279

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 6
  store i32* @avr32dci_data_tx_sync, i32** %277, align 8
  %278 = call i32 @avr32dci_setup_standard_chain_sub(%struct.avr32dci_std_temp* %3)
  br label %279

279:                                              ; preds = %276, %272
  br label %280

280:                                              ; preds = %279, %255
  br label %281

281:                                              ; preds = %280, %235
  %282 = getelementptr inbounds %struct.avr32dci_std_temp, %struct.avr32dci_std_temp* %3, i32 0, i32 5
  %283 = load %struct.avr32dci_td*, %struct.avr32dci_td** %282, align 8
  store %struct.avr32dci_td* %283, %struct.avr32dci_td** %5, align 8
  %284 = load %struct.avr32dci_td*, %struct.avr32dci_td** %5, align 8
  %285 = load %struct.usb_xfer*, %struct.usb_xfer** %2, align 8
  %286 = getelementptr inbounds %struct.usb_xfer, %struct.usb_xfer* %285, i32 0, i32 3
  store %struct.avr32dci_td* %284, %struct.avr32dci_td** %286, align 8
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @UE_GET_ADDR(i32) #1

declare dso_local i32 @usbd_get_speed(i32) #1

declare dso_local %struct.avr32dci_softc* @AVR32_BUS2SC(i32) #1

declare dso_local i32 @avr32dci_setup_standard_chain_sub(%struct.avr32dci_std_temp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
