; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_generic_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_tty.c_tty_generic_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32, i32, %struct.winsize, i32, %struct.pgrp*, i32, %struct.TYPE_4__*, %struct.termios, i32, i32, i32 }
%struct.winsize = type { i32 }
%struct.pgrp = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.tty*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.termios = type { i32, i32, i32, i32*, i32, i32, i32 }
%struct.thread = type { %struct.proc* }
%struct.proc = type { %struct.TYPE_4__*, i32, %struct.pgrp* }

@SER_DTR = common dso_local global i32 0, align 4
@TIOCM_DTR = common dso_local global i32 0, align 4
@TIOCM_RTS = common dso_local global i32 0, align 4
@TIOCM_LE = common dso_local global i32 0, align 4
@TF_ASYNC = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@TTYSUP_IFLAG = common dso_local global i32 0, align 4
@TTYSUP_OFLAG = common dso_local global i32 0, align 4
@TTYSUP_LFLAG = common dso_local global i32 0, align 4
@TTYSUP_CFLAG = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@CIGNORE = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@IXANY = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@TIOCPKT_DOSTOP = common dso_local global i32 0, align 4
@TIOCPKT_NOSTOP = common dso_local global i32 0, align 4
@TTYDISC = common dso_local global i32 0, align 4
@NO_PID = common dso_local global i32 0, align 4
@proctree_lock = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@VBAD = common dso_local global i32 0, align 4
@P_CONTROLT = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@PRIV_TTY_DRAINWAIT = common dso_local global i32 0, align 4
@PRIV_TTY_CONSOLE = common dso_local global i32 0, align 4
@constty = common dso_local global %struct.tty* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@TF_EXCLUDE = common dso_local global i32 0, align 4
@TF_STOPPED = common dso_local global i32 0, align 4
@TIOCPKT_STOP = common dso_local global i32 0, align 4
@TIOCPKT_START = common dso_local global i32 0, align 4
@PRIV_TTY_STI = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty*, i32, i8*, i32, %struct.thread*)* @tty_generic_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_generic_ioctl(%struct.tty* %0, i32 %1, i8* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tty*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.termios*, align 8
  %17 = alloca %struct.proc*, align 8
  %18 = alloca %struct.pgrp*, align 8
  %19 = alloca i32, align 4
  store %struct.tty* %0, %struct.tty** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %20 = load i32, i32* %8, align 4
  switch i32 %20, label %741 [
    i32 137, label %21
    i32 156, label %25
    i32 142, label %29
    i32 144, label %48
    i32 145, label %60
    i32 143, label %72
    i32 162, label %80
    i32 160, label %99
    i32 159, label %100
    i32 158, label %106
    i32 140, label %106
    i32 157, label %112
    i32 161, label %138
    i32 150, label %158
    i32 136, label %165
    i32 134, label %165
    i32 135, label %165
    i32 149, label %384
    i32 148, label %388
    i32 147, label %415
    i32 139, label %436
    i32 133, label %528
    i32 152, label %579
    i32 154, label %599
    i32 151, label %602
    i32 138, label %608
    i32 155, label %622
    i32 146, label %660
    i32 128, label %667
    i32 153, label %671
    i32 141, label %677
    i32 129, label %684
    i32 132, label %693
    i32 131, label %705
    i32 130, label %708
  ]

21:                                               ; preds = %5
  %22 = load %struct.tty*, %struct.tty** %7, align 8
  %23 = load i32, i32* @SER_DTR, align 4
  %24 = call i32 @ttydevsw_modem(%struct.tty* %22, i32 %23, i32 0)
  store i32 0, i32* %6, align 4
  br label %743

25:                                               ; preds = %5
  %26 = load %struct.tty*, %struct.tty** %7, align 8
  %27 = load i32, i32* @SER_DTR, align 4
  %28 = call i32 @ttydevsw_modem(%struct.tty* %26, i32 0, i32 %27)
  store i32 0, i32* %6, align 4
  br label %743

29:                                               ; preds = %5
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to i32*
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.tty*, %struct.tty** %7, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @TIOCM_DTR, align 4
  %36 = load i32, i32* @TIOCM_RTS, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = ashr i32 %38, 1
  %40 = load i32, i32* %13, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* @TIOCM_DTR, align 4
  %43 = load i32, i32* @TIOCM_RTS, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = ashr i32 %45, 1
  %47 = call i32 @ttydevsw_modem(%struct.tty* %33, i32 %39, i32 %46)
  store i32 0, i32* %6, align 4
  br label %743

48:                                               ; preds = %5
  %49 = load i8*, i8** %9, align 8
  %50 = bitcast i8* %49 to i32*
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %14, align 4
  %52 = load %struct.tty*, %struct.tty** %7, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* @TIOCM_DTR, align 4
  %55 = load i32, i32* @TIOCM_RTS, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %53, %56
  %58 = ashr i32 %57, 1
  %59 = call i32 @ttydevsw_modem(%struct.tty* %52, i32 %58, i32 0)
  store i32 0, i32* %6, align 4
  br label %743

60:                                               ; preds = %5
  %61 = load i8*, i8** %9, align 8
  %62 = bitcast i8* %61 to i32*
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %15, align 4
  %64 = load %struct.tty*, %struct.tty** %7, align 8
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @TIOCM_DTR, align 4
  %67 = load i32, i32* @TIOCM_RTS, align 4
  %68 = or i32 %66, %67
  %69 = and i32 %65, %68
  %70 = ashr i32 %69, 1
  %71 = call i32 @ttydevsw_modem(%struct.tty* %64, i32 0, i32 %70)
  store i32 0, i32* %6, align 4
  br label %743

72:                                               ; preds = %5
  %73 = load i32, i32* @TIOCM_LE, align 4
  %74 = load %struct.tty*, %struct.tty** %7, align 8
  %75 = call i32 @ttydevsw_modem(%struct.tty* %74, i32 0, i32 0)
  %76 = shl i32 %75, 1
  %77 = add nsw i32 %73, %76
  %78 = load i8*, i8** %9, align 8
  %79 = bitcast i8* %78 to i32*
  store i32 %77, i32* %79, align 4
  store i32 0, i32* %6, align 4
  br label %743

80:                                               ; preds = %5
  %81 = load i8*, i8** %9, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load i32, i32* @TF_ASYNC, align 4
  %87 = load %struct.tty*, %struct.tty** %7, align 8
  %88 = getelementptr inbounds %struct.tty, %struct.tty* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %98

91:                                               ; preds = %80
  %92 = load i32, i32* @TF_ASYNC, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.tty*, %struct.tty** %7, align 8
  %95 = getelementptr inbounds %struct.tty, %struct.tty* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %91, %85
  store i32 0, i32* %6, align 4
  br label %743

99:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %743

100:                                              ; preds = %5
  %101 = load %struct.tty*, %struct.tty** %7, align 8
  %102 = getelementptr inbounds %struct.tty, %struct.tty* %101, i32 0, i32 8
  %103 = call i32 @ttyinq_bytescanonicalized(i32* %102)
  %104 = load i8*, i8** %9, align 8
  %105 = bitcast i8* %104 to i32*
  store i32 %103, i32* %105, align 4
  store i32 0, i32* %6, align 4
  br label %743

106:                                              ; preds = %5, %5
  %107 = load %struct.tty*, %struct.tty** %7, align 8
  %108 = getelementptr inbounds %struct.tty, %struct.tty* %107, i32 0, i32 10
  %109 = call i32 @ttyoutq_bytesused(i32* %108)
  %110 = load i8*, i8** %9, align 8
  %111 = bitcast i8* %110 to i32*
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %6, align 4
  br label %743

112:                                              ; preds = %5
  %113 = load %struct.tty*, %struct.tty** %7, align 8
  %114 = getelementptr inbounds %struct.tty, %struct.tty* %113, i32 0, i32 6
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = icmp ne %struct.TYPE_4__* %115, null
  br i1 %116, label %117, label %126

117:                                              ; preds = %112
  %118 = load %struct.tty*, %struct.tty** %7, align 8
  %119 = load %struct.thread*, %struct.thread** %11, align 8
  %120 = getelementptr inbounds %struct.thread, %struct.thread* %119, i32 0, i32 0
  %121 = load %struct.proc*, %struct.proc** %120, align 8
  %122 = call i32 @tty_is_ctty(%struct.tty* %118, %struct.proc* %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* @ENOTTY, align 4
  store i32 %125, i32* %6, align 4
  br label %743

126:                                              ; preds = %117, %112
  %127 = load %struct.tty*, %struct.tty** %7, align 8
  %128 = call i32 @tty_unlock(%struct.tty* %127)
  %129 = load i8*, i8** %9, align 8
  %130 = bitcast i8* %129 to i32*
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.tty*, %struct.tty** %7, align 8
  %133 = getelementptr inbounds %struct.tty, %struct.tty* %132, i32 0, i32 9
  %134 = call i32 @fsetown(i32 %131, i32* %133)
  store i32 %134, i32* %12, align 4
  %135 = load %struct.tty*, %struct.tty** %7, align 8
  %136 = call i32 @tty_lock(%struct.tty* %135)
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %6, align 4
  br label %743

138:                                              ; preds = %5
  %139 = load %struct.tty*, %struct.tty** %7, align 8
  %140 = getelementptr inbounds %struct.tty, %struct.tty* %139, i32 0, i32 6
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = icmp ne %struct.TYPE_4__* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %138
  %144 = load %struct.tty*, %struct.tty** %7, align 8
  %145 = load %struct.thread*, %struct.thread** %11, align 8
  %146 = getelementptr inbounds %struct.thread, %struct.thread* %145, i32 0, i32 0
  %147 = load %struct.proc*, %struct.proc** %146, align 8
  %148 = call i32 @tty_is_ctty(%struct.tty* %144, %struct.proc* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %152, label %150

150:                                              ; preds = %143
  %151 = load i32, i32* @ENOTTY, align 4
  store i32 %151, i32* %6, align 4
  br label %743

152:                                              ; preds = %143, %138
  %153 = load %struct.tty*, %struct.tty** %7, align 8
  %154 = getelementptr inbounds %struct.tty, %struct.tty* %153, i32 0, i32 9
  %155 = call i32 @fgetown(i32* %154)
  %156 = load i8*, i8** %9, align 8
  %157 = bitcast i8* %156 to i32*
  store i32 %155, i32* %157, align 4
  store i32 0, i32* %6, align 4
  br label %743

158:                                              ; preds = %5
  %159 = load i8*, i8** %9, align 8
  %160 = bitcast i8* %159 to %struct.termios*
  %161 = load %struct.tty*, %struct.tty** %7, align 8
  %162 = getelementptr inbounds %struct.tty, %struct.tty* %161, i32 0, i32 7
  %163 = bitcast %struct.termios* %160 to i8*
  %164 = bitcast %struct.termios* %162 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %163, i8* align 8 %164, i64 40, i1 false)
  store i32 0, i32* %6, align 4
  br label %743

165:                                              ; preds = %5, %5, %5
  %166 = load i8*, i8** %9, align 8
  %167 = bitcast i8* %166 to %struct.termios*
  store %struct.termios* %167, %struct.termios** %16, align 8
  %168 = load %struct.termios*, %struct.termios** %16, align 8
  %169 = getelementptr inbounds %struct.termios, %struct.termios* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %165
  %173 = load %struct.termios*, %struct.termios** %16, align 8
  %174 = getelementptr inbounds %struct.termios, %struct.termios* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.termios*, %struct.termios** %16, align 8
  %177 = getelementptr inbounds %struct.termios, %struct.termios* %176, i32 0, i32 6
  store i32 %175, i32* %177, align 8
  br label %178

178:                                              ; preds = %172, %165
  %179 = load i32, i32* @TTYSUP_IFLAG, align 4
  %180 = load %struct.termios*, %struct.termios** %16, align 8
  %181 = getelementptr inbounds %struct.termios, %struct.termios* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %179
  store i32 %183, i32* %181, align 8
  %184 = load i32, i32* @TTYSUP_OFLAG, align 4
  %185 = load %struct.termios*, %struct.termios** %16, align 8
  %186 = getelementptr inbounds %struct.termios, %struct.termios* %185, i32 0, i32 4
  %187 = load i32, i32* %186, align 8
  %188 = and i32 %187, %184
  store i32 %188, i32* %186, align 8
  %189 = load i32, i32* @TTYSUP_LFLAG, align 4
  %190 = load %struct.termios*, %struct.termios** %16, align 8
  %191 = getelementptr inbounds %struct.termios, %struct.termios* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, %189
  store i32 %193, i32* %191, align 4
  %194 = load i32, i32* @TTYSUP_CFLAG, align 4
  %195 = load %struct.termios*, %struct.termios** %16, align 8
  %196 = getelementptr inbounds %struct.termios, %struct.termios* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = and i32 %197, %194
  store i32 %198, i32* %196, align 8
  %199 = load i32, i32* %8, align 4
  %200 = icmp eq i32 %199, 134
  br i1 %200, label %204, label %201

201:                                              ; preds = %178
  %202 = load i32, i32* %8, align 4
  %203 = icmp eq i32 %202, 135
  br i1 %203, label %204, label %219

204:                                              ; preds = %201, %178
  %205 = load %struct.tty*, %struct.tty** %7, align 8
  %206 = call i32 @tty_drain(%struct.tty* %205, i32 0)
  store i32 %206, i32* %12, align 4
  %207 = load i32, i32* %12, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %211

209:                                              ; preds = %204
  %210 = load i32, i32* %12, align 4
  store i32 %210, i32* %6, align 4
  br label %743

211:                                              ; preds = %204
  %212 = load i32, i32* %8, align 4
  %213 = icmp eq i32 %212, 135
  br i1 %213, label %214, label %218

214:                                              ; preds = %211
  %215 = load %struct.tty*, %struct.tty** %7, align 8
  %216 = load i32, i32* @FREAD, align 4
  %217 = call i32 @tty_flush(%struct.tty* %215, i32 %216)
  br label %218

218:                                              ; preds = %214, %211
  br label %219

219:                                              ; preds = %218, %201
  %220 = load %struct.termios*, %struct.termios** %16, align 8
  %221 = getelementptr inbounds %struct.termios, %struct.termios* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @CIGNORE, align 4
  %224 = and i32 %222, %223
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %306

226:                                              ; preds = %219
  %227 = load %struct.tty*, %struct.tty** %7, align 8
  %228 = getelementptr inbounds %struct.tty, %struct.tty* %227, i32 0, i32 7
  %229 = getelementptr inbounds %struct.termios, %struct.termios* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.termios*, %struct.termios** %16, align 8
  %232 = getelementptr inbounds %struct.termios, %struct.termios* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %230, %233
  br i1 %234, label %269, label %235

235:                                              ; preds = %226
  %236 = load %struct.tty*, %struct.tty** %7, align 8
  %237 = getelementptr inbounds %struct.tty, %struct.tty* %236, i32 0, i32 7
  %238 = getelementptr inbounds %struct.termios, %struct.termios* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.termios*, %struct.termios** %16, align 8
  %241 = getelementptr inbounds %struct.termios, %struct.termios* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = xor i32 %239, %242
  %244 = load i32, i32* @IXON, align 4
  %245 = load i32, i32* @IXOFF, align 4
  %246 = or i32 %244, %245
  %247 = load i32, i32* @IXANY, align 4
  %248 = or i32 %246, %247
  %249 = and i32 %243, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %269, label %251

251:                                              ; preds = %235
  %252 = load %struct.tty*, %struct.tty** %7, align 8
  %253 = getelementptr inbounds %struct.tty, %struct.tty* %252, i32 0, i32 7
  %254 = getelementptr inbounds %struct.termios, %struct.termios* %253, i32 0, i32 6
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.termios*, %struct.termios** %16, align 8
  %257 = getelementptr inbounds %struct.termios, %struct.termios* %256, i32 0, i32 6
  %258 = load i32, i32* %257, align 8
  %259 = icmp ne i32 %255, %258
  br i1 %259, label %269, label %260

260:                                              ; preds = %251
  %261 = load %struct.tty*, %struct.tty** %7, align 8
  %262 = getelementptr inbounds %struct.tty, %struct.tty* %261, i32 0, i32 7
  %263 = getelementptr inbounds %struct.termios, %struct.termios* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.termios*, %struct.termios** %16, align 8
  %266 = getelementptr inbounds %struct.termios, %struct.termios* %265, i32 0, i32 5
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %264, %267
  br i1 %268, label %269, label %306

269:                                              ; preds = %260, %251, %235, %226
  %270 = load %struct.tty*, %struct.tty** %7, align 8
  %271 = load %struct.termios*, %struct.termios** %16, align 8
  %272 = call i32 @ttydevsw_param(%struct.tty* %270, %struct.termios* %271)
  store i32 %272, i32* %12, align 4
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = load i32, i32* %12, align 4
  store i32 %276, i32* %6, align 4
  br label %743

277:                                              ; preds = %269
  %278 = load %struct.termios*, %struct.termios** %16, align 8
  %279 = getelementptr inbounds %struct.termios, %struct.termios* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load i32, i32* @CIGNORE, align 4
  %282 = xor i32 %281, -1
  %283 = and i32 %280, %282
  %284 = load %struct.tty*, %struct.tty** %7, align 8
  %285 = getelementptr inbounds %struct.tty, %struct.tty* %284, i32 0, i32 7
  %286 = getelementptr inbounds %struct.termios, %struct.termios* %285, i32 0, i32 2
  store i32 %283, i32* %286, align 8
  %287 = load %struct.termios*, %struct.termios** %16, align 8
  %288 = getelementptr inbounds %struct.termios, %struct.termios* %287, i32 0, i32 6
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.tty*, %struct.tty** %7, align 8
  %291 = getelementptr inbounds %struct.tty, %struct.tty* %290, i32 0, i32 7
  %292 = getelementptr inbounds %struct.termios, %struct.termios* %291, i32 0, i32 6
  store i32 %289, i32* %292, align 8
  %293 = load %struct.termios*, %struct.termios** %16, align 8
  %294 = getelementptr inbounds %struct.termios, %struct.termios* %293, i32 0, i32 5
  %295 = load i32, i32* %294, align 4
  %296 = load %struct.tty*, %struct.tty** %7, align 8
  %297 = getelementptr inbounds %struct.tty, %struct.tty* %296, i32 0, i32 7
  %298 = getelementptr inbounds %struct.termios, %struct.termios* %297, i32 0, i32 5
  store i32 %295, i32* %298, align 4
  %299 = load %struct.tty*, %struct.tty** %7, align 8
  %300 = call i32 @tty_watermarks(%struct.tty* %299)
  store i32 %300, i32* %12, align 4
  %301 = load i32, i32* %12, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %277
  %304 = load i32, i32* %12, align 4
  store i32 %304, i32* %6, align 4
  br label %743

305:                                              ; preds = %277
  br label %306

306:                                              ; preds = %305, %260, %219
  %307 = load %struct.termios*, %struct.termios** %16, align 8
  %308 = getelementptr inbounds %struct.termios, %struct.termios* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.tty*, %struct.tty** %7, align 8
  %311 = getelementptr inbounds %struct.tty, %struct.tty* %310, i32 0, i32 7
  %312 = getelementptr inbounds %struct.termios, %struct.termios* %311, i32 0, i32 0
  store i32 %309, i32* %312, align 8
  %313 = load %struct.termios*, %struct.termios** %16, align 8
  %314 = getelementptr inbounds %struct.termios, %struct.termios* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 8
  %316 = load %struct.tty*, %struct.tty** %7, align 8
  %317 = getelementptr inbounds %struct.tty, %struct.tty* %316, i32 0, i32 7
  %318 = getelementptr inbounds %struct.termios, %struct.termios* %317, i32 0, i32 4
  store i32 %315, i32* %318, align 8
  %319 = load %struct.termios*, %struct.termios** %16, align 8
  %320 = getelementptr inbounds %struct.termios, %struct.termios* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load %struct.tty*, %struct.tty** %7, align 8
  %323 = getelementptr inbounds %struct.tty, %struct.tty* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.termios, %struct.termios* %323, i32 0, i32 1
  store i32 %321, i32* %324, align 4
  %325 = load %struct.tty*, %struct.tty** %7, align 8
  %326 = getelementptr inbounds %struct.tty, %struct.tty* %325, i32 0, i32 7
  %327 = getelementptr inbounds %struct.termios, %struct.termios* %326, i32 0, i32 3
  %328 = load %struct.termios*, %struct.termios** %16, align 8
  %329 = getelementptr inbounds %struct.termios, %struct.termios* %328, i32 0, i32 3
  %330 = load i32*, i32** %329, align 8
  %331 = call i32 @memcpy(i32** %327, i32* %330, i32 8)
  %332 = load %struct.tty*, %struct.tty** %7, align 8
  %333 = call i32 @ttydisc_optimize(%struct.tty* %332)
  %334 = load %struct.termios*, %struct.termios** %16, align 8
  %335 = getelementptr inbounds %struct.termios, %struct.termios* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 4
  %337 = load i32, i32* @ICANON, align 4
  %338 = and i32 %336, %337
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %347

340:                                              ; preds = %306
  %341 = load %struct.tty*, %struct.tty** %7, align 8
  %342 = getelementptr inbounds %struct.tty, %struct.tty* %341, i32 0, i32 8
  %343 = call i32 @ttyinq_canonicalize(i32* %342)
  %344 = load %struct.tty*, %struct.tty** %7, align 8
  %345 = load i32, i32* @FREAD, align 4
  %346 = call i32 @tty_wakeup(%struct.tty* %344, i32 %345)
  br label %347

347:                                              ; preds = %340, %306
  %348 = load %struct.tty*, %struct.tty** %7, align 8
  %349 = getelementptr inbounds %struct.tty, %struct.tty* %348, i32 0, i32 7
  %350 = getelementptr inbounds %struct.termios, %struct.termios* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @IXON, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %379

355:                                              ; preds = %347
  %356 = load %struct.tty*, %struct.tty** %7, align 8
  %357 = getelementptr inbounds %struct.tty, %struct.tty* %356, i32 0, i32 7
  %358 = getelementptr inbounds %struct.termios, %struct.termios* %357, i32 0, i32 3
  %359 = load i32*, i32** %358, align 8
  %360 = load i64, i64* @VSTOP, align 8
  %361 = getelementptr inbounds i32, i32* %359, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = call i32 @CTRL(i8 signext 83)
  %364 = icmp eq i32 %362, %363
  br i1 %364, label %365, label %379

365:                                              ; preds = %355
  %366 = load %struct.tty*, %struct.tty** %7, align 8
  %367 = getelementptr inbounds %struct.tty, %struct.tty* %366, i32 0, i32 7
  %368 = getelementptr inbounds %struct.termios, %struct.termios* %367, i32 0, i32 3
  %369 = load i32*, i32** %368, align 8
  %370 = load i64, i64* @VSTART, align 8
  %371 = getelementptr inbounds i32, i32* %369, i64 %370
  %372 = load i32, i32* %371, align 4
  %373 = call i32 @CTRL(i8 signext 81)
  %374 = icmp eq i32 %372, %373
  br i1 %374, label %375, label %379

375:                                              ; preds = %365
  %376 = load %struct.tty*, %struct.tty** %7, align 8
  %377 = load i32, i32* @TIOCPKT_DOSTOP, align 4
  %378 = call i32 @ttydevsw_pktnotify(%struct.tty* %376, i32 %377)
  br label %383

379:                                              ; preds = %365, %355, %347
  %380 = load %struct.tty*, %struct.tty** %7, align 8
  %381 = load i32, i32* @TIOCPKT_NOSTOP, align 4
  %382 = call i32 @ttydevsw_pktnotify(%struct.tty* %380, i32 %381)
  br label %383

383:                                              ; preds = %379, %375
  store i32 0, i32* %6, align 4
  br label %743

384:                                              ; preds = %5
  %385 = load i32, i32* @TTYDISC, align 4
  %386 = load i8*, i8** %9, align 8
  %387 = bitcast i8* %386 to i32*
  store i32 %385, i32* %387, align 4
  store i32 0, i32* %6, align 4
  br label %743

388:                                              ; preds = %5
  %389 = load %struct.tty*, %struct.tty** %7, align 8
  %390 = load %struct.thread*, %struct.thread** %11, align 8
  %391 = getelementptr inbounds %struct.thread, %struct.thread* %390, i32 0, i32 0
  %392 = load %struct.proc*, %struct.proc** %391, align 8
  %393 = call i32 @tty_is_ctty(%struct.tty* %389, %struct.proc* %392)
  %394 = icmp ne i32 %393, 0
  br i1 %394, label %397, label %395

395:                                              ; preds = %388
  %396 = load i32, i32* @ENOTTY, align 4
  store i32 %396, i32* %6, align 4
  br label %743

397:                                              ; preds = %388
  %398 = load %struct.tty*, %struct.tty** %7, align 8
  %399 = getelementptr inbounds %struct.tty, %struct.tty* %398, i32 0, i32 4
  %400 = load %struct.pgrp*, %struct.pgrp** %399, align 8
  %401 = icmp ne %struct.pgrp* %400, null
  br i1 %401, label %402, label %410

402:                                              ; preds = %397
  %403 = load %struct.tty*, %struct.tty** %7, align 8
  %404 = getelementptr inbounds %struct.tty, %struct.tty* %403, i32 0, i32 4
  %405 = load %struct.pgrp*, %struct.pgrp** %404, align 8
  %406 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i8*, i8** %9, align 8
  %409 = bitcast i8* %408 to i32*
  store i32 %407, i32* %409, align 4
  br label %414

410:                                              ; preds = %397
  %411 = load i32, i32* @NO_PID, align 4
  %412 = load i8*, i8** %9, align 8
  %413 = bitcast i8* %412 to i32*
  store i32 %411, i32* %413, align 4
  br label %414

414:                                              ; preds = %410, %402
  store i32 0, i32* %6, align 4
  br label %743

415:                                              ; preds = %5
  %416 = load %struct.tty*, %struct.tty** %7, align 8
  %417 = load %struct.thread*, %struct.thread** %11, align 8
  %418 = getelementptr inbounds %struct.thread, %struct.thread* %417, i32 0, i32 0
  %419 = load %struct.proc*, %struct.proc** %418, align 8
  %420 = call i32 @tty_is_ctty(%struct.tty* %416, %struct.proc* %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %424, label %422

422:                                              ; preds = %415
  %423 = load i32, i32* @ENOTTY, align 4
  store i32 %423, i32* %6, align 4
  br label %743

424:                                              ; preds = %415
  %425 = load %struct.tty*, %struct.tty** %7, align 8
  %426 = getelementptr inbounds %struct.tty, %struct.tty* %425, i32 0, i32 6
  %427 = load %struct.TYPE_4__*, %struct.TYPE_4__** %426, align 8
  %428 = call i32 @MPASS(%struct.TYPE_4__* %427)
  %429 = load %struct.tty*, %struct.tty** %7, align 8
  %430 = getelementptr inbounds %struct.tty, %struct.tty* %429, i32 0, i32 6
  %431 = load %struct.TYPE_4__*, %struct.TYPE_4__** %430, align 8
  %432 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %431, i32 0, i32 0
  %433 = load i32, i32* %432, align 8
  %434 = load i8*, i8** %9, align 8
  %435 = bitcast i8* %434 to i32*
  store i32 %433, i32* %435, align 4
  store i32 0, i32* %6, align 4
  br label %743

436:                                              ; preds = %5
  %437 = load %struct.thread*, %struct.thread** %11, align 8
  %438 = getelementptr inbounds %struct.thread, %struct.thread* %437, i32 0, i32 0
  %439 = load %struct.proc*, %struct.proc** %438, align 8
  store %struct.proc* %439, %struct.proc** %17, align 8
  %440 = load %struct.tty*, %struct.tty** %7, align 8
  %441 = call i32 @tty_unlock(%struct.tty* %440)
  %442 = call i32 @sx_xlock(i32* @proctree_lock)
  %443 = load %struct.tty*, %struct.tty** %7, align 8
  %444 = call i32 @tty_lock(%struct.tty* %443)
  %445 = load %struct.proc*, %struct.proc** %17, align 8
  %446 = call i32 @SESS_LEADER(%struct.proc* %445)
  %447 = icmp ne i32 %446, 0
  br i1 %447, label %451, label %448

448:                                              ; preds = %436
  %449 = call i32 @sx_xunlock(i32* @proctree_lock)
  %450 = load i32, i32* @EPERM, align 4
  store i32 %450, i32* %6, align 4
  br label %743

451:                                              ; preds = %436
  %452 = load %struct.tty*, %struct.tty** %7, align 8
  %453 = getelementptr inbounds %struct.tty, %struct.tty* %452, i32 0, i32 6
  %454 = load %struct.TYPE_4__*, %struct.TYPE_4__** %453, align 8
  %455 = icmp ne %struct.TYPE_4__* %454, null
  br i1 %455, label %456, label %466

456:                                              ; preds = %451
  %457 = load %struct.tty*, %struct.tty** %7, align 8
  %458 = getelementptr inbounds %struct.tty, %struct.tty* %457, i32 0, i32 6
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** %458, align 8
  %460 = load %struct.proc*, %struct.proc** %17, align 8
  %461 = getelementptr inbounds %struct.proc, %struct.proc* %460, i32 0, i32 0
  %462 = load %struct.TYPE_4__*, %struct.TYPE_4__** %461, align 8
  %463 = icmp eq %struct.TYPE_4__* %459, %462
  br i1 %463, label %464, label %466

464:                                              ; preds = %456
  %465 = call i32 @sx_xunlock(i32* @proctree_lock)
  store i32 0, i32* %6, align 4
  br label %743

466:                                              ; preds = %456, %451
  %467 = load %struct.proc*, %struct.proc** %17, align 8
  %468 = getelementptr inbounds %struct.proc, %struct.proc* %467, i32 0, i32 0
  %469 = load %struct.TYPE_4__*, %struct.TYPE_4__** %468, align 8
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %469, i32 0, i32 1
  %471 = load %struct.tty*, %struct.tty** %470, align 8
  %472 = icmp ne %struct.tty* %471, null
  br i1 %472, label %495, label %473

473:                                              ; preds = %466
  %474 = load %struct.tty*, %struct.tty** %7, align 8
  %475 = getelementptr inbounds %struct.tty, %struct.tty* %474, i32 0, i32 6
  %476 = load %struct.TYPE_4__*, %struct.TYPE_4__** %475, align 8
  %477 = icmp ne %struct.TYPE_4__* %476, null
  br i1 %477, label %478, label %498

478:                                              ; preds = %473
  %479 = load %struct.tty*, %struct.tty** %7, align 8
  %480 = getelementptr inbounds %struct.tty, %struct.tty* %479, i32 0, i32 6
  %481 = load %struct.TYPE_4__*, %struct.TYPE_4__** %480, align 8
  %482 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %481, i32 0, i32 2
  %483 = load %struct.TYPE_3__*, %struct.TYPE_3__** %482, align 8
  %484 = icmp ne %struct.TYPE_3__* %483, null
  br i1 %484, label %485, label %498

485:                                              ; preds = %478
  %486 = load %struct.tty*, %struct.tty** %7, align 8
  %487 = getelementptr inbounds %struct.tty, %struct.tty* %486, i32 0, i32 6
  %488 = load %struct.TYPE_4__*, %struct.TYPE_4__** %487, align 8
  %489 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %488, i32 0, i32 2
  %490 = load %struct.TYPE_3__*, %struct.TYPE_3__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 4
  %493 = load i32, i32* @VBAD, align 4
  %494 = icmp ne i32 %492, %493
  br i1 %494, label %495, label %498

495:                                              ; preds = %485, %466
  %496 = call i32 @sx_xunlock(i32* @proctree_lock)
  %497 = load i32, i32* @EPERM, align 4
  store i32 %497, i32* %6, align 4
  br label %743

498:                                              ; preds = %485, %478, %473
  %499 = load %struct.proc*, %struct.proc** %17, align 8
  %500 = getelementptr inbounds %struct.proc, %struct.proc* %499, i32 0, i32 0
  %501 = load %struct.TYPE_4__*, %struct.TYPE_4__** %500, align 8
  %502 = load %struct.tty*, %struct.tty** %7, align 8
  %503 = getelementptr inbounds %struct.tty, %struct.tty* %502, i32 0, i32 6
  store %struct.TYPE_4__* %501, %struct.TYPE_4__** %503, align 8
  %504 = load %struct.tty*, %struct.tty** %7, align 8
  %505 = load %struct.tty*, %struct.tty** %7, align 8
  %506 = getelementptr inbounds %struct.tty, %struct.tty* %505, i32 0, i32 6
  %507 = load %struct.TYPE_4__*, %struct.TYPE_4__** %506, align 8
  %508 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %507, i32 0, i32 1
  store %struct.tty* %504, %struct.tty** %508, align 8
  %509 = load %struct.tty*, %struct.tty** %7, align 8
  %510 = getelementptr inbounds %struct.tty, %struct.tty* %509, i32 0, i32 5
  %511 = load i32, i32* %510, align 8
  %512 = add nsw i32 %511, 1
  store i32 %512, i32* %510, align 8
  %513 = call i32 @sx_xunlock(i32* @proctree_lock)
  %514 = load %struct.proc*, %struct.proc** %17, align 8
  %515 = getelementptr inbounds %struct.proc, %struct.proc* %514, i32 0, i32 2
  %516 = load %struct.pgrp*, %struct.pgrp** %515, align 8
  %517 = load %struct.tty*, %struct.tty** %7, align 8
  %518 = getelementptr inbounds %struct.tty, %struct.tty* %517, i32 0, i32 4
  store %struct.pgrp* %516, %struct.pgrp** %518, align 8
  %519 = load %struct.proc*, %struct.proc** %17, align 8
  %520 = call i32 @PROC_LOCK(%struct.proc* %519)
  %521 = load i32, i32* @P_CONTROLT, align 4
  %522 = load %struct.proc*, %struct.proc** %17, align 8
  %523 = getelementptr inbounds %struct.proc, %struct.proc* %522, i32 0, i32 1
  %524 = load i32, i32* %523, align 8
  %525 = or i32 %524, %521
  store i32 %525, i32* %523, align 8
  %526 = load %struct.proc*, %struct.proc** %17, align 8
  %527 = call i32 @PROC_UNLOCK(%struct.proc* %526)
  store i32 0, i32* %6, align 4
  br label %743

528:                                              ; preds = %5
  %529 = load %struct.tty*, %struct.tty** %7, align 8
  %530 = call i32 @tty_unlock(%struct.tty* %529)
  %531 = call i32 @sx_slock(i32* @proctree_lock)
  %532 = load i8*, i8** %9, align 8
  %533 = bitcast i8* %532 to i32*
  %534 = load i32, i32* %533, align 4
  %535 = call %struct.pgrp* @pgfind(i32 %534)
  store %struct.pgrp* %535, %struct.pgrp** %18, align 8
  %536 = load %struct.pgrp*, %struct.pgrp** %18, align 8
  %537 = icmp ne %struct.pgrp* %536, null
  br i1 %537, label %538, label %541

538:                                              ; preds = %528
  %539 = load %struct.pgrp*, %struct.pgrp** %18, align 8
  %540 = call i32 @PGRP_UNLOCK(%struct.pgrp* %539)
  br label %541

541:                                              ; preds = %538, %528
  %542 = load %struct.pgrp*, %struct.pgrp** %18, align 8
  %543 = icmp eq %struct.pgrp* %542, null
  br i1 %543, label %554, label %544

544:                                              ; preds = %541
  %545 = load %struct.pgrp*, %struct.pgrp** %18, align 8
  %546 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %545, i32 0, i32 1
  %547 = load %struct.TYPE_4__*, %struct.TYPE_4__** %546, align 8
  %548 = load %struct.thread*, %struct.thread** %11, align 8
  %549 = getelementptr inbounds %struct.thread, %struct.thread* %548, i32 0, i32 0
  %550 = load %struct.proc*, %struct.proc** %549, align 8
  %551 = getelementptr inbounds %struct.proc, %struct.proc* %550, i32 0, i32 0
  %552 = load %struct.TYPE_4__*, %struct.TYPE_4__** %551, align 8
  %553 = icmp ne %struct.TYPE_4__* %547, %552
  br i1 %553, label %554, label %559

554:                                              ; preds = %544, %541
  %555 = call i32 @sx_sunlock(i32* @proctree_lock)
  %556 = load %struct.tty*, %struct.tty** %7, align 8
  %557 = call i32 @tty_lock(%struct.tty* %556)
  %558 = load i32, i32* @EPERM, align 4
  store i32 %558, i32* %6, align 4
  br label %743

559:                                              ; preds = %544
  %560 = load %struct.tty*, %struct.tty** %7, align 8
  %561 = call i32 @tty_lock(%struct.tty* %560)
  %562 = load %struct.tty*, %struct.tty** %7, align 8
  %563 = load %struct.thread*, %struct.thread** %11, align 8
  %564 = getelementptr inbounds %struct.thread, %struct.thread* %563, i32 0, i32 0
  %565 = load %struct.proc*, %struct.proc** %564, align 8
  %566 = call i32 @tty_is_ctty(%struct.tty* %562, %struct.proc* %565)
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %571, label %568

568:                                              ; preds = %559
  %569 = call i32 @sx_sunlock(i32* @proctree_lock)
  %570 = load i32, i32* @ENOTTY, align 4
  store i32 %570, i32* %6, align 4
  br label %743

571:                                              ; preds = %559
  %572 = load %struct.pgrp*, %struct.pgrp** %18, align 8
  %573 = load %struct.tty*, %struct.tty** %7, align 8
  %574 = getelementptr inbounds %struct.tty, %struct.tty* %573, i32 0, i32 4
  store %struct.pgrp* %572, %struct.pgrp** %574, align 8
  %575 = call i32 @sx_sunlock(i32* @proctree_lock)
  %576 = load %struct.tty*, %struct.tty** %7, align 8
  %577 = getelementptr inbounds %struct.tty, %struct.tty* %576, i32 0, i32 3
  %578 = call i32 @cv_broadcast(i32* %577)
  store i32 0, i32* %6, align 4
  br label %743

579:                                              ; preds = %5
  %580 = load i8*, i8** %9, align 8
  %581 = bitcast i8* %580 to i32*
  %582 = load i32, i32* %581, align 4
  store i32 %582, i32* %19, align 4
  %583 = load i32, i32* %19, align 4
  %584 = icmp eq i32 %583, 0
  br i1 %584, label %585, label %589

585:                                              ; preds = %579
  %586 = load i32, i32* @FREAD, align 4
  %587 = load i32, i32* @FWRITE, align 4
  %588 = or i32 %586, %587
  store i32 %588, i32* %19, align 4
  br label %595

589:                                              ; preds = %579
  %590 = load i32, i32* @FREAD, align 4
  %591 = load i32, i32* @FWRITE, align 4
  %592 = or i32 %590, %591
  %593 = load i32, i32* %19, align 4
  %594 = and i32 %593, %592
  store i32 %594, i32* %19, align 4
  br label %595

595:                                              ; preds = %589, %585
  %596 = load %struct.tty*, %struct.tty** %7, align 8
  %597 = load i32, i32* %19, align 4
  %598 = call i32 @tty_flush(%struct.tty* %596, i32 %597)
  store i32 0, i32* %6, align 4
  br label %743

599:                                              ; preds = %5
  %600 = load %struct.tty*, %struct.tty** %7, align 8
  %601 = call i32 @tty_drain(%struct.tty* %600, i32 0)
  store i32 %601, i32* %6, align 4
  br label %743

602:                                              ; preds = %5
  %603 = load %struct.tty*, %struct.tty** %7, align 8
  %604 = getelementptr inbounds %struct.tty, %struct.tty* %603, i32 0, i32 0
  %605 = load i32, i32* %604, align 8
  %606 = load i8*, i8** %9, align 8
  %607 = bitcast i8* %606 to i32*
  store i32 %605, i32* %607, align 4
  store i32 0, i32* %6, align 4
  br label %743

608:                                              ; preds = %5
  %609 = load %struct.thread*, %struct.thread** %11, align 8
  %610 = load i32, i32* @PRIV_TTY_DRAINWAIT, align 4
  %611 = call i32 @priv_check(%struct.thread* %609, i32 %610)
  store i32 %611, i32* %12, align 4
  %612 = load i32, i32* %12, align 4
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %620

614:                                              ; preds = %608
  %615 = load i8*, i8** %9, align 8
  %616 = bitcast i8* %615 to i32*
  %617 = load i32, i32* %616, align 4
  %618 = load %struct.tty*, %struct.tty** %7, align 8
  %619 = getelementptr inbounds %struct.tty, %struct.tty* %618, i32 0, i32 0
  store i32 %617, i32* %619, align 8
  br label %620

620:                                              ; preds = %614, %608
  %621 = load i32, i32* %12, align 4
  store i32 %621, i32* %6, align 4
  br label %743

622:                                              ; preds = %5
  %623 = load i8*, i8** %9, align 8
  %624 = bitcast i8* %623 to i32*
  %625 = load i32, i32* %624, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %627, label %652

627:                                              ; preds = %622
  %628 = load %struct.thread*, %struct.thread** %11, align 8
  %629 = load i32, i32* @PRIV_TTY_CONSOLE, align 4
  %630 = call i32 @priv_check(%struct.thread* %628, i32 %629)
  store i32 %630, i32* %12, align 4
  %631 = load i32, i32* %12, align 4
  %632 = icmp ne i32 %631, 0
  br i1 %632, label %633, label %635

633:                                              ; preds = %627
  %634 = load i32, i32* %12, align 4
  store i32 %634, i32* %6, align 4
  br label %743

635:                                              ; preds = %627
  %636 = load %struct.tty*, %struct.tty** @constty, align 8
  %637 = load %struct.tty*, %struct.tty** %7, align 8
  %638 = icmp eq %struct.tty* %636, %637
  br i1 %638, label %639, label %640

639:                                              ; preds = %635
  store i32 0, i32* %6, align 4
  br label %743

640:                                              ; preds = %635
  %641 = load %struct.tty*, %struct.tty** @constty, align 8
  %642 = icmp ne %struct.tty* %641, null
  br i1 %642, label %643, label %645

643:                                              ; preds = %640
  %644 = load i32, i32* @EBUSY, align 4
  store i32 %644, i32* %6, align 4
  br label %743

645:                                              ; preds = %640
  %646 = load %struct.tty*, %struct.tty** %7, align 8
  %647 = call i32 @tty_unlock(%struct.tty* %646)
  %648 = load %struct.tty*, %struct.tty** %7, align 8
  %649 = call i32 @constty_set(%struct.tty* %648)
  %650 = load %struct.tty*, %struct.tty** %7, align 8
  %651 = call i32 @tty_lock(%struct.tty* %650)
  br label %659

652:                                              ; preds = %622
  %653 = load %struct.tty*, %struct.tty** @constty, align 8
  %654 = load %struct.tty*, %struct.tty** %7, align 8
  %655 = icmp eq %struct.tty* %653, %654
  br i1 %655, label %656, label %658

656:                                              ; preds = %652
  %657 = call i32 (...) @constty_clear()
  br label %658

658:                                              ; preds = %656, %652
  br label %659

659:                                              ; preds = %658, %645
  store i32 0, i32* %6, align 4
  br label %743

660:                                              ; preds = %5
  %661 = load i8*, i8** %9, align 8
  %662 = bitcast i8* %661 to %struct.winsize*
  %663 = load %struct.tty*, %struct.tty** %7, align 8
  %664 = getelementptr inbounds %struct.tty, %struct.tty* %663, i32 0, i32 2
  %665 = bitcast %struct.winsize* %662 to i8*
  %666 = bitcast %struct.winsize* %664 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %665, i8* align 8 %666, i64 4, i1 false)
  store i32 0, i32* %6, align 4
  br label %743

667:                                              ; preds = %5
  %668 = load %struct.tty*, %struct.tty** %7, align 8
  %669 = load i8*, i8** %9, align 8
  %670 = call i32 @tty_set_winsize(%struct.tty* %668, i8* %669)
  store i32 0, i32* %6, align 4
  br label %743

671:                                              ; preds = %5
  %672 = load i32, i32* @TF_EXCLUDE, align 4
  %673 = load %struct.tty*, %struct.tty** %7, align 8
  %674 = getelementptr inbounds %struct.tty, %struct.tty* %673, i32 0, i32 1
  %675 = load i32, i32* %674, align 4
  %676 = or i32 %675, %672
  store i32 %676, i32* %674, align 4
  store i32 0, i32* %6, align 4
  br label %743

677:                                              ; preds = %5
  %678 = load i32, i32* @TF_EXCLUDE, align 4
  %679 = xor i32 %678, -1
  %680 = load %struct.tty*, %struct.tty** %7, align 8
  %681 = getelementptr inbounds %struct.tty, %struct.tty* %680, i32 0, i32 1
  %682 = load i32, i32* %681, align 4
  %683 = and i32 %682, %679
  store i32 %683, i32* %681, align 4
  store i32 0, i32* %6, align 4
  br label %743

684:                                              ; preds = %5
  %685 = load i32, i32* @TF_STOPPED, align 4
  %686 = load %struct.tty*, %struct.tty** %7, align 8
  %687 = getelementptr inbounds %struct.tty, %struct.tty* %686, i32 0, i32 1
  %688 = load i32, i32* %687, align 4
  %689 = or i32 %688, %685
  store i32 %689, i32* %687, align 4
  %690 = load %struct.tty*, %struct.tty** %7, align 8
  %691 = load i32, i32* @TIOCPKT_STOP, align 4
  %692 = call i32 @ttydevsw_pktnotify(%struct.tty* %690, i32 %691)
  store i32 0, i32* %6, align 4
  br label %743

693:                                              ; preds = %5
  %694 = load i32, i32* @TF_STOPPED, align 4
  %695 = xor i32 %694, -1
  %696 = load %struct.tty*, %struct.tty** %7, align 8
  %697 = getelementptr inbounds %struct.tty, %struct.tty* %696, i32 0, i32 1
  %698 = load i32, i32* %697, align 4
  %699 = and i32 %698, %695
  store i32 %699, i32* %697, align 4
  %700 = load %struct.tty*, %struct.tty** %7, align 8
  %701 = call i32 @ttydevsw_outwakeup(%struct.tty* %700)
  %702 = load %struct.tty*, %struct.tty** %7, align 8
  %703 = load i32, i32* @TIOCPKT_START, align 4
  %704 = call i32 @ttydevsw_pktnotify(%struct.tty* %702, i32 %703)
  store i32 0, i32* %6, align 4
  br label %743

705:                                              ; preds = %5
  %706 = load %struct.tty*, %struct.tty** %7, align 8
  %707 = call i32 @tty_info(%struct.tty* %706)
  store i32 0, i32* %6, align 4
  br label %743

708:                                              ; preds = %5
  %709 = load i32, i32* %10, align 4
  %710 = load i32, i32* @FREAD, align 4
  %711 = and i32 %709, %710
  %712 = icmp eq i32 %711, 0
  br i1 %712, label %713, label %720

713:                                              ; preds = %708
  %714 = load %struct.thread*, %struct.thread** %11, align 8
  %715 = load i32, i32* @PRIV_TTY_STI, align 4
  %716 = call i32 @priv_check(%struct.thread* %714, i32 %715)
  %717 = icmp ne i32 %716, 0
  br i1 %717, label %718, label %720

718:                                              ; preds = %713
  %719 = load i32, i32* @EPERM, align 4
  store i32 %719, i32* %6, align 4
  br label %743

720:                                              ; preds = %713, %708
  %721 = load %struct.tty*, %struct.tty** %7, align 8
  %722 = load %struct.thread*, %struct.thread** %11, align 8
  %723 = getelementptr inbounds %struct.thread, %struct.thread* %722, i32 0, i32 0
  %724 = load %struct.proc*, %struct.proc** %723, align 8
  %725 = call i32 @tty_is_ctty(%struct.tty* %721, %struct.proc* %724)
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %734, label %727

727:                                              ; preds = %720
  %728 = load %struct.thread*, %struct.thread** %11, align 8
  %729 = load i32, i32* @PRIV_TTY_STI, align 4
  %730 = call i32 @priv_check(%struct.thread* %728, i32 %729)
  %731 = icmp ne i32 %730, 0
  br i1 %731, label %732, label %734

732:                                              ; preds = %727
  %733 = load i32, i32* @EACCES, align 4
  store i32 %733, i32* %6, align 4
  br label %743

734:                                              ; preds = %727, %720
  %735 = load %struct.tty*, %struct.tty** %7, align 8
  %736 = load i8*, i8** %9, align 8
  %737 = load i8, i8* %736, align 1
  %738 = call i32 @ttydisc_rint(%struct.tty* %735, i8 signext %737, i32 0)
  %739 = load %struct.tty*, %struct.tty** %7, align 8
  %740 = call i32 @ttydisc_rint_done(%struct.tty* %739)
  store i32 0, i32* %6, align 4
  br label %743

741:                                              ; preds = %5
  %742 = load i32, i32* @ENOIOCTL, align 4
  store i32 %742, i32* %6, align 4
  br label %743

743:                                              ; preds = %741, %734, %732, %718, %705, %693, %684, %677, %671, %667, %660, %659, %643, %639, %633, %620, %602, %599, %595, %571, %568, %554, %498, %495, %464, %448, %424, %422, %414, %395, %384, %383, %303, %275, %209, %158, %152, %150, %126, %124, %106, %100, %99, %98, %72, %60, %48, %29, %25, %21
  %744 = load i32, i32* %6, align 4
  ret i32 %744
}

declare dso_local i32 @ttydevsw_modem(%struct.tty*, i32, i32) #1

declare dso_local i32 @ttyinq_bytescanonicalized(i32*) #1

declare dso_local i32 @ttyoutq_bytesused(i32*) #1

declare dso_local i32 @tty_is_ctty(%struct.tty*, %struct.proc*) #1

declare dso_local i32 @tty_unlock(%struct.tty*) #1

declare dso_local i32 @fsetown(i32, i32*) #1

declare dso_local i32 @tty_lock(%struct.tty*) #1

declare dso_local i32 @fgetown(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tty_drain(%struct.tty*, i32) #1

declare dso_local i32 @tty_flush(%struct.tty*, i32) #1

declare dso_local i32 @ttydevsw_param(%struct.tty*, %struct.termios*) #1

declare dso_local i32 @tty_watermarks(%struct.tty*) #1

declare dso_local i32 @memcpy(i32**, i32*, i32) #1

declare dso_local i32 @ttydisc_optimize(%struct.tty*) #1

declare dso_local i32 @ttyinq_canonicalize(i32*) #1

declare dso_local i32 @tty_wakeup(%struct.tty*, i32) #1

declare dso_local i32 @CTRL(i8 signext) #1

declare dso_local i32 @ttydevsw_pktnotify(%struct.tty*, i32) #1

declare dso_local i32 @MPASS(%struct.TYPE_4__*) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @SESS_LEADER(%struct.proc*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.pgrp* @pgfind(i32) #1

declare dso_local i32 @PGRP_UNLOCK(%struct.pgrp*) #1

declare dso_local i32 @sx_sunlock(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @constty_set(%struct.tty*) #1

declare dso_local i32 @constty_clear(...) #1

declare dso_local i32 @tty_set_winsize(%struct.tty*, i8*) #1

declare dso_local i32 @ttydevsw_outwakeup(%struct.tty*) #1

declare dso_local i32 @tty_info(%struct.tty*) #1

declare dso_local i32 @ttydisc_rint(%struct.tty*, i8 signext, i32) #1

declare dso_local i32 @ttydisc_rint_done(%struct.tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
