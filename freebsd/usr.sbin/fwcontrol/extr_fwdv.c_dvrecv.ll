; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwdv.c_dvrecv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwdv.c_dvrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_isochreq = type { i8, i8, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i64, i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.fw_isobufreq = type { i8, i8, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.dvdbc = type { i32, i32, i32* }
%struct.ciphdr = type { i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.fw_pkt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.iovec = type { i8*, i32 }

@__const.dvrecv.nblocks = private unnamed_addr constant [2 x i32] [i32 250, i32 300], align 4
@NPACKET_R = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RBUFSIZE = common dso_local global i32 0, align 4
@DSIZE = common dso_local global i32 0, align 4
@MAXBLOCKS = common dso_local global i32 0, align 4
@NCHUNK = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@FW_SSTBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"ioctl FW_SSTBUF\00", align 1
@FW_SRSTREAM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"(EAGAIN) - push 'Play'?\0A\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@CIP_FMT_DVCR = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [20 x i8] c"unknown format 0x%x\00", align 1
@DV_SCT_HEADER = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@system_name = common dso_local global i8** null, align 8
@DV_DSF_12 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"%d:%02d:%02d %d\0D\00", align 1
@frame_rate = common dso_local global i32* null, align 8
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dvrecv(i32 %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_isochreq, align 8
  %10 = alloca %struct.fw_isobufreq, align 8
  %11 = alloca %struct.dvdbc*, align 8
  %12 = alloca %struct.ciphdr*, align 8
  %13 = alloca %struct.fw_pkt*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca [2 x i32], align 4
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i32 -1, i32* %24, align 4
  %29 = bitcast [2 x i32]* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 bitcast ([2 x i32]* @__const.dvrecv.nblocks to i8*), i64 8, i1 false)
  %30 = load i32, i32* @NPACKET_R, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %27, align 8
  %33 = alloca %struct.iovec, i64 %31, align 16
  store i64 %31, i64* %28, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %4
  %38 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %38, i32* %20, align 4
  br label %54

39:                                               ; preds = %4
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* @O_CREAT, align 4
  %42 = load i32, i32* @O_WRONLY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @O_TRUNC, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @open(i8* %40, i32 %45, i32 432)
  store i32 %46, i32* %20, align 4
  %47 = load i32, i32* %20, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @EX_NOINPUT, align 4
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 (i32, i8*, ...) @err(i32 %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51)
  br label %53

53:                                               ; preds = %49, %39
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* @RBUFSIZE, align 4
  %56 = call i8* @malloc(i32 %55)
  store i8* %56, i8** %15, align 8
  %57 = load i32, i32* @DSIZE, align 4
  %58 = load i32, i32* @MAXBLOCKS, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i8* @malloc(i32 %59)
  store i8* %60, i8** %14, align 8
  %61 = load i8*, i8** %14, align 8
  %62 = load i32, i32* @DSIZE, align 4
  %63 = load i32, i32* @MAXBLOCKS, align 4
  %64 = mul nsw i32 %62, %63
  %65 = call i32 @memset(i8* %61, i32 255, i32 %64)
  %66 = mul nuw i64 16, %31
  %67 = trunc i64 %66 to i32
  %68 = call i32 @bzero(%struct.iovec* %33, i32 %67)
  %69 = load i32, i32* @NCHUNK, align 4
  %70 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %10, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load i32, i32* @NPACKET_R, align 4
  %73 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %10, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @PSIZE, align 4
  %76 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %10, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %10, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 2
  store i64 0, i64* %79, align 8
  %80 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %10, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %10, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* @FW_SSTBUF, align 4
  %86 = bitcast %struct.fw_isobufreq* %10 to %struct.fw_isochreq*
  %87 = call i64 @ioctl(i32 %84, i32 %85, %struct.fw_isochreq* %86)
  %88 = icmp slt i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %54
  %90 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %54
  %92 = load i8, i8* %7, align 1
  %93 = sext i8 %92 to i32
  %94 = and i32 %93, 63
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.fw_isochreq, %struct.fw_isochreq* %9, i32 0, i32 0
  store i8 %95, i8* %96, align 8
  %97 = load i8, i8* %7, align 1
  %98 = sext i8 %97 to i32
  %99 = ashr i32 %98, 6
  %100 = and i32 %99, 3
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds %struct.fw_isochreq, %struct.fw_isochreq* %9, i32 0, i32 1
  store i8 %101, i8* %102, align 1
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @FW_SRSTREAM, align 4
  %105 = call i64 @ioctl(i32 %103, i32 %104, %struct.fw_isochreq* %9)
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %91
  %108 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %91
  store i32 0, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %110

110:                                              ; preds = %334, %137, %109
  %111 = load i32, i32* %8, align 4
  %112 = icmp sle i32 %111, 0
  br i1 %112, label %117, label %113

113:                                              ; preds = %110
  %114 = load i32, i32* %21, align 4
  %115 = load i32, i32* %8, align 4
  %116 = icmp sle i32 %114, %115
  br label %117

117:                                              ; preds = %113, %110
  %118 = phi i1 [ true, %110 ], [ %116, %113 ]
  br i1 %118, label %119, label %335

119:                                              ; preds = %117
  %120 = load i32, i32* %5, align 4
  %121 = load i8*, i8** %15, align 8
  %122 = load i32, i32* @RBUFSIZE, align 4
  %123 = call i32 @read(i32 %120, i8* %121, i32 %122)
  store i32 %123, i32* %17, align 4
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %17, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %142

126:                                              ; preds = %119
  %127 = load i64, i64* @errno, align 8
  %128 = load i64, i64* @EAGAIN, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 (i32, i8*, ...) @fprintf(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @stderr, align 4
  %134 = call i32 @fflush(i32 %133)
  %135 = load i32, i32* %17, align 4
  %136 = icmp sle i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %110

138:                                              ; preds = %130
  br label %141

139:                                              ; preds = %126
  %140 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %138
  br label %142

142:                                              ; preds = %141, %119
  store i32 0, i32* %23, align 4
  %143 = load i8*, i8** %15, align 8
  %144 = bitcast i8* %143 to i32*
  store i32* %144, i32** %16, align 8
  br label %145

145:                                              ; preds = %326, %142
  %146 = load i32*, i32** %16, align 8
  %147 = bitcast i32* %146 to %struct.fw_pkt*
  store %struct.fw_pkt* %147, %struct.fw_pkt** %13, align 8
  %148 = load i32*, i32** %16, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  %150 = bitcast i32* %149 to %struct.ciphdr*
  store %struct.ciphdr* %150, %struct.ciphdr** %12, align 8
  %151 = load %struct.ciphdr*, %struct.ciphdr** %12, align 8
  %152 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @CIP_FMT_DVCR, align 8
  %155 = icmp ne i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %145
  %157 = load %struct.ciphdr*, %struct.ciphdr** %12, align 8
  %158 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i64 %159)
  br label %161

161:                                              ; preds = %156, %145
  %162 = load %struct.ciphdr*, %struct.ciphdr** %12, align 8
  %163 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %162, i64 1
  %164 = bitcast %struct.ciphdr* %163 to i32*
  store i32* %164, i32** %16, align 8
  %165 = load %struct.fw_pkt*, %struct.fw_pkt** %13, align 8
  %166 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sext i32 %169 to i64
  %171 = icmp ule i64 %170, 24
  br i1 %171, label %172, label %173

172:                                              ; preds = %161
  br label %318

173:                                              ; preds = %161
  %174 = load i32*, i32** %16, align 8
  %175 = bitcast i32* %174 to %struct.dvdbc*
  store %struct.dvdbc* %175, %struct.dvdbc** %11, align 8
  br label %176

176:                                              ; preds = %312, %173
  %177 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %178 = bitcast %struct.dvdbc* %177 to i8*
  %179 = load i32*, i32** %16, align 8
  %180 = load %struct.ciphdr*, %struct.ciphdr** %12, align 8
  %181 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  %185 = bitcast i32* %184 to i8*
  %186 = icmp ult i8* %178, %185
  br i1 %186, label %187, label %315

187:                                              ; preds = %176
  %188 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %189 = getelementptr inbounds %struct.dvdbc, %struct.dvdbc* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = load i64, i64* @DV_SCT_HEADER, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %278

194:                                              ; preds = %187
  %195 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %196 = getelementptr inbounds %struct.dvdbc, %struct.dvdbc* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %278

199:                                              ; preds = %194
  %200 = load i32, i32* %24, align 4
  %201 = icmp slt i32 %200, 0
  br i1 %201, label %202, label %215

202:                                              ; preds = %199
  %203 = load %struct.ciphdr*, %struct.ciphdr** %12, align 8
  %204 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  store i32 %207, i32* %24, align 4
  %208 = load i32, i32* @stderr, align 4
  %209 = load i8**, i8*** @system_name, align 8
  %210 = load i32, i32* %24, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8*, i8** %209, i64 %211
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i32, i8*, ...) @fprintf(i32 %208, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %213)
  br label %215

215:                                              ; preds = %202, %199
  %216 = load i32, i32* %24, align 4
  %217 = icmp eq i32 %216, 1
  br i1 %217, label %218, label %235

218:                                              ; preds = %215
  %219 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %220 = getelementptr inbounds %struct.dvdbc, %struct.dvdbc* %219, i32 0, i32 2
  %221 = load i32*, i32** %220, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 0
  %223 = load i32, i32* %222, align 4
  %224 = load i32, i32* @DV_DSF_12, align 4
  %225 = and i32 %223, %224
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %227, label %235

227:                                              ; preds = %218
  %228 = load i32, i32* @DV_DSF_12, align 4
  %229 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %230 = getelementptr inbounds %struct.dvdbc, %struct.dvdbc* %229, i32 0, i32 2
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %228
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %227, %218, %215
  %236 = load i32, i32* %24, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 %237
  %239 = load i32, i32* %238, align 4
  store i32 %239, i32* %25, align 4
  %240 = load i32, i32* @stderr, align 4
  %241 = load i32, i32* %21, align 4
  %242 = load i32*, i32** @frame_rate, align 8
  %243 = load i32, i32* %24, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i32, i32* %242, i64 %244
  %246 = load i32, i32* %245, align 4
  %247 = mul nsw i32 3600, %246
  %248 = sdiv i32 %241, %247
  %249 = load i32, i32* %21, align 4
  %250 = load i32*, i32** @frame_rate, align 8
  %251 = load i32, i32* %24, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = mul nsw i32 60, %254
  %256 = sdiv i32 %249, %255
  %257 = srem i32 %256, 60
  %258 = load i32, i32* %21, align 4
  %259 = load i32*, i32** @frame_rate, align 8
  %260 = load i32, i32* %24, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sdiv i32 %258, %263
  %265 = srem i32 %264, 60
  %266 = load i32, i32* %21, align 4
  %267 = load i32*, i32** @frame_rate, align 8
  %268 = load i32, i32* %24, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = srem i32 %266, %271
  %273 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i32 %248, i32 %257, i32 %265, i32 %272)
  %274 = load i32, i32* %21, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %21, align 4
  %276 = load i32, i32* @stderr, align 4
  %277 = call i32 @fflush(i32 %276)
  store i32 0, i32* %22, align 4
  br label %278

278:                                              ; preds = %235, %194, %187
  %279 = load i32, i32* %21, align 4
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %288, label %281

281:                                              ; preds = %278
  %282 = load i32, i32* %8, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %281
  %285 = load i32, i32* %21, align 4
  %286 = load i32, i32* %8, align 4
  %287 = icmp sgt i32 %285, %286
  br i1 %287, label %288, label %289

288:                                              ; preds = %284, %278
  br label %312

289:                                              ; preds = %284, %281
  %290 = load i32, i32* %22, align 4
  %291 = add nsw i32 %290, 1
  store i32 %291, i32* %22, align 4
  %292 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %293 = bitcast %struct.dvdbc* %292 to i8*
  %294 = load i32, i32* %23, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i64 %295
  %297 = getelementptr inbounds %struct.iovec, %struct.iovec* %296, i32 0, i32 0
  store i8* %293, i8** %297, align 16
  %298 = load i32, i32* @DSIZE, align 4
  %299 = load i32, i32* %23, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %23, align 4
  %301 = sext i32 %299 to i64
  %302 = getelementptr inbounds %struct.iovec, %struct.iovec* %33, i64 %301
  %303 = getelementptr inbounds %struct.iovec, %struct.iovec* %302, i32 0, i32 1
  store i32 %298, i32* %303, align 8
  %304 = load i32, i32* %23, align 4
  %305 = load i32, i32* @NPACKET_R, align 4
  %306 = icmp sge i32 %304, %305
  br i1 %306, label %307, label %311

307:                                              ; preds = %289
  %308 = load i32, i32* %20, align 4
  %309 = load i32, i32* %23, align 4
  %310 = call i32 @writev(i32 %308, %struct.iovec* %33, i32 %309)
  store i32 0, i32* %23, align 4
  br label %311

311:                                              ; preds = %307, %289
  br label %312

312:                                              ; preds = %311, %288
  %313 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %314 = getelementptr inbounds %struct.dvdbc, %struct.dvdbc* %313, i64 6
  store %struct.dvdbc* %314, %struct.dvdbc** %11, align 8
  br label %176

315:                                              ; preds = %176
  %316 = load %struct.dvdbc*, %struct.dvdbc** %11, align 8
  %317 = bitcast %struct.dvdbc* %316 to i32*
  store i32* %317, i32** %16, align 8
  br label %318

318:                                              ; preds = %315, %172
  %319 = load i32*, i32** %16, align 8
  %320 = bitcast i32* %319 to i8*
  %321 = load i8*, i8** %15, align 8
  %322 = load i32, i32* %18, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i8, i8* %321, i64 %323
  %325 = icmp ult i8* %320, %324
  br i1 %325, label %326, label %327

326:                                              ; preds = %318
  br label %145

327:                                              ; preds = %318
  %328 = load i32, i32* %23, align 4
  %329 = icmp sgt i32 %328, 0
  br i1 %329, label %330, label %334

330:                                              ; preds = %327
  %331 = load i32, i32* %20, align 4
  %332 = load i32, i32* %23, align 4
  %333 = call i32 @writev(i32 %331, %struct.iovec* %33, i32 %332)
  br label %334

334:                                              ; preds = %330, %327
  br label %110

335:                                              ; preds = %117
  %336 = load i32, i32* %20, align 4
  %337 = load i32, i32* @STDOUT_FILENO, align 4
  %338 = icmp ne i32 %336, %337
  br i1 %338, label %339, label %342

339:                                              ; preds = %335
  %340 = load i32, i32* %20, align 4
  %341 = call i32 @close(i32 %340)
  br label %342

342:                                              ; preds = %339, %335
  %343 = load i32, i32* @stderr, align 4
  %344 = call i32 (i32, i8*, ...) @fprintf(i32 %343, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0))
  %345 = load i8*, i8** %27, align 8
  call void @llvm.stackrestore(i8* %345)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @open(i8*, i32, i32) #3

declare dso_local i32 @err(i32, i8*, ...) #3

declare dso_local i8* @malloc(i32) #3

declare dso_local i32 @memset(i8*, i32, i32) #3

declare dso_local i32 @bzero(%struct.iovec*, i32) #3

declare dso_local i64 @ioctl(i32, i32, %struct.fw_isochreq*) #3

declare dso_local i32 @read(i32, i8*, i32) #3

declare dso_local i32 @fprintf(i32, i8*, ...) #3

declare dso_local i32 @fflush(i32) #3

declare dso_local i32 @errx(i32, i8*, i64) #3

declare dso_local i32 @writev(i32, %struct.iovec*, i32) #3

declare dso_local i32 @close(i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
