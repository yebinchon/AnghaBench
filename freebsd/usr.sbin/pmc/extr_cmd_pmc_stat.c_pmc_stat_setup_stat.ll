; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pmc/extr_cmd_pmc_stat.c_pmc_stat_setup_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pmc/extr_cmd_pmc_stat.c_pmc_stat_setup_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i8*, i32 }
%struct.pmcstat_ev = type { i8*, i32, i32, i64, i64, i32, i32, i32*, i32 }

@STAT_MODE_NPMCS = common dso_local global i32 0, align 4
@pmc_stat_setup_stat.pmc_stat_mode_cntrs = internal global i8** null, align 8
@CPU_LEVEL_ROOT = common dso_local global i32 0, align 4
@CPU_WHICH_PID = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"ERROR: Cannot determine the root set of CPUs\00", align 1
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"ERROR: hwmpc.ko not loaded or stat not supported on host.\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"ERROR: system mode counters can only be used as root\00", align 1
@stat_mode_cntrs = common dso_local global i8** null, align 8
@pmc_stat_mode_names = common dso_local global i8** null, align 8
@stat_mode_names = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@IAP_START = common dso_local global i32 0, align 4
@DEFAULT_SAMPLE_COUNT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"ERROR: %s not recognized on host\00", align 1
@FIXED_MODE_NPMCS = common dso_local global i32 0, align 4
@FLAG_HAS_SYSTEM_PMCS = common dso_local global i32 0, align 4
@pmc_args = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@FLAG_HAS_PROCESS_PMCS = common dso_local global i32 0, align 4
@FLAG_HAS_COUNTING_PMCS = common dso_local global i32 0, align 4
@FLAG_HAS_COMMANDLINE = common dso_local global i32 0, align 4
@FLAG_HAS_TARGET = common dso_local global i32 0, align 4
@FLAG_HAS_PIPE = common dso_local global i32 0, align 4
@FLAG_HAS_OUTPUT_LOGFILE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"/dev/null\00", align 1
@PMCSTAT_OPEN_FOR_WRITE = common dso_local global i32 0, align 4
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [22 x i8] c"ERROR: Out of memory.\00", align 1
@PMC_MODE_SC = common dso_local global i32 0, align 4
@PMC_MODE_TC = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c", \09\00", align 1
@PMC_F_DESCENDANTS = common dso_local global i32 0, align 4
@PMC_ID_INVALID = common dso_local global i32 0, align 4
@ev_next = common dso_local global i32 0, align 4
@PMC_CPU_ANY = common dso_local global i64 0, align 8
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@before_ts = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @pmc_stat_setup_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_stat_setup_stat(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.pmcstat_ev*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %16 = load i32, i32* @STAT_MODE_NPMCS, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %5, align 8
  %19 = alloca i8*, i64 %17, align 16
  store i64 %17, i64* %6, align 8
  %20 = load i32, i32* @CPU_LEVEL_ROOT, align 4
  %21 = load i32, i32* @CPU_WHICH_PID, align 4
  %22 = call i32 @cpuset_getaffinity(i32 %20, i32 %21, i32 -1, i32 4, i32* %15)
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EX_OSERR, align 4
  %26 = call i32 @err(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %2
  %28 = call i32 @CPU_COPY(i32* %15, i32* %14)
  %29 = call i64 @pmc_pmu_stat_mode(i8*** @pmc_stat_setup_stat.pmc_stat_mode_cntrs)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* @EX_USAGE, align 4
  %33 = call i32 (i32, i8*, ...) @errx(i32 %32, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i32, i32* %3, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = call i64 (...) @geteuid()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EX_USAGE, align 4
  %42 = call i32 (i32, i8*, ...) @errx(i32 %41, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %37, %34
  store i8* null, i8** %8, align 8
  store i32 0, i32* %10, align 4
  br label %44

44:                                               ; preds = %67, %43
  %45 = load i32, i32* %10, align 4
  %46 = load i32, i32* @STAT_MODE_NPMCS, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %70

48:                                               ; preds = %44
  %49 = load i8**, i8*** @pmc_stat_setup_stat.pmc_stat_mode_cntrs, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = load i8**, i8*** @stat_mode_cntrs, align 8
  %55 = load i32, i32* %10, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8*, i8** %54, i64 %56
  store i8* %53, i8** %57, align 8
  %58 = load i8**, i8*** @pmc_stat_mode_names, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %58, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load i8**, i8*** @stat_mode_names, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8*, i8** %63, i64 %65
  store i8* %62, i8** %66, align 8
  br label %67

67:                                               ; preds = %48
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %44

70:                                               ; preds = %44
  %71 = load i8*, i8** %4, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %139

73:                                               ; preds = %70
  %74 = load i8*, i8** %4, align 8
  %75 = call i8* @strdup(i8* %74)
  store i8* %75, i8** %8, align 8
  store i32 0, i32* %13, align 4
  br label %76

76:                                               ; preds = %101, %73
  %77 = call i8* @strsep(i8** %8, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i8* %77, i8** %9, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @STAT_MODE_NPMCS, align 4
  %82 = load i32, i32* @IAP_START, align 4
  %83 = sub nsw i32 %81, %82
  %84 = icmp slt i32 %80, %83
  br label %85

85:                                               ; preds = %79, %76
  %86 = phi i1 [ false, %76 ], [ %84, %79 ]
  br i1 %86, label %87, label %102

87:                                               ; preds = %85
  %88 = load i8*, i8** %9, align 8
  %89 = load i32, i32* %13, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %13, align 4
  %91 = sext i32 %89 to i64
  %92 = getelementptr inbounds i8*, i8** %19, i64 %91
  store i8* %88, i8** %92, align 8
  %93 = load i8*, i8** %9, align 8
  %94 = call i64 @pmc_pmu_sample_rate_get(i8* %93)
  %95 = load i64, i64* @DEFAULT_SAMPLE_COUNT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load i32, i32* @EX_USAGE, align 4
  %99 = load i8*, i8** %9, align 8
  %100 = call i32 (i32, i8*, ...) @errx(i32 %98, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %99)
  br label %101

101:                                              ; preds = %97, %87
  br label %76

102:                                              ; preds = %85
  %103 = load i32, i32* @IAP_START, align 4
  %104 = load i32, i32* @STAT_MODE_NPMCS, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* @FIXED_MODE_NPMCS, align 4
  %107 = sub nsw i32 %105, %106
  %108 = load i32, i32* %13, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %12, align 4
  store i32 0, i32* %10, align 4
  br label %110

110:                                              ; preds = %135, %102
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %138

114:                                              ; preds = %110
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i8*, i8** %19, i64 %116
  %118 = load i8*, i8** %117, align 8
  %119 = load i8**, i8*** @stat_mode_cntrs, align 8
  %120 = load i32, i32* %12, align 4
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %120, %121
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8*, i8** %119, i64 %123
  store i8* %118, i8** %124, align 8
  %125 = load i32, i32* %10, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i8*, i8** %19, i64 %126
  %128 = load i8*, i8** %127, align 8
  %129 = load i8**, i8*** @stat_mode_names, align 8
  %130 = load i32, i32* %12, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %130, %131
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i8*, i8** %129, i64 %133
  store i8* %128, i8** %134, align 8
  br label %135

135:                                              ; preds = %114
  %136 = load i32, i32* %10, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %10, align 4
  br label %110

138:                                              ; preds = %110
  br label %139

139:                                              ; preds = %138, %70
  %140 = load i32, i32* %3, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = load i32, i32* @FLAG_HAS_SYSTEM_PMCS, align 4
  %144 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %145 = or i32 %144, %143
  store i32 %145, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  br label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @FLAG_HAS_PROCESS_PMCS, align 4
  %148 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %149 = or i32 %148, %147
  store i32 %149, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  br label %150

150:                                              ; preds = %146, %142
  %151 = load i32, i32* @FLAG_HAS_COUNTING_PMCS, align 4
  %152 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %153 = or i32 %152, %151
  store i32 %153, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %154 = load i32, i32* @FLAG_HAS_COMMANDLINE, align 4
  %155 = load i32, i32* @FLAG_HAS_TARGET, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %158 = or i32 %157, %156
  store i32 %158, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %159 = load i32, i32* @FLAG_HAS_PIPE, align 4
  %160 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %161 = or i32 %160, %159
  store i32 %161, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 0), align 8
  %162 = load i32, i32* @FLAG_HAS_COMMANDLINE, align 4
  %163 = load i32, i32* @FLAG_HAS_TARGET, align 4
  %164 = or i32 %162, %163
  %165 = load i32, i32* @FLAG_HAS_OUTPUT_LOGFILE, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 1), align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 1), align 4
  %169 = call i8* @strdup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  store i8* %169, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 3), align 8
  %170 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 3), align 8
  %171 = load i32, i32* @PMCSTAT_OPEN_FOR_WRITE, align 4
  %172 = call i32 @pmcstat_open_log(i8* %170, i32 %171)
  store i32 %172, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 4), align 8
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %290, %150
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* @STAT_MODE_NPMCS, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %293

