; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_sched_class.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/cxgbetool/extr_cxgbetool.c_sched_class.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t4_sched_params = type { i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"missing scheduling sub-command\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@SCHED_CLASS_SUBCMD_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@SCHED_CLASS_SUBCMD_PARAMS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid scheduling sub-command \22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"missing argument for \22%s\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"packet\00", align 1
@SCHED_CLASS_TYPE_PACKET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"invalid type parameter \22%s\22\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"minmax\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"unknown scheduler config parameter \22%s\22\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"cl-rl\00", align 1
@SCHED_CLASS_LEVEL_CL_RL = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"cl-wrr\00", align 1
@SCHED_CLASS_LEVEL_CL_WRR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"ch-rl\00", align 1
@SCHED_CLASS_LEVEL_CH_RL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [29 x i8] c"invalid level parameter \22%s\22\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"mode\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"class\00", align 1
@SCHED_CLASS_MODE_CLASS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [5 x i8] c"flow\00", align 1
@SCHED_CLASS_MODE_FLOW = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [28 x i8] c"invalid mode parameter \22%s\22\00", align 1
@.str.19 = private unnamed_addr constant [10 x i8] c"rate-unit\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@SCHED_CLASS_RATEUNIT_BITS = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [5 x i8] c"pkts\00", align 1
@SCHED_CLASS_RATEUNIT_PKTS = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [33 x i8] c"invalid rate-unit parameter \22%s\22\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"rate-mode\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"relative\00", align 1
@SCHED_CLASS_RATEMODE_REL = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [9 x i8] c"absolute\00", align 1
@SCHED_CLASS_RATEMODE_ABS = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [33 x i8] c"invalid rate-mode parameter \22%s\22\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"channel\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"min-rate\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"max-rate\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"weight\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"pkt-size\00", align 1
@.str.32 = private unnamed_addr constant [33 x i8] c"unknown scheduler parameter \22%s\22\00", align 1
@.str.33 = private unnamed_addr constant [31 x i8] c"sched \22type\22 parameter missing\00", align 1
@.str.34 = private unnamed_addr constant [40 x i8] c"sched config \22minmax\22 parameter missing\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"sched params \22level\22 parameter missing\00", align 1
@.str.36 = private unnamed_addr constant [38 x i8] c"sched params \22mode\22 parameter missing\00", align 1
@.str.37 = private unnamed_addr constant [43 x i8] c"sched params \22rate-unit\22 parameter missing\00", align 1
@.str.38 = private unnamed_addr constant [43 x i8] c"sched params \22rate-mode\22 parameter missing\00", align 1
@.str.39 = private unnamed_addr constant [31 x i8] c"sched params \22channel\22 missing\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"sched params \22class\22 missing\00", align 1
@.str.41 = private unnamed_addr constant [53 x i8] c"sched params \22max-rate\22 missing for rate-limit level\00", align 1
@.str.42 = private unnamed_addr constant [83 x i8] c"sched params \22weight\22 missing or invalid (not 1-99) for weighted-round-robin level\00", align 1
@.str.43 = private unnamed_addr constant [53 x i8] c"sched params \22pkt-size\22 missing for rate-limit level\00", align 1
@.str.44 = private unnamed_addr constant [48 x i8] c"sched params mode flow needs rate-mode absolute\00", align 1
@.str.45 = private unnamed_addr constant [77 x i8] c"sched params \22max-rate\22 takes percentage value(1-100) for rate-mode relative\00", align 1
@.str.46 = private unnamed_addr constant [72 x i8] c"sched params \22max-rate\22 takes value(1-100000000) for rate-mode absolute\00", align 1
@.str.47 = private unnamed_addr constant [48 x i8] c"sched params \22max-rate\22 is less than \22min-rate\22\00", align 1
@.str.48 = private unnamed_addr constant [34 x i8] c"%d error%s in sched-class command\00", align 1
@.str.49 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@CHELSIO_T4_SCHED_CLASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**)* @sched_class to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sched_class(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.t4_sched_params, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = call i32 @memset(%struct.t4_sched_params* %6, i32 255, i32 52)
  %12 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  store i32 -1, i32* %12, align 4
  %13 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 1
  store i32 -1, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %688

19:                                               ; preds = %2
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 0
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @SCHED_CLASS_SUBCMD_CONFIG, align 4
  %27 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  store i32 -1, i32* %30, align 4
  br label %77

31:                                               ; preds = %19
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 0
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @strcmp(i8* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %31
  %38 = load i32, i32* @SCHED_CLASS_SUBCMD_PARAMS, align 4
  %39 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  store i32 %38, i32* %39, align 4
  %40 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 9
  store i32 -1, i32* %42, align 4
  %43 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 8
  store i32 -1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 7
  store i32 -1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 6
  store i32 -1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 5
  store i32 -1, i32* %54, align 4
  %55 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 4
  store i32 -1, i32* %57, align 4
  %58 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  store i32 -1, i32* %60, align 4
  %61 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 -1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32 -1, i32* %66, align 4
  %67 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 4
  br label %76

70:                                               ; preds = %31
  %71 = load i8**, i8*** %5, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 0
  %73 = load i8*, i8** %72, align 8
  %74 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %3, align 4
  br label %688

76:                                               ; preds = %37
  br label %77

77:                                               ; preds = %76, %25
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  br label %78

78:                                               ; preds = %394, %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp slt i32 %79, %80
  br i1 %81, label %82, label %397

82:                                               ; preds = %78
  %83 = load i8**, i8*** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8** %86, i8*** %9, align 8
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %4, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %82
  %92 = load i8**, i8*** %9, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 0
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %94)
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %397

98:                                               ; preds = %82
  %99 = load i8**, i8*** %9, align 8
  %100 = getelementptr inbounds i8*, i8** %99, i64 0
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @strcmp(i8* %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %121, label %104

104:                                              ; preds = %98
  %105 = load i8**, i8*** %9, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i64 1
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %104
  %111 = load i32, i32* @SCHED_CLASS_TYPE_PACKET, align 4
  %112 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 1
  store i32 %111, i32* %112, align 4
  br label %120

113:                                              ; preds = %104
  %114 = load i8**, i8*** %9, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 1
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8* %116)
  %118 = load i32, i32* %7, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %7, align 4
  br label %120

120:                                              ; preds = %113, %110
  br label %394

121:                                              ; preds = %98
  %122 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SCHED_CLASS_SUBCMD_CONFIG, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %145

126:                                              ; preds = %121
  %127 = load i8**, i8*** %9, align 8
  %128 = call i32 @get_sched_param(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8** %127, i64* %10)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %137, label %130

130:                                              ; preds = %126
  %131 = load i64, i64* %10, align 8
  %132 = inttoptr i64 %131 to i8*
  %133 = ptrtoint i8* %132 to i32
  %134 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  store i32 %133, i32* %136, align 4
  br label %144

137:                                              ; preds = %126
  %138 = load i8**, i8*** %9, align 8
  %139 = getelementptr inbounds i8*, i8** %138, i64 0
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %140)
  %142 = load i32, i32* %7, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %7, align 4
  br label %144

