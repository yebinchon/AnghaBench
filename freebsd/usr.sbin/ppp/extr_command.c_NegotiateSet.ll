; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_NegotiateSet.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_command.c_NegotiateSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdargs = type { i32, %struct.TYPE_30__*, %struct.TYPE_25__*, i32*, %struct.datalink* }
%struct.TYPE_30__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { %struct.TYPE_23__, %struct.TYPE_39__ }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_31__ }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_39__ = type { %struct.TYPE_38__ }
%struct.TYPE_38__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32, i64 }
%struct.datalink = type { %struct.TYPE_29__*, i32 }
%struct.TYPE_29__ = type { %struct.TYPE_27__, %struct.TYPE_35__ }
%struct.TYPE_27__ = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { %struct.TYPE_26__, %struct.TYPE_32__, i32 }
%struct.TYPE_26__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_35__ = type { %struct.TYPE_34__ }
%struct.TYPE_34__ = type { i32, %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32 (%struct.TYPE_28__*)* }
%struct.link = type { %struct.TYPE_37__ }
%struct.TYPE_37__ = type { %struct.TYPE_36__ }
%struct.TYPE_36__ = type { i32* }

@LOCAL_CX = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"%s %s: No context (use the `link' command)\0A\00", align 1
@LOCAL_CX_OPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s %s: Redundant context (%s) ignored\0A\00", align 1
@CCP_NEG_MPPE = common dso_local global i64 0, align 8
@CCP_NEG_DEFLATE = common dso_local global i64 0, align 8
@LQM_ECHO = common dso_local global i32 0, align 4
@SECTICKS = common dso_local global i32 0, align 4
@ST_OPENED = common dso_local global i32 0, align 4
@CCP_NEG_DEFLATE24 = common dso_local global i64 0, align 8
@CCP_NEG_PRED1 = common dso_local global i64 0, align 8
@DATALINK_LCP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"shortseq: Only changeable before LCP negotiations\0A\00", align 1
@.str.3 = private unnamed_addr constant [51 x i8] c"shortseq: Only changeable at phase DEAD/ESTABLISH\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdargs*)* @NegotiateSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NegotiateSet(%struct.cmdargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmdargs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.link*, align 8
  %6 = alloca %struct.datalink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmdargs* %0, %struct.cmdargs** %3, align 8
  %10 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %11 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %10, i32 0, i32 2
  %12 = load %struct.TYPE_25__*, %struct.TYPE_25__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %16 = call %struct.link* @command_ChooseLink(%struct.cmdargs* %15)
  store %struct.link* %16, %struct.link** %5, align 8
  %17 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %18 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %17, i32 0, i32 4
  %19 = load %struct.datalink*, %struct.datalink** %18, align 8
  store %struct.datalink* %19, %struct.datalink** %6, align 8
  %20 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %21 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %24 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 2
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %22, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @ident_cmd(i32 %29, i32* %8, i32* %9)
  store i8* %30, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %592

33:                                               ; preds = %1
  %34 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %35 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %34, i32 0, i32 2
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @LOCAL_CX, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %54

42:                                               ; preds = %33
  %43 = load %struct.datalink*, %struct.datalink** %6, align 8
  %44 = icmp ne %struct.datalink* %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* @LogWARN, align 4
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %49 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %48, i32 0, i32 2
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @log_Printf(i32 %46, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %47, i32 %52)
  store i32 2, i32* %2, align 4
  br label %592

54:                                               ; preds = %42, %33
  %55 = load %struct.datalink*, %struct.datalink** %6, align 8
  %56 = icmp ne %struct.datalink* %55, null
  br i1 %56, label %57, label %80

57:                                               ; preds = %54
  %58 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %59 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %58, i32 0, i32 2
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LOCAL_CX, align 4
  %64 = load i32, i32* @LOCAL_CX_OPT, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %80, label %68

