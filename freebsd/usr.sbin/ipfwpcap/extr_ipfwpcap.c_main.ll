; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ipfwpcap/extr_ipfwpcap.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ipfwpcap/extr_ipfwpcap.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pcap_pkthdr = type { i8*, i8*, i32 }
%struct.sockaddr = type { i32 }

@BUFMAX = common dso_local global i32 0, align 4
@prog = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"drb:p:P:\00", align 1
@debug = common dso_local global i64 0, align 8
@reflect = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@maxbytes = common dso_local global i64 0, align 8
@maxpkts = common dso_local global i64 0, align 8
@pidfile = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"bind to %d.\0Adump to '%s'.\0A\00", align 1
@PF_INET = common dso_local global i32 0, align 4
@SOCK_RAW = common dso_local global i32 0, align 4
@IPPROTO_DIVERT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"socket(DIVERT)\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@INADDR_ANY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"bind(divert)\00", align 1
@DLT_RAW = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [7 x i8] c"select\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"recvfrom(%d) = %zd (%d)\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"recvfrom(sd)\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"  sendto(%d) = %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"sendto(sd)\00", align 1
@totpkts = common dso_local global i64 0, align 8
@totbytes = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sockaddr_in, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.pcap_pkthdr, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %11, align 4
  %21 = load i32, i32* @BUFMAX, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %16, align 8
  %24 = alloca i8, i64 %22, align 16
  store i64 %22, i64* %17, align 8
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 0
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** @prog, align 8
  br label %28