144:                                              ; preds = %137, %130
  br label %394

145:                                              ; preds = %121
  %146 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SCHED_CLASS_SUBCMD_PARAMS, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %394

151:                                              ; preds = %145
  %152 = load i8**, i8*** %9, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strcmp(i8* %154, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %200, label %157

157:                                              ; preds = %151
  %158 = load i8**, i8*** %9, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i64 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %168, label %163

163:                                              ; preds = %157
  %164 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %165 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  store i32 %164, i32* %167, align 4
  br label %199

168:                                              ; preds = %157
  %169 = load i8**, i8*** %9, align 8
  %170 = getelementptr inbounds i8*, i8** %169, i64 1
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strcmp(i8* %171, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %179, label %174

174:                                              ; preds = %168
  %175 = load i32, i32* @SCHED_CLASS_LEVEL_CL_WRR, align 4
  %176 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  store i32 %175, i32* %178, align 4
  br label %198

179:                                              ; preds = %168
  %180 = load i8**, i8*** %9, align 8
  %181 = getelementptr inbounds i8*, i8** %180, i64 1
  %182 = load i8*, i8** %181, align 8
  %183 = call i32 @strcmp(i8* %182, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = load i32, i32* @SCHED_CLASS_LEVEL_CH_RL, align 4
  %187 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  store i32 %186, i32* %189, align 4
  br label %197

190:                                              ; preds = %179
  %191 = load i8**, i8*** %9, align 8
  %192 = getelementptr inbounds i8*, i8** %191, i64 1
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8* %193)
  %195 = load i32, i32* %7, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %7, align 4
  br label %197

197:                                              ; preds = %190, %185
  br label %198

198:                                              ; preds = %197, %174
  br label %199

199:                                              ; preds = %198, %163
  br label %393

200:                                              ; preds = %151
  %201 = load i8**, i8*** %9, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 0
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @strcmp(i8* %203, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %237, label %206

206:                                              ; preds = %200
  %207 = load i8**, i8*** %9, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i64 1
  %209 = load i8*, i8** %208, align 8
  %210 = call i32 @strcmp(i8* %209, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %206
  %213 = load i32, i32* @SCHED_CLASS_MODE_CLASS, align 4
  %214 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 1
  store i32 %213, i32* %216, align 4
  br label %236

217:                                              ; preds = %206
  %218 = load i8**, i8*** %9, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 1
  %220 = load i8*, i8** %219, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0))
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %228, label %223

223:                                              ; preds = %217
  %224 = load i32, i32* @SCHED_CLASS_MODE_FLOW, align 4
  %225 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 1
  store i32 %224, i32* %227, align 4
  br label %235

228:                                              ; preds = %217
  %229 = load i8**, i8*** %9, align 8
  %230 = getelementptr inbounds i8*, i8** %229, i64 1
  %231 = load i8*, i8** %230, align 8
  %232 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i64 0, i64 0), i8* %231)
  %233 = load i32, i32* %7, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %228, %223
  br label %236