68:                                               ; preds = %57
  %69 = load i32, i32* @LogWARN, align 4
  %70 = load i8*, i8** %7, align 8
  %71 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %72 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %71, i32 0, i32 2
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.datalink*, %struct.datalink** %6, align 8
  %77 = getelementptr inbounds %struct.datalink, %struct.datalink* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i8*, ...) @log_Printf(i32 %69, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i8* %70, i32 %75, i32 %78)
  store %struct.datalink* null, %struct.datalink** %6, align 8
  br label %80

80:                                               ; preds = %68, %57, %54
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %4, align 8
  switch i64 %82, label %591 [
    i64 146, label %83
    i64 145, label %104
    i64 144, label %125
    i64 143, label %146
    i64 142, label %167
    i64 136, label %188
    i64 141, label %209
    i64 140, label %230
    i64 139, label %253
    i64 138, label %401
    i64 137, label %422
    i64 135, label %443
    i64 134, label %464
    i64 133, label %485
    i64 132, label %506
    i64 131, label %527
    i64 130, label %568
  ]

83:                                               ; preds = %81
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.datalink*, %struct.datalink** %6, align 8
  %86 = getelementptr inbounds %struct.datalink, %struct.datalink* %85, i32 0, i32 0
  %87 = load %struct.TYPE_29__*, %struct.TYPE_29__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %84
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.datalink*, %struct.datalink** %6, align 8
  %96 = getelementptr inbounds %struct.datalink, %struct.datalink* %95, i32 0, i32 0
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = or i32 %102, %94
  store i32 %103, i32* %101, align 8
  br label %591

104:                                              ; preds = %81
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.datalink*, %struct.datalink** %6, align 8
  %107 = getelementptr inbounds %struct.datalink, %struct.datalink* %106, i32 0, i32 0
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = and i32 %113, %105
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %9, align 4
  %116 = load %struct.datalink*, %struct.datalink** %6, align 8
  %117 = getelementptr inbounds %struct.datalink, %struct.datalink* %116, i32 0, i32 0
  %118 = load %struct.TYPE_29__*, %struct.TYPE_29__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %115
  store i32 %124, i32* %122, align 4
  br label %591

125:                                              ; preds = %81
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.datalink*, %struct.datalink** %6, align 8
  %128 = getelementptr inbounds %struct.datalink, %struct.datalink* %127, i32 0, i32 0
  %129 = load %struct.TYPE_29__*, %struct.TYPE_29__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = and i32 %134, %126
  store i32 %135, i32* %133, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.datalink*, %struct.datalink** %6, align 8
  %138 = getelementptr inbounds %struct.datalink, %struct.datalink* %137, i32 0, i32 0
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %136
  store i32 %145, i32* %143, align 8
  br label %591

146:                                              ; preds = %81
  %147 = load i32, i32* %8, align 4
  %148 = load %struct.datalink*, %struct.datalink** %6, align 8
  %149 = getelementptr inbounds %struct.datalink, %struct.datalink* %148, i32 0, i32 0
  %150 = load %struct.TYPE_29__*, %struct.TYPE_29__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = and i32 %155, %147
  store i32 %156, i32* %154, align 4
  %157 = load i32, i32* %9, align 4
  %158 = load %struct.datalink*, %struct.datalink** %6, align 8
  %159 = getelementptr inbounds %struct.datalink, %struct.datalink* %158, i32 0, i32 0
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %157
  store i32 %166, i32* %164, align 4
  br label %591

167:                                              ; preds = %81
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.datalink*, %struct.datalink** %6, align 8
  %170 = getelementptr inbounds %struct.datalink, %struct.datalink* %169, i32 0, i32 0
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 8
  %177 = and i32 %176, %168
  store i32 %177, i32* %175, align 8
  %178 = load i32, i32* %9, align 4
  %179 = load %struct.datalink*, %struct.datalink** %6, align 8
  %180 = getelementptr inbounds %struct.datalink, %struct.datalink* %179, i32 0, i32 0
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = or i32 %186, %178
  store i32 %187, i32* %185, align 8
  br label %591

