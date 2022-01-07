; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_red.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_config_red.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.dn_fsk = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32, %struct.TYPE_7__, i8*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"called\00", align 1
@hz = common dso_local global i32 0, align 4
@dn_cfg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@DN_IS_GENTLE_RED = common dso_local global i32 0, align 4
@M_DUMMYNET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"\0Adummynet: net.inet.ip.dummynet.red_lookup_depthmust be > 0\0A\00", align 1
@DN_IS_RED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"dummynet: sorry, cannot allocate red lookup table\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dn_fsk*)* @config_red to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_red(%struct.dn_fsk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dn_fsk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dn_fsk* %0, %struct.dn_fsk** %3, align 8
  %10 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %11 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %10, i32 0, i32 13
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %15 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %17 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %16, i32 0, i32 13
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %21 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  %22 = call i32 @ND(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %24 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %23, i32 0, i32 15
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  br label %41

32:                                               ; preds = %1
  %33 = load i32, i32* @hz, align 4
  %34 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 0), align 8
  %35 = mul nsw i32 %33, %34
  %36 = mul nsw i32 %35, 8
  %37 = call i32 @SCALE(i32 1)
  %38 = mul nsw i32 %36, %37
  %39 = load i32, i32* %9, align 4
  %40 = sdiv i32 %38, %39
  br label %41

41:                                               ; preds = %32, %31
  %42 = phi i32 [ 0, %31 ], [ %40, %32 ]
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = mul nsw i32 %43, 3
  %45 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %46 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i8* @div64(i32 %44, i64 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 1), align 8
  %52 = call i8* @div64(i32 %50, i64 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %55 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %57 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %41
  %61 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %62 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %61, i32 0, i32 2
  store i32 1, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %41
  %64 = call i32 @SCALE(i32 1)
  %65 = sext i32 %64 to i64
  %66 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %67 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %6, align 4
  store i32 %70, i32* %7, align 4
  %71 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %72 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %82, %63
  %75 = load i32, i32* %8, align 4
  %76 = icmp sgt i32 %75, 1
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i8* @SCALE_MUL(i32 %78, i32 %79)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %77
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %8, align 4
  br label %74

85:                                               ; preds = %74
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %88 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  %89 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %90 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %89, i32 0, i32 13
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @SCALE(i32 %92)
  %94 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %95 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %94, i32 0, i32 4
  store i32 %93, i32* %95, align 4
  %96 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %97 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %96, i32 0, i32 13
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @SCALE(i32 %99)
  %101 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %102 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %101, i32 0, i32 5
  store i32 %100, i32* %102, align 8
  %103 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %104 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %103, i32 0, i32 13
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %108 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %107, i32 0, i32 13
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp eq i32 %106, %110
  br i1 %111, label %112, label %118

112:                                              ; preds = %85
  %113 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %114 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %117 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %116, i32 0, i32 6
  store i32 %115, i32* %117, align 4
  br label %135

118:                                              ; preds = %85
  %119 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %120 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = call i32 @SCALE(i32 %121)
  %123 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %124 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %123, i32 0, i32 13
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %128 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %127, i32 0, i32 13
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 4
  %131 = sub nsw i32 %126, %130
  %132 = sdiv i32 %122, %131
  %133 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %134 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 4
  br label %135

135:                                              ; preds = %118, %112
  %136 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %137 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %140 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %139, i32 0, i32 13
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @SCALE(i32 %142)
  %144 = call i8* @SCALE_MUL(i32 %138, i32 %143)
  %145 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %146 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %145, i32 0, i32 14
  store i8* %144, i8** %146, align 8
  %147 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %148 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %147, i32 0, i32 13
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 4
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @DN_IS_GENTLE_RED, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %175

154:                                              ; preds = %135
  %155 = call i32 @SCALE(i32 1)
  %156 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %157 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = sub nsw i32 %155, %158
  %160 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %161 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %160, i32 0, i32 13
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = sdiv i32 %159, %163
  %165 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %166 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  %167 = call i32 @SCALE(i32 1)
  %168 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %169 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  %171 = mul nsw i32 2, %170
  %172 = sub nsw i32 %167, %171
  %173 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %174 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %173, i32 0, i32 8
  store i32 %172, i32* %174, align 4
  br label %175

175:                                              ; preds = %154, %135
  %176 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %177 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %176, i32 0, i32 9
  %178 = load i32*, i32** %177, align 8
  %179 = icmp ne i32* %178, null
  br i1 %179, label %180, label %188

180:                                              ; preds = %175
  %181 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %182 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %181, i32 0, i32 9
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @M_DUMMYNET, align 4
  %185 = call i32 @free(i32* %183, i32 %184)
  %186 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %187 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %186, i32 0, i32 9
  store i32* null, i32** %187, align 8
  br label %188

188:                                              ; preds = %180, %175
  %189 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 1), align 8
  %190 = icmp eq i64 %189, 0
  br i1 %190, label %191, label %208