236:                                              ; preds = %235, %212
  br label %392

237:                                              ; preds = %200
  %238 = load i8**, i8*** %9, align 8
  %239 = getelementptr inbounds i8*, i8** %238, i64 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @strcmp(i8* %240, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.19, i64 0, i64 0))
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %274, label %243

243:                                              ; preds = %237
  %244 = load i8**, i8*** %9, align 8
  %245 = getelementptr inbounds i8*, i8** %244, i64 1
  %246 = load i8*, i8** %245, align 8
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i64 0, i64 0))
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %254, label %249

249:                                              ; preds = %243
  %250 = load i32, i32* @SCHED_CLASS_RATEUNIT_BITS, align 4
  %251 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %252, i32 0, i32 2
  store i32 %250, i32* %253, align 4
  br label %273

254:                                              ; preds = %243
  %255 = load i8**, i8*** %9, align 8
  %256 = getelementptr inbounds i8*, i8** %255, i64 1
  %257 = load i8*, i8** %256, align 8
  %258 = call i32 @strcmp(i8* %257, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0))
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %265, label %260

260:                                              ; preds = %254
  %261 = load i32, i32* @SCHED_CLASS_RATEUNIT_PKTS, align 4
  %262 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 0
  %264 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %263, i32 0, i32 2
  store i32 %261, i32* %264, align 4
  br label %272

265:                                              ; preds = %254
  %266 = load i8**, i8*** %9, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i64 1
  %268 = load i8*, i8** %267, align 8
  %269 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.22, i64 0, i64 0), i8* %268)
  %270 = load i32, i32* %7, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %7, align 4
  br label %272

272:                                              ; preds = %265, %260
  br label %273

273:                                              ; preds = %272, %249
  br label %391

