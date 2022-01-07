; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_dwc_otg.c_dwc_otg_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_otg_softc = type { i32, i32* }
%struct.dwc_otg_td = type { i64, i64, i32, i64, i32, i32, i32 }

@GRXSTSRD_PKTSTS_MASK = common dso_local global i32 0, align 4
@GRXSTSRD_STP_DATA = common dso_local global i32 0, align 4
@GRXSTSRD_STP_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@GRXSTSRD_OUT_DATA = common dso_local global i32 0, align 4
@DIEPCTL_EPTYPE_MASK = common dso_local global i32 0, align 4
@DIEPCTL_EPTYPE_ISOC = common dso_local global i32 0, align 4
@DIEPCTL_EPTYPE_SHIFT = common dso_local global i32 0, align 4
@DIEPCTL_SETD1PID = common dso_local global i32 0, align 4
@DIEPCTL_SETD0PID = common dso_local global i32 0, align 4
@DOEPCTL_EPENA = common dso_local global i32 0, align 4
@DOEPCTL_CNAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_otg_softc*, %struct.dwc_otg_td*)* @dwc_otg_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc_otg_data_rx(%struct.dwc_otg_softc* %0, %struct.dwc_otg_td* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dwc_otg_softc*, align 8
  %5 = alloca %struct.dwc_otg_td*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.dwc_otg_softc* %0, %struct.dwc_otg_softc** %4, align 8
  store %struct.dwc_otg_td* %1, %struct.dwc_otg_td** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %10 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %182

14:                                               ; preds = %2
  %15 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %16 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @GRXSTSRD_CHNUM_GET(i32 %17)
  %19 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %20 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %182

24:                                               ; preds = %14
  %25 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %26 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @GRXSTSRD_STP_DATA, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %40, label %32

32:                                               ; preds = %24
  %33 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %34 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @GRXSTSRD_STP_COMPLETE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %32, %24
  %41 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %42 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = call i32 @DPRINTFN(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %239

47:                                               ; preds = %40
  %48 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %49 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %48, i32 0, i32 2
  store i32 1, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %239

50:                                               ; preds = %32
  %51 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %52 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @GRXSTSRD_PKTSTS_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @GRXSTSRD_OUT_DATA, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %60 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %59)
  br label %182

61:                                               ; preds = %50
  %62 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %63 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @GRXSTSRD_BCNT_GET(i32 %64)
  store i64 %65, i64* %7, align 8
  %66 = load i64, i64* %7, align 8
  %67 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %68 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %66, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %61
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %74 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = icmp slt i64 %72, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %79 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %78, i32 0, i32 4
  store i32 1, i32* %79, align 8
  store i32 1, i32* %8, align 4
  br label %85

80:                                               ; preds = %71
  %81 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %82 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %81, i32 0, i32 2
  store i32 1, i32* %82, align 8
  %83 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %84 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %83)
  store i32 0, i32* %3, align 4
  br label %239

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %61
  %87 = load i64, i64* %7, align 8
  %88 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %89 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %94 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %96 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %95)
  store i32 0, i32* %3, align 4
  br label %239

97:                                               ; preds = %86
  %98 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %99 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %100 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %99, i32 0, i32 6
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %103 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @dwc_otg_read_fifo(%struct.dwc_otg_softc* %98, i32 %101, i32 %104, i64 %105)
  %107 = load i64, i64* %7, align 8
  %108 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %109 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = sub nsw i64 %110, %107
  store i64 %111, i64* %109, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %114 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %116, %112
  %118 = trunc i64 %117 to i32
  store i32 %118, i32* %114, align 4
  %119 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %120 = call i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc* %119)
  %121 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %122 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %121, i32 0, i32 1
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %125 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = load i32, i32* @DIEPCTL_EPTYPE_MASK, align 4
  %131 = and i32 %129, %130
  %132 = load i32, i32* @DIEPCTL_EPTYPE_ISOC, align 4
  %133 = load i32, i32* @DIEPCTL_EPTYPE_SHIFT, align 4
  %134 = shl i32 %132, %133
  %135 = icmp eq i32 %131, %134
  br i1 %135, label %136, label %166

136:                                              ; preds = %97
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @DIEPCTL_SETD1PID, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %149

