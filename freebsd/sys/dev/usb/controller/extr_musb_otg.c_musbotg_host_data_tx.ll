; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_data_tx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_data_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_CSRL_TXSTALLED = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXERROR = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXNAKTO = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXFIFONEMPTY = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXFFLUSH = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_TXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_MASK_TI_PROTO_ISOC = common dso_local global i32 0, align 4
@MUSB2_REG_TXNAKLIMIT = common dso_local global i32 0, align 4
@MAX_NAK_TO = common dso_local global i32 0, align 4
@MUSB2_REG_TXTI = common dso_local global i32 0, align 4
@MUSB2_REG_TXMAXP = common dso_local global i32 0, align 4
@MUSB2_REG_TXCSRH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"csrh=0x%02x\0A\00", align 1
@MUSB2_MASK_CSRH_TXDT_WREN = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRH_TXDT_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_host_data_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_host_data_tx(%struct.musbotg_td* %0) #0 {
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
  %11 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %10, i32 0, i32 13
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
  br label %428

30:                                               ; preds = %24
  %31 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %32 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %36 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %37 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %38 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %35, i32 %36, i32 %39)
  %41 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %42 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %43 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %41, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @MUSB2_MASK_CSRL_TXSTALLED, align 4
  %48 = load i32, i32* @MUSB2_MASK_CSRL_TXERROR, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %30
  %53 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %54 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %55 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %53, i32 %54, i32 0)
  %56 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %57 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %56, i32 0, i32 1
  store i32 1, i32* %57, align 4
  %58 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %59 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %60 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %58, %struct.musbotg_td* %59)
  store i32 0, i32* %2, align 4
  br label %428

61:                                               ; preds = %30
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @MUSB2_MASK_CSRL_TXNAKTO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %112

66:                                               ; preds = %61
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @MUSB2_MASK_CSRL_TXFIFONEMPTY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %98

71:                                               ; preds = %66
  %72 = load i32, i32* @MUSB2_MASK_CSRL_TXFFLUSH, align 4
  %73 = load i32, i32* %7, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %7, align 4
  %75 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %76 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %75, i32 %76, i32 %77)
  %79 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %80 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %81 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @MUSB2_MASK_CSRL_TXFIFONEMPTY, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %71
  %87 = load i32, i32* @MUSB2_MASK_CSRL_TXFFLUSH, align 4
  %88 = load i32, i32* %7, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %7, align 4
  %90 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %91 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %90, i32 %91, i32 %92)
  %94 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %95 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %96 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  br label %97

97:                                               ; preds = %86, %71
  br label %98

98:                                               ; preds = %97, %66
  %99 = load i32, i32* @MUSB2_MASK_CSRL_TXNAKTO, align 4
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
  %109 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %110 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %111 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %109, %struct.musbotg_td* %110)
  store i32 0, i32* %2, align 4
  br label %428

112:                                              ; preds = %61
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* @MUSB2_MASK_CSRL_TXFIFONEMPTY, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %112
  store i32 1, i32* %2, align 4
  br label %428

118:                                              ; preds = %112
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @MUSB2_MASK_CSRL_TXPKTRDY, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %118
  store i32 1, i32* %2, align 4
  br label %428

124:                                              ; preds = %118
  %125 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %126 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %147

129:                                              ; preds = %124
  %130 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %131 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %130, i32 0, i32 3
  %132 = load i64, i64* %131, align 8
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %129
  %135 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %136 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 8
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %134
  %140 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %141 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %142 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %140, %struct.musbotg_td* %141)
  store i32 0, i32* %2, align 4
  br label %428

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %129
  %145 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %146 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %145, i32 0, i32 2
  store i32 0, i32* %146, align 8
  br label %147

147:                                              ; preds = %144, %124
  %148 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %149 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %6, align 4
  %151 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %152 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = sext i32 %154 to i64
  %156 = icmp slt i64 %153, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %159 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %158, i32 0, i32 4
  store i32 1, i32* %159, align 8
  %160 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %161 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %6, align 4
  br label %164

164:                                              ; preds = %157, %147
  br label %165

165:                                              ; preds = %297, %263, %164
  %166 = load i32, i32* %6, align 4
  %167 = icmp sgt i32 %166, 0
  br i1 %167, label %168, label %330

