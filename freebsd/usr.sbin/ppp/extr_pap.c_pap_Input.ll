; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pap.c_pap_Input.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_pap.c_pap_Input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bundle = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32* }
%struct.link = type { i32 }
%struct.mbuf = type { i32 }
%struct.physical = type { %struct.TYPE_15__*, %struct.TYPE_13__ }
%struct.TYPE_15__ = type { %struct.authinfo }
%struct.authinfo = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }

@LogERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"pap_Input: Not a physical link - dropped\0A\00", align 1
@PHASE_NETWORK = common dso_local global i64 0, align 8
@PHASE_AUTHENTICATE = common dso_local global i64 0, align 8
@LogPHASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unexpected pap input - dropped !\0A\00", align 1
@LogWARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"Pap Input: Truncated header !\0A\00", align 1
@MAXPAPCODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Pap Input: %d: Bad PAP code !\0A\00", align 1
@OPT_IDCHECK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"Pap Input: %s dropped (got id %d, not %d)\0A\00", align 1
@papcodes = common dso_local global i32* null, align 8
@MB_PAPIN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Pap Input: %s (%.*s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"Pap Input: No key given !\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Pap Input: Truncated key !\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Pap Input: Out of memory !\0A\00", align 1
@PROTO_PAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @pap_Input(%struct.bundle* %0, %struct.link* %1, %struct.mbuf* %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.bundle*, align 8
  %6 = alloca %struct.link*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.physical*, align 8
  %9 = alloca %struct.authinfo*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.bundle* %0, %struct.bundle** %5, align 8
  store %struct.link* %1, %struct.link** %6, align 8
  store %struct.mbuf* %2, %struct.mbuf** %7, align 8
  %15 = load %struct.link*, %struct.link** %6, align 8
  %16 = call %struct.physical* @link2physical(%struct.link* %15)
  store %struct.physical* %16, %struct.physical** %8, align 8
  %17 = load %struct.physical*, %struct.physical** %8, align 8
  %18 = getelementptr inbounds %struct.physical, %struct.physical* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  store %struct.authinfo* %20, %struct.authinfo** %9, align 8
  %21 = load %struct.physical*, %struct.physical** %8, align 8
  %22 = icmp eq %struct.physical* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %3
  %24 = load i32, i32* @LogERROR, align 4
  %25 = call i32 (i32, i8*, ...) @log_Printf(i32 %24, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %310

28:                                               ; preds = %3
  %29 = load %struct.bundle*, %struct.bundle** %5, align 8
  %30 = call i64 @bundle_Phase(%struct.bundle* %29)
  %31 = load i64, i64* @PHASE_NETWORK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load %struct.bundle*, %struct.bundle** %5, align 8
  %35 = call i64 @bundle_Phase(%struct.bundle* %34)
  %36 = load i64, i64* @PHASE_AUTHENTICATE, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* @LogPHASE, align 4
  %40 = call i32 (i32, i8*, ...) @log_Printf(i32 %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %42 = call i32 @m_freem(%struct.mbuf* %41)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %310

43:                                               ; preds = %33, %28
  %44 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %46 = call %struct.mbuf* @auth_ReadHeader(%struct.authinfo* %44, %struct.mbuf* %45)
  store %struct.mbuf* %46, %struct.mbuf** %7, align 8
  %47 = icmp eq %struct.mbuf* %46, null
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %50 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ntohs(i32 %53)
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @LogWARN, align 4
  %58 = call i32 (i32, i8*, ...) @log_Printf(i32 %57, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %310

59:                                               ; preds = %48, %43
  %60 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %61 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %59
  %67 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %68 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @MAXPAPCODE, align 4
  %73 = icmp sgt i32 %71, %72
  br i1 %73, label %74, label %84

74:                                               ; preds = %66, %59
  %75 = load i32, i32* @LogPHASE, align 4
  %76 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %77 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 (i32, i8*, ...) @log_Printf(i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %80)
  %82 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %83 = call i32 @m_freem(%struct.mbuf* %82)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %310

84:                                               ; preds = %66
  %85 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %86 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 128
  br i1 %90, label %91, label %128

91:                                               ; preds = %84
  %92 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %93 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %96 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %94, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %91
  %102 = load %struct.bundle*, %struct.bundle** %5, align 8
  %103 = load i32, i32* @OPT_IDCHECK, align 4
  %104 = call i64 @Enabled(%struct.bundle* %102, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %128

106:                                              ; preds = %101
  %107 = load i32, i32* @LogPHASE, align 4
  %108 = load i32*, i32** @papcodes, align 8
  %109 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %110 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %108, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %118 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %123 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = call i32 (i32, i8*, ...) @log_Printf(i32 %107, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %116, i64 %121, i64 %124)
  %126 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %127 = call i32 @m_freem(%struct.mbuf* %126)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %310

128:                                              ; preds = %101, %91, %84
  %129 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %130 = load i32, i32* @MB_PAPIN, align 4
  %131 = call i32 @m_settype(%struct.mbuf* %129, i32 %130)
  %132 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %133 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %138 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %140 = icmp ne %struct.mbuf* %139, null
  br i1 %140, label %141, label %174

141:                                              ; preds = %128
  %142 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %143 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %142, i64* %10, i64 1)
  store %struct.mbuf* %143, %struct.mbuf** %7, align 8
  %144 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %145 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 130
  br i1 %149, label %150, label %158

150:                                              ; preds = %141
  %151 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %152 = call %struct.mbuf* @m_pullup(%struct.mbuf* %151)
  store %struct.mbuf* %152, %struct.mbuf** %7, align 8
  %153 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %154 = call i8* @MBUF_CTOP(%struct.mbuf* %153)
  store i8* %154, i8** %13, align 8
  %155 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %156 = call i64 @m_length(%struct.mbuf* %155)
  %157 = trunc i64 %156 to i32
  store i32 %157, i32* %14, align 4
  br label %173

158:                                              ; preds = %141
  %159 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %160 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %161 = load i64, i64* %10, align 8
  %162 = call %struct.mbuf* @auth_ReadName(%struct.authinfo* %159, %struct.mbuf* %160, i64 %161)
  store %struct.mbuf* %162, %struct.mbuf** %7, align 8
  %163 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %164 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  store i8* %166, i8** %13, align 8
  %167 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %168 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = bitcast i8* %170 to i64*
  %172 = call i32 @strlen(i64* %171)
  store i32 %172, i32* %14, align 4
  br label %173

173:                                              ; preds = %158, %150
  br label %175

174:                                              ; preds = %128
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  store i32 0, i32* %14, align 4
  br label %175

175:                                              ; preds = %174, %173
  %176 = load i32, i32* @LogPHASE, align 4
  %177 = load i32*, i32** @papcodes, align 8
  %178 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %179 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %177, i64 %183
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %14, align 4
  %187 = load i8*, i8** %13, align 8
  %188 = call i32 (i32, i8*, ...) @log_Printf(i32 %176, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %185, i32 %186, i8* %187)
  %189 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %190 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  switch i32 %193, label %307 [
    i32 128, label %194
    i32 130, label %272
    i32 129, label %300
  ]

194:                                              ; preds = %175
  %195 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %196 = icmp eq %struct.mbuf* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @LogPHASE, align 4
  %199 = call i32 (i32, i8*, ...) @log_Printf(i32 %198, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  br label %307

200:                                              ; preds = %194
  %201 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %202 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %201, i64* %11, i64 1)
  store %struct.mbuf* %202, %struct.mbuf** %7, align 8
  %203 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %204 = call i64 @m_length(%struct.mbuf* %203)
  %205 = load i64, i64* %11, align 8
  %206 = icmp ult i64 %204, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %200
  %208 = load i32, i32* @LogERROR, align 4
  %209 = call i32 (i32, i8*, ...) @log_Printf(i32 %208, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  br label %307

210:                                              ; preds = %200
  %211 = load i64, i64* %11, align 8
  %212 = add i64 %211, 1
  %213 = trunc i64 %212 to i32
  %214 = call i64* @malloc(i32 %213)
  store i64* %214, i64** %12, align 8
  %215 = icmp eq i64* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %210
  %217 = load i32, i32* @LogERROR, align 4
  %218 = call i32 (i32, i8*, ...) @log_Printf(i32 %217, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %307

219:                                              ; preds = %210
  %220 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %221 = load i64*, i64** %12, align 8
  %222 = load i64, i64* %11, align 8
  %223 = call %struct.mbuf* @mbuf_Read(%struct.mbuf* %220, i64* %221, i64 %222)
  store %struct.mbuf* %223, %struct.mbuf** %7, align 8
  %224 = load i64*, i64** %12, align 8
  %225 = load i64, i64* %11, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  store i64 0, i64* %226, align 8
  %227 = load %struct.bundle*, %struct.bundle** %5, align 8
  %228 = getelementptr inbounds %struct.bundle, %struct.bundle* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = load i32, i32* %231, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %252

234:                                              ; preds = %219
  %235 = load %struct.bundle*, %struct.bundle** %5, align 8
  %236 = getelementptr inbounds %struct.bundle, %struct.bundle* %235, i32 0, i32 0
  %237 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %238 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %239 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = bitcast i8* %241 to i64*
  %243 = load i64*, i64** %12, align 8
  %244 = load i64*, i64** %12, align 8
  %245 = call i32 @strlen(i64* %244)
  %246 = call i32 @radius_Authenticate(%struct.TYPE_14__* %236, %struct.authinfo* %237, i64* %242, i64* %243, i32 %245, i32* null, i32 0)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %251, label %248

248:                                              ; preds = %234
  %249 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %250 = call i32 @pap_Failure(%struct.authinfo* %249)
  br label %251

251:                                              ; preds = %248, %234
  br label %269

252:                                              ; preds = %219
  %253 = load %struct.bundle*, %struct.bundle** %5, align 8
  %254 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %255 = getelementptr inbounds %struct.authinfo, %struct.authinfo* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i8*, i8** %256, align 8
  %258 = bitcast i8* %257 to i64*
  %259 = load i64*, i64** %12, align 8
  %260 = call i32 @auth_Validate(%struct.bundle* %253, i64* %258, i64* %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %265

262:                                              ; preds = %252
  %263 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %264 = call i32 @pap_Success(%struct.authinfo* %263)
  br label %268

265:                                              ; preds = %252
  %266 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %267 = call i32 @pap_Failure(%struct.authinfo* %266)
  br label %268

268:                                              ; preds = %265, %262
  br label %269

269:                                              ; preds = %268, %251
  %270 = load i64*, i64** %12, align 8
  %271 = call i32 @free(i64* %270)
  br label %307

272:                                              ; preds = %175
  %273 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %274 = call i32 @auth_StopTimer(%struct.authinfo* %273)
  %275 = load %struct.physical*, %struct.physical** %8, align 8
  %276 = getelementptr inbounds %struct.physical, %struct.physical* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* @PROTO_PAP, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %282, label %299

282:                                              ; preds = %272
  %283 = load %struct.physical*, %struct.physical** %8, align 8
  %284 = getelementptr inbounds %struct.physical, %struct.physical* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %285, i32 0, i32 1
  store i32 0, i32* %286, align 4
  %287 = load %struct.physical*, %struct.physical** %8, align 8
  %288 = getelementptr inbounds %struct.physical, %struct.physical* %287, i32 0, i32 1
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 8
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %298

293:                                              ; preds = %282
  %294 = load %struct.physical*, %struct.physical** %8, align 8
  %295 = getelementptr inbounds %struct.physical, %struct.physical* %294, i32 0, i32 0
  %296 = load %struct.TYPE_15__*, %struct.TYPE_15__** %295, align 8
  %297 = call i32 @datalink_AuthOk(%struct.TYPE_15__* %296)
  br label %298

298:                                              ; preds = %293, %282
  br label %299

299:                                              ; preds = %298, %272
  br label %307

300:                                              ; preds = %175
  %301 = load %struct.authinfo*, %struct.authinfo** %9, align 8
  %302 = call i32 @auth_StopTimer(%struct.authinfo* %301)
  %303 = load %struct.physical*, %struct.physical** %8, align 8
  %304 = getelementptr inbounds %struct.physical, %struct.physical* %303, i32 0, i32 0
  %305 = load %struct.TYPE_15__*, %struct.TYPE_15__** %304, align 8
  %306 = call i32 @datalink_AuthNotOk(%struct.TYPE_15__* %305)
  br label %307

307:                                              ; preds = %175, %300, %299, %269, %216, %207, %197
  %308 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %309 = call i32 @m_freem(%struct.mbuf* %308)
  store %struct.mbuf* null, %struct.mbuf** %4, align 8
  br label %310

310:                                              ; preds = %307, %106, %74, %56, %38, %23
  %311 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %311
}

declare dso_local %struct.physical* @link2physical(%struct.link*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @bundle_Phase(%struct.bundle*) #1

declare dso_local %struct.mbuf* @auth_ReadHeader(%struct.authinfo*, %struct.mbuf*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i64 @Enabled(%struct.bundle*, i32) #1

declare dso_local i32 @m_settype(%struct.mbuf*, i32) #1

declare dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf*, i64*, i64) #1

declare dso_local %struct.mbuf* @m_pullup(%struct.mbuf*) #1

declare dso_local i8* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @auth_ReadName(%struct.authinfo*, %struct.mbuf*, i64) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i64* @malloc(i32) #1

declare dso_local i32 @radius_Authenticate(%struct.TYPE_14__*, %struct.authinfo*, i64*, i64*, i32, i32*, i32) #1

declare dso_local i32 @pap_Failure(%struct.authinfo*) #1

declare dso_local i32 @auth_Validate(%struct.bundle*, i64*, i64*) #1

declare dso_local i32 @pap_Success(%struct.authinfo*) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @auth_StopTimer(%struct.authinfo*) #1

declare dso_local i32 @datalink_AuthOk(%struct.TYPE_15__*) #1

declare dso_local i32 @datalink_AuthNotOk(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