177:                                              ; preds = %173
  %178 = call i8* @malloc(i32 56)
  %179 = bitcast i8* %178 to %struct.pmcstat_ev*
  store %struct.pmcstat_ev* %179, %struct.pmcstat_ev** %7, align 8
  %180 = icmp eq %struct.pmcstat_ev* %179, null
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i32, i32* @EX_SOFTWARE, align 4
  %183 = call i32 (i32, i8*, ...) @errx(i32 %182, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %184

184:                                              ; preds = %181, %177
  %185 = load i32, i32* %3, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %184
  %188 = load i32, i32* @PMC_MODE_SC, align 4
  %189 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %190 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %189, i32 0, i32 8
  store i32 %188, i32* %190, align 8
  br label %195

191:                                              ; preds = %184
  %192 = load i32, i32* @PMC_MODE_TC, align 4
  %193 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %194 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %193, i32 0, i32 8
  store i32 %192, i32* %194, align 8
  br label %195

195:                                              ; preds = %191, %187
  %196 = load i8**, i8*** @stat_mode_cntrs, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* @strdup(i8* %200)
  %202 = bitcast i8* %201 to i32*
  %203 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %204 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %203, i32 0, i32 7
  store i32* %202, i32** %204, align 8
  %205 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %206 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %205, i32 0, i32 7
  %207 = load i32*, i32** %206, align 8
  %208 = icmp eq i32* %207, null
  br i1 %208, label %209, label %212

209:                                              ; preds = %195
  %210 = load i32, i32* @EX_SOFTWARE, align 4
  %211 = call i32 (i32, i8*, ...) @errx(i32 %210, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %212

212:                                              ; preds = %209, %195
  %213 = load i8**, i8*** @stat_mode_cntrs, align 8
  %214 = load i32, i32* %10, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = call i8* @strdup(i8* %217)
  %219 = call i32 @strcspn(i8* %218, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store i32 %219, i32* %11, align 4
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  %222 = call i8* @malloc(i32 %221)
  %223 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %224 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %223, i32 0, i32 0
  store i8* %222, i8** %224, align 8
  %225 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %226 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %225, i32 0, i32 0
  %227 = load i8*, i8** %226, align 8
  %228 = icmp eq i8* %227, null
  br i1 %228, label %229, label %232

229:                                              ; preds = %212
  %230 = load i32, i32* @EX_SOFTWARE, align 4
  %231 = call i32 (i32, i8*, ...) @errx(i32 %230, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %232

232:                                              ; preds = %229, %212
  %233 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %234 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %233, i32 0, i32 0
  %235 = load i8*, i8** %234, align 8
  %236 = load i8**, i8*** @stat_mode_cntrs, align 8
  %237 = load i32, i32* %10, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i8*, i8** %236, i64 %238
  %240 = load i8*, i8** %239, align 8
  %241 = load i32, i32* %11, align 4
  %242 = call i32 @strncpy(i8* %235, i8* %240, i32 %241)
  %243 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %244 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %243, i32 0, i32 0
  %245 = load i8*, i8** %244, align 8
  %246 = load i32, i32* %11, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i8, i8* %245, i64 %247
  store i8 0, i8* %248, align 1
  %249 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %250 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %249, i32 0, i32 1
  store i32 -1, i32* %250, align 8
  %251 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %252 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %251, i32 0, i32 6
  store i32 0, i32* %252, align 4
  %253 = load i32, i32* @PMC_F_DESCENDANTS, align 4
  %254 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %255 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %254, i32 0, i32 6
  %256 = load i32, i32* %255, align 4
  %257 = or i32 %256, %253
  store i32 %257, i32* %255, align 4
  %258 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %259 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %258, i32 0, i32 2
  store i32 1, i32* %259, align 4
  %260 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %261 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %260, i32 0, i32 3
  store i64 0, i64* %261, align 8
  %262 = load i32, i32* @PMC_ID_INVALID, align 4
  %263 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %264 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %263, i32 0, i32 5
  store i32 %262, i32* %264, align 8
  %265 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %266 = load i32, i32* @ev_next, align 4
  %267 = call i32 @STAILQ_INSERT_TAIL(i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @pmc_args, i32 0, i32 2), %struct.pmcstat_ev* %265, i32 %266)
  %268 = load i32, i32* %3, align 4
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %285

270:                                              ; preds = %232
  %271 = call i64 @CPU_FFS(i32* %14)
  %272 = sub nsw i64 %271, 1
  %273 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %274 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %273, i32 0, i32 4
  store i64 %272, i64* %274, align 8
  %275 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %276 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %275, i32 0, i32 4
  %277 = load i64, i64* %276, align 8
  %278 = call i32 @CPU_CLR(i64 %277, i32* %14)
  %279 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %280 = call i32 @pmcstat_clone_event_descriptor(%struct.pmcstat_ev* %279, i32* %14, %struct.TYPE_3__* @pmc_args)
  %281 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %282 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %281, i32 0, i32 4
  %283 = load i64, i64* %282, align 8
  %284 = call i32 @CPU_SET(i64 %283, i32* %14)
  br label %289

285:                                              ; preds = %232
  %286 = load i64, i64* @PMC_CPU_ANY, align 8
  %287 = load %struct.pmcstat_ev*, %struct.pmcstat_ev** %7, align 8
  %288 = getelementptr inbounds %struct.pmcstat_ev, %struct.pmcstat_ev* %287, i32 0, i32 4
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %285, %270
  br label %290

290:                                              ; preds = %289
  %291 = load i32, i32* %10, align 4
  %292 = add nsw i32 %291, 1
  store i32 %292, i32* %10, align 4
  br label %173

293:                                              ; preds = %173
  %294 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %295 = call i64 @clock_gettime(i32 %294, i32* @before_ts)
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %299

297:                                              ; preds = %293
  %298 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %299

299:                                              ; preds = %297, %293
  %300 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %300)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cpuset_getaffinity(i32, i32, i32, i32, i32*) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @CPU_COPY(i32*, i32*) #2

declare dso_local i64 @pmc_pmu_stat_mode(i8***) #2

declare dso_local i32 @errx(i32, i8*, ...) #2

declare dso_local i64 @geteuid(...) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i64 @pmc_pmu_sample_rate_get(i8*) #2

declare dso_local i32 @pmcstat_open_log(i8*, i32) #2

declare dso_local i8* @malloc(i32) #2

declare dso_local i32 @strcspn(i8*, i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.pmcstat_ev*, i32) #2

declare dso_local i64 @CPU_FFS(i32*) #2

declare dso_local i32 @CPU_CLR(i64, i32*) #2

declare dso_local i32 @pmcstat_clone_event_descriptor(%struct.pmcstat_ev*, i32*, %struct.TYPE_3__*) #2

declare dso_local i32 @CPU_SET(i64, i32*) #2

declare dso_local i64 @clock_gettime(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
