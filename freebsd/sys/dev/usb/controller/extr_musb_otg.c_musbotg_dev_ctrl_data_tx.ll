; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_dev_ctrl_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i32, i8*, i32, i32 }

@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_SETUPEND = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_SENTSTALL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_TXPKTRDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_dev_ctrl_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_dev_ctrl_data_tx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %9 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %10 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %11)
  store %struct.musbotg_softc* %12, %struct.musbotg_softc** %5, align 8
  %13 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %14 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %15 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %13, i32 %14, i32 0)
  %16 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %17 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %1
  %21 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %22 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %23 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %24 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %21, i32 %22, i32 %25)
  %27 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %28 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  br label %29

29:                                               ; preds = %20, %1
  %30 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %31 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %32 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MUSB2_MASK_CSR0L_SETUPEND, align 4
  %37 = load i32, i32* @MUSB2_MASK_CSR0L_SENTSTALL, align 4
  %38 = or i32 %36, %37
  %39 = and i32 %35, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %29
  %42 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %43 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  store i32 0, i32* %2, align 4
  br label %236

44:                                               ; preds = %29
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %236

50:                                               ; preds = %44
  %51 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %52 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %6, align 4
  %54 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %55 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %50
  %60 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %61 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  %62 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %63 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %6, align 4
  br label %65

65:                                               ; preds = %59, %50
  br label %66

66:                                               ; preds = %187, %157, %65
  %67 = load i32, i32* %6, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %216

69:                                               ; preds = %66
  %70 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %71 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %74 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @usbd_get_page(i32 %72, i32 %75, %struct.usb_page_search* %4)
  %77 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %69
  %82 = load i32, i32* %6, align 4
  %83 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %82, i32* %83, align 8
  br label %84

84:                                               ; preds = %81, %69
  %85 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = call i32 @USB_P2U(i8* %86)
  %88 = and i32 %87, 3
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %153

90:                                               ; preds = %84
  %91 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %92 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %95 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %98 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @usbd_copy_out(i32 %93, i32 %96, i8* %99, i32 %100)
  %102 = load i32, i32* %6, align 4
  %103 = and i32 %102, -4
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %120

106:                                              ; preds = %90
  %107 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %108 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %111 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %114 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %115 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %114, i32 0, i32 1
  %116 = load i8*, i8** %115, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sdiv i32 %117, 4
  %119 = call i32 @bus_space_write_multi_4(i32 %109, i32 %112, i32 %113, i8* %116, i32 %118)
  br label %120

120:                                              ; preds = %106, %90
  %121 = load i32, i32* %6, align 4
  %122 = and i32 %121, 3
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %142

125:                                              ; preds = %120
  %126 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %127 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %130 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %133 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %134 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %133, i32 0, i32 1
  %135 = load i8*, i8** %134, align 8
  %136 = load i32, i32* %6, align 4
  %137 = sdiv i32 %136, 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %135, i64 %138
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @bus_space_write_multi_1(i32 %128, i32 %131, i32 %132, i8* %139, i32 %140)
  br label %142

142:                                              ; preds = %125, %120
  %143 = load i32, i32* %6, align 4
  %144 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %145 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, %143
  store i32 %147, i32* %145, align 4
  %148 = load i32, i32* %6, align 4
  %149 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %150 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 4
  %152 = sub nsw i32 %151, %148
  store i32 %152, i32* %150, align 4
  br label %216

153:                                              ; preds = %84
  %154 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %155, 4
  br i1 %156, label %157, label %187

157:                                              ; preds = %153
  %158 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %159 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %162 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %165 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sdiv i32 %168, 4
  %170 = call i32 @bus_space_write_multi_4(i32 %160, i32 %163, i32 %164, i8* %166, i32 %169)
  %171 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = and i32 %172, -4
  store i32 %173, i32* %8, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %6, align 4
  %176 = sub nsw i32 %175, %174
  store i32 %176, i32* %6, align 4
  %177 = load i32, i32* %8, align 4
  %178 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %179 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, %177
  store i32 %181, i32* %179, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %184 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 4
  %186 = sub nsw i32 %185, %182
  store i32 %186, i32* %184, align 4
  br label %66

187:                                              ; preds = %153
  %188 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %189 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %192 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %195 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %196 = load i8*, i8** %195, align 8
  %197 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @bus_space_write_multi_1(i32 %190, i32 %193, i32 %194, i8* %196, i32 %198)
  %200 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sub nsw i32 %202, %201
  store i32 %203, i32* %6, align 4
  %204 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %207 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, %205
  store i32 %209, i32* %207, align 4
  %210 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %213 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = sub nsw i32 %214, %211
  store i32 %215, i32* %213, align 4
  br label %66

216:                                              ; preds = %142, %66
  %217 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %218 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %217, i32 0, i32 2
  %219 = load i32, i32* %218, align 4
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %231

221:                                              ; preds = %216
  %222 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %223 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %222, i32 0, i32 3
  %224 = load i32, i32* %223, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %221
  %227 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %228 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %229 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 8
  store i32 0, i32* %2, align 4
  br label %236

230:                                              ; preds = %221
  br label %231

231:                                              ; preds = %230, %216
  %232 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %233 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %234 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %235 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %232, i32 %233, i32 %234)
  store i32 1, i32* %2, align 4
  br label %236

236:                                              ; preds = %231, %226, %49, %41
  %237 = load i32, i32* %2, align 4
  ret i32 %237
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @USB_P2U(i8*) #1

declare dso_local i32 @usbd_copy_out(i32, i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_multi_4(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_REG_EPFIFO(i32) #1

declare dso_local i32 @bus_space_write_multi_1(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
