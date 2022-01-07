; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rc/extr_rc.c_rc_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, %struct.rc_chans* }
%struct.rc_chans = type { i32, i32, i32, i32, i32, %struct.rc_softc* }
%struct.rc_softc = type { i32 }
%struct.termios = type { i32, i32, i32, i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@CD180_CAR = common dso_local global i32 0, align 4
@CCR_ResetChan = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@TS_CAN_BYPASS_L_RINT = common dso_local global i32 0, align 4
@CD180_RBPRL = common dso_local global i32 0, align 4
@CD180_RBPRH = common dso_local global i32 0, align 4
@CD180_TBPRL = common dso_local global i32 0, align 4
@CD180_TBPRH = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@CD180_RTPR = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@COR1_5BITS = common dso_local global i32 0, align 4
@COR1_6BITS = common dso_local global i32 0, align 4
@COR1_7BITS = common dso_local global i32 0, align 4
@COR1_8BITS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@COR1_NORMPAR = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@COR1_ODDP = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@COR1_Ignore = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@COR1_2SB = common dso_local global i32 0, align 4
@CD180_COR1 = common dso_local global i32 0, align 4
@CD180_NFIFO = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@VSTART = common dso_local global i64 0, align 8
@IXANY = common dso_local global i32 0, align 4
@COR3_SCDE = common dso_local global i32 0, align 4
@COR3_FCT = common dso_local global i32 0, align 4
@CD180_COR3 = common dso_local global i32 0, align 4
@RC_CTSFLOW = common dso_local global i32 0, align 4
@RC_SEND_RDY = common dso_local global i32 0, align 4
@CCTS_OFLOW = common dso_local global i32 0, align 4
@COR2_CtsAE = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@RC_OSUSP = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@RC_RTSFLOW = common dso_local global i32 0, align 4
@CD180_SCHR1 = common dso_local global i32 0, align 4
@CD180_SCHR2 = common dso_local global i32 0, align 4
@COR2_TxIBE = common dso_local global i32 0, align 4
@COR2_IXM = common dso_local global i32 0, align 4
@CD180_COR2 = common dso_local global i32 0, align 4
@CCR_CORCHG1 = common dso_local global i32 0, align 4
@CCR_CORCHG2 = common dso_local global i32 0, align 4
@CCR_CORCHG3 = common dso_local global i32 0, align 4
@CLOCAL = common dso_local global i32 0, align 4
@MCOR1_CDzd = common dso_local global i32 0, align 4
@MCOR1_CTSzd = common dso_local global i32 0, align 4
@CD180_MCOR1 = common dso_local global i32 0, align 4
@MCOR2_CDod = common dso_local global i32 0, align 4
@MCOR2_CTSod = common dso_local global i32 0, align 4
@CD180_MCOR2 = common dso_local global i32 0, align 4
@CCR_XMTREN = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CCR_RCVREN = common dso_local global i32 0, align 4
@CCR_RCVRDIS = common dso_local global i32 0, align 4
@IER_CD = common dso_local global i32 0, align 4
@IER_CTS = common dso_local global i32 0, align 4
@IER_RxData = common dso_local global i32 0, align 4
@TS_BUSY = common dso_local global i32 0, align 4
@IER_TxRdy = common dso_local global i32 0, align 4
@MSVR_CTS = common dso_local global i32 0, align 4
@CD180_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.termios*)* @rc_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_param(%struct.tty* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca %struct.rc_softc*, align 8
  %7 = alloca %struct.rc_chans*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %17 = load %struct.termios*, %struct.termios** %5, align 8
  %18 = getelementptr inbounds %struct.termios, %struct.termios* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %36, label %21

21:                                               ; preds = %2
  %22 = load %struct.termios*, %struct.termios** %5, align 8
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp sgt i32 %24, 76800
  br i1 %25, label %36, label %26

26:                                               ; preds = %21
  %27 = load %struct.termios*, %struct.termios** %5, align 8
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = load %struct.termios*, %struct.termios** %5, align 8
  %33 = getelementptr inbounds %struct.termios, %struct.termios* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 76800
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %26, %21, %2
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %582

38:                                               ; preds = %31
  %39 = load %struct.termios*, %struct.termios** %5, align 8
  %40 = getelementptr inbounds %struct.termios, %struct.termios* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.termios*, %struct.termios** %5, align 8
  %45 = getelementptr inbounds %struct.termios, %struct.termios* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.termios*, %struct.termios** %5, align 8
  %48 = getelementptr inbounds %struct.termios, %struct.termios* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %38
  %50 = load %struct.termios*, %struct.termios** %5, align 8
  %51 = getelementptr inbounds %struct.termios, %struct.termios* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @RC_BRD(i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.termios*, %struct.termios** %5, align 8
  %55 = getelementptr inbounds %struct.termios, %struct.termios* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @RC_BRD(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load %struct.tty*, %struct.tty** %4, align 8
  %59 = getelementptr inbounds %struct.tty, %struct.tty* %58, i32 0, i32 1
  %60 = load %struct.rc_chans*, %struct.rc_chans** %59, align 8
  store %struct.rc_chans* %60, %struct.rc_chans** %7, align 8
  %61 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %62 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %61, i32 0, i32 5
  %63 = load %struct.rc_softc*, %struct.rc_softc** %62, align 8
  store %struct.rc_softc* %63, %struct.rc_softc** %6, align 8
  %64 = call i32 (...) @spltty()
  store i32 %64, i32* %10, align 4
  %65 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %66 = load i32, i32* @CD180_CAR, align 4
  %67 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %68 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @rcout(%struct.rc_softc* %65, i32 %66, i32 %69)
  %71 = load %struct.termios*, %struct.termios** %5, align 8
  %72 = getelementptr inbounds %struct.termios, %struct.termios* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %49
  %76 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %77 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %78 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @CCR_ResetChan, align 4
  %81 = call i32 @CCRCMD(%struct.rc_softc* %76, i32 %79, i32 %80)
  %82 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %83 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %84 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @WAITFORCCR(%struct.rc_softc* %82, i32 %85)
  %87 = load %struct.tty*, %struct.tty** %4, align 8
  %88 = load i32, i32* @SER_DTR, align 4
  %89 = call i32 @rc_modem(%struct.tty* %87, i32 0, i32 %88)
  br label %90

90:                                               ; preds = %75, %49
  %91 = load i32, i32* @TS_CAN_BYPASS_L_RINT, align 4
  %92 = xor i32 %91, -1
  %93 = load %struct.tty*, %struct.tty** %4, align 8
  %94 = getelementptr inbounds %struct.tty, %struct.tty* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = and i32 %95, %92
  store i32 %96, i32* %94, align 8
  %97 = load %struct.termios*, %struct.termios** %5, align 8
  %98 = getelementptr inbounds %struct.termios, %struct.termios* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %12, align 4
  %100 = load %struct.termios*, %struct.termios** %5, align 8
  %101 = getelementptr inbounds %struct.termios, %struct.termios* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %13, align 4
  %103 = load %struct.termios*, %struct.termios** %5, align 8
  %104 = getelementptr inbounds %struct.termios, %struct.termios* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %90
  %109 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %110 = load i32, i32* @CD180_RBPRL, align 4
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 255
  %113 = call i32 @rcout(%struct.rc_softc* %109, i32 %110, i32 %112)
  %114 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %115 = load i32, i32* @CD180_RBPRH, align 4
  %116 = load i32, i32* %8, align 4
  %117 = ashr i32 %116, 8
  %118 = call i32 @rcout(%struct.rc_softc* %114, i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %108, %90
  %120 = load i32, i32* %9, align 4
  %121 = icmp sgt i32 %120, 0
  br i1 %121, label %122, label %133

122:                                              ; preds = %119
  %123 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %124 = load i32, i32* @CD180_TBPRL, align 4
  %125 = load i32, i32* %9, align 4
  %126 = and i32 %125, 255
  %127 = call i32 @rcout(%struct.rc_softc* %123, i32 %124, i32 %126)
  %128 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %129 = load i32, i32* @CD180_TBPRH, align 4
  %130 = load i32, i32* %9, align 4
  %131 = ashr i32 %130, 8
  %132 = call i32 @rcout(%struct.rc_softc* %128, i32 %129, i32 %131)
  br label %133

133:                                              ; preds = %122, %119
  %134 = load %struct.termios*, %struct.termios** %5, align 8
  %135 = getelementptr inbounds %struct.termios, %struct.termios* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp sgt i32 %136, 0
  br i1 %137, label %138, label %201

138:                                              ; preds = %133
  %139 = load %struct.termios*, %struct.termios** %5, align 8
  %140 = getelementptr inbounds %struct.termios, %struct.termios* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp sgt i32 %141, 2400
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %150

144:                                              ; preds = %138
  %145 = load %struct.termios*, %struct.termios** %5, align 8
  %146 = getelementptr inbounds %struct.termios, %struct.termios* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = sdiv i32 10000, %147
  %149 = add nsw i32 %148, 1
  br label %150

150:                                              ; preds = %144, %143
  %151 = phi i32 [ 5, %143 ], [ %149, %144 ]
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* @ICANON, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %190, label %156

156:                                              ; preds = %150
  %157 = load %struct.termios*, %struct.termios** %5, align 8
  %158 = getelementptr inbounds %struct.termios, %struct.termios* %157, i32 0, i32 5
  %159 = load i32*, i32** %158, align 8
  %160 = load i64, i64* @VMIN, align 8
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %190

164:                                              ; preds = %156
  %165 = load %struct.termios*, %struct.termios** %5, align 8
  %166 = getelementptr inbounds %struct.termios, %struct.termios* %165, i32 0, i32 5
  %167 = load i32*, i32** %166, align 8
  %168 = load i64, i64* @VTIME, align 8
  %169 = getelementptr inbounds i32, i32* %167, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %190

172:                                              ; preds = %164
  %173 = load %struct.termios*, %struct.termios** %5, align 8
  %174 = getelementptr inbounds %struct.termios, %struct.termios* %173, i32 0, i32 5
  %175 = load i32*, i32** %174, align 8
  %176 = load i64, i64* @VTIME, align 8
  %177 = getelementptr inbounds i32, i32* %175, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = mul nsw i32 %178, 10
  %180 = load i32, i32* %16, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %182, label %190

182:                                              ; preds = %172
  %183 = load %struct.termios*, %struct.termios** %5, align 8
  %184 = getelementptr inbounds %struct.termios, %struct.termios* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = load i64, i64* @VTIME, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = mul nsw i32 %188, 10
  store i32 %189, i32* %16, align 4
  br label %190

190:                                              ; preds = %182, %172, %164, %156, %150
  %191 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %192 = load i32, i32* @CD180_RTPR, align 4
  %193 = load i32, i32* %16, align 4
  %194 = icmp sle i32 %193, 255
  br i1 %194, label %195, label %197

195:                                              ; preds = %190
  %196 = load i32, i32* %16, align 4
  br label %198

197:                                              ; preds = %190
  br label %198

198:                                              ; preds = %197, %195
  %199 = phi i32 [ %196, %195 ], [ 255, %197 ]
  %200 = call i32 @rcout(%struct.rc_softc* %191, i32 %192, i32 %199)
  br label %201

201:                                              ; preds = %198, %133
  %202 = load i32, i32* %12, align 4
  %203 = load i32, i32* @CSIZE, align 4
  %204 = and i32 %202, %203
  switch i32 %204, label %211 [
    i32 131, label %205
    i32 130, label %207
    i32 129, label %209
    i32 128, label %212
  ]

205:                                              ; preds = %201
  %206 = load i32, i32* @COR1_5BITS, align 4
  store i32 %206, i32* %11, align 4
  br label %214

207:                                              ; preds = %201
  %208 = load i32, i32* @COR1_6BITS, align 4
  store i32 %208, i32* %11, align 4
  br label %214

209:                                              ; preds = %201
  %210 = load i32, i32* @COR1_7BITS, align 4
  store i32 %210, i32* %11, align 4
  br label %214

211:                                              ; preds = %201
  br label %212

212:                                              ; preds = %201, %211
  %213 = load i32, i32* @COR1_8BITS, align 4
  store i32 %213, i32* %11, align 4
  br label %214

214:                                              ; preds = %212, %209, %207, %205
  %215 = load i32, i32* %12, align 4
  %216 = load i32, i32* @PARENB, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %241

219:                                              ; preds = %214
  %220 = load i32, i32* @COR1_NORMPAR, align 4
  %221 = load i32, i32* %11, align 4
  %222 = or i32 %221, %220
  store i32 %222, i32* %11, align 4
  %223 = load i32, i32* %12, align 4
  %224 = load i32, i32* @PARODD, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %231

227:                                              ; preds = %219
  %228 = load i32, i32* @COR1_ODDP, align 4
  %229 = load i32, i32* %11, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %11, align 4
  br label %231

231:                                              ; preds = %227, %219
  %232 = load i32, i32* %12, align 4
  %233 = load i32, i32* @INPCK, align 4
  %234 = and i32 %232, %233
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %240, label %236

236:                                              ; preds = %231
  %237 = load i32, i32* @COR1_Ignore, align 4
  %238 = load i32, i32* %11, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %11, align 4
  br label %240

240:                                              ; preds = %236, %231
  br label %245

241:                                              ; preds = %214
  %242 = load i32, i32* @COR1_Ignore, align 4
  %243 = load i32, i32* %11, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %11, align 4
  br label %245

245:                                              ; preds = %241, %240
  %246 = load i32, i32* %12, align 4
  %247 = load i32, i32* @CSTOPB, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* @COR1_2SB, align 4
  %252 = load i32, i32* %11, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %11, align 4
  br label %254

254:                                              ; preds = %250, %245
  %255 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %256 = load i32, i32* @CD180_COR1, align 4
  %257 = load i32, i32* %11, align 4
  %258 = call i32 @rcout(%struct.rc_softc* %255, i32 %256, i32 %257)
  %259 = load %struct.termios*, %struct.termios** %5, align 8
  %260 = getelementptr inbounds %struct.termios, %struct.termios* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp sle i32 %261, 4800
  br i1 %262, label %263, label %264

263:                                              ; preds = %254
  br label %267

264:                                              ; preds = %254
  %265 = load i32, i32* @CD180_NFIFO, align 4
  %266 = sdiv i32 %265, 2
  br label %267

267:                                              ; preds = %264, %263
  %268 = phi i32 [ 1, %263 ], [ %266, %264 ]
  store i32 %268, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %269 = load i32, i32* %13, align 4
  %270 = load i32, i32* @IXOFF, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %302

273:                                              ; preds = %267
  %274 = load %struct.termios*, %struct.termios** %5, align 8
  %275 = getelementptr inbounds %struct.termios, %struct.termios* %274, i32 0, i32 5
  %276 = load i32*, i32** %275, align 8
  %277 = load i64, i64* @VSTOP, align 8
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @_POSIX_VDISABLE, align 4
  %281 = icmp ne i32 %279, %280
  br i1 %281, label %282, label %302

282:                                              ; preds = %273
  %283 = load %struct.termios*, %struct.termios** %5, align 8
  %284 = getelementptr inbounds %struct.termios, %struct.termios* %283, i32 0, i32 5
  %285 = load i32*, i32** %284, align 8
  %286 = load i64, i64* @VSTART, align 8
  %287 = getelementptr inbounds i32, i32* %285, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = load i32, i32* @_POSIX_VDISABLE, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %296, label %291

291:                                              ; preds = %282
  %292 = load i32, i32* %13, align 4
  %293 = load i32, i32* @IXANY, align 4
  %294 = and i32 %292, %293
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %302

296:                                              ; preds = %291, %282
  store i32 1, i32* %15, align 4
  %297 = load i32, i32* @COR3_SCDE, align 4
  %298 = load i32, i32* @COR3_FCT, align 4
  %299 = or i32 %297, %298
  %300 = load i32, i32* %11, align 4
  %301 = or i32 %300, %299
  store i32 %301, i32* %11, align 4
  br label %302

302:                                              ; preds = %296, %291, %273, %267
  %303 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %304 = load i32, i32* @CD180_COR3, align 4
  %305 = load i32, i32* %11, align 4
  %306 = call i32 @rcout(%struct.rc_softc* %303, i32 %304, i32 %305)
  store i32 0, i32* %11, align 4
  %307 = load i32, i32* @RC_CTSFLOW, align 4
  %308 = load i32, i32* @RC_SEND_RDY, align 4
  %309 = or i32 %307, %308
  %310 = xor i32 %309, -1
  %311 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %312 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = and i32 %313, %310
  store i32 %314, i32* %312, align 4
  %315 = load i32, i32* %12, align 4
  %316 = load i32, i32* @CCTS_OFLOW, align 4
  %317 = and i32 %315, %316
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %328

319:                                              ; preds = %302
  %320 = load i32, i32* @RC_CTSFLOW, align 4
  %321 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %322 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = or i32 %323, %320
  store i32 %324, i32* %322, align 4
  %325 = load i32, i32* @COR2_CtsAE, align 4
  %326 = load i32, i32* %11, align 4
  %327 = or i32 %326, %325
  store i32 %327, i32* %11, align 4
  br label %334

328:                                              ; preds = %302
  %329 = load i32, i32* @RC_SEND_RDY, align 4
  %330 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %331 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = or i32 %332, %329
  store i32 %333, i32* %331, align 4
  br label %334

334:                                              ; preds = %328, %319
  %335 = load %struct.tty*, %struct.tty** %4, align 8
  %336 = getelementptr inbounds %struct.tty, %struct.tty* %335, i32 0, i32 0
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @TS_TTSTOP, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %347

341:                                              ; preds = %334
  %342 = load i32, i32* @RC_OSUSP, align 4
  %343 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %344 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 4
  br label %354

347:                                              ; preds = %334
  %348 = load i32, i32* @RC_OSUSP, align 4
  %349 = xor i32 %348, -1
  %350 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %351 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = and i32 %352, %349
  store i32 %353, i32* %351, align 4
  br label %354

354:                                              ; preds = %347, %341
  %355 = load i32, i32* %12, align 4
  %356 = load i32, i32* @CRTS_IFLOW, align 4
  %357 = and i32 %355, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %365

359:                                              ; preds = %354
  %360 = load i32, i32* @RC_RTSFLOW, align 4
  %361 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %362 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = or i32 %363, %360
  store i32 %364, i32* %362, align 4
  br label %372

365:                                              ; preds = %354
  %366 = load i32, i32* @RC_RTSFLOW, align 4
  %367 = xor i32 %366, -1
  %368 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %369 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = and i32 %370, %367
  store i32 %371, i32* %369, align 4
  br label %372

372:                                              ; preds = %365, %359
  %373 = load i32, i32* %15, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %416

375:                                              ; preds = %372
  %376 = load %struct.termios*, %struct.termios** %5, align 8
  %377 = getelementptr inbounds %struct.termios, %struct.termios* %376, i32 0, i32 5
  %378 = load i32*, i32** %377, align 8
  %379 = load i64, i64* @VSTART, align 8
  %380 = getelementptr inbounds i32, i32* %378, i64 %379
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @_POSIX_VDISABLE, align 4
  %383 = icmp ne i32 %381, %382
  br i1 %383, label %384, label %394

384:                                              ; preds = %375
  %385 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %386 = load i32, i32* @CD180_SCHR1, align 4
  %387 = load %struct.termios*, %struct.termios** %5, align 8
  %388 = getelementptr inbounds %struct.termios, %struct.termios* %387, i32 0, i32 5
  %389 = load i32*, i32** %388, align 8
  %390 = load i64, i64* @VSTART, align 8
  %391 = getelementptr inbounds i32, i32* %389, i64 %390
  %392 = load i32, i32* %391, align 4
  %393 = call i32 @rcout(%struct.rc_softc* %385, i32 %386, i32 %392)
  br label %394

394:                                              ; preds = %384, %375
  %395 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %396 = load i32, i32* @CD180_SCHR2, align 4
  %397 = load %struct.termios*, %struct.termios** %5, align 8
  %398 = getelementptr inbounds %struct.termios, %struct.termios* %397, i32 0, i32 5
  %399 = load i32*, i32** %398, align 8
  %400 = load i64, i64* @VSTOP, align 8
  %401 = getelementptr inbounds i32, i32* %399, i64 %400
  %402 = load i32, i32* %401, align 4
  %403 = call i32 @rcout(%struct.rc_softc* %395, i32 %396, i32 %402)
  %404 = load i32, i32* @COR2_TxIBE, align 4
  %405 = load i32, i32* %11, align 4
  %406 = or i32 %405, %404
  store i32 %406, i32* %11, align 4
  %407 = load i32, i32* %13, align 4
  %408 = load i32, i32* @IXANY, align 4
  %409 = and i32 %407, %408
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %411, label %415

411:                                              ; preds = %394
  %412 = load i32, i32* @COR2_IXM, align 4
  %413 = load i32, i32* %11, align 4
  %414 = or i32 %413, %412
  store i32 %414, i32* %11, align 4
  br label %415

415:                                              ; preds = %411, %394
  br label %416

416:                                              ; preds = %415, %372
  %417 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %418 = load i32, i32* @CD180_COR2, align 4
  %419 = load i32, i32* %11, align 4
  %420 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %421 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %420, i32 0, i32 2
  store i32 %419, i32* %421, align 8
  %422 = call i32 @rcout(%struct.rc_softc* %417, i32 %418, i32 %419)
  %423 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %424 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %425 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load i32, i32* @CCR_CORCHG1, align 4
  %428 = load i32, i32* @CCR_CORCHG2, align 4
  %429 = or i32 %427, %428
  %430 = load i32, i32* @CCR_CORCHG3, align 4
  %431 = or i32 %429, %430
  %432 = call i32 @CCRCMD(%struct.rc_softc* %423, i32 %426, i32 %431)
  %433 = load %struct.tty*, %struct.tty** %4, align 8
  %434 = call i32 @ttyldoptim(%struct.tty* %433)
  %435 = load i32, i32* %12, align 4
  %436 = load i32, i32* @CLOCAL, align 4
  %437 = and i32 %435, %436
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %416
  br label %442

440:                                              ; preds = %416
  %441 = load i32, i32* @MCOR1_CDzd, align 4
  br label %442

442:                                              ; preds = %440, %439
  %443 = phi i32 [ 0, %439 ], [ %441, %440 ]
  store i32 %443, i32* %11, align 4
  %444 = load i32, i32* %12, align 4
  %445 = load i32, i32* @CCTS_OFLOW, align 4
  %446 = and i32 %444, %445
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %448, label %452

448:                                              ; preds = %442
  %449 = load i32, i32* @MCOR1_CTSzd, align 4
  %450 = load i32, i32* %11, align 4
  %451 = or i32 %450, %449
  store i32 %451, i32* %11, align 4
  br label %452

452:                                              ; preds = %448, %442
  %453 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %454 = load i32, i32* @CD180_MCOR1, align 4
  %455 = load i32, i32* %11, align 4
  %456 = call i32 @rcout(%struct.rc_softc* %453, i32 %454, i32 %455)
  %457 = load i32, i32* %12, align 4
  %458 = load i32, i32* @CLOCAL, align 4
  %459 = and i32 %457, %458
  %460 = icmp ne i32 %459, 0
  br i1 %460, label %461, label %462

461:                                              ; preds = %452
  br label %464

462:                                              ; preds = %452
  %463 = load i32, i32* @MCOR2_CDod, align 4
  br label %464

464:                                              ; preds = %462, %461
  %465 = phi i32 [ 0, %461 ], [ %463, %462 ]
  store i32 %465, i32* %11, align 4
  %466 = load i32, i32* %12, align 4
  %467 = load i32, i32* @CCTS_OFLOW, align 4
  %468 = and i32 %466, %467
  %469 = icmp ne i32 %468, 0
  br i1 %469, label %470, label %474

470:                                              ; preds = %464
  %471 = load i32, i32* @MCOR2_CTSod, align 4
  %472 = load i32, i32* %11, align 4
  %473 = or i32 %472, %471
  store i32 %473, i32* %11, align 4
  br label %474

474:                                              ; preds = %470, %464
  %475 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %476 = load i32, i32* @CD180_MCOR2, align 4
  %477 = load i32, i32* %11, align 4
  %478 = call i32 @rcout(%struct.rc_softc* %475, i32 %476, i32 %477)
  %479 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %480 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %481 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = load i32, i32* @CCR_XMTREN, align 4
  %484 = load i32, i32* %12, align 4
  %485 = load i32, i32* @CREAD, align 4
  %486 = and i32 %484, %485
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %488, label %490

488:                                              ; preds = %474
  %489 = load i32, i32* @CCR_RCVREN, align 4
  br label %492

490:                                              ; preds = %474
  %491 = load i32, i32* @CCR_RCVRDIS, align 4
  br label %492

492:                                              ; preds = %490, %488
  %493 = phi i32 [ %489, %488 ], [ %491, %490 ]
  %494 = or i32 %483, %493
  %495 = call i32 @CCRCMD(%struct.rc_softc* %479, i32 %482, i32 %494)
  %496 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %497 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %498 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %497, i32 0, i32 0
  %499 = load i32, i32* %498, align 8
  %500 = call i32 @WAITFORCCR(%struct.rc_softc* %496, i32 %499)
  %501 = load i32, i32* %12, align 4
  %502 = load i32, i32* @CLOCAL, align 4
  %503 = and i32 %501, %502
  %504 = icmp ne i32 %503, 0
  br i1 %504, label %505, label %506

505:                                              ; preds = %492
  br label %508

506:                                              ; preds = %492
  %507 = load i32, i32* @IER_CD, align 4
  br label %508

508:                                              ; preds = %506, %505
  %509 = phi i32 [ 0, %505 ], [ %507, %506 ]
  %510 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %511 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %510, i32 0, i32 3
  store i32 %509, i32* %511, align 4
  %512 = load i32, i32* %12, align 4
  %513 = load i32, i32* @CCTS_OFLOW, align 4
  %514 = and i32 %512, %513
  %515 = icmp ne i32 %514, 0
  br i1 %515, label %516, label %522

516:                                              ; preds = %508
  %517 = load i32, i32* @IER_CTS, align 4
  %518 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %519 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %518, i32 0, i32 3
  %520 = load i32, i32* %519, align 4
  %521 = or i32 %520, %517
  store i32 %521, i32* %519, align 4
  br label %522

522:                                              ; preds = %516, %508
  %523 = load i32, i32* %12, align 4
  %524 = load i32, i32* @CREAD, align 4
  %525 = and i32 %523, %524
  %526 = icmp ne i32 %525, 0
  br i1 %526, label %527, label %533

527:                                              ; preds = %522
  %528 = load i32, i32* @IER_RxData, align 4
  %529 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %530 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %529, i32 0, i32 3
  %531 = load i32, i32* %530, align 4
  %532 = or i32 %531, %528
  store i32 %532, i32* %530, align 4
  br label %533

533:                                              ; preds = %527, %522
  %534 = load %struct.tty*, %struct.tty** %4, align 8
  %535 = getelementptr inbounds %struct.tty, %struct.tty* %534, i32 0, i32 0
  %536 = load i32, i32* %535, align 8
  %537 = load i32, i32* @TS_BUSY, align 4
  %538 = and i32 %536, %537
  %539 = icmp ne i32 %538, 0
  br i1 %539, label %540, label %546

540:                                              ; preds = %533
  %541 = load i32, i32* @IER_TxRdy, align 4
  %542 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %543 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %542, i32 0, i32 3
  %544 = load i32, i32* %543, align 4
  %545 = or i32 %544, %541
  store i32 %545, i32* %543, align 4
  br label %546

546:                                              ; preds = %540, %533
  %547 = load %struct.termios*, %struct.termios** %5, align 8
  %548 = getelementptr inbounds %struct.termios, %struct.termios* %547, i32 0, i32 0
  %549 = load i32, i32* %548, align 8
  %550 = icmp ne i32 %549, 0
  br i1 %550, label %551, label %555

551:                                              ; preds = %546
  %552 = load %struct.tty*, %struct.tty** %4, align 8
  %553 = load i32, i32* @SER_DTR, align 4
  %554 = call i32 @rc_modem(%struct.tty* %552, i32 %553, i32 0)
  br label %555

555:                                              ; preds = %551, %546
  %556 = load i32, i32* %12, align 4
  %557 = load i32, i32* @CCTS_OFLOW, align 4
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %573

560:                                              ; preds = %555
  %561 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %562 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %561, i32 0, i32 4
  %563 = load i32, i32* %562, align 8
  %564 = load i32, i32* @MSVR_CTS, align 4
  %565 = and i32 %563, %564
  %566 = icmp ne i32 %565, 0
  br i1 %566, label %567, label %573

567:                                              ; preds = %560
  %568 = load i32, i32* @RC_SEND_RDY, align 4
  %569 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %570 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %569, i32 0, i32 1
  %571 = load i32, i32* %570, align 4
  %572 = or i32 %571, %568
  store i32 %572, i32* %570, align 4
  br label %573

573:                                              ; preds = %567, %560, %555
  %574 = load %struct.rc_softc*, %struct.rc_softc** %6, align 8
  %575 = load i32, i32* @CD180_IER, align 4
  %576 = load %struct.rc_chans*, %struct.rc_chans** %7, align 8
  %577 = getelementptr inbounds %struct.rc_chans, %struct.rc_chans* %576, i32 0, i32 3
  %578 = load i32, i32* %577, align 4
  %579 = call i32 @rcout(%struct.rc_softc* %574, i32 %575, i32 %578)
  %580 = load i32, i32* %10, align 4
  %581 = call i32 @splx(i32 %580)
  store i32 0, i32* %3, align 4
  br label %582

582:                                              ; preds = %573, %36
  %583 = load i32, i32* %3, align 4
  ret i32 %583
}

declare dso_local i32 @RC_BRD(i32) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @rcout(%struct.rc_softc*, i32, i32) #1

declare dso_local i32 @CCRCMD(%struct.rc_softc*, i32, i32) #1

declare dso_local i32 @WAITFORCCR(%struct.rc_softc*, i32) #1

declare dso_local i32 @rc_modem(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttyldoptim(%struct.tty*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
