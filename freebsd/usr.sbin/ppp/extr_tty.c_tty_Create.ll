; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Create.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.physical = type { i32, i64, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i64, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i8* }
%struct.ttydevice = type { i32, i8*, %struct.device, %struct.termios, %struct.TYPE_6__, i32 }
%struct.termios = type { i32, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i64 }

@LogDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"%s: Input is a tty (%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s: Opened %s\0A\00", align 1
@basettydevice = common dso_local global i32 0, align 4
@CD_DEFAULT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [80 x i8] c"%s: tty_Create: physical (get): fd = %d, iflag = %lx, oflag = %lx, cflag = %lx\0A\00", align 1
@CLOCAL = common dso_local global i32 0, align 4
@CCTS_OFLOW = common dso_local global i32 0, align 4
@CRTS_IFLOW = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i64 0, align 8
@IXON = common dso_local global i64 0, align 8
@PHYS_DEDICATED = common dso_local global i64 0, align 8
@HUPCL = common dso_local global i32 0, align 4
@PHYS_DIRECT = common dso_local global i64 0, align 8
@CSIZE = common dso_local global i32 0, align 4
@PARODD = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [35 x i8] c"%s: %s: Unable to set speed to %d\0A\00", align 1
@TCSADRAIN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: tcsetattr: Failed configuring device\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"%.*s             Perhaps the speed is unsupported\0A\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [59 x i8] c"%s: physical (put): iflag = %lx, oflag = %lx, cflag = %lx\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"%s: Open: Cannot get physical flags: %s\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@PHYSICAL_NOFORCE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.device* @tty_Create(%struct.physical* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.ttydevice*, align 8
  %5 = alloca %struct.termios, align 8
  %6 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %3, align 8
  %7 = load %struct.physical*, %struct.physical** %3, align 8
  %8 = getelementptr inbounds %struct.physical, %struct.physical* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.physical*, %struct.physical** %3, align 8
  %13 = getelementptr inbounds %struct.physical, %struct.physical* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @isatty(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %1
  store %struct.device* null, %struct.device** %2, align 8
  br label %308

18:                                               ; preds = %11
  %19 = load %struct.physical*, %struct.physical** %3, align 8
  %20 = getelementptr inbounds %struct.physical, %struct.physical* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %18
  %27 = load %struct.physical*, %struct.physical** %3, align 8
  %28 = load %struct.physical*, %struct.physical** %3, align 8
  %29 = getelementptr inbounds %struct.physical, %struct.physical* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ttyname(i32 %30)
  %32 = call i32 @physical_SetDevice(%struct.physical* %27, i32 %31)
  %33 = load i32, i32* @LogDEBUG, align 4
  %34 = load %struct.physical*, %struct.physical** %3, align 8
  %35 = getelementptr inbounds %struct.physical, %struct.physical* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.physical*, %struct.physical** %3, align 8
  %39 = getelementptr inbounds %struct.physical, %struct.physical* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %37, i8* %41)
  br label %54

43:                                               ; preds = %18
  %44 = load i32, i32* @LogDEBUG, align 4
  %45 = load %struct.physical*, %struct.physical** %3, align 8
  %46 = getelementptr inbounds %struct.physical, %struct.physical* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.physical*, %struct.physical** %3, align 8
  %50 = getelementptr inbounds %struct.physical, %struct.physical* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %52)
  br label %54

54:                                               ; preds = %43, %26
  %55 = call %struct.ttydevice* @malloc(i32 80)
  store %struct.ttydevice* %55, %struct.ttydevice** %4, align 8
  %56 = icmp eq %struct.ttydevice* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = load %struct.physical*, %struct.physical** %3, align 8
  %59 = getelementptr inbounds %struct.physical, %struct.physical* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @close(i32 %60)
  %62 = load %struct.physical*, %struct.physical** %3, align 8
  %63 = getelementptr inbounds %struct.physical, %struct.physical* %62, i32 0, i32 0
  store i32 -1, i32* %63, align 8
  store %struct.device* null, %struct.device** %2, align 8
  br label %308

64:                                               ; preds = %54
  %65 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %66 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %65, i32 0, i32 2
  %67 = call i32 @memcpy(%struct.device* %66, i32* @basettydevice, i32 16)
  %68 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %69 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %68, i32 0, i32 5
  %70 = call i32 @memset(i32* %69, i8 signext 0, i32 4)
  %71 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %72 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %74 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 2
  store i64 0, i64* %75, align 8
  %76 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %77 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  store i32 -1, i32* %78, align 8
  %79 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %80 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  store i32 -1, i32* %81, align 4
  %82 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %83 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  store i8 0, i8* %84, align 1
  %85 = load %struct.physical*, %struct.physical** %3, align 8
  %86 = getelementptr inbounds %struct.physical, %struct.physical* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @tcgetattr(i32 %87, %struct.termios* %5)
  %89 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %90 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %89, i32 0, i32 3
  %91 = bitcast %struct.termios* %90 to i8*
  %92 = bitcast %struct.termios* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 24, i1 false)
  %93 = load %struct.physical*, %struct.physical** %3, align 8
  %94 = getelementptr inbounds %struct.physical, %struct.physical* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @CD_DEFAULT, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %109