168:                                              ; preds = %165
  %169 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %170 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %169, i32 0, i32 13
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %173 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @usbd_get_page(i32 %171, i32 %174, %struct.usb_page_search* %4)
  %176 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = load i32, i32* %6, align 4
  %179 = icmp sgt i32 %177, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %168
  %181 = load i32, i32* %6, align 4
  %182 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %181, i32* %182, align 8
  br label %183

183:                                              ; preds = %180, %168
  %184 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @USB_P2U(i8* %185)
  %187 = and i32 %186, 3
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %259

189:                                              ; preds = %183
  %190 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %191 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %190, i32 0, i32 13
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %194 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %193, i32 0, i32 6
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %197 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %196, i32 0, i32 0
  %198 = load i8*, i8** %197, align 8
  %199 = load i32, i32* %6, align 4
  %200 = call i32 @usbd_copy_out(i32 %192, i32 %195, i8* %198, i32 %199)
  %201 = load i32, i32* %6, align 4
  %202 = and i32 %201, -4
  store i32 %202, i32* %9, align 4
  %203 = load i32, i32* %9, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %222

205:                                              ; preds = %189
  %206 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %207 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %210 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %213 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @MUSB2_REG_EPFIFO(i32 %214)
  %216 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %217 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sdiv i32 %219, 4
  %221 = call i32 @bus_space_write_multi_4(i32 %208, i32 %211, i32 %215, i8* %218, i32 %220)
  br label %222

222:                                              ; preds = %205, %189
  %223 = load i32, i32* %6, align 4
  %224 = and i32 %223, 3
  store i32 %224, i32* %9, align 4
  %225 = load i32, i32* %9, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %247

227:                                              ; preds = %222
  %228 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %229 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %232 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %235 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @MUSB2_REG_EPFIFO(i32 %236)
  %238 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %239 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* %6, align 4
  %242 = sdiv i32 %241, 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i8, i8* %240, i64 %243
  %245 = load i32, i32* %9, align 4
  %246 = call i32 @bus_space_write_multi_1(i32 %230, i32 %233, i32 %237, i8* %244, i32 %245)
  br label %247

247:                                              ; preds = %227, %222
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
  br label %330

259:                                              ; preds = %183
  %260 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp sge i32 %261, 4
  br i1 %262, label %263, label %297

263:                                              ; preds = %259
  %264 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %265 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 4
  %267 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %268 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %271 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @MUSB2_REG_EPFIFO(i32 %272)
  %274 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %275 = load i8*, i8** %274, align 8
  %276 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %277 = load i32, i32* %276, align 8
  %278 = sdiv i32 %277, 4
  %279 = call i32 @bus_space_write_multi_4(i32 %266, i32 %269, i32 %273, i8* %275, i32 %278)
  %280 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = and i32 %281, -4
  store i32 %282, i32* %9, align 4
  %283 = load i32, i32* %9, align 4
  %284 = load i32, i32* %6, align 4
  %285 = sub nsw i32 %284, %283
  store i32 %285, i32* %6, align 4
  %286 = load i32, i32* %9, align 4
  %287 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %288 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 8
  %290 = add nsw i32 %289, %286
  store i32 %290, i32* %288, align 8
  %291 = load i32, i32* %9, align 4
  %292 = sext i32 %291 to i64
  %293 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %294 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %293, i32 0, i32 3
  %295 = load i64, i64* %294, align 8
  %296 = sub nsw i64 %295, %292
  store i64 %296, i64* %294, align 8
  br label %165

297:                                              ; preds = %259
  %298 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %299 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 4
  %301 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %302 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %305 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @MUSB2_REG_EPFIFO(i32 %306)
  %308 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %309 = load i8*, i8** %308, align 8
  %310 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = call i32 @bus_space_write_multi_1(i32 %300, i32 %303, i32 %307, i8* %309, i32 %311)
  %313 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %6, align 4
  %316 = sub nsw i32 %315, %314
  store i32 %316, i32* %6, align 4
  %317 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %320 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %324 = load i32, i32* %323, align 8
  %325 = sext i32 %324 to i64
  %326 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %327 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %326, i32 0, i32 3
  %328 = load i64, i64* %327, align 8
  %329 = sub nsw i64 %328, %325
  store i64 %329, i64* %327, align 8
  br label %165

