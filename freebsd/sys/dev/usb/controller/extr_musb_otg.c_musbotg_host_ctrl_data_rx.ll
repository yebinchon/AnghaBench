; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_ctrl_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_REG_RXNAKLIMIT = common dso_local global i32 0, align 4
@MAX_NAK_TO = common dso_local global i32 0, align 4
@MUSB2_REG_RXTI = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_REQPKT = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_NAKTIMO = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_RXSTALL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSR0L_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"error bit set, csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSR0L_RXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_REG_RXCOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_host_ctrl_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_host_ctrl_data_rx(%struct.musbotg_td* %0) #0 {
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
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %20 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %21 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %19, %struct.musbotg_td* %20, i32 0)
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
  br label %357

30:                                               ; preds = %24
  %31 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %32 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
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
  store i32 0, i32* %8, align 4
  %43 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %44 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %30
  %48 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %49 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %48, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %51 = load i32, i32* @MUSB2_REG_RXNAKLIMIT, align 4
  %52 = load i32, i32* @MAX_NAK_TO, align 4
  %53 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %50, i32 %51, i32 %52)
  %54 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %55 = call i32 @MUSB2_REG_RXFADDR(i32 0)
  %56 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %57 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %54, i32 %55, i32 %58)
  %60 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %61 = call i32 @MUSB2_REG_RXHADDR(i32 0)
  %62 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %63 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %60, i32 %61, i32 %64)
  %66 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %67 = call i32 @MUSB2_REG_RXHUBPORT(i32 0)
  %68 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %69 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %66, i32 %67, i32 %70)
  %72 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %73 = load i32, i32* @MUSB2_REG_RXTI, align 4
  %74 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %75 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %72, i32 %73, i32 %76)
  %78 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %79 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %80 = load i32, i32* @MUSB2_MASK_CSR0L_REQPKT, align 4
  %81 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %78, i32 %79, i32 %80)
  store i32 1, i32* %2, align 4
  br label %357

82:                                               ; preds = %30
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %82
  %88 = load i32, i32* @MUSB2_MASK_CSR0L_REQPKT, align 4
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, %89
  store i32 %91, i32* %7, align 4
  %92 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %93 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %92, i32 %93, i32 %94)
  %96 = load i32, i32* @MUSB2_MASK_CSR0L_NAKTIMO, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %101 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %100, i32 %101, i32 %102)
  %104 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %105 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %104, i32 0, i32 6
  store i32 1, i32* %105, align 4
  br label %106

106:                                              ; preds = %87, %82
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @MUSB2_MASK_CSR0L_RXSTALL, align 4
  %109 = load i32, i32* @MUSB2_MASK_CSR0L_ERROR, align 4
  %110 = or i32 %108, %109
  %111 = and i32 %107, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %115 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %116 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %114, i32 %115, i32 0)
  %117 = load i32, i32* %7, align 4
  %118 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %117)
  %119 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %120 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %119, i32 0, i32 6
  store i32 1, i32* %120, align 4
  br label %121

121:                                              ; preds = %113, %106
  %122 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %123 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %128 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %129 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %127, %struct.musbotg_td* %128)
  store i32 0, i32* %2, align 4
  br label %357

130:                                              ; preds = %121
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @MUSB2_MASK_CSR0L_RXPKTRDY, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %136, label %135

135:                                              ; preds = %130
  store i32 1, i32* %2, align 4
  br label %357

136:                                              ; preds = %130
  %137 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %138 = load i32, i32* @MUSB2_REG_RXCOUNT, align 4
  %139 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %137, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %142 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %141, i32 0, i32 7
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %140, %143
  br i1 %144, label %145, label %161

145:                                              ; preds = %136
  %146 = load i32, i32* %6, align 4
  %147 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %148 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %147, i32 0, i32 7
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %153 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %152, i32 0, i32 8
  store i32 1, i32* %153, align 4
  store i32 1, i32* %8, align 4
  br label %160

154:                                              ; preds = %145
  %155 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %156 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %155, i32 0, i32 6
  store i32 1, i32* %156, align 4
  %157 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %158 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %159 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %157, %struct.musbotg_td* %158)
  store i32 0, i32* %2, align 4
  br label %357

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160, %136
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %164 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %163, i32 0, i32 9
  %165 = load i32, i32* %164, align 4
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %169 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %168, i32 0, i32 6
  store i32 1, i32* %169, align 4
  %170 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %171 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %172 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %170, %struct.musbotg_td* %171)
  store i32 0, i32* %2, align 4
  br label %357

173:                                              ; preds = %161
  br label %174

174:                                              ; preds = %295, %265, %173
  %175 = load i32, i32* %6, align 4
  %176 = icmp sgt i32 %175, 0
  br i1 %176, label %177, label %324

177:                                              ; preds = %174
  %178 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %179 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %182 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @usbd_get_page(i32 %180, i32 %183, %struct.usb_page_search* %4)
  %185 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = icmp sgt i32 %186, %187
  br i1 %188, label %189, label %192

189:                                              ; preds = %177
  %190 = load i32, i32* %6, align 4
  %191 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %190, i32* %191, align 8
  br label %192

192:                                              ; preds = %189, %177
  %193 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %194 = load i8*, i8** %193, align 8
  %195 = call i32 @USB_P2U(i8* %194)
  %196 = and i32 %195, 3
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %261

198:                                              ; preds = %192
  %199 = load i32, i32* %6, align 4
  %200 = and i32 %199, -4
  store i32 %200, i32* %9, align 4
  %201 = load i32, i32* %9, align 4
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %217