100:                                              ; preds = %64
  %101 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %102 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.device, %struct.device* %102, i32 0, i32 1
  %104 = load %struct.physical*, %struct.physical** %3, align 8
  %105 = getelementptr inbounds %struct.physical, %struct.physical* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 3
  %107 = bitcast %struct.TYPE_7__* %103 to i8*
  %108 = bitcast %struct.TYPE_7__* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %107, i8* align 8 %108, i64 8, i1 false)
  br label %109

109:                                              ; preds = %100, %64
  %110 = load i32, i32* @LogDEBUG, align 4
  %111 = load %struct.physical*, %struct.physical** %3, align 8
  %112 = getelementptr inbounds %struct.physical, %struct.physical* %111, i32 0, i32 2
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.physical*, %struct.physical** %3, align 8
  %116 = getelementptr inbounds %struct.physical, %struct.physical* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i32
  %124 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %110, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %117, i32 %120, i32 %123, i32 %125)
  %127 = call i32 @cfmakeraw(%struct.termios* %5)
  %128 = load %struct.physical*, %struct.physical** %3, align 8
  %129 = getelementptr inbounds %struct.physical, %struct.physical* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %142

133:                                              ; preds = %109
  %134 = load i32, i32* @CLOCAL, align 4
  %135 = load i32, i32* @CCTS_OFLOW, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @CRTS_IFLOW, align 4
  %138 = or i32 %136, %137
  %139 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %138
  store i32 %141, i32* %139, align 8
  br label %151

142:                                              ; preds = %109
  %143 = load i32, i32* @CLOCAL, align 4
  %144 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = or i32 %145, %143
  store i32 %146, i32* %144, align 8
  %147 = load i64, i64* @IXOFF, align 8
  %148 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = or i64 %149, %147
  store i64 %150, i64* %148, align 8
  br label %151

151:                                              ; preds = %142, %133
  %152 = load i64, i64* @IXON, align 8
  %153 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = or i64 %154, %152
  store i64 %155, i64* %153, align 8
  %156 = load %struct.physical*, %struct.physical** %3, align 8
  %157 = getelementptr inbounds %struct.physical, %struct.physical* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @PHYS_DEDICATED, align 8
  %160 = icmp ne i64 %158, %159
  br i1 %160, label %161, label %166

161:                                              ; preds = %151
  %162 = load i32, i32* @HUPCL, align 4
  %163 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %162
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %161, %151
  %167 = load %struct.physical*, %struct.physical** %3, align 8
  %168 = getelementptr inbounds %struct.physical, %struct.physical* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @PHYS_DIRECT, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %212

172:                                              ; preds = %166
  %173 = load i32, i32* @CSIZE, align 4
  %174 = load i32, i32* @PARODD, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @PARENB, align 4
  %177 = or i32 %175, %176
  %178 = xor i32 %177, -1
  %179 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = and i32 %180, %178
  store i32 %181, i32* %179, align 8
  %182 = load %struct.physical*, %struct.physical** %3, align 8
  %183 = getelementptr inbounds %struct.physical, %struct.physical* %182, i32 0, i32 3
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = or i32 %187, %185
  store i32 %188, i32* %186, align 8
  %189 = load %struct.physical*, %struct.physical** %3, align 8
  %190 = getelementptr inbounds %struct.physical, %struct.physical* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @UnsignedToSpeed(i32 %192)
  %194 = call i32 @cfsetspeed(%struct.termios* %5, i32 %193)
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %211

196:                                              ; preds = %172
  %197 = load i32, i32* @LogWARN, align 4
  %198 = load %struct.physical*, %struct.physical** %3, align 8
  %199 = getelementptr inbounds %struct.physical, %struct.physical* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.physical*, %struct.physical** %3, align 8
  %203 = getelementptr inbounds %struct.physical, %struct.physical* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load i8*, i8** %204, align 8
  %206 = load %struct.physical*, %struct.physical** %3, align 8
  %207 = getelementptr inbounds %struct.physical, %struct.physical* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %197, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %201, i8* %205, i32 %209)
  br label %211

211:                                              ; preds = %196, %172
  br label %212

212:                                              ; preds = %211, %166
  %213 = load %struct.physical*, %struct.physical** %3, align 8
  %214 = getelementptr inbounds %struct.physical, %struct.physical* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @TCSADRAIN, align 4
  %217 = call i32 @tcsetattr(i32 %215, i32 %216, %struct.termios* %5)
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %247