28:                                               ; preds = %61, %2
  %29 = load i32, i32* %4, align 4
  %30 = load i8**, i8*** %5, align 8
  %31 = call i32 @getopt(i32 %29, i8** %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store i32 %31, i32* %6, align 4
  %32 = icmp ne i32 %31, -1
  br i1 %32, label %33, label %62

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  switch i32 %34, label %58 [
    i32 100, label %35
    i32 114, label %38
    i32 98, label %41
    i32 112, label %47
    i32 80, label %53
    i32 63, label %57
  ]

35:                                               ; preds = %33
  %36 = load i64, i64* @debug, align 8
  %37 = add nsw i64 %36, 1
  store i64 %37, i64* @debug, align 8
  br label %61

38:                                               ; preds = %33
  %39 = load i32, i32* @reflect, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @reflect, align 4
  br label %61

41:                                               ; preds = %33
  %42 = load i8*, i8** @optarg, align 8
  %43 = call i32 @atol(i8* %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = ptrtoint i8* %45 to i64
  store i64 %46, i64* @maxbytes, align 8
  br label %61

47:                                               ; preds = %33
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i32 @atoi(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = inttoptr i64 %50 to i8*
  %52 = ptrtoint i8* %51 to i64
  store i64 %52, i64* @maxpkts, align 8
  br label %61

53:                                               ; preds = %33
  %54 = load i32, i32* @pidfile, align 4
  %55 = load i8*, i8** @optarg, align 8
  %56 = call i32 @strcpy(i32 %54, i8* %55)
  br label %61

57:                                               ; preds = %33
  br label %58

58:                                               ; preds = %33, %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %61

61:                                               ; preds = %58, %53, %47, %41, %38, %35
  br label %28

62:                                               ; preds = %28
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @optind, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp ne i32 %65, 2
  br i1 %66, label %70, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67, %62
  %71 = call i32 (...) @usage()
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i8**, i8*** %5, align 8
  %74 = load i32, i32* @optind, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* @optind, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i8*, i8** %73, i64 %76
  %78 = load i8*, i8** %77, align 8
  %79 = call i32 @atoi(i8* %78)
  store i32 %79, i32* %8, align 4
  %80 = load i8**, i8*** %5, align 8
  %81 = load i32, i32* @optind, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i8*, i8** %80, i64 %82
  %84 = load i8*, i8** %83, align 8
  store i8* %84, i8** %15, align 8
  %85 = load i64, i64* @debug, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load i32, i32* @stderr, align 4
  %89 = load i32, i32* %8, align 4
  %90 = load i8*, i8** %15, align 8
  %91 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %89, i8* %90)
  br label %92

92:                                               ; preds = %87, %72
  %93 = load i32, i32* @PF_INET, align 4
  %94 = load i32, i32* @SOCK_RAW, align 4
  %95 = load i32, i32* @IPPROTO_DIVERT, align 4
  %96 = call i32 @socket(i32 %93, i32 %94, i32 %95)
  store i32 %96, i32* %6, align 4
  %97 = icmp eq i32 %96, -1
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %100 = call i32 @exit(i32 2) #4
  unreachable

101:                                              ; preds = %92
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %7, align 4
  %103 = load i32, i32* %8, align 4
  %104 = call i32 @htons(i32 %103)
  %105 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 2
  store i32 %104, i32* %105, align 4
  %106 = load i32, i32* @AF_INET, align 4
  %107 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 1
  store i32 %106, i32* %107, align 4
  %108 = load i32, i32* @INADDR_ANY, align 4
  %109 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %10, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %7, align 4
  %112 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %113 = call i32 @bind(i32 %111, %struct.sockaddr* %112, i32 12)
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %118

115:                                              ; preds = %101
  %116 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %117 = call i32 @exit(i32 3) #4
  unreachable

118:                                              ; preds = %101
  %119 = load i32, i32* @DLT_RAW, align 4
  %120 = load i32, i32* @BUFMAX, align 4
  %121 = call i32* @pcap_open_dead(i32 %119, i32 %120)
  store i32* %121, i32** %18, align 8
  %122 = load i32*, i32** %18, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = call i32* @pcap_dump_open(i32* %122, i8* %123)
  store i32* %124, i32** %19, align 8
  %125 = load i32*, i32** %19, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %118
  %128 = load i32*, i32** %18, align 8
  %129 = load i8*, i8** %15, align 8
  %130 = call i32 @pcap_perror(i32* %128, i8* %129)
  %131 = call i32 @exit(i32 4) #4
  unreachable

132:                                              ; preds = %118
  %133 = load i32, i32* %8, align 4
  %134 = call i32 @okay(i32 %133)
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %137

137:                                              ; preds = %257, %238, %220, %184, %157, %149, %132
  %138 = call i32 @FD_ZERO(i32* %13)
  %139 = load i32, i32* %7, align 4
  %140 = call i32 @FD_SET(i32 %139, i32* %13)
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @select(i32 %141, i32* %13, i32* null, i32* null, i32* null)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %153

145:                                              ; preds = %137
  %146 = load i64, i64* @errno, align 8
  %147 = load i64, i64* @EINTR, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  br label %137

150:                                              ; preds = %145
  %151 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %152 = call i32 @quit(i32 11)
  br label %153

153:                                              ; preds = %150, %137
  %154 = load i32, i32* %7, align 4
  %155 = call i32 @FD_ISSET(i32 %154, i32* %13)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  br label %137

158:                                              ; preds = %153
  store i32 12, i32* %9, align 4
  %159 = load i32, i32* %7, align 4
  %160 = trunc i64 %22 to i32
  %161 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %162 = call i8* @recvfrom(i32 %159, i8* %24, i32 %160, i32 0, %struct.sockaddr* %161, i32* %9)
  store i8* %162, i8** %14, align 8
  %163 = load i64, i64* @debug, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %158
  %166 = load i32, i32* @stderr, align 4
  %167 = load i32, i32* %7, align 4
  %168 = load i8*, i8** %14, align 8
  %169 = load i32, i32* %9, align 4
  %170 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %166, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %167, i8* %168, i32 %169)
  br label %171

171:                                              ; preds = %165, %158
  %172 = load i8*, i8** %14, align 8
  %173 = icmp ult i8* %172, null
  br i1 %173, label %174, label %181

174:                                              ; preds = %171
  %175 = load i64, i64* @errno, align 8
  %176 = load i64, i64* @EINTR, align 8
  %177 = icmp ne i64 %175, %176
  br i1 %177, label %178, label %181

178:                                              ; preds = %174
  %179 = call i32 @perror(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0))
  %180 = call i32 @quit(i32 12)
  br label %181

181:                                              ; preds = %178, %174, %171
  %182 = load i8*, i8** %14, align 8
  %183 = icmp ule i8* %182, null
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  br label %137

185:                                              ; preds = %181
  %186 = load i32, i32* @reflect, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %208

188:                                              ; preds = %185
  store i32 12, i32* %9, align 4
  %189 = load i32, i32* %7, align 4
  %190 = load i8*, i8** %14, align 8
  %191 = bitcast %struct.sockaddr_in* %10 to %struct.sockaddr*
  %192 = load i32, i32* %9, align 4
  %193 = call i32 @sendto(i32 %189, i8* %24, i8* %190, i32 0, %struct.sockaddr* %191, i32 %192)
  store i32 %193, i32* %6, align 4
  %194 = load i64, i64* @debug, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %188
  %197 = load i32, i32* @stderr, align 4
  %198 = load i32, i32* %7, align 4
  %199 = load i32, i32* %6, align 4
  %200 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %197, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i32 %198, i32 %199)
  br label %201