274:                                              ; preds = %237
  %275 = load i8**, i8*** %9, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 0
  %277 = load i8*, i8** %276, align 8
  %278 = call i32 @strcmp(i8* %277, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.23, i64 0, i64 0))
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %311, label %280

280:                                              ; preds = %274
  %281 = load i8**, i8*** %9, align 8
  %282 = getelementptr inbounds i8*, i8** %281, i64 1
  %283 = load i8*, i8** %282, align 8
  %284 = call i32 @strcmp(i8* %283, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0))
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %291, label %286

286:                                              ; preds = %280
  %287 = load i32, i32* @SCHED_CLASS_RATEMODE_REL, align 4
  %288 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 3
  store i32 %287, i32* %290, align 4
  br label %310

291:                                              ; preds = %280
  %292 = load i8**, i8*** %9, align 8
  %293 = getelementptr inbounds i8*, i8** %292, i64 1
  %294 = load i8*, i8** %293, align 8
  %295 = call i32 @strcmp(i8* %294, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i64 0, i64 0))
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %302, label %297

297:                                              ; preds = %291
  %298 = load i32, i32* @SCHED_CLASS_RATEMODE_ABS, align 4
  %299 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  %301 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %300, i32 0, i32 3
  store i32 %298, i32* %301, align 4
  br label %309

302:                                              ; preds = %291
  %303 = load i8**, i8*** %9, align 8
  %304 = getelementptr inbounds i8*, i8** %303, i64 1
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.26, i64 0, i64 0), i8* %305)
  %307 = load i32, i32* %7, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %7, align 4
  br label %309

309:                                              ; preds = %302, %297
  br label %310

310:                                              ; preds = %309, %286
  br label %390

311:                                              ; preds = %274
  %312 = load i8**, i8*** %9, align 8
  %313 = call i32 @get_sched_param(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i64 0, i64 0), i8** %312, i64* %10)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %322, label %315

315:                                              ; preds = %311
  %316 = load i64, i64* %10, align 8
  %317 = inttoptr i64 %316 to i8*
  %318 = ptrtoint i8* %317 to i32
  %319 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %320 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %319, i32 0, i32 0
  %321 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %320, i32 0, i32 4
  store i32 %318, i32* %321, align 4
  br label %389

322:                                              ; preds = %311
  %323 = load i8**, i8*** %9, align 8
  %324 = call i32 @get_sched_param(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i8** %323, i64* %10)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %333, label %326

326:                                              ; preds = %322
  %327 = load i64, i64* %10, align 8
  %328 = inttoptr i64 %327 to i8*
  %329 = ptrtoint i8* %328 to i32
  %330 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %331 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %331, i32 0, i32 5
  store i32 %329, i32* %332, align 4
  br label %388

333:                                              ; preds = %322
  %334 = load i8**, i8*** %9, align 8
  %335 = call i32 @get_sched_param(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.28, i64 0, i64 0), i8** %334, i64* %10)
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %344, label %337

337:                                              ; preds = %333
  %338 = load i64, i64* %10, align 8
  %339 = inttoptr i64 %338 to i8*
  %340 = ptrtoint i8* %339 to i32
  %341 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %342, i32 0, i32 6
  store i32 %340, i32* %343, align 4
  br label %387

344:                                              ; preds = %333
  %345 = load i8**, i8*** %9, align 8
  %346 = call i32 @get_sched_param(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i64 0, i64 0), i8** %345, i64* %10)
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %355, label %348

348:                                              ; preds = %344
  %349 = load i64, i64* %10, align 8
  %350 = inttoptr i64 %349 to i8*
  %351 = ptrtoint i8* %350 to i32
  %352 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %353, i32 0, i32 7
  store i32 %351, i32* %354, align 4
  br label %386

355:                                              ; preds = %344
  %356 = load i8**, i8*** %9, align 8
  %357 = call i32 @get_sched_param(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.30, i64 0, i64 0), i8** %356, i64* %10)
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %366, label %359

