; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_RXSTALL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_ERROR = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_NAKTIMO = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_TXFIFONEMPTY = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0H_FFLUSH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_TXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_REG_TXTI = common dso_local global i32 0, align 4
@MUSB2_REG_TXNAKLIMIT = common dso_local global i32 0, align 4
@MAX_NAK_TO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_host_ctrl_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_host_ctrl_data_tx(%struct.musbotg_td* %0) #0 {
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
  %11 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %10, i32 0, i32 11
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %12)
  store %struct.musbotg_softc* %13, %struct.musbotg_softc** %5, align 8
  %14 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %15 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %20 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %21 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %19, %struct.musbotg_td* %20, i32 1)
  %22 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %23 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %26 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 1, i32* %2, align 4
  br label %359

30:                                               ; preds = %24
  %31 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %32 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %36 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %37 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %35, i32 %36, i32 0)
  %38 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %39 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %40 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @MUSB2_MASK_CSR0L_RXSTALL, align 4
  %45 = load i32, i32* @MUSB2_MASK_CSR0L_ERROR, align 4
  %46 = or i32 %44, %45
  %47 = and i32 %43, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %30
  %50 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %51 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %52 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %50, i32 %51, i32 0)
  %53 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %54 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %53, i32 0, i32 1
  store i32 1, i32* %54, align 4
  br label %55

55:                                               ; preds = %49, %30
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %109

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @MUSB2_MASK_CSR0L_TXFIFONEMPTY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %60
  %66 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %67 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %68 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* @MUSB2_MASK_CSR0H_FFLUSH, align 4
  %70 = load i32, i32* %8, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %73 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %74 = load i32, i32* %8, align 4
  %75 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %77 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %78 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %76, i32 %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @MUSB2_MASK_CSR0L_TXFIFONEMPTY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %65
  %84 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %85 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %86 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %84, i32 %85)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* @MUSB2_MASK_CSR0H_FFLUSH, align 4
  %88 = load i32, i32* %8, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %8, align 4
  %90 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %91 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %90, i32 %91, i32 %92)
  %94 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %95 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %96 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %83, %65
  br label %98

98:                                               ; preds = %97, %60
  %99 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %100 = xor i32 %99, -1
  %101 = load i32, i32* %7, align 4
  %102 = and i32 %101, %100
  store i32 %102, i32* %7, align 4
  %103 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %104 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %103, i32 %104, i32 %105)
  %107 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %108 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %55
  %110 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %111 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %116 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %117 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %115, %struct.musbotg_td* %116)
  store i32 0, i32* %2, align 4
  br label %359

118:                                              ; preds = %109
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @MUSB2_MASK_CSR0L_TXFIFONEMPTY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 1, i32* %2, align 4
  br label %359

124:                                              ; preds = %118
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 1, i32* %2, align 4
  br label %359

130:                                              ; preds = %124
  %131 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %132 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %153

135:                                              ; preds = %130
  %136 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %137 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %150

140:                                              ; preds = %135
  %141 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %142 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 8
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %147 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %148 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %146, %struct.musbotg_td* %147)
  store i32 0, i32* %2, align 4
  br label %359

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149, %135
  %151 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %152 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %151, i32 0, i32 2
  store i32 0, i32* %152, align 8
  br label %153

153:                                              ; preds = %150, %130
  %154 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %155 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %6, align 4
  %157 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %158 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp slt i64 %159, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %153
  %164 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %165 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %164, i32 0, i32 4
  store i32 1, i32* %165, align 8
  %166 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %167 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %163, %153
  br label %171

171:                                              ; preds = %294, %263, %170
  %172 = load i32, i32* %6, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %324

174:                                              ; preds = %171
  %175 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %176 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %175, i32 0, i32 11
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %179 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %178, i32 0, i32 6
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @usbd_get_page(i32 %177, i32 %180, %struct.usb_page_search* %4)
  %182 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = icmp sgt i32 %183, %184
  br i1 %185, label %186, label %189

186:                                              ; preds = %174
  %187 = load i32, i32* %6, align 4
  %188 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %187, i32* %188, align 8
  br label %189

189:                                              ; preds = %186, %174
  %190 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %191 = load i8*, i8** %190, align 8
  %192 = call i32 @USB_P2U(i8* %191)
  %193 = and i32 %192, 3
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %259

195:                                              ; preds = %189
  %196 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %197 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %196, i32 0, i32 11
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %200 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %199, i32 0, i32 6
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %203 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = call i32 @usbd_copy_out(i32 %198, i32 %201, i8* %204, i32 %205)
  %207 = load i32, i32* %6, align 4
  %208 = and i32 %207, -4
  store i32 %208, i32* %9, align 4
  %209 = load i32, i32* %9, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %225

211:                                              ; preds = %195
  %212 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %213 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %216 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %219 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %220 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = load i32, i32* %9, align 4
  %223 = sdiv i32 %222, 4
  %224 = call i32 @bus_space_write_multi_4(i32 %214, i32 %217, i32 %218, i8* %221, i32 %223)
  br label %225