201:                                              ; preds = %196, %188
  %202 = load i32, i32* %6, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %207

204:                                              ; preds = %201
  %205 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %206 = call i32 @quit(i32 13)
  br label %207

207:                                              ; preds = %204, %201
  br label %208

208:                                              ; preds = %207, %185
  %209 = load i64, i64* @maxpkts, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %224

211:                                              ; preds = %208
  %212 = load i64, i64* @totpkts, align 8
  %213 = add nsw i64 %212, 1
  store i64 %213, i64* @totpkts, align 8
  %214 = load i64, i64* @totpkts, align 8
  %215 = load i64, i64* @maxpkts, align 8
  %216 = icmp sgt i64 %214, %215
  br i1 %216, label %217, label %223

217:                                              ; preds = %211
  %218 = load i32, i32* @reflect, align 4
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  br label %137

221:                                              ; preds = %217
  %222 = call i32 @quit(i32 0)
  br label %223

223:                                              ; preds = %221, %211
  br label %224

224:                                              ; preds = %223, %208
  %225 = load i64, i64* @maxbytes, align 8
  %226 = icmp ne i64 %225, 0
  br i1 %226, label %227, label %242

227:                                              ; preds = %224
  %228 = load i8*, i8** %14, align 8
  %229 = load i64, i64* @totbytes, align 8
  %230 = getelementptr i8, i8* %228, i64 %229
  %231 = ptrtoint i8* %230 to i64
  store i64 %231, i64* @totbytes, align 8
  %232 = load i64, i64* @totbytes, align 8
  %233 = load i64, i64* @maxbytes, align 8
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %227
  %236 = load i32, i32* @reflect, align 4
  %237 = icmp eq i32 %236, 1
  br i1 %237, label %238, label %239

238:                                              ; preds = %235
  br label %137

239:                                              ; preds = %235
  %240 = call i32 @quit(i32 0)
  br label %241

241:                                              ; preds = %239, %227
  br label %242

242:                                              ; preds = %241, %224
  %243 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 2
  %244 = call i32 @gettimeofday(i32* %243, i32* null)
  %245 = load i8*, i8** %14, align 8
  %246 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 0
  store i8* %245, i8** %246, align 8
  %247 = getelementptr inbounds %struct.pcap_pkthdr, %struct.pcap_pkthdr* %20, i32 0, i32 1
  store i8* %245, i8** %247, align 8
  %248 = load i32*, i32** %19, align 8
  %249 = call i32 @pcap_dump(i32* %248, %struct.pcap_pkthdr* %20, i8* %24)
  %250 = load i32*, i32** %19, align 8
  %251 = call i64 @ferror(i32* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %242
  %254 = load i8*, i8** %15, align 8
  %255 = call i32 @perror(i8* %254)
  %256 = call i32 @quit(i32 14)
  br label %257

257:                                              ; preds = %253, %242
  %258 = load i32*, i32** %19, align 8
  %259 = call i32 @fflush(i32* %258)
  br label %137
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @getopt(i32, i8**, i8*) #2

declare dso_local i32 @atol(i8*) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @strcpy(i32, i8*) #2

declare dso_local i32 @usage(...) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @socket(i32, i32, i32) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @bind(i32, %struct.sockaddr*, i32) #2

declare dso_local i32* @pcap_open_dead(i32, i32) #2

declare dso_local i32* @pcap_dump_open(i32*, i8*) #2

declare dso_local i32 @pcap_perror(i32*, i8*) #2

declare dso_local i32 @okay(i32) #2

declare dso_local i32 @FD_ZERO(i32*) #2

declare dso_local i32 @FD_SET(i32, i32*) #2

declare dso_local i32 @select(i32, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @quit(i32) #2

declare dso_local i32 @FD_ISSET(i32, i32*) #2

declare dso_local i8* @recvfrom(i32, i8*, i32, i32, %struct.sockaddr*, i32*) #2

declare dso_local i32 @sendto(i32, i8*, i8*, i32, %struct.sockaddr*, i32) #2

declare dso_local i32 @gettimeofday(i32*, i32*) #2

declare dso_local i32 @pcap_dump(i32*, %struct.pcap_pkthdr*, i8*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @fflush(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