141:                                              ; preds = %136
  %142 = load i32, i32* @DIEPCTL_SETD1PID, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %6, align 4
  %146 = load i32, i32* @DIEPCTL_SETD0PID, align 4
  %147 = load i32, i32* %6, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %6, align 4
  br label %157

149:                                              ; preds = %136
  %150 = load i32, i32* @DIEPCTL_SETD0PID, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %6, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* @DIEPCTL_SETD1PID, align 4
  %155 = load i32, i32* %6, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %157

157:                                              ; preds = %149, %141
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %160 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %159, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %163 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i32, i32* %161, i64 %164
  store i32 %158, i32* %165, align 4
  br label %166

166:                                              ; preds = %157, %97
  %167 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %168 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %8, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %171, %166
  %175 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %176 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %174
  store i32 0, i32* %3, align 4
  br label %239

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180, %171
  br label %182

182:                                              ; preds = %181, %58, %23, %13
  %183 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %184 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %182
  %188 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %189 = call i32 @DOTG_DOEPTSIZ(i64 0)
  %190 = call i32 @DXEPTSIZ_SET_MULTI(i32 3)
  %191 = call i32 @DXEPTSIZ_SET_NPKT(i32 1)
  %192 = or i32 %190, %191
  %193 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %194 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = trunc i64 %195 to i32
  %197 = call i32 @DXEPTSIZ_SET_NBYTES(i32 %196)
  %198 = or i32 %192, %197
  %199 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %188, i32 %189, i32 %198)
  br label %219

200:                                              ; preds = %182
  %201 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %202 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %203 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i32 @DOTG_DOEPTSIZ(i64 %204)
  %206 = call i32 @DXEPTSIZ_SET_MULTI(i32 1)
  %207 = call i32 @DXEPTSIZ_SET_NPKT(i32 4)
  %208 = or i32 %206, %207
  %209 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %210 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = add nsw i64 %211, 3
  %213 = and i64 %212, -4
  %214 = mul nsw i64 4, %213
  %215 = trunc i64 %214 to i32
  %216 = call i32 @DXEPTSIZ_SET_NBYTES(i32 %215)
  %217 = or i32 %208, %216
  %218 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %201, i32 %205, i32 %217)
  br label %219

219:                                              ; preds = %200, %187
  %220 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %221 = getelementptr inbounds %struct.dwc_otg_softc, %struct.dwc_otg_softc* %220, i32 0, i32 1
  %222 = load i32*, i32** %221, align 8
  %223 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %224 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i32, i32* %222, i64 %225
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %6, align 4
  %228 = load %struct.dwc_otg_softc*, %struct.dwc_otg_softc** %4, align 8
  %229 = load %struct.dwc_otg_td*, %struct.dwc_otg_td** %5, align 8
  %230 = getelementptr inbounds %struct.dwc_otg_td, %struct.dwc_otg_td* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call i32 @DOTG_DOEPCTL(i64 %231)
  %233 = load i32, i32* %6, align 4
  %234 = load i32, i32* @DOEPCTL_EPENA, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @DOEPCTL_CNAK, align 4
  %237 = or i32 %235, %236
  %238 = call i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc* %228, i32 %232, i32 %237)
  store i32 1, i32* %3, align 4
  br label %239

239:                                              ; preds = %219, %179, %92, %80, %47, %45
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i64 @GRXSTSRD_CHNUM_GET(i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*) #1

declare dso_local i32 @dwc_otg_common_rx_ack(%struct.dwc_otg_softc*) #1

declare dso_local i64 @GRXSTSRD_BCNT_GET(i32) #1

declare dso_local i32 @dwc_otg_read_fifo(%struct.dwc_otg_softc*, i32, i32, i64) #1

declare dso_local i32 @DWC_OTG_WRITE_4(%struct.dwc_otg_softc*, i32, i32) #1

declare dso_local i32 @DOTG_DOEPTSIZ(i64) #1

declare dso_local i32 @DXEPTSIZ_SET_MULTI(i32) #1

declare dso_local i32 @DXEPTSIZ_SET_NPKT(i32) #1

declare dso_local i32 @DXEPTSIZ_SET_NBYTES(i32) #1

declare dso_local i32 @DOTG_DOEPCTL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