359:                                              ; preds = %355
  %360 = load i64, i64* %10, align 8
  %361 = inttoptr i64 %360 to i8*
  %362 = ptrtoint i8* %361 to i32
  %363 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %364, i32 0, i32 8
  store i32 %362, i32* %365, align 4
  br label %385

366:                                              ; preds = %355
  %367 = load i8**, i8*** %9, align 8
  %368 = call i32 @get_sched_param(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0), i8** %367, i64* %10)
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %377, label %370

370:                                              ; preds = %366
  %371 = load i64, i64* %10, align 8
  %372 = inttoptr i64 %371 to i8*
  %373 = ptrtoint i8* %372 to i32
  %374 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 0
  %376 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %375, i32 0, i32 9
  store i32 %373, i32* %376, align 4
  br label %384

377:                                              ; preds = %366
  %378 = load i8**, i8*** %9, align 8
  %379 = getelementptr inbounds i8*, i8** %378, i64 0
  %380 = load i8*, i8** %379, align 8
  %381 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.32, i64 0, i64 0), i8* %380)
  %382 = load i32, i32* %7, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %7, align 4
  br label %384

384:                                              ; preds = %377, %370
  br label %385

385:                                              ; preds = %384, %359
  br label %386

386:                                              ; preds = %385, %348
  br label %387

387:                                              ; preds = %386, %337
  br label %388

388:                                              ; preds = %387, %326
  br label %389

389:                                              ; preds = %388, %315
  br label %390

390:                                              ; preds = %389, %310
  br label %391

391:                                              ; preds = %390, %273
  br label %392

392:                                              ; preds = %391, %236
  br label %393

393:                                              ; preds = %392, %199
  br label %394

394:                                              ; preds = %393, %150, %144, %120
  %395 = load i32, i32* %8, align 4
  %396 = add nsw i32 %395, 2
  store i32 %396, i32* %8, align 4
  br label %78

397:                                              ; preds = %91, %78
  %398 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 1
  %399 = load i32, i32* %398, align 4
  %400 = icmp slt i32 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %397
  %402 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.33, i64 0, i64 0))
  %403 = load i32, i32* %7, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %7, align 4
  br label %405

405:                                              ; preds = %401, %397
  %406 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  %407 = load i32, i32* %406, align 4
  %408 = load i32, i32* @SCHED_CLASS_SUBCMD_CONFIG, align 4
  %409 = icmp eq i32 %407, %408
  br i1 %409, label %410, label %421

410:                                              ; preds = %405
  %411 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 1
  %413 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %412, i32 0, i32 0
  %414 = load i32, i32* %413, align 4
  %415 = icmp slt i32 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %410
  %417 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.34, i64 0, i64 0))
  %418 = load i32, i32* %7, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %7, align 4
  br label %420

420:                                              ; preds = %416, %410
  br label %421

421:                                              ; preds = %420, %405
  %422 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 0
  %423 = load i32, i32* %422, align 4
  %424 = load i32, i32* @SCHED_CLASS_SUBCMD_PARAMS, align 4
  %425 = icmp eq i32 %423, %424
  br i1 %425, label %426, label %674

426:                                              ; preds = %421
  %427 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %428 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %427, i32 0, i32 0
  %429 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %428, i32 0, i32 0
  %430 = load i32, i32* %429, align 4
  %431 = icmp slt i32 %430, 0
  br i1 %431, label %432, label %436

432:                                              ; preds = %426
  %433 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0))
  %434 = load i32, i32* %7, align 4
  %435 = add nsw i32 %434, 1
  store i32 %435, i32* %7, align 4
  br label %436

436:                                              ; preds = %432, %426
  %437 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %438 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %437, i32 0, i32 0
  %439 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %438, i32 0, i32 1
  %440 = load i32, i32* %439, align 4
  %441 = icmp slt i32 %440, 0
  br i1 %441, label %442, label %453