330:                                              ; preds = %247, %165
  %331 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %332 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %333 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 @MUSB2_REG_TXFADDR(i32 %334)
  %336 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %337 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %336, i32 0, i32 7
  %338 = load i32, i32* %337, align 4
  %339 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %331, i32 %335, i32 %338)
  %340 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %341 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %342 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = call i32 @MUSB2_REG_TXHADDR(i32 %343)
  %345 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %346 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 8
  %348 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %340, i32 %344, i32 %347)
  %349 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %350 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %351 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = call i32 @MUSB2_REG_TXHUBPORT(i32 %352)
  %354 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %355 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %354, i32 0, i32 9
  %356 = load i32, i32* %355, align 4
  %357 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %349, i32 %353, i32 %356)
  %358 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %359 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %358, i32 0, i32 10
  %360 = load i32, i32* %359, align 8
  %361 = load i32, i32* @MUSB2_MASK_TI_PROTO_ISOC, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %368

364:                                              ; preds = %330
  %365 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %366 = load i32, i32* @MUSB2_REG_TXNAKLIMIT, align 4
  %367 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %365, i32 %366, i32 0)
  br label %373

368:                                              ; preds = %330
  %369 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %370 = load i32, i32* @MUSB2_REG_TXNAKLIMIT, align 4
  %371 = load i32, i32* @MAX_NAK_TO, align 4
  %372 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %369, i32 %370, i32 %371)
  br label %373

373:                                              ; preds = %368, %364
  %374 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %375 = load i32, i32* @MUSB2_REG_TXTI, align 4
  %376 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %377 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %376, i32 0, i32 10
  %378 = load i32, i32* %377, align 8
  %379 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %374, i32 %375, i32 %378)
  %380 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %381 = load i32, i32* @MUSB2_REG_TXMAXP, align 4
  %382 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %383 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %382, i32 0, i32 12
  %384 = load i32, i32* %383, align 8
  %385 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %380, i32 %381, i32 %384)
  %386 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %387 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 8
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %417, label %390

390:                                              ; preds = %373
  %391 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %392 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %393 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %391, i32 %392)
  store i32 %393, i32* %8, align 4
  %394 = load i32, i32* %8, align 4
  %395 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %394)
  %396 = load i32, i32* @MUSB2_MASK_CSRH_TXDT_WREN, align 4
  %397 = load i32, i32* %8, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %8, align 4
  %399 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %400 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %399, i32 0, i32 11
  %401 = load i32, i32* %400, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %390
  %404 = load i32, i32* @MUSB2_MASK_CSRH_TXDT_VAL, align 4
  %405 = load i32, i32* %8, align 4
  %406 = or i32 %405, %404
  store i32 %406, i32* %8, align 4
  br label %412

407:                                              ; preds = %390
  %408 = load i32, i32* @MUSB2_MASK_CSRH_TXDT_VAL, align 4
  %409 = xor i32 %408, -1
  %410 = load i32, i32* %8, align 4
  %411 = and i32 %410, %409
  store i32 %411, i32* %8, align 4
  br label %412

412:                                              ; preds = %407, %403
  %413 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %414 = load i32, i32* @MUSB2_REG_TXCSRH, align 4
  %415 = load i32, i32* %8, align 4
  %416 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %413, i32 %414, i32 %415)
  br label %417

417:                                              ; preds = %412, %373
  %418 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %419 = load i32, i32* @MUSB2_REG_TXCSRL, align 4
  %420 = load i32, i32* @MUSB2_MASK_CSRL_TXPKTRDY, align 4
  %421 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %418, i32 %419, i32 %420)
  %422 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %423 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %422, i32 0, i32 11
  %424 = load i32, i32* %423, align 4
  %425 = xor i32 %424, 1
  store i32 %425, i32* %423, align 4
  %426 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %427 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %426, i32 0, i32 2
  store i32 1, i32* %427, align 8
  store i32 1, i32* %2, align 4
  br label %428

428:                                              ; preds = %417, %139, %123, %117, %98, %52, %29
  %429 = load i32, i32* %2, align 4
  ret i32 %429
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

declare dso_local i32 @MUSB2_WRITE_2(%struct.musbotg_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