188:                                              ; preds = %81
  %189 = load i32, i32* %8, align 4
  %190 = load %struct.link*, %struct.link** %5, align 8
  %191 = getelementptr inbounds %struct.link, %struct.link* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = load i64, i64* @CCP_NEG_MPPE, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, %189
  store i32 %198, i32* %196, align 4
  %199 = load i32, i32* %9, align 4
  %200 = load %struct.link*, %struct.link** %5, align 8
  %201 = getelementptr inbounds %struct.link, %struct.link* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %202, i32 0, i32 0
  %204 = load i32*, i32** %203, align 8
  %205 = load i64, i64* @CCP_NEG_MPPE, align 8
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = or i32 %207, %199
  store i32 %208, i32* %206, align 4
  br label %591

209:                                              ; preds = %81
  %210 = load i32, i32* %8, align 4
  %211 = load %struct.link*, %struct.link** %5, align 8
  %212 = getelementptr inbounds %struct.link, %struct.link* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load i64, i64* @CCP_NEG_DEFLATE, align 8
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  %218 = load i32, i32* %217, align 4
  %219 = and i32 %218, %210
  store i32 %219, i32* %217, align 4
  %220 = load i32, i32* %9, align 4
  %221 = load %struct.link*, %struct.link** %5, align 8
  %222 = getelementptr inbounds %struct.link, %struct.link* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = load i64, i64* @CCP_NEG_DEFLATE, align 8
  %227 = getelementptr inbounds i32, i32* %225, i64 %226
  %228 = load i32, i32* %227, align 4
  %229 = or i32 %228, %220
  store i32 %229, i32* %227, align 4
  br label %591

230:                                              ; preds = %81
  %231 = load i32, i32* %8, align 4
  %232 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %233 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %232, i32 0, i32 1
  %234 = load %struct.TYPE_30__*, %struct.TYPE_30__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = and i32 %240, %231
  store i32 %241, i32* %239, align 4
  %242 = load i32, i32* %9, align 4
  %243 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %244 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %243, i32 0, i32 1
  %245 = load %struct.TYPE_30__*, %struct.TYPE_30__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %242
  store i32 %252, i32* %250, align 4
  br label %591

253:                                              ; preds = %81
  %254 = load %struct.datalink*, %struct.datalink** %6, align 8
  %255 = getelementptr inbounds %struct.datalink, %struct.datalink* %254, i32 0, i32 0
  %256 = load %struct.TYPE_29__*, %struct.TYPE_29__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %256, i32 0, i32 0
  %258 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %259, i32 0, i32 5
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %326

263:                                              ; preds = %253
  %264 = load i32, i32* %9, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %326, label %266

266:                                              ; preds = %263
  %267 = load %struct.datalink*, %struct.datalink** %6, align 8
  %268 = getelementptr inbounds %struct.datalink, %struct.datalink* %267, i32 0, i32 0
  %269 = load %struct.TYPE_29__*, %struct.TYPE_29__** %268, align 8
  %270 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %272, i32 0, i32 5
  store i32 0, i32* %273, align 4
  %274 = load i32, i32* @LQM_ECHO, align 4
  %275 = xor i32 %274, -1
  %276 = load %struct.datalink*, %struct.datalink** %6, align 8
  %277 = getelementptr inbounds %struct.datalink, %struct.datalink* %276, i32 0, i32 0
  %278 = load %struct.TYPE_29__*, %struct.TYPE_29__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = and i32 %282, %275
  store i32 %283, i32* %281, align 8
  %284 = load %struct.datalink*, %struct.datalink** %6, align 8
  %285 = getelementptr inbounds %struct.datalink, %struct.datalink* %284, i32 0, i32 0
  %286 = load %struct.TYPE_29__*, %struct.TYPE_29__** %285, align 8
  %287 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %286, i32 0, i32 1
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* @LQM_ECHO, align 4
  %292 = and i32 %290, %291
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %325