219:                                              ; preds = %212
  %220 = load i32, i32* @LogWARN, align 4
  %221 = load %struct.physical*, %struct.physical** %3, align 8
  %222 = getelementptr inbounds %struct.physical, %struct.physical* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %220, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %224)
  %226 = load %struct.physical*, %struct.physical** %3, align 8
  %227 = getelementptr inbounds %struct.physical, %struct.physical* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @PHYS_DIRECT, align 8
  %230 = icmp ne i64 %228, %229
  br i1 %230, label %231, label %246

231:                                              ; preds = %219
  %232 = load %struct.physical*, %struct.physical** %3, align 8
  %233 = getelementptr inbounds %struct.physical, %struct.physical* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = icmp sgt i32 %235, 115200
  br i1 %236, label %237, label %246

237:                                              ; preds = %231
  %238 = load i32, i32* @LogWARN, align 4
  %239 = load %struct.physical*, %struct.physical** %3, align 8
  %240 = getelementptr inbounds %struct.physical, %struct.physical* %239, i32 0, i32 2
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = call i64 @strlen(i32 %242)
  %244 = trunc i64 %243 to i32
  %245 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %238, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %244, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %246

246:                                              ; preds = %237, %231, %219
  br label %247

247:                                              ; preds = %246, %212
  %248 = load i32, i32* @LogDEBUG, align 4
  %249 = load %struct.physical*, %struct.physical** %3, align 8
  %250 = getelementptr inbounds %struct.physical, %struct.physical* %249, i32 0, i32 2
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = trunc i64 %254 to i32
  %256 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 1
  %257 = load i64, i64* %256, align 8
  %258 = trunc i64 %257 to i32
  %259 = getelementptr inbounds %struct.termios, %struct.termios* %5, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %248, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.7, i64 0, i64 0), i32 %252, i32 %255, i32 %258, i32 %260)
  %262 = load %struct.physical*, %struct.physical** %3, align 8
  %263 = getelementptr inbounds %struct.physical, %struct.physical* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* @F_GETFL, align 4
  %266 = call i32 @fcntl(i32 %264, i32 %265, i32 0)
  store i32 %266, i32* %6, align 4
  %267 = load i32, i32* %6, align 4
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %288

269:                                              ; preds = %247
  %270 = load i32, i32* @LogWARN, align 4
  %271 = load %struct.physical*, %struct.physical** %3, align 8
  %272 = getelementptr inbounds %struct.physical, %struct.physical* %271, i32 0, i32 2
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* @errno, align 4
  %276 = call i8* @strerror(i32 %275)
  %277 = call i32 (i32, i8*, i32, ...) @log_Printf(i32 %270, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i32 %274, i8* %276)
  %278 = load %struct.physical*, %struct.physical** %3, align 8
  %279 = call i32 @tty_Cooked(%struct.physical* %278)
  %280 = load %struct.physical*, %struct.physical** %3, align 8
  %281 = getelementptr inbounds %struct.physical, %struct.physical* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = call i32 @close(i32 %282)
  %284 = load %struct.physical*, %struct.physical** %3, align 8
  %285 = getelementptr inbounds %struct.physical, %struct.physical* %284, i32 0, i32 0
  store i32 -1, i32* %285, align 8
  %286 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %287 = call i32 @free(%struct.ttydevice* %286)
  store %struct.device* null, %struct.device** %2, align 8
  br label %308

288:                                              ; preds = %247
  %289 = load %struct.physical*, %struct.physical** %3, align 8
  %290 = getelementptr inbounds %struct.physical, %struct.physical* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = load i32, i32* @F_SETFL, align 4
  %293 = load i32, i32* %6, align 4
  %294 = load i32, i32* @O_NONBLOCK, align 4
  %295 = xor i32 %294, -1
  %296 = and i32 %293, %295
  %297 = call i32 @fcntl(i32 %291, i32 %292, i32 %296)
  br label %298

298:                                              ; preds = %288
  %299 = load %struct.physical*, %struct.physical** %3, align 8
  %300 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %301 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %300, i32 0, i32 2
  %302 = getelementptr inbounds %struct.device, %struct.device* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @PHYSICAL_NOFORCE, align 4
  %305 = call i32 @physical_SetupStack(%struct.physical* %299, i32 %303, i32 %304)
  %306 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %307 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %306, i32 0, i32 2
  store %struct.device* %307, %struct.device** %2, align 8
  br label %308

308:                                              ; preds = %298, %269, %57, %17
  %309 = load %struct.device*, %struct.device** %2, align 8
  ret %struct.device* %309
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @physical_SetDevice(%struct.physical*, i32) #1

declare dso_local i32 @ttyname(i32) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, ...) #1

declare dso_local %struct.ttydevice* @malloc(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @memcpy(%struct.device*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i8 signext, i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

declare dso_local i32 @cfsetspeed(%struct.termios*, i32) #1

declare dso_local i32 @UnsignedToSpeed(i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @tty_Cooked(%struct.physical*) #1

declare dso_local i32 @free(%struct.ttydevice*) #1

declare dso_local i32 @physical_SetupStack(%struct.physical*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