225:                                              ; preds = %211, %195
  %226 = load i32, i32* %6, align 4
  %227 = and i32 %226, 3
  store i32 %227, i32* %9, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %247

230:                                              ; preds = %225
  %231 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %232 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %235 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %238 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %239 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sdiv i32 %241, 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = load i32, i32* %9, align 4
  %246 = call i32 @bus_space_write_multi_1(i32 %233, i32 %236, i32 %237, i8* %244, i32 %245)
  br label %247

247:                                              ; preds = %230, %225
  %248 = load i32, i32* %6, align 4
  %249 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %250 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = add nsw i32 %251, %248
  store i32 %252, i32* %250, align 8
  %253 = load i32, i32* %6, align 4
  %254 = sext i32 %253 to i64
  %255 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %256 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %255, i32 0, i32 3
  %257 = load i64, i64* %256, align 8
  %258 = sub nsw i64 %257, %254
  store i64 %258, i64* %256, align 8
  br label %324

259:                                              ; preds = %189
  %260 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp sge i32 %261, 4
  br i1 %262, label %263, label %294

263:                                              ; preds = %259
  %264 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %265 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %268 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %271 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = sdiv i32 %274, 4
  %276 = call i32 @bus_space_write_multi_4(i32 %266, i32 %269, i32 %270, i8* %272, i32 %275)
  %277 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = and i32 %278, -4
  store i32 %279, i32* %9, align 4
  %280 = load i32, i32* %9, align 4
  %281 = load i32, i32* %6, align 4
  %282 = sub nsw i32 %281, %280
  store i32 %282, i32* %6, align 4
  %283 = load i32, i32* %9, align 4
  %284 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %285 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %284, i32 0, i32 6
  %286 = load i32, i32* %285, align 8
  %287 = add nsw i32 %286, %283
  store i32 %287, i32* %285, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %291 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %290, i32 0, i32 3
  %292 = load i64, i64* %291, align 8
  %293 = sub nsw i64 %292, %289
  store i64 %293, i64* %291, align 8
  br label %171

294:                                              ; preds = %259
  %295 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %296 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %299 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 8
  %301 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %302 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %303 = load i8*, i8** %302, align 8
  %304 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i32 @bus_space_write_multi_1(i32 %297, i32 %300, i32 %301, i8* %303, i32 %305)
  %307 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = load i32, i32* %6, align 4
  %310 = sub nsw i32 %309, %308
  store i32 %310, i32* %6, align 4
  %311 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %314 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %313, i32 0, i32 6
  %315 = load i32, i32* %314, align 8
  %316 = add nsw i32 %315, %312
  store i32 %316, i32* %314, align 8
  %317 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = sext i32 %318 to i64
  %320 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %321 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %320, i32 0, i32 3
  %322 = load i64, i64* %321, align 8
  %323 = sub nsw i64 %322, %319
  store i64 %323, i64* %321, align 8
  br label %171

324:                                              ; preds = %247, %171
  %325 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %326 = call i32 @MUSB2_REG_TXFADDR(i32 0)
  %327 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %328 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %327, i32 0, i32 7
  %329 = load i32, i32* %328, align 4
  %330 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %325, i32 %326, i32 %329)
  %331 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %332 = call i32 @MUSB2_REG_TXHADDR(i32 0)
  %333 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %334 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %333, i32 0, i32 8
  %335 = load i32, i32* %334, align 8
  %336 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %331, i32 %332, i32 %335)
  %337 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %338 = call i32 @MUSB2_REG_TXHUBPORT(i32 0)
  %339 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %340 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %339, i32 0, i32 9
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %337, i32 %338, i32 %341)
  %343 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %344 = load i32, i32* @MUSB2_REG_TXTI, align 4
  %345 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %346 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %345, i32 0, i32 10
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %343, i32 %344, i32 %347)
  %349 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %350 = load i32, i32* @MUSB2_REG_TXNAKLIMIT, align 4
  %351 = load i32, i32* @MAX_NAK_TO, align 4
  %352 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %349, i32 %350, i32 %351)
  %353 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %354 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %355 = load i32, i32* @MUSB2_MASK_CSR0L_TXPKTRDY, align 4
  %356 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %353, i32 %354, i32 %355)
  %357 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %358 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %357, i32 0, i32 2
  store i32 1, i32* %358, align 8
  store i32 1, i32* %2, align 4
  br label %359

359:                                              ; preds = %324, %145, %129, %123, %114, %29
  %360 = load i32, i32* %2, align 4
  ret i32 %360
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

declare dso_local i32 @usbd_get_page(i32, i32, %struct.usb_page_search*) #1

declare dso_local i32 @USB_P2U(i8*) #1

declare dso_local i32 @usbd_copy_out(i32, i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_multi_4(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_REG_EPFIFO(i32) #1

declare dso_local i32 @bus_space_write_multi_1(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @MUSB2_REG_TXFADDR(i32) #1

declare dso_local i32 @MUSB2_REG_TXHADDR(i32) #1

declare dso_local i32 @MUSB2_REG_TXHUBPORT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
