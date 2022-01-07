; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_data_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_host_data_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_td = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.usb_page_search = type { i32, i8* }
%struct.musbotg_softc = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c"ep_no=%d\0A\00", align 1
@MUSB2_REG_EPINDEX = common dso_local global i32 0, align 4
@MUSB2_REG_RXCSRL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"csr=0x%02x\0A\00", align 1
@MUSB2_MASK_TI_PROTO_ISOC = common dso_local global i32 0, align 4
@MUSB2_REG_RXNAKLIMIT = common dso_local global i32 0, align 4
@MAX_NAK_TO = common dso_local global i32 0, align 4
@MUSB2_REG_RXTI = common dso_local global i32 0, align 4
@MUSB2_REG_RXMAXP = common dso_local global i32 0, align 4
@MUSB2_REG_RXCSRH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"csrh=0x%02x\0A\00", align 1
@MUSB2_MASK_CSRH_RXDT_WREN = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRH_RXDT_VAL = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_RXREQPKT = common dso_local global i32 0, align 4
@MUSB2_MASK_CSRL_RXNAKTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"NAK Timeout\0A\00", align 1
@MUSB2_MASK_CSRL_RXERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"RXERROR\0A\00", align 1
@MUSB2_MASK_CSRL_RXSTALL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c"RXSTALL\0A\00", align 1
@MUSB2_MASK_CSRL_RXPKTRDY = common dso_local global i32 0, align 4
@MUSB2_REG_RXCOUNT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"count=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.musbotg_td*)* @musbotg_host_data_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @musbotg_host_data_rx(%struct.musbotg_td* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.musbotg_td*, align 8
  %4 = alloca %struct.usb_page_search, align 8
  %5 = alloca %struct.musbotg_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.musbotg_td* %0, %struct.musbotg_td** %3, align 8
  %12 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %13 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %12, i32 0, i32 12
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.musbotg_softc* @MUSBOTG_PC2SC(i32 %14)
  store %struct.musbotg_softc* %15, %struct.musbotg_softc** %5, align 8
  %16 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %17 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %22 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %23 = call i32 @musbotg_channel_alloc(%struct.musbotg_softc* %21, %struct.musbotg_td* %22, i32 0)
  %24 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %25 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %28 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %440

32:                                               ; preds = %26
  %33 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %34 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i32, i8*, ...) @DPRINTFN(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %35)
  store i32 8, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %37 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %38 = load i32, i32* @MUSB2_REG_EPINDEX, align 4
  %39 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %40 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %37, i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %438, %32
  %44 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %45 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %46 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %44, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %50 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %141, label %53

53:                                               ; preds = %43
  %54 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %55 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %56 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @MUSB2_REG_RXFADDR(i32 %57)
  %59 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %60 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %54, i32 %58, i32 %61)
  %63 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %64 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %65 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @MUSB2_REG_RXHADDR(i32 %66)
  %68 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %69 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %63, i32 %67, i32 %70)
  %72 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %73 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %74 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @MUSB2_REG_RXHUBPORT(i32 %75)
  %77 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %78 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %72, i32 %76, i32 %79)
  %81 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %82 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @MUSB2_MASK_TI_PROTO_ISOC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %53
  %88 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %89 = load i32, i32* @MUSB2_REG_RXNAKLIMIT, align 4
  %90 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %88, i32 %89, i32 0)
  br label %96

91:                                               ; preds = %53
  %92 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %93 = load i32, i32* @MUSB2_REG_RXNAKLIMIT, align 4
  %94 = load i32, i32* @MAX_NAK_TO, align 4
  %95 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %98 = load i32, i32* @MUSB2_REG_RXTI, align 4
  %99 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %100 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %99, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %97, i32 %98, i32 %101)
  %103 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %104 = load i32, i32* @MUSB2_REG_RXMAXP, align 4
  %105 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %106 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %105, i32 0, i32 13
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @MUSB2_WRITE_2(%struct.musbotg_softc* %103, i32 %104, i32 %107)
  %109 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %110 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %111 = call i32 @MUSB2_READ_1(%struct.musbotg_softc* %109, i32 %110)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  %114 = load i32, i32* @MUSB2_MASK_CSRH_RXDT_WREN, align 4
  %115 = load i32, i32* %8, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %8, align 4
  %117 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %118 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %96
  %122 = load i32, i32* @MUSB2_MASK_CSRH_RXDT_VAL, align 4
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  br label %130