191:                                              ; preds = %188
  %192 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  %193 = load i32, i32* @DN_IS_RED, align 4
  %194 = xor i32 %193, -1
  %195 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %196 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %195, i32 0, i32 13
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 4
  %198 = load i32, i32* %197, align 4
  %199 = and i32 %198, %194
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* @DN_IS_GENTLE_RED, align 4
  %201 = xor i32 %200, -1
  %202 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %203 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %202, i32 0, i32 13
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, %201
  store i32 %206, i32* %204, align 4
  %207 = load i32, i32* @EINVAL, align 4
  store i32 %207, i32* %2, align 4
  br label %303

208:                                              ; preds = %188
  %209 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 1), align 8
  %210 = trunc i64 %209 to i32
  %211 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %212 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %211, i32 0, i32 10
  store i32 %210, i32* %212, align 8
  %213 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %214 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %213, i32 0, i32 10
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  %218 = trunc i64 %217 to i32
  %219 = load i32, i32* @M_DUMMYNET, align 4
  %220 = load i32, i32* @M_NOWAIT, align 4
  %221 = call i64 @malloc(i32 %218, i32 %219, i32 %220)
  %222 = inttoptr i64 %221 to i32*
  %223 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %224 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %223, i32 0, i32 9
  store i32* %222, i32** %224, align 8
  %225 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %226 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %225, i32 0, i32 9
  %227 = load i32*, i32** %226, align 8
  %228 = icmp eq i32* %227, null
  br i1 %228, label %229, label %246

229:                                              ; preds = %208
  %230 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %231 = load i32, i32* @DN_IS_RED, align 4
  %232 = xor i32 %231, -1
  %233 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %234 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %233, i32 0, i32 13
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = and i32 %236, %232
  store i32 %237, i32* %235, align 4
  %238 = load i32, i32* @DN_IS_GENTLE_RED, align 4
  %239 = xor i32 %238, -1
  %240 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %241 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %240, i32 0, i32 13
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 4
  %243 = load i32, i32* %242, align 4
  %244 = and i32 %243, %239
  store i32 %244, i32* %242, align 4
  %245 = load i32, i32* @ENOSPC, align 4
  store i32 %245, i32* %2, align 4
  br label %303

246:                                              ; preds = %208
  %247 = call i32 @SCALE(i32 1)
  %248 = sext i32 %247 to i64
  %249 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %250 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = sub nsw i64 %248, %251
  %253 = trunc i64 %252 to i32
  %254 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %255 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %254, i32 0, i32 9
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 0
  store i32 %253, i32* %257, align 4
  store i32 1, i32* %9, align 4
  br label %258

258:                                              ; preds = %284, %246
  %259 = load i32, i32* %9, align 4
  %260 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %261 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %260, i32 0, i32 10
  %262 = load i32, i32* %261, align 8
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %264, label %287

264:                                              ; preds = %258
  %265 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %266 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %265, i32 0, i32 9
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %9, align 4
  %269 = sub nsw i32 %268, 1
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  %272 = load i32, i32* %271, align 4
  %273 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %274 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 8
  %276 = call i8* @SCALE_MUL(i32 %272, i32 %275)
  %277 = ptrtoint i8* %276 to i32
  %278 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %279 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %278, i32 0, i32 9
  %280 = load i32*, i32** %279, align 8
  %281 = load i32, i32* %9, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %280, i64 %282
  store i32 %277, i32* %283, align 4
  br label %284

284:                                              ; preds = %264
  %285 = load i32, i32* %9, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %9, align 4
  br label %258

287:                                              ; preds = %258
  %288 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 0), align 8
  %289 = icmp slt i32 %288, 1
  br i1 %289, label %290, label %291

290:                                              ; preds = %287
  store i32 512, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 0), align 8
  br label %291

291:                                              ; preds = %290, %287
  %292 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 0), align 8
  %293 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %294 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %293, i32 0, i32 11
  store i32 %292, i32* %294, align 4
  %295 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 2), align 8
  %296 = icmp slt i32 %295, 1
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  store i32 1500, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 2), align 8
  br label %298

298:                                              ; preds = %297, %291
  %299 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dn_cfg, i32 0, i32 2), align 8
  %300 = load %struct.dn_fsk*, %struct.dn_fsk** %3, align 8
  %301 = getelementptr inbounds %struct.dn_fsk, %struct.dn_fsk* %300, i32 0, i32 12
  store i32 %299, i32* %301, align 8
  %302 = call i32 @ND(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %303

303:                                              ; preds = %298, %229, %191
  %304 = load i32, i32* %2, align 4
  ret i32 %304
}

declare dso_local i32 @ND(i8*) #1

declare dso_local i32 @SCALE(i32) #1

declare dso_local i8* @div64(i32, i64) #1

declare dso_local i8* @SCALE_MUL(i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