442:                                              ; preds = %436
  %443 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %448 = icmp eq i32 %446, %447
  br i1 %448, label %449, label %453

449:                                              ; preds = %442
  %450 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.36, i64 0, i64 0))
  %451 = load i32, i32* %7, align 4
  %452 = add nsw i32 %451, 1
  store i32 %452, i32* %7, align 4
  br label %453

453:                                              ; preds = %449, %442, %436
  %454 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %455 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %454, i32 0, i32 0
  %456 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 4
  %458 = icmp slt i32 %457, 0
  br i1 %458, label %459, label %477

459:                                              ; preds = %453
  %460 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %461 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %460, i32 0, i32 0
  %462 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 4
  %464 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %465 = icmp eq i32 %463, %464
  br i1 %465, label %473, label %466

466:                                              ; preds = %459
  %467 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %467, i32 0, i32 0
  %469 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %468, i32 0, i32 0
  %470 = load i32, i32* %469, align 4
  %471 = load i32, i32* @SCHED_CLASS_LEVEL_CH_RL, align 4
  %472 = icmp eq i32 %470, %471
  br i1 %472, label %473, label %477

473:                                              ; preds = %466, %459
  %474 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.37, i64 0, i64 0))
  %475 = load i32, i32* %7, align 4
  %476 = add nsw i32 %475, 1
  store i32 %476, i32* %7, align 4
  br label %477

477:                                              ; preds = %473, %466, %453
  %478 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 0
  %480 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %479, i32 0, i32 3
  %481 = load i32, i32* %480, align 4
  %482 = icmp slt i32 %481, 0
  br i1 %482, label %483, label %501

483:                                              ; preds = %477
  %484 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %485 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %485, i32 0, i32 0
  %487 = load i32, i32* %486, align 4
  %488 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %489 = icmp eq i32 %487, %488
  br i1 %489, label %497, label %490

490:                                              ; preds = %483
  %491 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %492 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %491, i32 0, i32 0
  %493 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %492, i32 0, i32 0
  %494 = load i32, i32* %493, align 4
  %495 = load i32, i32* @SCHED_CLASS_LEVEL_CH_RL, align 4
  %496 = icmp eq i32 %494, %495
  br i1 %496, label %497, label %501

497:                                              ; preds = %490, %483
  %498 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.38, i64 0, i64 0))
  %499 = load i32, i32* %7, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %7, align 4
  br label %501

501:                                              ; preds = %497, %490, %477
  %502 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %503 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %503, i32 0, i32 4
  %505 = load i32, i32* %504, align 4
  %506 = icmp slt i32 %505, 0
  br i1 %506, label %507, label %511

507:                                              ; preds = %501
  %508 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.39, i64 0, i64 0))
  %509 = load i32, i32* %7, align 4
  %510 = add nsw i32 %509, 1
  store i32 %510, i32* %7, align 4
  br label %511

511:                                              ; preds = %507, %501
  %512 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %513, i32 0, i32 5
  %515 = load i32, i32* %514, align 4
  %516 = icmp slt i32 %515, 0
  br i1 %516, label %517, label %535

517:                                              ; preds = %511
  %518 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 0
  %520 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %519, i32 0, i32 0
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %523 = icmp eq i32 %521, %522
  br i1 %523, label %531, label %524

524:                                              ; preds = %517
  %525 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %526 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %525, i32 0, i32 0
  %527 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %526, i32 0, i32 0
  %528 = load i32, i32* %527, align 4
  %529 = load i32, i32* @SCHED_CLASS_LEVEL_CL_WRR, align 4
  %530 = icmp eq i32 %528, %529
  br i1 %530, label %531, label %535

531:                                              ; preds = %524, %517
  %532 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i64 0, i64 0))
  %533 = load i32, i32* %7, align 4
  %534 = add nsw i32 %533, 1
  store i32 %534, i32* %7, align 4
  br label %535

