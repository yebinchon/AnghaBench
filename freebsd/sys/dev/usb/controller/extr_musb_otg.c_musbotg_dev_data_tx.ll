; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i8*, i32, i32 }

@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSRL_TXINCOMP = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXUNDERRUN = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_REG_TXMAXP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_dev_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_dev_data_tx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  store i32 8, i32* %8, align 4
  %10 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %11 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %12)
  store %struct.musbotg_softc* %13, %struct.musbotg_softc** %5, align 8
  %14 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %15 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %20 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %21 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %19, %struct.musbotg_td* %20, i32 1)
  %22 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %23 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %26 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %268

30:                                               ; preds = %24
  %31 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %32 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %33 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %34 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %31, i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %266, %30
  %38 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %39 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %40 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MUSB2_MASK_CSRL_TXINCOMP, align 4
  %45 = load i32, i32* @MUSB2_MASK_CSRL_TXUNDERRUN, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %37
  %50 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %51 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %52 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %50, i32 %51, i32 0)
  br label %53

53:                                               ; preds = %49, %37
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @MUSB2_MASK_CSRL_TXPKTRDY, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %268

59:                                               ; preds = %53
  %60 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %61 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %6, align 4
  %63 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %64 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %70 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %69, i32 0, i32 3
  store i32 1, i32* %70, align 4
  %71 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %72 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %6, align 4
  br label %74

74:                                               ; preds = %68, %59
  br label %75

75:                                               ; preds = %205, %172, %74
  %76 = load i32, i32* %6, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %78, label %237

78:                                               ; preds = %75
  %79 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %80 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %83 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @usbd_get_page(i32 %81, i32 %84, %struct.usb_page_search* %4)
  %86 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %78
  %91 = load i32, i32* %6, align 4
  %92 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  br label %93

93:                                               ; preds = %90, %78
  %94 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @USB_P2U(i8* %95)
  %97 = and i32 %96, 3
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %168

99:                                               ; preds = %93
  %100 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %101 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %104 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %107 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @usbd_copy_out(i32 %102, i32 %105, i8* %108, i32 %109)
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, -4
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %99
  %116 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %117 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %120 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %123 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @MUSB2_REG_EPFIFO(i32 %124)
  %126 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %127 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %126, i32 0, i32 0
  %128 = load i8*, i8** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sdiv i32 %129, 4
  %131 = call i32 @bus_space_write_multi_4(i32 %118, i32 %121, i32 %125, i8* %128, i32 %130)
  br label %132

132:                                              ; preds = %115, %99
  %133 = load i32, i32* %6, align 4
  %134 = and i32 %133, 3
  store i32 %134, i32* %9, align 4
  %135 = load i32, i32* %9, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %132
  %138 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %139 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %142 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %145 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @MUSB2_REG_EPFIFO(i32 %146)
  %148 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %149 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load i32, i32* %6, align 4
  %152 = sdiv i32 %151, 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %150, i64 %153
  %155 = load i32, i32* %9, align 4
  %156 = call i32 @bus_space_write_multi_1(i32 %140, i32 %143, i32 %147, i8* %154, i32 %155)
  br label %157

157:                                              ; preds = %137, %132
  %158 = load i32, i32* %6, align 4
  %159 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %160 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %159, i32 0, i32 4
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %6, align 4
  %164 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %165 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = sub nsw i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %237

168:                                              ; preds = %93
  %169 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = icmp sge i32 %170, 4
  br i1 %171, label %172, label %205

172:                                              ; preds = %168
  %173 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %174 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %177 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %180 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @MUSB2_REG_EPFIFO(i32 %181)
  %183 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %184 = load i8*, i8** %183, align 8
  %185 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = sdiv i32 %186, 4
  %188 = call i32 @bus_space_write_multi_4(i32 %175, i32 %178, i32 %182, i8* %184, i32 %187)
  %189 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = and i32 %190, -4
  store i32 %191, i32* %9, align 4
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* %6, align 4
  %194 = sub nsw i32 %193, %192
  store i32 %194, i32* %6, align 4
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %197 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, %195
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %202 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = sub nsw i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %75

205:                                              ; preds = %168
  %206 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %207 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %210 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %213 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @MUSB2_REG_EPFIFO(i32 %214)
  %216 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @bus_space_write_multi_1(i32 %208, i32 %211, i32 %215, i8* %217, i32 %219)
  %221 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* %6, align 4
  %224 = sub nsw i32 %223, %222
  store i32 %224, i32* %6, align 4
  %225 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %228 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %227, i32 0, i32 4
  %229 = load i32, i32* %228, align 4
  %230 = add nsw i32 %229, %226
  store i32 %230, i32* %228, align 4
  %231 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %234 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = sub nsw i32 %235, %232
  store i32 %236, i32* %234, align 4
  br label %75

237:                                              ; preds = %157, %75
  %238 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %239 = load i32, i32* @MUSB2_REG_TXMAXP, align 4
  %240 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %241 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %240, i32 0, i32 5
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %238, i32 %239, i32 %242)
  %244 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %245 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %246 = load i32, i32* @MUSB2_MASK_CSRL_TXPKTRDY, align 4
  %247 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %244, i32 %245, i32 %246)
  %248 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %249 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %237
  %253 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %254 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %259 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %260 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %258, %struct.musbotg_td* %259)
  store i32 0, i32* %2, align 4
  br label %268

261:                                              ; preds = %252
  br label %262

262:                                              ; preds = %261, %237
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, -1
  store i32 %264, i32* %8, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %262
  br label %37

267:                                              ; preds = %262
  store i32 1, i32* %2, align 4
  br label %268

268:                                              ; preds = %267, %257, %58, %29
  %269 = load i32, i32* %2, align 4
  ret i32 %269
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @USB_P2U(i8*) #1

declare dso_local i32 @usbd_copy_out(i32, i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_multi_4(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_REG_EPFIFO(i32) #1

declare dso_local i32 @bus_space_write_multi_1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_WRITE_2(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