294:                                              ; preds = %266
  %295 = load %struct.datalink*, %struct.datalink** %6, align 8
  %296 = getelementptr inbounds %struct.datalink, %struct.datalink* %295, i32 0, i32 0
  %297 = load %struct.TYPE_29__*, %struct.TYPE_29__** %296, align 8
  %298 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %298, i32 0, i32 0
  %300 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %299, i32 0, i32 2
  %301 = load i32, i32* %300, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %325, label %303

303:                                              ; preds = %294
  %304 = load %struct.datalink*, %struct.datalink** %6, align 8
  %305 = getelementptr inbounds %struct.datalink, %struct.datalink* %304, i32 0, i32 0
  %306 = load %struct.TYPE_29__*, %struct.TYPE_29__** %305, align 8
  %307 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %307, i32 0, i32 0
  %309 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %325

313:                                              ; preds = %303
  %314 = load %struct.datalink*, %struct.datalink** %6, align 8
  %315 = getelementptr inbounds %struct.datalink, %struct.datalink* %314, i32 0, i32 0
  %316 = load %struct.TYPE_29__*, %struct.TYPE_29__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %319, i32 0, i32 0
  store i32 0, i32* %320, align 8
  %321 = load %struct.datalink*, %struct.datalink** %6, align 8
  %322 = getelementptr inbounds %struct.datalink, %struct.datalink* %321, i32 0, i32 0
  %323 = load %struct.TYPE_29__*, %struct.TYPE_29__** %322, align 8
  %324 = call i32 @lqr_StopTimer(%struct.TYPE_29__* %323)
  br label %325

325:                                              ; preds = %313, %303, %294, %266
  br label %400

326:                                              ; preds = %263, %253
  %327 = load %struct.datalink*, %struct.datalink** %6, align 8
  %328 = getelementptr inbounds %struct.datalink, %struct.datalink* %327, i32 0, i32 0
  %329 = load %struct.TYPE_29__*, %struct.TYPE_29__** %328, align 8
  %330 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %332, i32 0, i32 5
  %334 = load i32, i32* %333, align 4
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %399, label %336

336:                                              ; preds = %326
  %337 = load i32, i32* %9, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %399

339:                                              ; preds = %336
  %340 = load %struct.datalink*, %struct.datalink** %6, align 8
  %341 = getelementptr inbounds %struct.datalink, %struct.datalink* %340, i32 0, i32 0
  %342 = load %struct.TYPE_29__*, %struct.TYPE_29__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 5
  store i32 1, i32* %346, align 4
  %347 = load i32, i32* @LQM_ECHO, align 4
  %348 = load %struct.datalink*, %struct.datalink** %6, align 8
  %349 = getelementptr inbounds %struct.datalink, %struct.datalink* %348, i32 0, i32 0
  %350 = load %struct.TYPE_29__*, %struct.TYPE_29__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 8
  %355 = or i32 %354, %347
  store i32 %355, i32* %353, align 8
  %356 = load %struct.datalink*, %struct.datalink** %6, align 8
  %357 = getelementptr inbounds %struct.datalink, %struct.datalink* %356, i32 0, i32 0
  %358 = load %struct.TYPE_29__*, %struct.TYPE_29__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %361, i32 0, i32 6
  %363 = load i32, i32* %362, align 8
  %364 = load i32, i32* @SECTICKS, align 4
  %365 = mul nsw i32 %363, %364
  %366 = load %struct.datalink*, %struct.datalink** %6, align 8
  %367 = getelementptr inbounds %struct.datalink, %struct.datalink* %366, i32 0, i32 0
  %368 = load %struct.TYPE_29__*, %struct.TYPE_29__** %367, align 8
  %369 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %369, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %371, i32 0, i32 0
  store i32 %365, i32* %372, align 8
  %373 = load %struct.datalink*, %struct.datalink** %6, align 8
  %374 = getelementptr inbounds %struct.datalink, %struct.datalink* %373, i32 0, i32 0
  %375 = load %struct.TYPE_29__*, %struct.TYPE_29__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @ST_OPENED, align 4
  %382 = icmp eq i32 %380, %381
  br i1 %382, label %383, label %398