535:                                              ; preds = %531, %524, %511
  %536 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %537 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %536, i32 0, i32 0
  %538 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %537, i32 0, i32 7
  %539 = load i32, i32* %538, align 4
  %540 = icmp slt i32 %539, 0
  br i1 %540, label %541, label %559

541:                                              ; preds = %535
  %542 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %543 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %542, i32 0, i32 0
  %544 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 4
  %546 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %547 = icmp eq i32 %545, %546
  br i1 %547, label %555, label %548

548:                                              ; preds = %541
  %549 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 0
  %551 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %550, i32 0, i32 0
  %552 = load i32, i32* %551, align 4
  %553 = load i32, i32* @SCHED_CLASS_LEVEL_CH_RL, align 4
  %554 = icmp eq i32 %552, %553
  br i1 %554, label %555, label %559

555:                                              ; preds = %548, %541
  %556 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.41, i64 0, i64 0))
  %557 = load i32, i32* %7, align 4
  %558 = add nsw i32 %557, 1
  store i32 %558, i32* %7, align 4
  br label %559

559:                                              ; preds = %555, %548, %535
  %560 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %561 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = load i32, i32* @SCHED_CLASS_LEVEL_CL_WRR, align 4
  %565 = icmp eq i32 %563, %564
  br i1 %565, label %566, label %582

566:                                              ; preds = %559
  %567 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %568 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %567, i32 0, i32 0
  %569 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %568, i32 0, i32 8
  %570 = load i32, i32* %569, align 4
  %571 = icmp slt i32 %570, 1
  br i1 %571, label %578, label %572

572:                                              ; preds = %566
  %573 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %574 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %574, i32 0, i32 8
  %576 = load i32, i32* %575, align 4
  %577 = icmp sgt i32 %576, 99
  br i1 %577, label %578, label %582

578:                                              ; preds = %572, %566
  %579 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.42, i64 0, i64 0))
  %580 = load i32, i32* %7, align 4
  %581 = add nsw i32 %580, 1
  store i32 %581, i32* %7, align 4
  br label %582

582:                                              ; preds = %578, %572, %559
  %583 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %584 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %584, i32 0, i32 9
  %586 = load i32, i32* %585, align 4
  %587 = icmp slt i32 %586, 0
  br i1 %587, label %588, label %599

588:                                              ; preds = %582
  %589 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %590 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i32 0, i32 0
  %591 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %590, i32 0, i32 0
  %592 = load i32, i32* %591, align 4
  %593 = load i32, i32* @SCHED_CLASS_LEVEL_CL_RL, align 4
  %594 = icmp eq i32 %592, %593
  br i1 %594, label %595, label %599

595:                                              ; preds = %588
  %596 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.43, i64 0, i64 0))
  %597 = load i32, i32* %7, align 4
  %598 = add nsw i32 %597, 1
  store i32 %598, i32* %7, align 4
  br label %599

599:                                              ; preds = %595, %588, %582
  %600 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %601 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %600, i32 0, i32 0
  %602 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %601, i32 0, i32 1
  %603 = load i32, i32* %602, align 4
  %604 = load i32, i32* @SCHED_CLASS_MODE_FLOW, align 4
  %605 = icmp eq i32 %603, %604
  br i1 %605, label %606, label %617

606:                                              ; preds = %599
  %607 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %608 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %607, i32 0, i32 0
  %609 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %608, i32 0, i32 3
  %610 = load i32, i32* %609, align 4
  %611 = load i32, i32* @SCHED_CLASS_RATEMODE_ABS, align 4
  %612 = icmp ne i32 %610, %611
  br i1 %612, label %613, label %617

613:                                              ; preds = %606
  %614 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.44, i64 0, i64 0))
  %615 = load i32, i32* %7, align 4
  %616 = add nsw i32 %615, 1
  store i32 %616, i32* %7, align 4
  br label %617

617:                                              ; preds = %613, %606, %599
  %618 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %619 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %619, i32 0, i32 3
  %621 = load i32, i32* %620, align 4
  %622 = load i32, i32* @SCHED_CLASS_RATEMODE_REL, align 4
  %623 = icmp eq i32 %621, %622
  br i1 %623, label %624, label %635