203:                                              ; preds = %198
  %204 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %205 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %208 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %211 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %212 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %211, i32 0, i32 0
  %213 = load i8*, i8** %212, align 8
  %214 = load i32, i32* %9, align 4
  %215 = sdiv i32 %214, 4
  %216 = call i32 @bus_space_read_multi_4(i32 %206, i32 %209, i32 %210, i8* %213, i32 %215)
  br label %217

217:                                              ; preds = %203, %198
  %218 = load i32, i32* %6, align 4
  %219 = and i32 %218, 3
  store i32 %219, i32* %9, align 4
  %220 = load i32, i32* %9, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %239

222:                                              ; preds = %217
  %223 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %224 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %227 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %230 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %231 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sdiv i32 %233, 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i8, i8* %232, i64 %235
  %237 = load i32, i32* %9, align 4
  %238 = call i32 @bus_space_read_multi_1(i32 %225, i32 %228, i32 %229, i8* %236, i32 %237)
  br label %239

239:                                              ; preds = %222, %217
  %240 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %241 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %240, i32 0, i32 11
  %242 = load i32, i32* %241, align 4
  %243 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %244 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %243, i32 0, i32 10
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %247 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %246, i32 0, i32 0
  %248 = load i8*, i8** %247, align 8
  %249 = load i32, i32* %6, align 4
  %250 = call i32 @usbd_copy_in(i32 %242, i32 %245, i8* %248, i32 %249)
  %251 = load i32, i32* %6, align 4
  %252 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %253 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %252, i32 0, i32 10
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, %251
  store i32 %255, i32* %253, align 4
  %256 = load i32, i32* %6, align 4
  %257 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %258 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %257, i32 0, i32 9
  %259 = load i32, i32* %258, align 4
  %260 = sub nsw i32 %259, %256
  store i32 %260, i32* %258, align 4
  br label %324

261:                                              ; preds = %192
  %262 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = icmp sge i32 %263, 4
  br i1 %264, label %265, label %295

265:                                              ; preds = %261
  %266 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %267 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %266, i32 0, i32 2
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %270 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %273 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %274 = load i8*, i8** %273, align 8
  %275 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sdiv i32 %276, 4
  %278 = call i32 @bus_space_read_multi_4(i32 %268, i32 %271, i32 %272, i8* %274, i32 %277)
  %279 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = and i32 %280, -4
  store i32 %281, i32* %9, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* %6, align 4
  %284 = sub nsw i32 %283, %282
  store i32 %284, i32* %6, align 4
  %285 = load i32, i32* %9, align 4
  %286 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %287 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %286, i32 0, i32 10
  %288 = load i32, i32* %287, align 4
  %289 = add nsw i32 %288, %285
  store i32 %289, i32* %287, align 4
  %290 = load i32, i32* %9, align 4
  %291 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %292 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %291, i32 0, i32 9
  %293 = load i32, i32* %292, align 4
  %294 = sub nsw i32 %293, %290
  store i32 %294, i32* %292, align 4
  br label %174

295:                                              ; preds = %261
  %296 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %297 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %296, i32 0, i32 2
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %300 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = call i32 @MUSB2_REG_EPFIFO(i32 0)
  %303 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %304 = load i8*, i8** %303, align 8
  %305 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @bus_space_read_multi_1(i32 %298, i32 %301, i32 %302, i8* %304, i32 %306)
  %308 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sub nsw i32 %310, %309
  store i32 %311, i32* %6, align 4
  %312 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %315 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %314, i32 0, i32 10
  %316 = load i32, i32* %315, align 4
  %317 = add nsw i32 %316, %313
  store i32 %317, i32* %315, align 4
  %318 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %319 = load i32, i32* %318, align 8
  %320 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %321 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %320, i32 0, i32 9
  %322 = load i32, i32* %321, align 4
  %323 = sub nsw i32 %322, %319
  store i32 %323, i32* %321, align 4
  br label %174

324:                                              ; preds = %239, %174
  %325 = load i32, i32* @MUSB2_MASK_CSR0L_RXPKTRDY, align 4
  %326 = xor i32 %325, -1
  %327 = load i32, i32* %7, align 4
  %328 = and i32 %327, %326
  store i32 %328, i32* %7, align 4
  %329 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %330 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %331 = load i32, i32* %7, align 4
  %332 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %329, i32 %330, i32 %331)
  %333 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %334 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %333, i32 0, i32 9
  %335 = load i32, i32* %334, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %324
  %338 = load i32, i32* %8, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %340, label %350

340:                                              ; preds = %337, %324
  %341 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %342 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %341, i32 0, i32 8
  %343 = load i32, i32* %342, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %340
  %346 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %347 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %348 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %346, %struct.musbotg_td* %347)
  store i32 0, i32* %2, align 4
  br label %357

349:                                              ; preds = %340
  br label %350

350:                                              ; preds = %349, %337
  %351 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %352 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %351, i32 0, i32 1
  store i32 1, i32* %352, align 4
  %353 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %354 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %355 = load i32, i32* @MUSB2_MASK_CSR0L_REQPKT, align 4
  %356 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %353, i32 %354, i32 %355)
  store i32 1, i32* %2, align 4
  br label %357

357:                                              ; preds = %350, %345, %167, %154, %135, %126, %47, %29
  %358 = load i32, i32* %2, align 4
  ret i32 %358
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, i32) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @MUSB2_REG_RXFADDR(i32) #1

declare dso_local i32 @MUSB2_REG_RXHADDR(i32) #1

declare dso_local i32 @MUSB2_REG_RXHUBPORT(i32) #1

declare dso_local i32 @musbotg_channel_free(%struct.musbotg_softc*, %struct.musbotg_td*) #1

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