383:                                              ; preds = %339
  %384 = load %struct.datalink*, %struct.datalink** %6, align 8
  %385 = getelementptr inbounds %struct.datalink, %struct.datalink* %384, i32 0, i32 0
  %386 = load %struct.TYPE_29__*, %struct.TYPE_29__** %385, align 8
  %387 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %388, i32 0, i32 1
  %390 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %389, i32 0, i32 1
  %391 = load i32 (%struct.TYPE_28__*)*, i32 (%struct.TYPE_28__*)** %390, align 8
  %392 = load %struct.datalink*, %struct.datalink** %6, align 8
  %393 = getelementptr inbounds %struct.datalink, %struct.datalink* %392, i32 0, i32 0
  %394 = load %struct.TYPE_29__*, %struct.TYPE_29__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %394, i32 0, i32 0
  %396 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %395, i32 0, i32 0
  %397 = call i32 %391(%struct.TYPE_28__* %396)
  br label %398

398:                                              ; preds = %383, %339
  br label %399

399:                                              ; preds = %398, %336, %326
  br label %400

400:                                              ; preds = %399, %325
  br label %591

401:                                              ; preds = %81
  %402 = load i32, i32* %8, align 4
  %403 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %404 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %403, i32 0, i32 1
  %405 = load %struct.TYPE_30__*, %struct.TYPE_30__** %404, align 8
  %406 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %405, i32 0, i32 0
  %407 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %408, i32 0, i32 0
  %410 = load i32, i32* %409, align 4
  %411 = and i32 %410, %402
  store i32 %411, i32* %409, align 4
  %412 = load i32, i32* %9, align 4
  %413 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %414 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %413, i32 0, i32 1
  %415 = load %struct.TYPE_30__*, %struct.TYPE_30__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %415, i32 0, i32 0
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 1
  %418 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %417, i32 0, i32 0
  %419 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 4
  %421 = or i32 %420, %412
  store i32 %421, i32* %419, align 4
  br label %591

422:                                              ; preds = %81
  %423 = load i32, i32* %8, align 4
  %424 = load %struct.datalink*, %struct.datalink** %6, align 8
  %425 = getelementptr inbounds %struct.datalink, %struct.datalink* %424, i32 0, i32 0
  %426 = load %struct.TYPE_29__*, %struct.TYPE_29__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %426, i32 0, i32 0
  %428 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %429, i32 0, i32 7
  %431 = load i32, i32* %430, align 4
  %432 = and i32 %431, %423
  store i32 %432, i32* %430, align 4
  %433 = load i32, i32* %9, align 4
  %434 = load %struct.datalink*, %struct.datalink** %6, align 8
  %435 = getelementptr inbounds %struct.datalink, %struct.datalink* %434, i32 0, i32 0
  %436 = load %struct.TYPE_29__*, %struct.TYPE_29__** %435, align 8
  %437 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %436, i32 0, i32 0
  %438 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %438, i32 0, i32 0
  %440 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %439, i32 0, i32 7
  %441 = load i32, i32* %440, align 4
  %442 = or i32 %441, %433
  store i32 %442, i32* %440, align 4
  br label %591

443:                                              ; preds = %81
  %444 = load i32, i32* %8, align 4
  %445 = load %struct.datalink*, %struct.datalink** %6, align 8
  %446 = getelementptr inbounds %struct.datalink, %struct.datalink* %445, i32 0, i32 0
  %447 = load %struct.TYPE_29__*, %struct.TYPE_29__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %447, i32 0, i32 0
  %449 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %450, i32 0, i32 8
  %452 = load i32, i32* %451, align 8
  %453 = and i32 %452, %444
  store i32 %453, i32* %451, align 8
  %454 = load i32, i32* %9, align 4
  %455 = load %struct.datalink*, %struct.datalink** %6, align 8
  %456 = getelementptr inbounds %struct.datalink, %struct.datalink* %455, i32 0, i32 0
  %457 = load %struct.TYPE_29__*, %struct.TYPE_29__** %456, align 8
  %458 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %459, i32 0, i32 0
  %461 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %460, i32 0, i32 8
  %462 = load i32, i32* %461, align 8
  %463 = or i32 %462, %454
  store i32 %463, i32* %461, align 8
  br label %591

