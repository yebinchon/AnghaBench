; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_gather_unix.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sockstat/extr_sockstat.c_gather_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32, i8*, %struct.sock*, i64, %struct.addr*, %struct.addr*, i64, i32 }
%struct.addr = type { i32*, %struct.sockaddr_storage }
%struct.sockaddr_storage = type { i32 }
%struct.xunpgen = type { i64, i32 }
%struct.xunpcb = type { i32, i64, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"net.local.stream.pcblist\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"stream\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"net.local.dgram.pcblist\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"dgram\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"net.local.seqpacket.pcblist\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"seqpac\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"realloc()\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [15 x i8] c"sysctlbyname()\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"struct xinpgen size mismatch\00", align 1
@opt_v = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [34 x i8] c"warning: data may be inconsistent\00", align 1
@.str.10 = private unnamed_addr constant [28 x i8] c"struct xunpcb size mismatch\00", align 1
@opt_l = common dso_local global i32 0, align 4
@opt_c = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [9 x i8] c"malloc()\00", align 1
@AF_UNIX = common dso_local global i64 0, align 8
@HASHSIZE = common dso_local global i64 0, align 8
@sockhash = common dso_local global %struct.sock** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @gather_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gather_unix(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xunpgen*, align 8
  %4 = alloca %struct.xunpgen*, align 8
  %5 = alloca %struct.xunpcb*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.addr*, align 8
  %8 = alloca %struct.addr*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  switch i32 %16, label %20 [
    i32 128, label %17
    i32 130, label %18
    i32 129, label %19
  ]

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %22

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  br label %22

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8** %10, align 8
  br label %22

20:                                               ; preds = %1
  %21 = call i32 (...) @abort() #4
  unreachable

22:                                               ; preds = %19, %18, %17
  store i8* null, i8** %13, align 8
  store i64 8192, i64* %12, align 8
  store i32 5, i32* %15, align 4
  br label %23

23:                                               ; preds = %85, %22
  br label %24

24:                                               ; preds = %48, %23
  %25 = load i8*, i8** %13, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i8* @realloc(i8* %25, i64 %26)
  store i8* %27, i8** %13, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load i64, i64* %12, align 8
  store i64 %32, i64* %11, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i8*, i8** %13, align 8
  %35 = call i64 @sysctlbyname(i8* %33, i8* %34, i64* %11, i32* null, i32 0)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %51

38:                                               ; preds = %31
  %39 = load i64, i64* @errno, align 8
  %40 = load i64, i64* @ENOMEM, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42, %38
  %47 = call i32 @err(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i64, i64* %12, align 8
  %50 = mul i64 %49, 2
  store i64 %50, i64* %12, align 8
  br label %24

51:                                               ; preds = %37
  %52 = load i8*, i8** %13, align 8
  %53 = bitcast i8* %52 to %struct.xunpgen*
  store %struct.xunpgen* %53, %struct.xunpgen** %3, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %11, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = getelementptr inbounds i8, i8* %56, i64 -16
  %58 = bitcast i8* %57 to %struct.xunpgen*
  store %struct.xunpgen* %58, %struct.xunpgen** %4, align 8
  %59 = load %struct.xunpgen*, %struct.xunpgen** %3, align 8
  %60 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 16
  br i1 %63, label %70, label %64

64:                                               ; preds = %51
  %65 = load %struct.xunpgen*, %struct.xunpgen** %4, align 8
  %66 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 16
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %51
  %71 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %238

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72
  %74 = load %struct.xunpgen*, %struct.xunpgen** %3, align 8
  %75 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.xunpgen*, %struct.xunpgen** %4, align 8
  %78 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %73
  %82 = load i32, i32* %15, align 4
  %83 = add nsw i32 %82, -1
  store i32 %83, i32* %15, align 4
  %84 = icmp ne i32 %82, 0
  br label %85

85:                                               ; preds = %81, %73
  %86 = phi i1 [ false, %73 ], [ %84, %81 ]
  br i1 %86, label %23, label %87

87:                                               ; preds = %85
  %88 = load %struct.xunpgen*, %struct.xunpgen** %3, align 8
  %89 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.xunpgen*, %struct.xunpgen** %4, align 8
  %92 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %90, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %87
  %96 = load i64, i64* @opt_v, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = call i32 @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %100

100:                                              ; preds = %98, %95, %87
  br label %101

101:                                              ; preds = %208, %140, %100
  %102 = load %struct.xunpgen*, %struct.xunpgen** %3, align 8
  %103 = bitcast %struct.xunpgen* %102 to i8*
  %104 = load %struct.xunpgen*, %struct.xunpgen** %3, align 8
  %105 = getelementptr inbounds %struct.xunpgen, %struct.xunpgen* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %103, i64 %107
  %109 = bitcast i8* %108 to %struct.xunpgen*
  store %struct.xunpgen* %109, %struct.xunpgen** %3, align 8
  %110 = load %struct.xunpgen*, %struct.xunpgen** %3, align 8
  %111 = load %struct.xunpgen*, %struct.xunpgen** %4, align 8
  %112 = icmp uge %struct.xunpgen* %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %101
  br label %237

114:                                              ; preds = %101
  %115 = load %struct.xunpgen*, %struct.xunpgen** %3, align 8
  %116 = bitcast %struct.xunpgen* %115 to %struct.xunpcb*
  store %struct.xunpcb* %116, %struct.xunpcb** %5, align 8
  %117 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %118 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = icmp ne i64 %120, 40
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = call i32 @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.10, i64 0, i64 0))
  br label %238

124:                                              ; preds = %114
  %125 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %126 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @opt_l, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129, %124
  %133 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %134 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32, i32* @opt_c, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %141, label %140

140:                                              ; preds = %137, %129
  br label %101

141:                                              ; preds = %137, %132
  %142 = call i8* @calloc(i32 1, i32 64)
  %143 = bitcast i8* %142 to %struct.sock*
  store %struct.sock* %143, %struct.sock** %6, align 8
  %144 = icmp eq %struct.sock* %143, null
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  %148 = call i8* @calloc(i32 1, i32 16)
  %149 = bitcast i8* %148 to %struct.addr*
  store %struct.addr* %149, %struct.addr** %7, align 8
  %150 = icmp eq %struct.addr* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %153

153:                                              ; preds = %151, %147
  %154 = call i8* @calloc(i32 1, i32 16)
  %155 = bitcast i8* %154 to %struct.addr*
  store %struct.addr* %155, %struct.addr** %8, align 8
  %156 = icmp eq %struct.addr* %155, null
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 @err(i32 1, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %153
  %160 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %161 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %160, i32 0, i32 4
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.sock*, %struct.sock** %6, align 8
  %165 = getelementptr inbounds %struct.sock, %struct.sock* %164, i32 0, i32 3
  store i64 %163, i64* %165, align 8
  %166 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %167 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.sock*, %struct.sock** %6, align 8
  %170 = getelementptr inbounds %struct.sock, %struct.sock* %169, i32 0, i32 7
  store i32 %168, i32* %170, align 8
  %171 = load i32, i32* %2, align 4
  %172 = load %struct.sock*, %struct.sock** %6, align 8
  %173 = getelementptr inbounds %struct.sock, %struct.sock* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i64, i64* @AF_UNIX, align 8
  %175 = load %struct.sock*, %struct.sock** %6, align 8
  %176 = getelementptr inbounds %struct.sock, %struct.sock* %175, i32 0, i32 6
  store i64 %174, i64* %176, align 8
  %177 = load i8*, i8** %10, align 8
  %178 = load %struct.sock*, %struct.sock** %6, align 8
  %179 = getelementptr inbounds %struct.sock, %struct.sock* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %181 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %180, i32 0, i32 2
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @AF_UNIX, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %195

186:                                              ; preds = %159
  %187 = load %struct.addr*, %struct.addr** %7, align 8
  %188 = getelementptr inbounds %struct.addr, %struct.addr* %187, i32 0, i32 1
  %189 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %190 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %189, i32 0, i32 2
  %191 = bitcast %struct.TYPE_4__* %190 to i8*
  %192 = bitcast i8* %191 to %struct.sockaddr_storage*
  %193 = bitcast %struct.sockaddr_storage* %188 to i8*
  %194 = bitcast %struct.sockaddr_storage* %192 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %193, i8* align 4 %194, i64 4, i1 false)
  br label %208

195:                                              ; preds = %159
  %196 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %197 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %207

200:                                              ; preds = %195
  %201 = load %struct.xunpcb*, %struct.xunpcb** %5, align 8
  %202 = getelementptr inbounds %struct.xunpcb, %struct.xunpcb* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.addr*, %struct.addr** %8, align 8
  %205 = getelementptr inbounds %struct.addr, %struct.addr* %204, i32 0, i32 1
  %206 = bitcast %struct.sockaddr_storage* %205 to i64*
  store i64 %203, i64* %206, align 8
  br label %207

207:                                              ; preds = %200, %195
  br label %208

208:                                              ; preds = %207, %186
  %209 = load %struct.addr*, %struct.addr** %7, align 8
  %210 = getelementptr inbounds %struct.addr, %struct.addr* %209, i32 0, i32 0
  store i32* null, i32** %210, align 8
  %211 = load %struct.addr*, %struct.addr** %8, align 8
  %212 = getelementptr inbounds %struct.addr, %struct.addr* %211, i32 0, i32 0
  store i32* null, i32** %212, align 8
  %213 = load %struct.addr*, %struct.addr** %7, align 8
  %214 = load %struct.sock*, %struct.sock** %6, align 8
  %215 = getelementptr inbounds %struct.sock, %struct.sock* %214, i32 0, i32 5
  store %struct.addr* %213, %struct.addr** %215, align 8
  %216 = load %struct.addr*, %struct.addr** %8, align 8
  %217 = load %struct.sock*, %struct.sock** %6, align 8
  %218 = getelementptr inbounds %struct.sock, %struct.sock* %217, i32 0, i32 4
  store %struct.addr* %216, %struct.addr** %218, align 8
  %219 = load %struct.sock*, %struct.sock** %6, align 8
  %220 = getelementptr inbounds %struct.sock, %struct.sock* %219, i32 0, i32 3
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @HASHSIZE, align 8
  %223 = urem i64 %221, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %14, align 4
  %225 = load %struct.sock**, %struct.sock*** @sockhash, align 8
  %226 = load i32, i32* %14, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds %struct.sock*, %struct.sock** %225, i64 %227
  %229 = load %struct.sock*, %struct.sock** %228, align 8
  %230 = load %struct.sock*, %struct.sock** %6, align 8
  %231 = getelementptr inbounds %struct.sock, %struct.sock* %230, i32 0, i32 2
  store %struct.sock* %229, %struct.sock** %231, align 8
  %232 = load %struct.sock*, %struct.sock** %6, align 8
  %233 = load %struct.sock**, %struct.sock*** @sockhash, align 8
  %234 = load i32, i32* %14, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds %struct.sock*, %struct.sock** %233, i64 %235
  store %struct.sock* %232, %struct.sock** %236, align 8
  br label %101

237:                                              ; preds = %113
  br label %238

238:                                              ; preds = %237, %122, %70
  %239 = load i8*, i8** %13, align 8
  %240 = call i32 @free(i8* %239)
  ret void
}

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #1

declare dso_local i8* @realloc(i8*, i64) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i64 @sysctlbyname(i8*, i8*, i64*, i32*, i32) #2

declare dso_local i32 @warnx(i8*) #2

declare dso_local i8* @calloc(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @free(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
