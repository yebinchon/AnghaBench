; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_SetEnddisc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mp.c_mp_SetEnddisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, i32, i32*, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.mp }
%struct.TYPE_11__ = type { %struct.in_addr, %struct.TYPE_10__ }
%struct.in_addr = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.mp = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i8*, i32, i64 }
%struct.TYPE_9__ = type { i32 }
%struct.sockaddr_dl = type { i64*, i32, i32 }

@DATALINK_LCP = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"enddisc: Only changeable before LCP negotiations\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"enddisc: Only changeable at phase DEAD/ESTABLISH\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@ENDDISC_LOCAL = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@INADDR_ANY = common dso_local global i64 0, align 8
@ENDDISC_IP = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"mac\00", align 1
@ENDDISC_MAC = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [46 x i8] c"set enddisc: Can't locate MAC address for %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"magic\00", align 1
@ENDDISC_MAGIC = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"psn\00", align 1
@ENDDISC_PSN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [39 x i8] c"PSN endpoint requires additional data\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"%s: Unrecognised endpoint type\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mp_SetEnddisc(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca %struct.mp*, align 8
  %5 = alloca %struct.in_addr, align 8
  %6 = alloca %struct.sockaddr_dl, align 8
  %7 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %8 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %9 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %8, i32 0, i32 3
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 1
  store %struct.mp* %12, %struct.mp** %4, align 8
  %13 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %14 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %13, i32 0, i32 3
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %16 = call i32 @bundle_Phase(%struct.TYPE_15__* %15)
  switch i32 %16, label %29 [
    i32 129, label %17
    i32 128, label %18
  ]

17:                                               ; preds = %1
  br label %32

18:                                               ; preds = %1
  %19 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %20 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %19, i32 0, i32 3
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %20, align 8
  %22 = call i32 @bundle_HighestState(%struct.TYPE_15__* %21)
  %23 = load i32, i32* @DATALINK_LCP, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* @LogWARN, align 4
  %27 = call i32 (i32, i8*, ...) @log_Printf(i32 %26, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %360

28:                                               ; preds = %18
  br label %32

29:                                               ; preds = %1
  %30 = load i32, i32* @LogWARN, align 4
  %31 = call i32 (i32, i8*, ...) @log_Printf(i32 %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %360

32:                                               ; preds = %28, %17
  %33 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %34 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %37 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %32
  %41 = load %struct.mp*, %struct.mp** %4, align 8
  %42 = getelementptr inbounds %struct.mp, %struct.mp* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.mp*, %struct.mp** %4, align 8
  %46 = getelementptr inbounds %struct.mp, %struct.mp* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8 0, i8* %49, align 1
  %50 = load %struct.mp*, %struct.mp** %4, align 8
  %51 = getelementptr inbounds %struct.mp, %struct.mp* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 1
  store i32 0, i32* %53, align 8
  br label %359

54:                                               ; preds = %32
  %55 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %56 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %59 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %62, label %358

62:                                               ; preds = %54
  %63 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %64 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %67 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strcasecmp(i32 %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %103, label %74

74:                                               ; preds = %62
  %75 = load i64, i64* @ENDDISC_LOCAL, align 8
  %76 = load %struct.mp*, %struct.mp** %4, align 8
  %77 = getelementptr inbounds %struct.mp, %struct.mp* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 2
  store i64 %75, i64* %79, align 8
  %80 = load %struct.mp*, %struct.mp** %4, align 8
  %81 = getelementptr inbounds %struct.mp, %struct.mp* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %86 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %85, i32 0, i32 3
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @strcpy(i8* %84, i32 %90)
  %92 = load %struct.mp*, %struct.mp** %4, align 8
  %93 = getelementptr inbounds %struct.mp, %struct.mp* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i8* @strlen(i8* %96)
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.mp*, %struct.mp** %4, align 8
  %100 = getelementptr inbounds %struct.mp, %struct.mp* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  store i32 %98, i32* %102, align 8
  br label %357

103:                                              ; preds = %62
  %104 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %105 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %108 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @strcasecmp(i32 %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %161, label %115

115:                                              ; preds = %103
  %116 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %117 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %116, i32 0, i32 3
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @INADDR_ANY, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %135

126:                                              ; preds = %115
  %127 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %128 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %127, i32 0, i32 3
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 0
  %134 = call i32 @ncprange_getip4addr(i32* %133, %struct.in_addr* %5)
  br label %144

135:                                              ; preds = %115
  %136 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %137 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %136, i32 0, i32 3
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = bitcast %struct.in_addr* %5 to i8*
  %143 = bitcast %struct.in_addr* %141 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %142, i8* align 8 %143, i64 8, i1 false)
  br label %144

144:                                              ; preds = %135, %126
  %145 = load %struct.mp*, %struct.mp** %4, align 8
  %146 = getelementptr inbounds %struct.mp, %struct.mp* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %151 = call i32 @memcpy(i8* %149, i64* %150, i32 8)
  %152 = load i64, i64* @ENDDISC_IP, align 8
  %153 = load %struct.mp*, %struct.mp** %4, align 8
  %154 = getelementptr inbounds %struct.mp, %struct.mp* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 2
  store i64 %152, i64* %156, align 8
  %157 = load %struct.mp*, %struct.mp** %4, align 8
  %158 = getelementptr inbounds %struct.mp, %struct.mp* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 1
  store i32 8, i32* %160, align 8
  br label %356

161:                                              ; preds = %103
  %162 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %163 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %166 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @strcasecmp(i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %240, label %173

173:                                              ; preds = %161
  %174 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %175 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %174, i32 0, i32 3
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @INADDR_ANY, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %173
  %185 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %186 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %185, i32 0, i32 3
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = call i32 @ncprange_getip4addr(i32* %191, %struct.in_addr* %5)
  br label %202

193:                                              ; preds = %173
  %194 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %195 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %194, i32 0, i32 3
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = bitcast %struct.in_addr* %5 to i8*
  %201 = bitcast %struct.in_addr* %199 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %200, i8* align 8 %201, i64 8, i1 false)
  br label %202

202:                                              ; preds = %193, %184
  %203 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = call i64 @arp_EtherAddr(i64 %204, %struct.sockaddr_dl* %6, i32 1)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %233

207:                                              ; preds = %202
  %208 = load i64, i64* @ENDDISC_MAC, align 8
  %209 = load %struct.mp*, %struct.mp** %4, align 8
  %210 = getelementptr inbounds %struct.mp, %struct.mp* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 2
  store i64 %208, i64* %212, align 8
  %213 = load %struct.mp*, %struct.mp** %4, align 8
  %214 = getelementptr inbounds %struct.mp, %struct.mp* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 0
  %219 = load i64*, i64** %218, align 8
  %220 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i64, i64* %219, i64 %222
  %224 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = call i32 @memcpy(i8* %217, i64* %223, i32 %225)
  %227 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %6, i32 0, i32 2
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.mp*, %struct.mp** %4, align 8
  %230 = getelementptr inbounds %struct.mp, %struct.mp* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 1
  store i32 %228, i32* %232, align 8
  br label %239

233:                                              ; preds = %202
  %234 = load i32, i32* @LogWARN, align 4
  %235 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %5, i32 0, i32 0
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @inet_ntoa(i64 %236)
  %238 = call i32 (i32, i8*, ...) @log_Printf(i32 %234, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %237)
  store i32 4, i32* %2, align 4
  br label %360

239:                                              ; preds = %207
  br label %355

240:                                              ; preds = %161
  %241 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %242 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %241, i32 0, i32 2
  %243 = load i32*, i32** %242, align 8
  %244 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %245 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %243, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @strcasecmp(i32 %249, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %283, label %252

252:                                              ; preds = %240
  %253 = call i32 (...) @randinit()
  store i32 0, i32* %7, align 4
  br label %254

254:                                              ; preds = %268, %252
  %255 = load i32, i32* %7, align 4
  %256 = icmp slt i32 %255, 20
  br i1 %256, label %257, label %273

257:                                              ; preds = %254
  %258 = call i64 (...) @random()
  %259 = load %struct.mp*, %struct.mp** %4, align 8
  %260 = getelementptr inbounds %struct.mp, %struct.mp* %259, i32 0, i32 0
  %261 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %260, i32 0, i32 0
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 0
  %263 = load i8*, i8** %262, align 8
  %264 = load i32, i32* %7, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8, i8* %263, i64 %265
  %267 = bitcast i8* %266 to i64*
  store i64 %258, i64* %267, align 8
  br label %268

268:                                              ; preds = %257
  %269 = load i32, i32* %7, align 4
  %270 = sext i32 %269 to i64
  %271 = add i64 %270, 8
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %7, align 4
  br label %254

273:                                              ; preds = %254
  %274 = load i64, i64* @ENDDISC_MAGIC, align 8
  %275 = load %struct.mp*, %struct.mp** %4, align 8
  %276 = getelementptr inbounds %struct.mp, %struct.mp* %275, i32 0, i32 0
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %277, i32 0, i32 2
  store i64 %274, i64* %278, align 8
  %279 = load %struct.mp*, %struct.mp** %4, align 8
  %280 = getelementptr inbounds %struct.mp, %struct.mp* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  store i32 20, i32* %282, align 8
  br label %354

283:                                              ; preds = %240
  %284 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %285 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %284, i32 0, i32 2
  %286 = load i32*, i32** %285, align 8
  %287 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %288 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %287, i32 0, i32 1
  %289 = load i32, i32* %288, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %286, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @strcasecmp(i32 %292, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %341, label %295

295:                                              ; preds = %283
  %296 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %297 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 8
  %299 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %300 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 4
  %302 = add nsw i32 %301, 1
  %303 = icmp sgt i32 %298, %302
  br i1 %303, label %304, label %337

304:                                              ; preds = %295
  %305 = load i64, i64* @ENDDISC_PSN, align 8
  %306 = load %struct.mp*, %struct.mp** %4, align 8
  %307 = getelementptr inbounds %struct.mp, %struct.mp* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 2
  store i64 %305, i64* %309, align 8
  %310 = load %struct.mp*, %struct.mp** %4, align 8
  %311 = getelementptr inbounds %struct.mp, %struct.mp* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %312, i32 0, i32 0
  %314 = load i8*, i8** %313, align 8
  %315 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %316 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %315, i32 0, i32 2
  %317 = load i32*, i32** %316, align 8
  %318 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %319 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %317, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = call i32 @strcpy(i8* %314, i32 %324)
  %326 = load %struct.mp*, %struct.mp** %4, align 8
  %327 = getelementptr inbounds %struct.mp, %struct.mp* %326, i32 0, i32 0
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 0
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 0
  %330 = load i8*, i8** %329, align 8
  %331 = call i8* @strlen(i8* %330)
  %332 = ptrtoint i8* %331 to i32
  %333 = load %struct.mp*, %struct.mp** %4, align 8
  %334 = getelementptr inbounds %struct.mp, %struct.mp* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %334, i32 0, i32 0
  %336 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %335, i32 0, i32 1
  store i32 %332, i32* %336, align 8
  br label %340

337:                                              ; preds = %295
  %338 = load i32, i32* @LogWARN, align 4
  %339 = call i32 (i32, i8*, ...) @log_Printf(i32 %338, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i64 0, i64 0))
  store i32 5, i32* %2, align 4
  br label %360

340:                                              ; preds = %304
  br label %353

341:                                              ; preds = %283
  %342 = load i32, i32* @LogWARN, align 4
  %343 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %344 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %343, i32 0, i32 2
  %345 = load i32*, i32** %344, align 8
  %346 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %347 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %346, i32 0, i32 1
  %348 = load i32, i32* %347, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %345, i64 %349
  %351 = load i32, i32* %350, align 4
  %352 = call i32 (i32, i8*, ...) @log_Printf(i32 %342, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %351)
  store i32 6, i32* %2, align 4
  br label %360

353:                                              ; preds = %340
  br label %354

354:                                              ; preds = %353, %273
  br label %355

355:                                              ; preds = %354, %239
  br label %356

356:                                              ; preds = %355, %144
  br label %357

357:                                              ; preds = %356, %74
  br label %358

358:                                              ; preds = %357, %54
  br label %359

359:                                              ; preds = %358, %40
  store i32 0, i32* %2, align 4
  br label %360

360:                                              ; preds = %359, %341, %337, %233, %29, %25
  %361 = load i32, i32* %2, align 4
  ret i32 %361
}

declare dso_local i32 @bundle_Phase(%struct.TYPE_15__*) #1

declare dso_local i32 @bundle_HighestState(%struct.TYPE_15__*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i8* @strlen(i8*) #1

declare dso_local i32 @ncprange_getip4addr(i32*, %struct.in_addr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i8*, i64*, i32) #1

declare dso_local i64 @arp_EtherAddr(i64, %struct.sockaddr_dl*, i32) #1

declare dso_local i32 @inet_ntoa(i64) #1

declare dso_local i32 @randinit(...) #1

declare dso_local i64 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
