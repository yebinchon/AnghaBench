; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i8*, i32, i32 }

@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_RXCSRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSRL_RXOVERRUN = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_RXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_REG_RXCOUNT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"count=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_dev_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_dev_data_rx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  store i32 8, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %12 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %13)
  store %struct.musbotg_softc* %14, %struct.musbotg_softc** %5, align 8
  %15 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %16 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %21 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %22 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %20, %struct.musbotg_td* %21, i32 0)
  %23 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %24 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %27 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %288

31:                                               ; preds = %25
  %32 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %33 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %34 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %35 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %32, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %286, %31
  %39 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %40 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %41 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  %45 = load i32, i32* @MUSB2_MASK_CSRL_RXOVERRUN, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %50 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %51 = load i32, i32* @MUSB2_MASK_CSRL_RXPKTRDY, align 4
  %52 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %49, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %38
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MUSB2_MASK_CSRL_RXPKTRDY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %288

59:                                               ; preds = %53
  %60 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %61 = load i32, i32* @MUSB2_REG_RXCOUNT, align 4
  %62 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %60, i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %67 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %65, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %59
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %73 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %70
  %77 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %78 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %77, i32 0, i32 2
  store i32 1, i32* %78, align 4
  store i32 1, i32* %9, align 4
  br label %85

79:                                               ; preds = %70
  %80 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %81 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %80, i32 0, i32 3
  store i32 1, i32* %81, align 4
  %82 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %83 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %84 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %82, %struct.musbotg_td* %83)
  store i32 0, i32* %2, align 4
  br label %288

85:                                               ; preds = %76
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i32, i32* %6, align 4
  %88 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %89 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp sgt i32 %87, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %94 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %93, i32 0, i32 3
  store i32 1, i32* %94, align 4
  %95 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %96 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %97 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %95, %struct.musbotg_td* %96)
  store i32 0, i32* %2, align 4
  br label %288

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %229, %196, %98
  %100 = load i32, i32* %6, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %261

102:                                              ; preds = %99
  %103 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %104 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %107 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @usbd_get_page(i32 %105, i32 %108, %struct.usb_page_search* %4)
  %110 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = icmp sgt i32 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %102
  %115 = load i32, i32* %6, align 4
  %116 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %115, i32* %116, align 8
  br label %117

117:                                              ; preds = %114, %102
  %118 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @USB_P2U(i8* %119)
  %121 = and i32 %120, 3
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %192

123:                                              ; preds = %117
  %124 = load i32, i32* %6, align 4
  %125 = and i32 %124, -4
  store i32 %125, i32* %10, align 4
  %126 = load i32, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %145

128:                                              ; preds = %123
  %129 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %130 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %133 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %136 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @MUSB2_REG_EPFIFO(i32 %137)
  %139 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %140 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sdiv i32 %142, 4
  %144 = call i32 @bus_space_read_multi_4(i32 %131, i32 %134, i32 %138, i8* %141, i32 %143)
  br label %145

145:                                              ; preds = %128, %123
  %146 = load i32, i32* %6, align 4
  %147 = and i32 %146, 3
  store i32 %147, i32* %10, align 4
  %148 = load i32, i32* %10, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %145
  %151 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %152 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %155 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %158 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @MUSB2_REG_EPFIFO(i32 %159)
  %161 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %162 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %161, i32 0, i32 0
  %163 = load i8*, i8** %162, align 8
  %164 = load i32, i32* %6, align 4
  %165 = sdiv i32 %164, 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8, i8* %163, i64 %166
  %168 = load i32, i32* %10, align 4
  %169 = call i32 @bus_space_read_multi_1(i32 %153, i32 %156, i32 %160, i8* %167, i32 %168)
  br label %170

170:                                              ; preds = %150, %145
  %171 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %172 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %175 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %178 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %177, i32 0, i32 0
  %179 = load i8*, i8** %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = call i32 @usbd_copy_in(i32 %173, i32 %176, i8* %179, i32 %180)
  %182 = load i32, i32* %6, align 4
  %183 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %184 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %189 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %261

192:                                              ; preds = %117
  %193 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp sge i32 %194, 4
  br i1 %195, label %196, label %229

196:                                              ; preds = %192
  %197 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %198 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %201 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %204 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = call i32 @MUSB2_REG_EPFIFO(i32 %205)
  %207 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %208 = load i8*, i8** %207, align 8
  %209 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sdiv i32 %210, 4
  %212 = call i32 @bus_space_read_multi_4(i32 %199, i32 %202, i32 %206, i8* %208, i32 %211)
  %213 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = and i32 %214, -4
  store i32 %215, i32* %10, align 4
  %216 = load i32, i32* %10, align 4
  %217 = load i32, i32* %6, align 4
  %218 = sub nsw i32 %217, %216
  store i32 %218, i32* %6, align 4
  %219 = load i32, i32* %10, align 4
  %220 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %221 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %219
  store i32 %223, i32* %221, align 4
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %226 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %225, i32 0, i32 4
  %227 = load i32, i32* %226, align 4
  %228 = sub nsw i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %99

229:                                              ; preds = %192
  %230 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %231 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %230, i32 0, i32 2
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %234 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %237 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = call i32 @MUSB2_REG_EPFIFO(i32 %238)
  %240 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @bus_space_read_multi_1(i32 %232, i32 %235, i32 %239, i8* %241, i32 %243)
  %245 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %6, align 4
  %248 = sub nsw i32 %247, %246
  store i32 %248, i32* %6, align 4
  %249 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %252 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %251, i32 0, i32 5
  %253 = load i32, i32* %252, align 4
  %254 = add nsw i32 %253, %250
  store i32 %254, i32* %252, align 4
  %255 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %258 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %99

261:                                              ; preds = %170, %99
  %262 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %263 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %264 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %262, i32 %263, i32 0)
  %265 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %266 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %265, i32 0, i32 4
  %267 = load i32, i32* %266, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %272, label %269

269:                                              ; preds = %261
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %282

272:                                              ; preds = %269, %261
  %273 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %274 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %281

277:                                              ; preds = %272
  %278 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %279 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %280 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %278, %struct.musbotg_td* %279)
  store i32 0, i32* %2, align 4
  br label %288

281:                                              ; preds = %272
  br label %282

282:                                              ; preds = %281, %269
  %283 = load i32, i32* %8, align 4
  %284 = add nsw i32 %283, -1
  store i32 %284, i32* %8, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %287

286:                                              ; preds = %282
  br label %38

287:                                              ; preds = %282
  store i32 1, i32* %2, align 4
  br label %288

288:                                              ; preds = %287, %277, %92, %79, %58, %30
  %289 = load i32, i32* %2, align 4
  ret i32 %289
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @MUSB2_READ_2(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @USB_P2U(i8*) #1

declare dso_local i32 @bus_space_read_multi_4(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_REG_EPFIFO(i32) #1

declare dso_local i32 @bus_space_read_multi_1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @usbd_copy_in(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