125:                                              ; preds = %96
  %126 = load i32, i32* @MUSB2_MASK_CSRH_RXDT_VAL, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %8, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %8, align 4
  br label %130

130:                                              ; preds = %125, %121
  %131 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %132 = load i32, i32* @MUSB2_REG_RXCSRH, align 4
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %131, i32 %132, i32 %133)
  %135 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %136 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %137 = load i32, i32* @MUSB2_MASK_CSRL_RXREQPKT, align 4
  %138 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %135, i32 %136, i32 %137)
  %139 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %140 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %139, i32 0, i32 1
  store i32 1, i32* %140, align 4
  store i32 1, i32* %2, align 4
  br label %440

141:                                              ; preds = %43
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @MUSB2_MASK_CSRL_RXNAKTO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %172

146:                                              ; preds = %141
  %147 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* %7, align 4
  %149 = load i32, i32* @MUSB2_MASK_CSRL_RXREQPKT, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %169

152:                                              ; preds = %146
  %153 = load i32, i32* @MUSB2_MASK_CSRL_RXREQPKT, align 4
  %154 = xor i32 %153, -1
  %155 = load i32, i32* %7, align 4
  %156 = and i32 %155, %154
  store i32 %156, i32* %7, align 4
  %157 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %158 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %157, i32 %158, i32 %159)
  %161 = load i32, i32* @MUSB2_MASK_CSRL_RXNAKTO, align 4
  %162 = xor i32 %161, -1
  %163 = load i32, i32* %7, align 4
  %164 = and i32 %163, %162
  store i32 %164, i32* %7, align 4
  %165 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %166 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %152, %146
  %170 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %171 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %170, i32 0, i32 7
  store i32 1, i32* %171, align 4
  br label %172

172:                                              ; preds = %169, %141
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* @MUSB2_MASK_CSRL_RXERROR, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %172
  %178 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %179 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %180 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %179, i32 0, i32 7
  store i32 1, i32* %180, align 4
  br label %181

181:                                              ; preds = %177, %172
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @MUSB2_MASK_CSRL_RXSTALL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %190

186:                                              ; preds = %181
  %187 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %188 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %189 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %188, i32 0, i32 7
  store i32 1, i32* %189, align 4
  br label %190

190:                                              ; preds = %186, %181
  %191 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %192 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %191, i32 0, i32 7
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %190
  %196 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %197 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %198 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %196, %struct.musbotg_td* %197)
  store i32 0, i32* %2, align 4
  br label %440

199:                                              ; preds = %190
  %200 = load i32, i32* %7, align 4
  %201 = load i32, i32* @MUSB2_MASK_CSRL_RXPKTRDY, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %199
  store i32 1, i32* %2, align 4
  br label %440

205:                                              ; preds = %199
  %206 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %207 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %206, i32 0, i32 6
  %208 = load i32, i32* %207, align 4
  %209 = xor i32 %208, 1
  store i32 %209, i32* %207, align 4
  %210 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %211 = load i32, i32* @MUSB2_REG_RXCOUNT, align 4
  %212 = call i32 @MUSB2_READ_2(%struct.musbotg_softc* %210, i32 %211)
  store i32 %212, i32* %6, align 4
  %213 = load i32, i32* %6, align 4
  %214 = call i32 (i32, i8*, ...) @DPRINTFN(i32 4, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %213)
  %215 = load i32, i32* %6, align 4
  %216 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %217 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 4
  %219 = icmp ne i32 %215, %218
  br i1 %219, label %220, label %236

220:                                              ; preds = %205
  %221 = load i32, i32* %6, align 4
  %222 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %223 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %222, i32 0, i32 8
  %224 = load i32, i32* %223, align 4
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %220
  %227 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %228 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %227, i32 0, i32 9
  store i32 1, i32* %228, align 4
  store i32 1, i32* %10, align 4
  br label %235

229:                                              ; preds = %220
  %230 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %231 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %230, i32 0, i32 7
  store i32 1, i32* %231, align 4
  %232 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %233 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %234 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %232, %struct.musbotg_td* %233)
  store i32 0, i32* %2, align 4
  br label %440

235:                                              ; preds = %226
  br label %236