464:                                              ; preds = %81
  %465 = load i32, i32* %8, align 4
  %466 = load %struct.link*, %struct.link** %5, align 8
  %467 = getelementptr inbounds %struct.link, %struct.link* %466, i32 0, i32 0
  %468 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %468, i32 0, i32 0
  %470 = load i32*, i32** %469, align 8
  %471 = load i64, i64* @CCP_NEG_DEFLATE24, align 8
  %472 = getelementptr inbounds i32, i32* %470, i64 %471
  %473 = load i32, i32* %472, align 4
  %474 = and i32 %473, %465
  store i32 %474, i32* %472, align 4
  %475 = load i32, i32* %9, align 4
  %476 = load %struct.link*, %struct.link** %5, align 8
  %477 = getelementptr inbounds %struct.link, %struct.link* %476, i32 0, i32 0
  %478 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %478, i32 0, i32 0
  %480 = load i32*, i32** %479, align 8
  %481 = load i64, i64* @CCP_NEG_DEFLATE24, align 8
  %482 = getelementptr inbounds i32, i32* %480, i64 %481
  %483 = load i32, i32* %482, align 4
  %484 = or i32 %483, %475
  store i32 %484, i32* %482, align 4
  br label %591

485:                                              ; preds = %81
  %486 = load i32, i32* %8, align 4
  %487 = load %struct.link*, %struct.link** %5, align 8
  %488 = getelementptr inbounds %struct.link, %struct.link* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %488, i32 0, i32 0
  %490 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %489, i32 0, i32 0
  %491 = load i32*, i32** %490, align 8
  %492 = load i64, i64* @CCP_NEG_PRED1, align 8
  %493 = getelementptr inbounds i32, i32* %491, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = and i32 %494, %486
  store i32 %495, i32* %493, align 4
  %496 = load i32, i32* %9, align 4
  %497 = load %struct.link*, %struct.link** %5, align 8
  %498 = getelementptr inbounds %struct.link, %struct.link* %497, i32 0, i32 0
  %499 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %499, i32 0, i32 0
  %501 = load i32*, i32** %500, align 8
  %502 = load i64, i64* @CCP_NEG_PRED1, align 8
  %503 = getelementptr inbounds i32, i32* %501, i64 %502
  %504 = load i32, i32* %503, align 4
  %505 = or i32 %504, %496
  store i32 %505, i32* %503, align 4
  br label %591

506:                                              ; preds = %81
  %507 = load i32, i32* %8, align 4
  %508 = load %struct.datalink*, %struct.datalink** %6, align 8
  %509 = getelementptr inbounds %struct.datalink, %struct.datalink* %508, i32 0, i32 0
  %510 = load %struct.TYPE_29__*, %struct.TYPE_29__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %510, i32 0, i32 0
  %512 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %511, i32 0, i32 0
  %513 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %513, i32 0, i32 9
  %515 = load i32, i32* %514, align 4
  %516 = and i32 %515, %507
  store i32 %516, i32* %514, align 4
  %517 = load i32, i32* %9, align 4
  %518 = load %struct.datalink*, %struct.datalink** %6, align 8
  %519 = getelementptr inbounds %struct.datalink, %struct.datalink* %518, i32 0, i32 0
  %520 = load %struct.TYPE_29__*, %struct.TYPE_29__** %519, align 8
  %521 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %520, i32 0, i32 0
  %522 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %521, i32 0, i32 0
  %523 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %523, i32 0, i32 9
  %525 = load i32, i32* %524, align 4
  %526 = or i32 %525, %517
  store i32 %526, i32* %524, align 4
  br label %591

527:                                              ; preds = %81
  %528 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %529 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %528, i32 0, i32 1
  %530 = load %struct.TYPE_30__*, %struct.TYPE_30__** %529, align 8
  %531 = call i32 @bundle_Phase(%struct.TYPE_30__* %530)
  switch i32 %531, label %544 [
    i32 129, label %532
    i32 128, label %533
  ]

