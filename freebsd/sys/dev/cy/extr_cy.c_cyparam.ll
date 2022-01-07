; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyparam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cy/extr_cy.c_cyparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i64, i32, %struct.com_s* }
%struct.com_s = type { i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32 }
%struct.termios = type { i64, i64, i32, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@CD1400_RBPR = common dso_local global i32 0, align 4
@CD1400_RCOR = common dso_local global i32 0, align 4
@CD1400_TBPR = common dso_local global i32 0, align 4
@CD1400_TCOR = common dso_local global i32 0, align 4
@CD1400_CCR_CMDCHANCTL = common dso_local global i32 0, align 4
@CD1400_CCR_XMTEN = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CD1400_CCR_RCVEN = common dso_local global i32 0, align 4
@CD1400_CCR_RCVDIS = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@CD1400_COR1_PARODD = common dso_local global i32 0, align 4
@CD1400_COR1_PARNORMAL = common dso_local global i32 0, align 4
@INPCK = common dso_local global i32 0, align 4
@CD1400_COR1_NOINPCK = common dso_local global i32 0, align 4
@CSTOPB = common dso_local global i32 0, align 4
@CD1400_COR1_STOP2 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CD1400_COR1_CS5 = common dso_local global i32 0, align 4
@CD1400_COR1_CS6 = common dso_local global i32 0, align 4
@CD1400_COR1_CS7 = common dso_local global i32 0, align 4
@CD1400_COR1_CS8 = common dso_local global i32 0, align 4
@CD1400_CCR_COR1 = common dso_local global i32 0, align 4
@CD1400_COR1 = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@CD1400_RTPR = common dso_local global i32 0, align 4
@CCTS_OFLOW = common dso_local global i32 0, align 4
@CD1400_COR2_CCTS_OFLOW = common dso_local global i32 0, align 4
@CD1400_CCR_COR2 = common dso_local global i32 0, align 4
@CD1400_COR2 = common dso_local global i32 0, align 4
@RxFifoThreshold = common dso_local global i32 0, align 4
@CD1400_CCR_COR3 = common dso_local global i32 0, align 4
@CD1400_COR3 = common dso_local global i32 0, align 4
@CD1400_CCR_CMDCORCHG = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@CD1400_COR4_IGNCR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@CD1400_COR4_IGNBRK = common dso_local global i32 0, align 4
@CD1400_COR4_NOBRKINT = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@CD1400_COR4_PFO_EXCEPTION = common dso_local global i32 0, align 4
@CD1400_COR4 = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@CD1400_COR5_ISTRIP = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@CD1400_COR5_LNEXT = common dso_local global i32 0, align 4
@CD1400_COR5 = common dso_local global i32 0, align 4
@CD1400_MCOR1_CDzd = common dso_local global i32 0, align 4
@CD1400_MCOR1 = common dso_local global i32 0, align 4
@CD1400_MCOR2_CDod = common dso_local global i32 0, align 4
@CD1400_MCOR2 = common dso_local global i32 0, align 4
@CS_TTGO = common dso_local global i32 0, align 4
@TS_TTSTOP = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@CS_RTS_IFLOW = common dso_local global i32 0, align 4
@CS_ODEVREADY = common dso_local global i32 0, align 4
@CS_BUSY = common dso_local global i32 0, align 4
@CD1400_SRER_TXRDY = common dso_local global i32 0, align 4
@CD1400_SRER = common dso_local global i32 0, align 4
@CD1400_SRER_TXMPTY = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@CD1400_COR2_IXANY = common dso_local global i32 0, align 4
@CD1400_COR2_IXOFF = common dso_local global i32 0, align 4
@CD1400_COR3_FCT = common dso_local global i32 0, align 4
@CD1400_COR3_SCD12 = common dso_local global i32 0, align 4
@CD1400_COR3_SCD34 = common dso_local global i32 0, align 4
@CD1400_COR4_ICRNL = common dso_local global i32 0, align 4
@CD1400_COR4_INLCR = common dso_local global i32 0, align 4
@CD1400_COR4_PFO_DISCARD = common dso_local global i32 0, align 4
@CD1400_COR4_PFO_ESC = common dso_local global i32 0, align 4
@CD1400_COR4_PFO_NUL = common dso_local global i32 0, align 4
@CD1400_COR5_OCRNL = common dso_local global i32 0, align 4
@CD1400_COR5_ONLCR = common dso_local global i32 0, align 4
@CD1400_MCOR1_CTSzd = common dso_local global i32 0, align 4
@CD1400_MCOR2_CTSod = common dso_local global i32 0, align 4
@CD1400_MSVR2_CTS = common dso_local global i32 0, align 4
@CD1400_SCHR1 = common dso_local global i32 0, align 4
@CD1400_SCHR2 = common dso_local global i32 0, align 4
@CD1400_SCHR3 = common dso_local global i32 0, align 4
@CD1400_SCHR4 = common dso_local global i32 0, align 4
@CS_CTS_OFLOW = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IGNPAR = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@MIN_RTP = common dso_local global i32 0, align 4
@OCRNL = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@VINTR = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@VSTOP = common dso_local global i64 0, align 8
@VSUSP = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, %struct.termios*)* @cyparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyparam(%struct.tty* %0, %struct.termios* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty*, align 8
  %5 = alloca %struct.termios*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.com_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %4, align 8
  store %struct.termios* %1, %struct.termios** %5, align 8
  %19 = load %struct.tty*, %struct.tty** %4, align 8
  %20 = getelementptr inbounds %struct.tty, %struct.tty* %19, i32 0, i32 2
  %21 = load %struct.com_s*, %struct.com_s** %20, align 8
  store %struct.com_s* %21, %struct.com_s** %8, align 8
  %22 = load %struct.com_s*, %struct.com_s** %8, align 8
  %23 = getelementptr inbounds %struct.com_s, %struct.com_s* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CY_CLOCK(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load %struct.termios*, %struct.termios** %5, align 8
  %27 = getelementptr inbounds %struct.termios, %struct.termios* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @cyspeed(i64 %28, i32 %29, i32* %13)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %546

35:                                               ; preds = %2
  %36 = load %struct.termios*, %struct.termios** %5, align 8
  %37 = getelementptr inbounds %struct.termios, %struct.termios* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.termios*, %struct.termios** %5, align 8
  %42 = getelementptr inbounds %struct.termios, %struct.termios* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  br label %48

44:                                               ; preds = %35
  %45 = load %struct.tty*, %struct.tty** %4, align 8
  %46 = getelementptr inbounds %struct.tty, %struct.tty* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  br label %48

48:                                               ; preds = %44, %40
  %49 = phi i64 [ %43, %40 ], [ %47, %44 ]
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @cyspeed(i64 %49, i32 %50, i32* %16)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp sle i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %3, align 4
  br label %546

56:                                               ; preds = %48
  %57 = call i32 (...) @spltty()
  store i32 %57, i32* %18, align 4
  %58 = load %struct.termios*, %struct.termios** %5, align 8
  %59 = getelementptr inbounds %struct.termios, %struct.termios* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.tty*, %struct.tty** %4, align 8
  %64 = load i32, i32* @SER_DTR, align 4
  %65 = call i32 @cymodem(%struct.tty* %63, i32 0, i32 %64)
  br label %70

66:                                               ; preds = %56
  %67 = load %struct.tty*, %struct.tty** %4, align 8
  %68 = load i32, i32* @SER_DTR, align 4
  %69 = call i32 @cymodem(%struct.tty* %67, i32 %68, i32 0)
  br label %70

70:                                               ; preds = %66, %62
  %71 = load %struct.com_s*, %struct.com_s** %8, align 8
  %72 = load %struct.termios*, %struct.termios** %5, align 8
  %73 = getelementptr inbounds %struct.termios, %struct.termios* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 @cysetwater(%struct.com_s* %71, i64 %74)
  %76 = load %struct.com_s*, %struct.com_s** %8, align 8
  %77 = load i32, i32* @CD1400_RBPR, align 4
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @cd_setreg(%struct.com_s* %76, i32 %77, i32 %78)
  %80 = load %struct.com_s*, %struct.com_s** %8, align 8
  %81 = load i32, i32* @CD1400_RCOR, align 4
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @cd_setreg(%struct.com_s* %80, i32 %81, i32 %82)
  %84 = load %struct.com_s*, %struct.com_s** %8, align 8
  %85 = load i32, i32* @CD1400_TBPR, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @cd_setreg(%struct.com_s* %84, i32 %85, i32 %86)
  %88 = load %struct.com_s*, %struct.com_s** %8, align 8
  %89 = load i32, i32* @CD1400_TCOR, align 4
  %90 = load i32, i32* %16, align 4
  %91 = call i32 @cd_setreg(%struct.com_s* %88, i32 %89, i32 %90)
  %92 = load %struct.termios*, %struct.termios** %5, align 8
  %93 = getelementptr inbounds %struct.termios, %struct.termios* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @CD1400_CCR_CMDCHANCTL, align 4
  %96 = load i32, i32* @CD1400_CCR_XMTEN, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @CREAD, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %70
  %103 = load i32, i32* @CD1400_CCR_RCVEN, align 4
  br label %106

104:                                              ; preds = %70
  %105 = load i32, i32* @CD1400_CCR_RCVDIS, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = or i32 %97, %107
  store i32 %108, i32* %17, align 4
  %109 = load i32, i32* %17, align 4
  %110 = load %struct.com_s*, %struct.com_s** %8, align 8
  %111 = getelementptr inbounds %struct.com_s, %struct.com_s* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %106
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.com_s*, %struct.com_s** %8, align 8
  %117 = getelementptr inbounds %struct.com_s, %struct.com_s* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  %118 = load %struct.com_s*, %struct.com_s** %8, align 8
  %119 = load i32, i32* %17, align 4
  %120 = call i32 @cd1400_channel_cmd(%struct.com_s* %118, i32 %119)
  br label %121

121:                                              ; preds = %114, %106
  store i32 0, i32* %17, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @PARENB, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @PARODD, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32, i32* @CD1400_COR1_PARODD, align 4
  %133 = load i32, i32* %17, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %17, align 4
  br label %135

135:                                              ; preds = %131, %126
  %136 = load i32, i32* @CD1400_COR1_PARNORMAL, align 4
  %137 = load i32, i32* %17, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %17, align 4
  br label %139

139:                                              ; preds = %135, %121
  %140 = load %struct.termios*, %struct.termios** %5, align 8
  %141 = getelementptr inbounds %struct.termios, %struct.termios* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* @INPCK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %151, label %147

147:                                              ; preds = %139
  %148 = load i32, i32* @CD1400_COR1_NOINPCK, align 4
  %149 = load i32, i32* %17, align 4
  %150 = or i32 %149, %148
  store i32 %150, i32* %17, align 4
  br label %151

151:                                              ; preds = %147, %139
  store i32 2, i32* %6, align 4
  %152 = load i32, i32* %7, align 4
  %153 = load i32, i32* @CSTOPB, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %151
  %157 = load i32, i32* %6, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %6, align 4
  %159 = load i32, i32* @CD1400_COR1_STOP2, align 4
  %160 = load i32, i32* %17, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %17, align 4
  br label %162

162:                                              ; preds = %156, %151
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @CSIZE, align 4
  %165 = and i32 %163, %164
  switch i32 %165, label %184 [
    i32 130, label %166
    i32 129, label %172
    i32 128, label %178
  ]

166:                                              ; preds = %162
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 5
  store i32 %168, i32* %6, align 4
  %169 = load i32, i32* @CD1400_COR1_CS5, align 4
  %170 = load i32, i32* %17, align 4
  %171 = or i32 %170, %169
  store i32 %171, i32* %17, align 4
  br label %190

172:                                              ; preds = %162
  %173 = load i32, i32* %6, align 4
  %174 = add nsw i32 %173, 6
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* @CD1400_COR1_CS6, align 4
  %176 = load i32, i32* %17, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %17, align 4
  br label %190

178:                                              ; preds = %162
  %179 = load i32, i32* %6, align 4
  %180 = add nsw i32 %179, 7
  store i32 %180, i32* %6, align 4
  %181 = load i32, i32* @CD1400_COR1_CS7, align 4
  %182 = load i32, i32* %17, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %17, align 4
  br label %190

184:                                              ; preds = %162
  %185 = load i32, i32* %6, align 4
  %186 = add nsw i32 %185, 8
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* @CD1400_COR1_CS8, align 4
  %188 = load i32, i32* %17, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %17, align 4
  br label %190

190:                                              ; preds = %184, %178, %172, %166
  store i32 0, i32* %9, align 4
  %191 = load i32, i32* %17, align 4
  %192 = load %struct.com_s*, %struct.com_s** %8, align 8
  %193 = getelementptr inbounds %struct.com_s, %struct.com_s* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = icmp ne i32 %191, %196
  br i1 %197, label %198, label %210

198:                                              ; preds = %190
  %199 = load i32, i32* @CD1400_CCR_COR1, align 4
  %200 = load i32, i32* %9, align 4
  %201 = or i32 %200, %199
  store i32 %201, i32* %9, align 4
  %202 = load %struct.com_s*, %struct.com_s** %8, align 8
  %203 = load i32, i32* @CD1400_COR1, align 4
  %204 = load i32, i32* %17, align 4
  %205 = load %struct.com_s*, %struct.com_s** %8, align 8
  %206 = getelementptr inbounds %struct.com_s, %struct.com_s* %205, i32 0, i32 1
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 0
  store i32 %204, i32* %208, align 4
  %209 = call i32 @cd_setreg(%struct.com_s* %202, i32 %203, i32 %204)
  br label %210

210:                                              ; preds = %198, %190
  %211 = load i32, i32* %6, align 4
  %212 = mul nsw i32 1000, %211
  %213 = load %struct.termios*, %struct.termios** %5, align 8
  %214 = getelementptr inbounds %struct.termios, %struct.termios* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = call i32 @howmany(i32 %212, i64 %215)
  store i32 %216, i32* %14, align 4
  %217 = load i32, i32* %14, align 4
  %218 = icmp slt i32 %217, 5
  br i1 %218, label %219, label %220

219:                                              ; preds = %210
  store i32 5, i32* %14, align 4
  br label %220

220:                                              ; preds = %219, %210
  %221 = load %struct.termios*, %struct.termios** %5, align 8
  %222 = getelementptr inbounds %struct.termios, %struct.termios* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @ICANON, align 4
  %225 = and i32 %223, %224
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %261, label %227

227:                                              ; preds = %220
  %228 = load %struct.termios*, %struct.termios** %5, align 8
  %229 = getelementptr inbounds %struct.termios, %struct.termios* %228, i32 0, i32 3
  %230 = load i32*, i32** %229, align 8
  %231 = load i64, i64* @VMIN, align 8
  %232 = getelementptr inbounds i32, i32* %230, i64 %231
  %233 = load i32, i32* %232, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %261

235:                                              ; preds = %227
  %236 = load %struct.termios*, %struct.termios** %5, align 8
  %237 = getelementptr inbounds %struct.termios, %struct.termios* %236, i32 0, i32 3
  %238 = load i32*, i32** %237, align 8
  %239 = load i64, i64* @VTIME, align 8
  %240 = getelementptr inbounds i32, i32* %238, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %261

243:                                              ; preds = %235
  %244 = load %struct.termios*, %struct.termios** %5, align 8
  %245 = getelementptr inbounds %struct.termios, %struct.termios* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = load i64, i64* @VTIME, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = mul nsw i32 %249, 10
  %251 = load i32, i32* %14, align 4
  %252 = icmp sgt i32 %250, %251
  br i1 %252, label %253, label %261

253:                                              ; preds = %243
  %254 = load %struct.termios*, %struct.termios** %5, align 8
  %255 = getelementptr inbounds %struct.termios, %struct.termios* %254, i32 0, i32 3
  %256 = load i32*, i32** %255, align 8
  %257 = load i64, i64* @VTIME, align 8
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  %259 = load i32, i32* %258, align 4
  %260 = mul nsw i32 %259, 10
  store i32 %260, i32* %14, align 4
  br label %261

261:                                              ; preds = %253, %243, %235, %227, %220
  %262 = load i32, i32* %14, align 4
  %263 = icmp sgt i32 %262, 255
  br i1 %263, label %264, label %265

264:                                              ; preds = %261
  store i32 255, i32* %14, align 4
  br label %265

265:                                              ; preds = %264, %261
  %266 = load %struct.com_s*, %struct.com_s** %8, align 8
  %267 = load i32, i32* @CD1400_RTPR, align 4
  %268 = load i32, i32* %14, align 4
  %269 = call i32 @cd_setreg(%struct.com_s* %266, i32 %267, i32 %268)
  store i32 0, i32* %17, align 4
  %270 = load i32, i32* %7, align 4
  %271 = load i32, i32* @CCTS_OFLOW, align 4
  %272 = and i32 %270, %271
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %278

274:                                              ; preds = %265
  %275 = load i32, i32* @CD1400_COR2_CCTS_OFLOW, align 4
  %276 = load i32, i32* %17, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %17, align 4
  br label %278

278:                                              ; preds = %274, %265
  %279 = call i32 (...) @critical_enter()
  %280 = call i32 (...) @COM_LOCK()
  %281 = load i32, i32* %17, align 4
  %282 = load %struct.com_s*, %struct.com_s** %8, align 8
  %283 = getelementptr inbounds %struct.com_s, %struct.com_s* %282, i32 0, i32 1
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 1
  %286 = load i32, i32* %285, align 4
  %287 = icmp ne i32 %281, %286
  br i1 %287, label %288, label %300

288:                                              ; preds = %278
  %289 = load i32, i32* @CD1400_CCR_COR2, align 4
  %290 = load i32, i32* %9, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %9, align 4
  %292 = load %struct.com_s*, %struct.com_s** %8, align 8
  %293 = load i32, i32* @CD1400_COR2, align 4
  %294 = load i32, i32* %17, align 4
  %295 = load %struct.com_s*, %struct.com_s** %8, align 8
  %296 = getelementptr inbounds %struct.com_s, %struct.com_s* %295, i32 0, i32 1
  %297 = load i32*, i32** %296, align 8
  %298 = getelementptr inbounds i32, i32* %297, i64 1
  store i32 %294, i32* %298, align 4
  %299 = call i32 @cd_setreg(%struct.com_s* %292, i32 %293, i32 %294)
  br label %300

300:                                              ; preds = %288, %278
  %301 = call i32 (...) @COM_UNLOCK()
  %302 = call i32 (...) @critical_exit()
  %303 = load i32, i32* @RxFifoThreshold, align 4
  store i32 %303, i32* %17, align 4
  %304 = load i32, i32* %17, align 4
  %305 = load %struct.com_s*, %struct.com_s** %8, align 8
  %306 = getelementptr inbounds %struct.com_s, %struct.com_s* %305, i32 0, i32 1
  %307 = load i32*, i32** %306, align 8
  %308 = getelementptr inbounds i32, i32* %307, i64 2
  %309 = load i32, i32* %308, align 4
  %310 = icmp ne i32 %304, %309
  br i1 %310, label %311, label %323

311:                                              ; preds = %300
  %312 = load i32, i32* @CD1400_CCR_COR3, align 4
  %313 = load i32, i32* %9, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %9, align 4
  %315 = load %struct.com_s*, %struct.com_s** %8, align 8
  %316 = load i32, i32* @CD1400_COR3, align 4
  %317 = load i32, i32* %17, align 4
  %318 = load %struct.com_s*, %struct.com_s** %8, align 8
  %319 = getelementptr inbounds %struct.com_s, %struct.com_s* %318, i32 0, i32 1
  %320 = load i32*, i32** %319, align 8
  %321 = getelementptr inbounds i32, i32* %320, i64 2
  store i32 %317, i32* %321, align 4
  %322 = call i32 @cd_setreg(%struct.com_s* %315, i32 %316, i32 %317)
  br label %323

323:                                              ; preds = %311, %300
  %324 = load i32, i32* %9, align 4
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %332

326:                                              ; preds = %323
  %327 = load %struct.com_s*, %struct.com_s** %8, align 8
  %328 = load i32, i32* @CD1400_CCR_CMDCORCHG, align 4
  %329 = load i32, i32* %9, align 4
  %330 = or i32 %328, %329
  %331 = call i32 @cd1400_channel_cmd(%struct.com_s* %327, i32 %330)
  br label %332

332:                                              ; preds = %326, %323
  store i32 0, i32* %17, align 4
  %333 = load i32, i32* %12, align 4
  %334 = load i32, i32* @IGNCR, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %332
  %338 = load i32, i32* @CD1400_COR4_IGNCR, align 4
  %339 = load i32, i32* %17, align 4
  %340 = or i32 %339, %338
  store i32 %340, i32* %17, align 4
  br label %341

341:                                              ; preds = %337, %332
  %342 = load i32, i32* %12, align 4
  %343 = load i32, i32* @IGNBRK, align 4
  %344 = and i32 %342, %343
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %352

346:                                              ; preds = %341
  %347 = load i32, i32* @CD1400_COR4_IGNBRK, align 4
  %348 = load i32, i32* @CD1400_COR4_NOBRKINT, align 4
  %349 = or i32 %347, %348
  %350 = load i32, i32* %17, align 4
  %351 = or i32 %350, %349
  store i32 %351, i32* %17, align 4
  br label %352

352:                                              ; preds = %346, %341
  %353 = load i32, i32* %12, align 4
  %354 = load i32, i32* @BRKINT, align 4
  %355 = load i32, i32* @PARMRK, align 4
  %356 = or i32 %354, %355
  %357 = and i32 %353, %356
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %363, label %359

359:                                              ; preds = %352
  %360 = load i32, i32* @CD1400_COR4_NOBRKINT, align 4
  %361 = load i32, i32* %17, align 4
  %362 = or i32 %361, %360
  store i32 %362, i32* %17, align 4
  br label %363

363:                                              ; preds = %359, %352
  %364 = load i32, i32* @CD1400_COR4_PFO_EXCEPTION, align 4
  %365 = load i32, i32* %17, align 4
  %366 = or i32 %365, %364
  store i32 %366, i32* %17, align 4
  %367 = load %struct.com_s*, %struct.com_s** %8, align 8
  %368 = load i32, i32* @CD1400_COR4, align 4
  %369 = load i32, i32* %17, align 4
  %370 = call i32 @cd_setreg(%struct.com_s* %367, i32 %368, i32 %369)
  store i32 0, i32* %17, align 4
  %371 = load i32, i32* %12, align 4
  %372 = load i32, i32* @ISTRIP, align 4
  %373 = and i32 %371, %372
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %379

375:                                              ; preds = %363
  %376 = load i32, i32* @CD1400_COR5_ISTRIP, align 4
  %377 = load i32, i32* %17, align 4
  %378 = or i32 %377, %376
  store i32 %378, i32* %17, align 4
  br label %379

379:                                              ; preds = %375, %363
  %380 = load %struct.termios*, %struct.termios** %5, align 8
  %381 = getelementptr inbounds %struct.termios, %struct.termios* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* @IEXTEN, align 4
  %384 = and i32 %382, %383
  %385 = icmp ne i32 %384, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %379
  %387 = load i32, i32* @CD1400_COR5_LNEXT, align 4
  %388 = load i32, i32* %17, align 4
  %389 = or i32 %388, %387
  store i32 %389, i32* %17, align 4
  br label %390

390:                                              ; preds = %386, %379
  %391 = load %struct.com_s*, %struct.com_s** %8, align 8
  %392 = load i32, i32* @CD1400_COR5, align 4
  %393 = load i32, i32* %17, align 4
  %394 = call i32 @cd_setreg(%struct.com_s* %391, i32 %392, i32 %393)
  %395 = load i32, i32* @CD1400_MCOR1_CDzd, align 4
  store i32 %395, i32* %17, align 4
  %396 = load %struct.com_s*, %struct.com_s** %8, align 8
  %397 = load i32, i32* @CD1400_MCOR1, align 4
  %398 = load i32, i32* %17, align 4
  %399 = call i32 @cd_setreg(%struct.com_s* %396, i32 %397, i32 %398)
  %400 = load i32, i32* @CD1400_MCOR2_CDod, align 4
  store i32 %400, i32* %17, align 4
  %401 = load %struct.com_s*, %struct.com_s** %8, align 8
  %402 = load i32, i32* @CD1400_MCOR2, align 4
  %403 = load i32, i32* %17, align 4
  %404 = call i32 @cd_setreg(%struct.com_s* %401, i32 %402, i32 %403)
  %405 = call i32 (...) @critical_enter()
  %406 = call i32 (...) @COM_LOCK()
  %407 = load i32, i32* @CS_TTGO, align 4
  %408 = xor i32 %407, -1
  %409 = load %struct.com_s*, %struct.com_s** %8, align 8
  %410 = getelementptr inbounds %struct.com_s, %struct.com_s* %409, i32 0, i32 2
  %411 = load i32, i32* %410, align 8
  %412 = and i32 %411, %408
  store i32 %412, i32* %410, align 8
  %413 = load %struct.tty*, %struct.tty** %4, align 8
  %414 = getelementptr inbounds %struct.tty, %struct.tty* %413, i32 0, i32 1
  %415 = load i32, i32* %414, align 8
  %416 = load i32, i32* @TS_TTSTOP, align 4
  %417 = and i32 %415, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %425, label %419

419:                                              ; preds = %390
  %420 = load i32, i32* @CS_TTGO, align 4
  %421 = load %struct.com_s*, %struct.com_s** %8, align 8
  %422 = getelementptr inbounds %struct.com_s, %struct.com_s* %421, i32 0, i32 2
  %423 = load i32, i32* %422, align 8
  %424 = or i32 %423, %420
  store i32 %424, i32* %422, align 8
  br label %425

425:                                              ; preds = %419, %390
  %426 = load i32, i32* %7, align 4
  %427 = load i32, i32* @CRTS_IFLOW, align 4
  %428 = and i32 %426, %427
  %429 = icmp ne i32 %428, 0
  br i1 %429, label %430, label %436

430:                                              ; preds = %425
  %431 = load i32, i32* @CS_RTS_IFLOW, align 4
  %432 = load %struct.com_s*, %struct.com_s** %8, align 8
  %433 = getelementptr inbounds %struct.com_s, %struct.com_s* %432, i32 0, i32 2
  %434 = load i32, i32* %433, align 8
  %435 = or i32 %434, %431
  store i32 %435, i32* %433, align 8
  br label %463

436:                                              ; preds = %425
  %437 = load %struct.com_s*, %struct.com_s** %8, align 8
  %438 = getelementptr inbounds %struct.com_s, %struct.com_s* %437, i32 0, i32 2
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @CS_RTS_IFLOW, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %462

443:                                              ; preds = %436
  %444 = load i32, i32* @CS_RTS_IFLOW, align 4
  %445 = xor i32 %444, -1
  %446 = load %struct.com_s*, %struct.com_s** %8, align 8
  %447 = getelementptr inbounds %struct.com_s, %struct.com_s* %446, i32 0, i32 2
  %448 = load i32, i32* %447, align 8
  %449 = and i32 %448, %445
  store i32 %449, i32* %447, align 8
  %450 = load %struct.com_s*, %struct.com_s** %8, align 8
  %451 = load %struct.com_s*, %struct.com_s** %8, align 8
  %452 = getelementptr inbounds %struct.com_s, %struct.com_s* %451, i32 0, i32 8
  %453 = load i32, i32* %452, align 8
  %454 = load %struct.com_s*, %struct.com_s** %8, align 8
  %455 = getelementptr inbounds %struct.com_s, %struct.com_s* %454, i32 0, i32 6
  %456 = load i32, i32* %455, align 8
  %457 = load %struct.com_s*, %struct.com_s** %8, align 8
  %458 = getelementptr inbounds %struct.com_s, %struct.com_s* %457, i32 0, i32 7
  %459 = load i32, i32* %458, align 4
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 4
  %461 = call i32 @cd_setreg(%struct.com_s* %450, i32 %453, i32 %460)
  br label %462

462:                                              ; preds = %443, %436
  br label %463

463:                                              ; preds = %462, %430
  %464 = load i32, i32* @CS_ODEVREADY, align 4
  %465 = load %struct.com_s*, %struct.com_s** %8, align 8
  %466 = getelementptr inbounds %struct.com_s, %struct.com_s* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 8
  %468 = or i32 %467, %464
  store i32 %468, i32* %466, align 8
  %469 = load %struct.tty*, %struct.tty** %4, align 8
  %470 = load %struct.termios*, %struct.termios** %5, align 8
  %471 = load %struct.com_s*, %struct.com_s** %8, align 8
  %472 = call i32 @disc_optim(%struct.tty* %469, %struct.termios* %470, %struct.com_s* %471)
  %473 = load %struct.com_s*, %struct.com_s** %8, align 8
  %474 = getelementptr inbounds %struct.com_s, %struct.com_s* %473, i32 0, i32 2
  %475 = load i32, i32* %474, align 8
  %476 = load i32, i32* @CS_BUSY, align 4
  %477 = load i32, i32* @CS_TTGO, align 4
  %478 = or i32 %476, %477
  %479 = load i32, i32* @CS_ODEVREADY, align 4
  %480 = or i32 %478, %479
  %481 = icmp sge i32 %475, %480
  br i1 %481, label %482, label %504

482:                                              ; preds = %463
  %483 = load %struct.com_s*, %struct.com_s** %8, align 8
  %484 = getelementptr inbounds %struct.com_s, %struct.com_s* %483, i32 0, i32 4
  %485 = load i32, i32* %484, align 8
  %486 = load i32, i32* @CD1400_SRER_TXRDY, align 4
  %487 = and i32 %485, %486
  %488 = icmp ne i32 %487, 0
  br i1 %488, label %503, label %489

489:                                              ; preds = %482
  %490 = load %struct.com_s*, %struct.com_s** %8, align 8
  %491 = load i32, i32* @CD1400_SRER, align 4
  %492 = load %struct.com_s*, %struct.com_s** %8, align 8
  %493 = getelementptr inbounds %struct.com_s, %struct.com_s* %492, i32 0, i32 4
  %494 = load i32, i32* %493, align 8
  %495 = load i32, i32* @CD1400_SRER_TXMPTY, align 4
  %496 = xor i32 %495, -1
  %497 = and i32 %494, %496
  %498 = load i32, i32* @CD1400_SRER_TXRDY, align 4
  %499 = or i32 %497, %498
  %500 = load %struct.com_s*, %struct.com_s** %8, align 8
  %501 = getelementptr inbounds %struct.com_s, %struct.com_s* %500, i32 0, i32 4
  store i32 %499, i32* %501, align 8
  %502 = call i32 @cd_setreg(%struct.com_s* %490, i32 %491, i32 %499)
  br label %503

503:                                              ; preds = %489, %482
  br label %526

504:                                              ; preds = %463
  %505 = load %struct.com_s*, %struct.com_s** %8, align 8
  %506 = getelementptr inbounds %struct.com_s, %struct.com_s* %505, i32 0, i32 4
  %507 = load i32, i32* %506, align 8
  %508 = load i32, i32* @CD1400_SRER_TXRDY, align 4
  %509 = and i32 %507, %508
  %510 = icmp ne i32 %509, 0
  br i1 %510, label %511, label %525

511:                                              ; preds = %504
  %512 = load %struct.com_s*, %struct.com_s** %8, align 8
  %513 = load i32, i32* @CD1400_SRER, align 4
  %514 = load %struct.com_s*, %struct.com_s** %8, align 8
  %515 = getelementptr inbounds %struct.com_s, %struct.com_s* %514, i32 0, i32 4
  %516 = load i32, i32* %515, align 8
  %517 = load i32, i32* @CD1400_SRER_TXRDY, align 4
  %518 = xor i32 %517, -1
  %519 = and i32 %516, %518
  %520 = load i32, i32* @CD1400_SRER_TXMPTY, align 4
  %521 = or i32 %519, %520
  %522 = load %struct.com_s*, %struct.com_s** %8, align 8
  %523 = getelementptr inbounds %struct.com_s, %struct.com_s* %522, i32 0, i32 4
  store i32 %521, i32* %523, align 8
  %524 = call i32 @cd_setreg(%struct.com_s* %512, i32 %513, i32 %521)
  br label %525

525:                                              ; preds = %511, %504
  br label %526

526:                                              ; preds = %525, %503
  %527 = call i32 (...) @COM_UNLOCK()
  %528 = call i32 (...) @critical_exit()
  %529 = load i32, i32* %18, align 4
  %530 = call i32 @splx(i32 %529)
  %531 = load %struct.tty*, %struct.tty** %4, align 8
  %532 = call i32 @cystart(%struct.tty* %531)
  %533 = load %struct.com_s*, %struct.com_s** %8, align 8
  %534 = getelementptr inbounds %struct.com_s, %struct.com_s* %533, i32 0, i32 5
  %535 = load i32*, i32** %534, align 8
  %536 = icmp ne i32* %535, null
  br i1 %536, label %537, label %545

537:                                              ; preds = %526
  %538 = load %struct.com_s*, %struct.com_s** %8, align 8
  %539 = getelementptr inbounds %struct.com_s, %struct.com_s* %538, i32 0, i32 5
  %540 = load i32*, i32** %539, align 8
  %541 = load i32, i32* @M_DEVBUF, align 4
  %542 = call i32 @free(i32* %540, i32 %541)
  %543 = load %struct.com_s*, %struct.com_s** %8, align 8
  %544 = getelementptr inbounds %struct.com_s, %struct.com_s* %543, i32 0, i32 5
  store i32* null, i32** %544, align 8
  br label %545

545:                                              ; preds = %537, %526
  store i32 0, i32* %3, align 4
  br label %546

546:                                              ; preds = %545, %54, %33
  %547 = load i32, i32* %3, align 4
  ret i32 %547
}

declare dso_local i32 @CY_CLOCK(i32) #1

declare dso_local i32 @cyspeed(i64, i32, i32*) #1

declare dso_local i32 @spltty(...) #1

declare dso_local i32 @cymodem(%struct.tty*, i32, i32) #1

declare dso_local i32 @cysetwater(%struct.com_s*, i64) #1

declare dso_local i32 @cd_setreg(%struct.com_s*, i32, i32) #1

declare dso_local i32 @cd1400_channel_cmd(%struct.com_s*, i32) #1

declare dso_local i32 @howmany(i32, i64) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @COM_LOCK(...) #1

declare dso_local i32 @COM_UNLOCK(...) #1

declare dso_local i32 @critical_exit(...) #1

declare dso_local i32 @disc_optim(%struct.tty*, %struct.termios*, %struct.com_s*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local i32 @cystart(%struct.tty*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