236:                                              ; preds = %235, %205
  %237 = load i32, i32* %6, align 4
  %238 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %239 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %238, i32 0, i32 10
  %240 = load i32, i32* %239, align 4
  %241 = icmp sgt i32 %237, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %236
  %243 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %244 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %243, i32 0, i32 7
  store i32 1, i32* %244, align 4
  %245 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %246 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %247 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %245, %struct.musbotg_td* %246)
  store i32 0, i32* %2, align 4
  br label %440

248:                                              ; preds = %236
  br label %249

249:                                              ; preds = %379, %346, %248
  %250 = load i32, i32* %6, align 4
  %251 = icmp sgt i32 %250, 0
  br i1 %251, label %252, label %411

252:                                              ; preds = %249
  %253 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %254 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %253, i32 0, i32 12
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %257 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %256, i32 0, i32 11
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @usbd_get_page(i32 %255, i32 %258, %struct.usb_page_search* %4)
  %260 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %6, align 4
  %263 = icmp sgt i32 %261, %262
  br i1 %263, label %264, label %267

264:                                              ; preds = %252
  %265 = load i32, i32* %6, align 4
  %266 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  store i32 %265, i32* %266, align 8
  br label %267

267:                                              ; preds = %264, %252
  %268 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @USB_P2U(i8* %269)
  %271 = and i32 %270, 3
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %342

273:                                              ; preds = %267
  %274 = load i32, i32* %6, align 4
  %275 = and i32 %274, -4
  store i32 %275, i32* %11, align 4
  %276 = load i32, i32* %11, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %295

278:                                              ; preds = %273
  %279 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %280 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %283 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %286 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @MUSB2_REG_EPFIFO(i32 %287)
  %289 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %290 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sdiv i32 %292, 4
  %294 = call i32 @bus_space_read_multi_4(i32 %281, i32 %284, i32 %288, i8* %291, i32 %293)
  br label %295

295:                                              ; preds = %278, %273
  %296 = load i32, i32* %6, align 4
  %297 = and i32 %296, 3
  store i32 %297, i32* %11, align 4
  %298 = load i32, i32* %11, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %320

300:                                              ; preds = %295
  %301 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %302 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %305 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %308 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @MUSB2_REG_EPFIFO(i32 %309)
  %311 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %312 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 8
  %314 = load i32, i32* %6, align 4
  %315 = sdiv i32 %314, 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i8, i8* %313, i64 %316
  %318 = load i32, i32* %11, align 4
  %319 = call i32 @bus_space_read_multi_1(i32 %303, i32 %306, i32 %310, i8* %317, i32 %318)
  br label %320

320:                                              ; preds = %300, %295
  %321 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %322 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %321, i32 0, i32 12
  %323 = load i32, i32* %322, align 4
  %324 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %325 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %324, i32 0, i32 11
  %326 = load i32, i32* %325, align 4
  %327 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %328 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %327, i32 0, i32 0
  %329 = load i8*, i8** %328, align 8
  %330 = load i32, i32* %6, align 4
  %331 = call i32 @usbd_copy_in(i32 %323, i32 %326, i8* %329, i32 %330)
  %332 = load i32, i32* %6, align 4
  %333 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %334 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %333, i32 0, i32 11
  %335 = load i32, i32* %334, align 4
  %336 = add nsw i32 %335, %332
  store i32 %336, i32* %334, align 4
  %337 = load i32, i32* %6, align 4
  %338 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %339 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %338, i32 0, i32 10
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %340, %337
  store i32 %341, i32* %339, align 4
  br label %411

342:                                              ; preds = %267
  %343 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = icmp sge i32 %344, 4
  br i1 %345, label %346, label %379

346:                                              ; preds = %342
  %347 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %348 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %347, i32 0, i32 2
  %349 = load i32, i32* %348, align 4
  %350 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %351 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 8
  %353 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %354 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %353, i32 0, i32 0
  %355 = load i32, i32* %354, align 4
  %356 = call i32 @MUSB2_REG_EPFIFO(i32 %355)
  %357 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %358 = load i8*, i8** %357, align 8
  %359 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %360 = load i32, i32* %359, align 8
  %361 = sdiv i32 %360, 4
  %362 = call i32 @bus_space_read_multi_4(i32 %349, i32 %352, i32 %356, i8* %358, i32 %361)
  %363 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = and i32 %364, -4
  store i32 %365, i32* %11, align 4
  %366 = load i32, i32* %11, align 4
  %367 = load i32, i32* %6, align 4
  %368 = sub nsw i32 %367, %366
  store i32 %368, i32* %6, align 4
  %369 = load i32, i32* %11, align 4
  %370 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %371 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %370, i32 0, i32 11
  %372 = load i32, i32* %371, align 4
  %373 = add nsw i32 %372, %369
  store i32 %373, i32* %371, align 4
  %374 = load i32, i32* %11, align 4
  %375 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %376 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %375, i32 0, i32 10
  %377 = load i32, i32* %376, align 4
  %378 = sub nsw i32 %377, %374
  store i32 %378, i32* %376, align 4
  br label %249