532:                                              ; preds = %527
  br label %547

533:                                              ; preds = %527
  %534 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %535 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %534, i32 0, i32 1
  %536 = load %struct.TYPE_30__*, %struct.TYPE_30__** %535, align 8
  %537 = call i32 @bundle_HighestState(%struct.TYPE_30__* %536)
  %538 = load i32, i32* @DATALINK_LCP, align 4
  %539 = icmp sge i32 %537, %538
  br i1 %539, label %540, label %543

540:                                              ; preds = %533
  %541 = load i32, i32* @LogWARN, align 4
  %542 = call i32 (i32, i8*, ...) @log_Printf(i32 %541, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %592

543:                                              ; preds = %533
  br label %547

544:                                              ; preds = %527
  %545 = load i32, i32* @LogWARN, align 4
  %546 = call i32 (i32, i8*, ...) @log_Printf(i32 %545, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %592

547:                                              ; preds = %543, %532
  %548 = load i32, i32* %8, align 4
  %549 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %550 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %549, i32 0, i32 1
  %551 = load %struct.TYPE_30__*, %struct.TYPE_30__** %550, align 8
  %552 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %551, i32 0, i32 0
  %553 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %553, i32 0, i32 0
  %555 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %554, i32 0, i32 1
  %556 = load i32, i32* %555, align 4
  %557 = and i32 %556, %548
  store i32 %557, i32* %555, align 4
  %558 = load i32, i32* %9, align 4
  %559 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %560 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %559, i32 0, i32 1
  %561 = load %struct.TYPE_30__*, %struct.TYPE_30__** %560, align 8
  %562 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %561, i32 0, i32 0
  %563 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %562, i32 0, i32 1
  %564 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %563, i32 0, i32 0
  %565 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %564, i32 0, i32 1
  %566 = load i32, i32* %565, align 4
  %567 = or i32 %566, %558
  store i32 %567, i32* %565, align 4
  br label %591

568:                                              ; preds = %81
  %569 = load i32, i32* %8, align 4
  %570 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %571 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %570, i32 0, i32 1
  %572 = load %struct.TYPE_30__*, %struct.TYPE_30__** %571, align 8
  %573 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %572, i32 0, i32 0
  %574 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %575, i32 0, i32 0
  %577 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %576, i32 0, i32 0
  %578 = load i32, i32* %577, align 4
  %579 = and i32 %578, %569
  store i32 %579, i32* %577, align 4
  %580 = load i32, i32* %9, align 4
  %581 = load %struct.cmdargs*, %struct.cmdargs** %3, align 8
  %582 = getelementptr inbounds %struct.cmdargs, %struct.cmdargs* %581, i32 0, i32 1
  %583 = load %struct.TYPE_30__*, %struct.TYPE_30__** %582, align 8
  %584 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %584, i32 0, i32 0
  %586 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %585, i32 0, i32 0
  %587 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %586, i32 0, i32 0
  %588 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %587, i32 0, i32 0
  %589 = load i32, i32* %588, align 4
  %590 = or i32 %589, %580
  store i32 %590, i32* %588, align 4
  br label %591

591:                                              ; preds = %81, %568, %547, %506, %485, %464, %443, %422, %401, %400, %230, %209, %188, %167, %146, %125, %104, %83
  store i32 0, i32* %2, align 4
  br label %592

592:                                              ; preds = %591, %544, %540, %45, %32
  %593 = load i32, i32* %2, align 4
  ret i32 %593
}

declare dso_local %struct.link* @command_ChooseLink(%struct.cmdargs*) #1

declare dso_local i8* @ident_cmd(i32, i32*, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, ...) #1

declare dso_local i32 @lqr_StopTimer(%struct.TYPE_29__*) #1

declare dso_local i32 @bundle_Phase(%struct.TYPE_30__*) #1

declare dso_local i32 @bundle_HighestState(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