624:                                              ; preds = %617
  %625 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %626 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %625, i32 0, i32 0
  %627 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %626, i32 0, i32 7
  %628 = load i32, i32* %627, align 4
  %629 = call i32 @in_range(i32 %628, i32 1, i32 100)
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %635, label %631

631:                                              ; preds = %624
  %632 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.45, i64 0, i64 0))
  %633 = load i32, i32* %7, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %7, align 4
  br label %635

635:                                              ; preds = %631, %624, %617
  %636 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %637 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %636, i32 0, i32 0
  %638 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %637, i32 0, i32 3
  %639 = load i32, i32* %638, align 4
  %640 = load i32, i32* @SCHED_CLASS_RATEMODE_ABS, align 4
  %641 = icmp eq i32 %639, %640
  br i1 %641, label %642, label %653

642:                                              ; preds = %635
  %643 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %644 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %643, i32 0, i32 0
  %645 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %644, i32 0, i32 7
  %646 = load i32, i32* %645, align 4
  %647 = call i32 @in_range(i32 %646, i32 1, i32 100000000)
  %648 = icmp ne i32 %647, 0
  br i1 %648, label %653, label %649

649:                                              ; preds = %642
  %650 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.46, i64 0, i64 0))
  %651 = load i32, i32* %7, align 4
  %652 = add nsw i32 %651, 1
  store i32 %652, i32* %7, align 4
  br label %653

653:                                              ; preds = %649, %642, %635
  %654 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %655 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %655, i32 0, i32 7
  %657 = load i32, i32* %656, align 4
  %658 = icmp sgt i32 %657, 0
  br i1 %658, label %659, label %673

659:                                              ; preds = %653
  %660 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %661 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %660, i32 0, i32 0
  %662 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %661, i32 0, i32 7
  %663 = load i32, i32* %662, align 4
  %664 = getelementptr inbounds %struct.t4_sched_params, %struct.t4_sched_params* %6, i32 0, i32 2
  %665 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %664, i32 0, i32 0
  %666 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %665, i32 0, i32 6
  %667 = load i32, i32* %666, align 4
  %668 = icmp slt i32 %663, %667
  br i1 %668, label %669, label %673

669:                                              ; preds = %659
  %670 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.47, i64 0, i64 0))
  %671 = load i32, i32* %7, align 4
  %672 = add nsw i32 %671, 1
  store i32 %672, i32* %7, align 4
  br label %673

673:                                              ; preds = %669, %659, %653
  br label %674

674:                                              ; preds = %673, %421
  %675 = load i32, i32* %7, align 4
  %676 = icmp sgt i32 %675, 0
  br i1 %676, label %677, label %685

677:                                              ; preds = %674
  %678 = load i32, i32* %7, align 4
  %679 = load i32, i32* %7, align 4
  %680 = icmp eq i32 %679, 1
  %681 = zext i1 %680 to i64
  %682 = select i1 %680, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.49, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.50, i64 0, i64 0)
  %683 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.48, i64 0, i64 0), i32 %678, i8* %682)
  %684 = load i32, i32* @EINVAL, align 4
  store i32 %684, i32* %3, align 4
  br label %688

685:                                              ; preds = %674
  %686 = load i32, i32* @CHELSIO_T4_SCHED_CLASS, align 4
  %687 = call i32 @doit(i32 %686, %struct.t4_sched_params* %6)
  store i32 %687, i32* %3, align 4
  br label %688

688:                                              ; preds = %685, %677, %70, %16
  %689 = load i32, i32* %3, align 4
  ret i32 %689
}

declare dso_local i32 @memset(%struct.t4_sched_params*, i32, i32) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @get_sched_param(i8*, i8**, i64*) #1

declare dso_local i32 @in_range(i32, i32, i32) #1

declare dso_local i32 @doit(i32, %struct.t4_sched_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