379:                                              ; preds = %342
  %380 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %381 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %380, i32 0, i32 2
  %382 = load i32, i32* %381, align 4
  %383 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %384 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 8
  %386 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %387 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 4
  %389 = call i32 @MUSB2_REG_EPFIFO(i32 %388)
  %390 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 1
  %391 = load i8*, i8** %390, align 8
  %392 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @bus_space_read_multi_1(i32 %382, i32 %385, i32 %389, i8* %391, i32 %393)
  %395 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %396 = load i32, i32* %395, align 8
  %397 = load i32, i32* %6, align 4
  %398 = sub nsw i32 %397, %396
  store i32 %398, i32* %6, align 4
  %399 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %402 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %401, i32 0, i32 11
  %403 = load i32, i32* %402, align 4
  %404 = add nsw i32 %403, %400
  store i32 %404, i32* %402, align 4
  %405 = getelementptr inbounds %struct.usb_page_search, %struct.usb_page_search* %4, i32 0, i32 0
  %406 = load i32, i32* %405, align 8
  %407 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %408 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %407, i32 0, i32 10
  %409 = load i32, i32* %408, align 4
  %410 = sub nsw i32 %409, %406
  store i32 %410, i32* %408, align 4
  br label %249

411:                                              ; preds = %320, %249
  %412 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %413 = load i32, i32* @MUSB2_REG_RXCSRL, align 4
  %414 = call i32 @MUSB2_WRITE_1(%struct.musbotg_softc* %412, i32 %413, i32 0)
  %415 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %416 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %415, i32 0, i32 10
  %417 = load i32, i32* %416, align 4
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %422, label %419

419:                                              ; preds = %411
  %420 = load i32, i32* %10, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %432

422:                                              ; preds = %419, %411
  %423 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %424 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %423, i32 0, i32 9
  %425 = load i32, i32* %424, align 4
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %431

427:                                              ; preds = %422
  %428 = load %struct.musbotg_softc*, %struct.musbotg_softc** %5, align 8
  %429 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %430 = call i32 @musbotg_channel_free(%struct.musbotg_softc* %428, %struct.musbotg_td* %429)
  store i32 0, i32* %2, align 4
  br label %440

431:                                              ; preds = %422
  br label %432

432:                                              ; preds = %431, %419
  %433 = load %struct.musbotg_td*, %struct.musbotg_td** %3, align 8
  %434 = getelementptr inbounds %struct.musbotg_td, %struct.musbotg_td* %433, i32 0, i32 1
  store i32 0, i32* %434, align 4
  %435 = load i32, i32* %9, align 4
  %436 = add nsw i32 %435, -1
  store i32 %436, i32* %9, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %438, label %439

438:                                              ; preds = %432
  br label %43

439:                                              ; preds = %432
  store i32 1, i32* %2, align 4
  br label %440

440:                                              ; preds = %439, %427, %242, %229, %204, %195, %130, %31
  %441 = load i32, i32* %2, align 4
  ret i32 %441
}

declare dso_local %struct.musbotg_softc* @MUSBOTG_PC2SC(i32) #1

declare dso_local i32 @musbotg_channel_alloc(%struct.musbotg_softc*, %struct.musbotg_td*, i32) #1

declare dso_local i32 @DPRINTFN(i32, i8*, ...) #1

declare dso_local i32 @MUSB2_WRITE_1(%struct.musbotg_softc*, i32, i32) #1

declare dso_local i32 @MUSB2_READ_1(%struct.musbotg_softc*, i32) #1

declare dso_local i32 @MUSB2_REG_RXFADDR(i32) #1

declare dso_local i32 @MUSB2_REG_RXHADDR(i32) #1

declare dso_local i32 @MUSB2_REG_RXHUBPORT(i32) #1

declare dso_local i32 @MUSB2_WRITE_2(%struct.musbotg_softc*, i32, i32) #1

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
