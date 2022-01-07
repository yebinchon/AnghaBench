; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i64, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i8*, i64, i32, i32 }

@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_SETUPEND = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_SENTSTALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"faking complete\0A\00", align 1
@MUSB2_MASK_CSR0L_RXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_REG_RXCOUNT = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_RXPKTRDY_CLR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_dev_ctrl_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_dev_ctrl_data_rx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %10 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %11 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %12)
  store %struct.musbotg_softc* %13, %struct.musbotg_softc** %5, align 8
  %14 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %15 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %16 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %14, i32 %15, i64 0)
  %17 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %18 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %23 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %24 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %25 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %22, i32 %23, i64 %26)
  %28 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %29 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %28, i32 0, i32 1
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %21, %1
  %31 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %32 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %33 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 0, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @MUSB2_MASK_CSR0L_SETUPEND, align 4
  %38 = load i32, i32* @MUSB2_MASK_CSR0L_SENTSTALL, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %30
  %43 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %44 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %267

49:                                               ; preds = %42
  %50 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %51 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  store i32 0, i32* %2, align 4
  br label %267

52:                                               ; preds = %30
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @MUSB2_MASK_CSR0L_RXPKTRDY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  store i32 1, i32* %2, align 4
  br label %267

58:                                               ; preds = %52
  %59 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %60 = load i32, i32* @MUSB2_REG_RXCOUNT, align 4
  %61 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %64 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %62, %65
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load i32, i32* %6, align 4
  %69 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %70 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %67
  %74 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %75 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %74, i32 0, i32 3
  store i32 1, i32* %75, align 8
  store i32 1, i32* %8, align 4
  br label %79

76:                                               ; preds = %67
  %77 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %78 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %77, i32 0, i32 1
  store i32 1, i32* %78, align 8
  store i32 0, i32* %2, align 4
  br label %267

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79, %58
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %84 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sgt i64 %82, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %80
  %88 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %89 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %88, i32 0, i32 1
  store i32 1, i32* %89, align 8
  store i32 0, i32* %2, align 4
  br label %267

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %214, %183, %90
  %92 = load i32, i32* %6, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %244

94:                                               ; preds = %91
  %95 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %96 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %99 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @usbd_get_page(i32 %97, i32 %100, %struct.usb_page_search* %4)
  %102 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = icmp sgt i32 %103, %104
  br i1 %105, label %106, label %109

106:                                              ; preds = %94
  %107 = load i32, i32* %6, align 4
  %108 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %107, i32* %108, align 8
  br label %109

109:                                              ; preds = %106, %94
  %110 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @USB_P2U(i8* %111)
  %113 = and i32 %112, 3
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %179

115:                                              ; preds = %109
  %116 = load i32, i32* %6, align 4
  %117 = and i32 %116, -4
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %134

120:                                              ; preds = %115
  %121 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %122 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %125 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %128 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %129 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sdiv i32 %131, 4
  %133 = call i32 @bus_space_read_multi_4(i32 %123, i32 %126, i32 %127, i8* %130, i32 %132)
  br label %134

134:                                              ; preds = %120, %115
  %135 = load i32, i32* %6, align 4
  %136 = and i32 %135, 3
  store i32 %136, i32* %9, align 4
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %134
  %140 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %141 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %144 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %147 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %148 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = load i32, i32* %6, align 4
  %151 = sdiv i32 %150, 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %149, i64 %152
  %154 = load i32, i32* %9, align 4
  %155 = call i32 @bus_space_read_multi_1(i32 %142, i32 %145, i32 %146, i8* %153, i32 %154)
  br label %156

156:                                              ; preds = %139, %134
  %157 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %158 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %161 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %160, i32 0, i32 4
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %164 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %163, i32 0, i32 0
  %165 = load i8*, i8** %164, align 8
  %166 = load i32, i32* %6, align 4
  %167 = call i32 @usbd_copy_in(i32 %159, i32 %162, i8* %165, i32 %166)
  %168 = load i32, i32* %6, align 4
  %169 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %170 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %168
  store i32 %172, i32* %170, align 4
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %176 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = sub nsw i64 %177, %174
  store i64 %178, i64* %176, align 8
  br label %244

179:                                              ; preds = %109
  %180 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = icmp sge i32 %181, 4
  br i1 %182, label %183, label %214

183:                                              ; preds = %179
  %184 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %185 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %188 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %191 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %192 = load i8*, i8** %191, align 8
  %193 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = sdiv i32 %194, 4
  %196 = call i32 @bus_space_read_multi_4(i32 %186, i32 %189, i32 %190, i8* %192, i32 %195)
  %197 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = and i32 %198, -4
  store i32 %199, i32* %9, align 4
  %200 = load i32, i32* %9, align 4
  %201 = load i32, i32* %6, align 4
  %202 = sub nsw i32 %201, %200
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %205 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, %203
  store i32 %207, i32* %205, align 4
  %208 = load i32, i32* %9, align 4
  %209 = sext i32 %208 to i64
  %210 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %211 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = sub nsw i64 %212, %209
  store i64 %213, i64* %211, align 8
  br label %91

214:                                              ; preds = %179
  %215 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %216 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %215, i32 0, i32 3
  %217 = load i32, i32* %216, align 4
  %218 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %219 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %222 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %223 = load i8*, i8** %222, align 8
  %224 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = call i32 @bus_space_read_multi_1(i32 %217, i32 %220, i32 %221, i8* %223, i32 %225)
  %227 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* %6, align 4
  %230 = sub nsw i32 %229, %228
  store i32 %230, i32* %6, align 4
  %231 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %234 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = add nsw i32 %235, %232
  store i32 %236, i32* %234, align 4
  %237 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %241 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = sub nsw i64 %242, %239
  store i64 %243, i64* %241, align 8
  br label %91

244:                                              ; preds = %156, %91
  %245 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %246 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %252, label %249

249:                                              ; preds = %244
  %250 = load i32, i32* %8, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %262

252:                                              ; preds = %249, %244
  %253 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %254 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %253, i32 0, i32 3
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %252
  %258 = load i64, i64* @MUSB2_MASK_CSR0L_RXPKTRDY_CLR, align 8
  %259 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %260 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %259, i32 0, i32 1
  store i64 %258, i64* %260, align 8
  store i32 0, i32* %2, align 4
  br label %267

261:                                              ; preds = %252
  br label %262

262:                                              ; preds = %261, %249
  %263 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %264 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %265 = load i64, i64* @MUSB2_MASK_CSR0L_RXPKTRDY_CLR, align 8
  %266 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %263, i32 %264, i64 %265)
  store i32 1, i32* %2, align 4
  br label %267

267:                                              ; preds = %262, %257, %87, %76, %57, %49, %47
  %268 = load i32, i32* %2, align 4
  ret i32 %268
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i64) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @MUSB2_READ_2(%struct.musbotg_softc*, i32) #1

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
