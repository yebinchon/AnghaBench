; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwmpegts.c_mpegtsrecv.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fwcontrol/extr_fwmpegts.c_mpegtsrecv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciphdr = type { i64, i32, i32, i32, i32 }
%struct.fw_isochreq = type { i8, i8, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.fw_isobufreq = type { i8, i8, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.fw_pkt = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.mpeg_pldt = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDOUT_FILENO = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@EX_NOINPUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@RBUFSIZE = common dso_local global i32 0, align 4
@NCHUNK = common dso_local global i32 0, align 4
@NPACKET_R = common dso_local global i32 0, align 4
@PSIZE = common dso_local global i32 0, align 4
@FW_SSTBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"ioctl\00", align 1
@FW_SRSTREAM = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [25 x i8] c"(EAGAIN) - push 'Play'?\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"read failed\00", align 1
@CIP_FMT_MPEG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"unknown format 0x%x\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"unsupported MPEG TS stream, fn=%d (only fn=3 is supported)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mpegtsrecv(i32 %0, i8* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.ciphdr*, align 8
  %10 = alloca %struct.fw_isochreq, align 8
  %11 = alloca %struct.fw_isobufreq, align 8
  %12 = alloca %struct.fw_pkt*, align 8
  %13 = alloca %struct.mpeg_pldt*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %20, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = call i64 @strcmp(i8* %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = load i32, i32* @STDOUT_FILENO, align 4
  store i32 %27, i32* %15, align 4
  br label %43

28:                                               ; preds = %4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* @O_CREAT, align 4
  %31 = load i32, i32* @O_WRONLY, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @O_TRUNC, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @open(i8* %29, i32 %34, i32 432)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load i32, i32* @EX_NOINPUT, align 4
  %40 = load i8*, i8** %6, align 8
  %41 = call i32 (i32, i8*, ...) @err(i32 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %40)
  br label %42

42:                                               ; preds = %38, %28
  br label %43

43:                                               ; preds = %42, %26
  %44 = load i32, i32* @RBUFSIZE, align 4
  %45 = call i8* @malloc(i32 %44)
  store i8* %45, i8** %22, align 8
  %46 = load i32, i32* @NCHUNK, align 4
  %47 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %11, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @NPACKET_R, align 4
  %50 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %11, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @PSIZE, align 4
  %53 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %11, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %11, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %11, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = getelementptr inbounds %struct.fw_isobufreq, %struct.fw_isobufreq* %11, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @FW_SSTBUF, align 4
  %63 = bitcast %struct.fw_isobufreq* %11 to %struct.fw_isochreq*
  %64 = call i64 @ioctl(i32 %61, i32 %62, %struct.fw_isochreq* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %43
  %67 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %43
  %69 = load i8, i8* %7, align 1
  %70 = sext i8 %69 to i32
  %71 = and i32 %70, 63
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds %struct.fw_isochreq, %struct.fw_isochreq* %10, i32 0, i32 0
  store i8 %72, i8* %73, align 8
  %74 = load i8, i8* %7, align 1
  %75 = sext i8 %74 to i32
  %76 = ashr i32 %75, 6
  %77 = and i32 %76, 3
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds %struct.fw_isochreq, %struct.fw_isochreq* %10, i32 0, i32 1
  store i8 %78, i8* %79, align 1
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @FW_SRSTREAM, align 4
  %82 = call i64 @ioctl(i32 %80, i32 %81, %struct.fw_isochreq* %10)
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %68
  %85 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %86

86:                                               ; preds = %84, %68
  store i32 0, i32* %18, align 4
  store i32 0, i32* %16, align 4
  br label %87

87:                                               ; preds = %216, %107, %86
  %88 = load i32, i32* %8, align 4
  %89 = icmp sle i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %87
  %91 = load i32, i32* %16, align 4
  %92 = load i32, i32* %8, align 4
  %93 = icmp sle i32 %91, %92
  br label %94

94:                                               ; preds = %90, %87
  %95 = phi i1 [ true, %87 ], [ %93, %90 ]
  br i1 %95, label %96, label %217

96:                                               ; preds = %94
  %97 = load i32, i32* %5, align 4
  %98 = load i8*, i8** %22, align 8
  %99 = load i32, i32* @RBUFSIZE, align 4
  %100 = call i32 @read(i32 %97, i8* %98, i32 %99)
  store i32 %100, i32* %21, align 4
  store i32 %100, i32* %17, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %96
  %104 = load i64, i64* @errno, align 8
  %105 = load i64, i64* @EAGAIN, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %103
  %108 = load i32, i32* @stderr, align 4
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %108, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %87

110:                                              ; preds = %103
  %111 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %112

112:                                              ; preds = %110, %96
  %113 = load i8*, i8** %22, align 8
  %114 = bitcast i8* %113 to i32*
  store i32* %114, i32** %14, align 8
  br label %115

115:                                              ; preds = %213, %112
  %116 = load i32*, i32** %14, align 8
  %117 = bitcast i32* %116 to %struct.fw_pkt*
  store %struct.fw_pkt* %117, %struct.fw_pkt** %12, align 8
  %118 = load i32*, i32** %14, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = bitcast i32* %119 to %struct.ciphdr*
  store %struct.ciphdr* %120, %struct.ciphdr** %9, align 8
  %121 = load %struct.ciphdr*, %struct.ciphdr** %9, align 8
  %122 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @CIP_FMT_MPEG, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %131

126:                                              ; preds = %115
  %127 = load %struct.ciphdr*, %struct.ciphdr** %9, align 8
  %128 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i64 %129)
  br label %131

131:                                              ; preds = %126, %115
  %132 = load %struct.ciphdr*, %struct.ciphdr** %9, align 8
  %133 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 3
  br i1 %135, label %136, label %142

136:                                              ; preds = %131
  %137 = load %struct.ciphdr*, %struct.ciphdr** %9, align 8
  %138 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = call i32 @errx(i32 1, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i64 %140)
  br label %142

142:                                              ; preds = %136, %131
  %143 = load %struct.ciphdr*, %struct.ciphdr** %9, align 8
  %144 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %143, i64 1
  %145 = bitcast %struct.ciphdr* %144 to i32*
  store i32* %145, i32** %14, align 8
  %146 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %147 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = icmp ule i64 %151, 24
  br i1 %152, label %153, label %154

153:                                              ; preds = %142
  br label %197

154:                                              ; preds = %142
  %155 = load %struct.ciphdr*, %struct.ciphdr** %9, align 8
  %156 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.ciphdr*, %struct.ciphdr** %9, align 8
  %159 = getelementptr inbounds %struct.ciphdr, %struct.ciphdr* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = shl i32 1, %160
  %162 = srem i32 %157, %161
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  store i32 1, i32* %20, align 4
  br label %165

165:                                              ; preds = %164, %154
  %166 = load i32*, i32** %14, align 8
  %167 = bitcast i32* %166 to %struct.mpeg_pldt*
  store %struct.mpeg_pldt* %167, %struct.mpeg_pldt** %13, align 8
  br label %168

168:                                              ; preds = %193, %165
  %169 = load %struct.mpeg_pldt*, %struct.mpeg_pldt** %13, align 8
  %170 = ptrtoint %struct.mpeg_pldt* %169 to i64
  %171 = load i32*, i32** %14, align 8
  %172 = bitcast i32* %171 to i8*
  %173 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %174 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i8, i8* %172, i64 %178
  %180 = getelementptr inbounds i8, i8* %179, i64 -24
  %181 = ptrtoint i8* %180 to i64
  %182 = icmp slt i64 %170, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %168
  %184 = load i32, i32* %20, align 4
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %186, label %192

186:                                              ; preds = %183
  %187 = load i32, i32* %15, align 4
  %188 = load %struct.mpeg_pldt*, %struct.mpeg_pldt** %13, align 8
  %189 = getelementptr inbounds %struct.mpeg_pldt, %struct.mpeg_pldt* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @write(i32 %187, i32 %190, i32 4)
  br label %192

192:                                              ; preds = %186, %183
  br label %193

193:                                              ; preds = %192
  %194 = load %struct.mpeg_pldt*, %struct.mpeg_pldt** %13, align 8
  %195 = getelementptr inbounds %struct.mpeg_pldt, %struct.mpeg_pldt* %194, i32 1
  store %struct.mpeg_pldt* %195, %struct.mpeg_pldt** %13, align 8
  br label %168

196:                                              ; preds = %168
  br label %197

197:                                              ; preds = %196, %153
  %198 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %199 = getelementptr inbounds %struct.fw_pkt, %struct.fw_pkt* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 4
  store i32 %203, i32* %19, align 4
  %204 = load %struct.fw_pkt*, %struct.fw_pkt** %12, align 8
  %205 = ptrtoint %struct.fw_pkt* %204 to i64
  %206 = load i32, i32* %19, align 4
  %207 = sext i32 %206 to i64
  %208 = add nsw i64 %205, %207
  %209 = inttoptr i64 %208 to i32*
  store i32* %209, i32** %14, align 8
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* %21, align 4
  %212 = sub nsw i32 %211, %210
  store i32 %212, i32* %21, align 4
  br label %213

213:                                              ; preds = %197
  %214 = load i32, i32* %21, align 4
  %215 = icmp sgt i32 %214, 0
  br i1 %215, label %115, label %216

216:                                              ; preds = %213
  br label %87

217:                                              ; preds = %94
  %218 = load i32, i32* %15, align 4
  %219 = load i32, i32* @STDOUT_FILENO, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %221, label %224

221:                                              ; preds = %217
  %222 = load i32, i32* %15, align 4
  %223 = call i32 @close(i32 %222)
  br label %224

224:                                              ; preds = %221, %217
  %225 = load i32, i32* @stderr, align 4
  %226 = call i32 (i32, i8*, ...) @fprintf(i32 %225, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  ret void
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.fw_isochreq*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @errx(i32, i8*, i64) #1

declare dso_local i32 @write(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
