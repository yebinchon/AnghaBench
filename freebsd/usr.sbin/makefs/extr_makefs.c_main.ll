; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_makefs.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/makefs/extr_makefs.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64 }
%struct.stat = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_15__ = type { i32 (i8*, i8*, i32*, %struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)*, i32 (i8*, %struct.TYPE_16__*)* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@debug = common dso_local global i32 0, align 4
@DEFAULT_FSTYPE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unknown default fs type `%s'.\00", align 1
@start_time = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to get system time\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"B:b:Dd:f:F:M:m:N:O:o:pR:s:S:t:T:xZ\00", align 1
@optarg = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"be\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"4321\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"big\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"le\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"1234\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"little\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"Invalid endian `%s'.\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"free block percentage\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"free blocks\00", align 1
@LLONG_MAX = common dso_local global i32 0, align 4
@dupsok = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [21 x i8] c"free file percentage\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"free files\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"minimum size\00", align 1
@.str.15 = private unnamed_addr constant [47 x i8] c"Unable to use user and group databases in `%s'\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"maximum size\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"Empty option\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"roundup-size\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"sector size\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [22 x i8] c"Unknown fs type `%s'.\00", align 1
@stampst = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [31 x i8] c"Cannot get timestamp from `%s'\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"debug mask: 0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"start time: %ld.%ld, %s\00", align 1
@optind = common dso_local global i64 0, align 8
@.str.27 = private unnamed_addr constant [31 x i8] c"-x requires -F mtree-specfile.\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"Can't stat `%s'\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"walk_dir\00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"manifest\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"%s: not a file or directory\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"%s: not a directory\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"walk_dir2\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"apply_specfile\00", align 1
@DEBUG_DUMP_FSNODES = common dso_local global i32 0, align 4
@.str.37 = private unnamed_addr constant [13 x i8] c"\0Aparent: %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"make_fs\00", align 1
@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.timeval, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 @setprogname(i8* %19)
  store i32 0, i32* @debug, align 4
  %21 = load i8*, i8** @DEFAULT_FSTYPE, align 8
  %22 = call %struct.TYPE_15__* @get_fstype(i8* %21)
  store %struct.TYPE_15__* %22, %struct.TYPE_15__** %8, align 8
  %23 = icmp eq %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load i8*, i8** @DEFAULT_FSTYPE, align 8
  %26 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %24, %2
  %28 = call i32 @memset(%struct.TYPE_16__* %9, i32 0, i32 96)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 -1, i32* %30, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 1
  %33 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %32, align 8
  %34 = icmp ne i32 (%struct.TYPE_16__*)* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 1
  %38 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %37, align 8
  %39 = call i32 %38(%struct.TYPE_16__* %9)
  br label %40

40:                                               ; preds = %35, %27
  store i8* null, i8** %15, align 8
  %41 = call i32 @gettimeofday(%struct.timeval* %7, i32* null)
  store i32 %41, i32* %11, align 4
  %42 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  store i64 %43, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @start_time, i32 0, i32 1), align 8
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = mul nsw i32 %45, 1000
  store i32 %46, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @start_time, i32 0, i32 0), align 8
  %47 = load i32, i32* %11, align 4
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %40
  br label %52

52:                                               ; preds = %254, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i8**, i8*** %5, align 8
  %55 = call i32 @getopt(i32 %53, i8** %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 %55, i32* %11, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %255

57:                                               ; preds = %52
  %58 = load i32, i32* %11, align 4
  switch i32 %58, label %251 [
    i32 66, label %59
    i32 98, label %94
    i32 68, label %119
    i32 100, label %120
    i32 102, label %123
    i32 70, label %148
    i32 77, label %150
    i32 78, label %155
    i32 109, label %163
    i32 79, label %168
    i32 111, label %173
    i32 112, label %196
    i32 82, label %198
    i32 115, label %203
    i32 83, label %209
    i32 116, label %215
    i32 84, label %238
    i32 120, label %246
    i32 90, label %248
    i32 63, label %250
  ]

59:                                               ; preds = %57
  %60 = load i8*, i8** @optarg, align 8
  %61 = call i64 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i8*, i8** @optarg, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i8*, i8** @optarg, align 8
  %69 = call i64 @strcmp(i8* %68, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67, %63, %59
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32 1, i32* %72, align 8
  br label %93

73:                                               ; preds = %67
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i64 @strcmp(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %73
  %78 = load i8*, i8** @optarg, align 8
  %79 = call i64 @strcmp(i8* %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i64 @strcmp(i8* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %77, %73
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 2
  store i32 1, i32* %86, align 8
  br label %92

87:                                               ; preds = %81
  %88 = load i8*, i8** @optarg, align 8
  %89 = call i32 @warnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.9, i64 0, i64 0), i8* %88)
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %91 = call i32 @usage(%struct.TYPE_15__* %90, %struct.TYPE_16__* %9)
  br label %92

92:                                               ; preds = %87, %85
  br label %93

93:                                               ; preds = %92, %71
  br label %254

94:                                               ; preds = %57
  %95 = load i8*, i8** @optarg, align 8
  %96 = call i32 @strlen(i8* %95)
  %97 = sub nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  %98 = load i8*, i8** @optarg, align 8
  %99 = load i32, i32* %13, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp eq i32 %103, 37
  br i1 %104, label %105, label %113

105:                                              ; preds = %94
  %106 = load i8*, i8** @optarg, align 8
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, i8* %106, i64 %108
  store i8 0, i8* %109, align 1
  %110 = load i8*, i8** @optarg, align 8
  %111 = call i8* @strsuftoll(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %110, i64 0, i32 99)
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 13
  store i8* %111, i8** %112, align 8
  br label %118

113:                                              ; preds = %94
  %114 = load i8*, i8** @optarg, align 8
  %115 = load i32, i32* @LLONG_MAX, align 4
  %116 = call i8* @strsuftoll(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.11, i64 0, i64 0), i8* %114, i64 0, i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 12
  store i8* %116, i8** %117, align 8
  br label %118

118:                                              ; preds = %113, %105
  br label %254

119:                                              ; preds = %57
  store i32 1, i32* @dupsok, align 4
  br label %254

120:                                              ; preds = %57
  %121 = load i8*, i8** @optarg, align 8
  %122 = call i32 @strtoll(i8* %121, i32* null, i32 0)
  store i32 %122, i32* @debug, align 4
  br label %254

123:                                              ; preds = %57
  %124 = load i8*, i8** @optarg, align 8
  %125 = call i32 @strlen(i8* %124)
  %126 = sub nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  %127 = load i8*, i8** @optarg, align 8
  %128 = load i32, i32* %13, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 37
  br i1 %133, label %134, label %142

134:                                              ; preds = %123
  %135 = load i8*, i8** @optarg, align 8
  %136 = load i32, i32* %13, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  store i8 0, i8* %138, align 1
  %139 = load i8*, i8** @optarg, align 8
  %140 = call i8* @strsuftoll(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %139, i64 0, i32 99)
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 11
  store i8* %140, i8** %141, align 8
  br label %147

142:                                              ; preds = %123
  %143 = load i8*, i8** @optarg, align 8
  %144 = load i32, i32* @LLONG_MAX, align 4
  %145 = call i8* @strsuftoll(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i8* %143, i64 0, i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 10
  store i8* %145, i8** %146, align 8
  br label %147

147:                                              ; preds = %142, %134
  br label %254

148:                                              ; preds = %57
  %149 = load i8*, i8** @optarg, align 8
  store i8* %149, i8** %15, align 8
  br label %254

150:                                              ; preds = %57
  %151 = load i8*, i8** @optarg, align 8
  %152 = load i32, i32* @LLONG_MAX, align 4
  %153 = call i8* @strsuftoll(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i8* %151, i64 1, i32 %152)
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 7
  store i8* %153, i8** %154, align 8
  br label %254

155:                                              ; preds = %57
  %156 = load i8*, i8** @optarg, align 8
  %157 = call i32 @setup_getid(i8* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %162, label %159

159:                                              ; preds = %155
  %160 = load i8*, i8** @optarg, align 8
  %161 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.15, i64 0, i64 0), i8* %160)
  br label %162

162:                                              ; preds = %159, %155
  br label %254

163:                                              ; preds = %57
  %164 = load i8*, i8** @optarg, align 8
  %165 = load i32, i32* @LLONG_MAX, align 4
  %166 = call i8* @strsuftoll(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), i8* %164, i64 1, i32 %165)
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  store i8* %166, i8** %167, align 8
  br label %254

168:                                              ; preds = %57
  %169 = load i8*, i8** @optarg, align 8
  %170 = load i32, i32* @LLONG_MAX, align 4
  %171 = call i8* @strsuftoll(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i64 0, i64 0), i8* %169, i64 0, i32 %170)
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 9
  store i8* %171, i8** %172, align 8
  br label %254

173:                                              ; preds = %57
  br label %174

174:                                              ; preds = %194, %173
  %175 = call i8* @strsep(i8** @optarg, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0))
  store i8* %175, i8** %16, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %195

177:                                              ; preds = %174
  %178 = load i8*, i8** %16, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %182, label %184

182:                                              ; preds = %177
  %183 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0))
  br label %184

184:                                              ; preds = %182, %177
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 3
  %187 = load i32 (i8*, %struct.TYPE_16__*)*, i32 (i8*, %struct.TYPE_16__*)** %186, align 8
  %188 = load i8*, i8** %16, align 8
  %189 = call i32 %187(i8* %188, %struct.TYPE_16__* %9)
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %184
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %193 = call i32 @usage(%struct.TYPE_15__* %192, %struct.TYPE_16__* %9)
  br label %194

194:                                              ; preds = %191, %184
  br label %174

195:                                              ; preds = %174
  br label %254

196:                                              ; preds = %57
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i32 1, i32* %197, align 4
  br label %254

198:                                              ; preds = %57
  %199 = load i8*, i8** @optarg, align 8
  %200 = load i32, i32* @LLONG_MAX, align 4
  %201 = call i8* @strsuftoll(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %199, i64 0, i32 %200)
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 8
  store i8* %201, i8** %202, align 8
  br label %254

203:                                              ; preds = %57
  %204 = load i8*, i8** @optarg, align 8
  %205 = load i32, i32* @LLONG_MAX, align 4
  %206 = call i8* @strsuftoll(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i64 0, i64 0), i8* %204, i64 1, i32 %205)
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 6
  store i8* %206, i8** %207, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 7
  store i8* %206, i8** %208, align 8
  br label %254

209:                                              ; preds = %57
  %210 = load i8*, i8** @optarg, align 8
  %211 = load i32, i32* @INT_MAX, align 4
  %212 = call i8* @strsuftoll(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8* %210, i64 1, i32 %211)
  %213 = ptrtoint i8* %212 to i32
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 1
  store i32 %213, i32* %214, align 4
  br label %254

215:                                              ; preds = %57
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 2
  %218 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %217, align 8
  %219 = icmp ne i32 (%struct.TYPE_16__*)* %218, null
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %222 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %221, i32 0, i32 2
  %223 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %222, align 8
  %224 = call i32 %223(%struct.TYPE_16__* %9)
  br label %225

225:                                              ; preds = %220, %215
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 5
  store i32* null, i32** %226, align 8
  %227 = load i8*, i8** @optarg, align 8
  %228 = call %struct.TYPE_15__* @get_fstype(i8* %227)
  store %struct.TYPE_15__* %228, %struct.TYPE_15__** %8, align 8
  %229 = icmp eq %struct.TYPE_15__* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %225
  %231 = load i8*, i8** @optarg, align 8
  %232 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0), i8* %231)
  br label %233

233:                                              ; preds = %230, %225
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 1
  %236 = load i32 (%struct.TYPE_16__*)*, i32 (%struct.TYPE_16__*)** %235, align 8
  %237 = call i32 %236(%struct.TYPE_16__* %9)
  br label %254

238:                                              ; preds = %57
  %239 = load i8*, i8** @optarg, align 8
  %240 = call i32 @get_tstamp(i8* %239, i32* @stampst)
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i8*, i8** @optarg, align 8
  %244 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i64 0, i64 0), i8* %243)
  br label %245

245:                                              ; preds = %242, %238
  br label %254

246:                                              ; preds = %57
  %247 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  store i32 1, i32* %247, align 8
  br label %254

248:                                              ; preds = %57
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 3
  store i32 1, i32* %249, align 4
  br label %254

250:                                              ; preds = %57
  br label %251

251:                                              ; preds = %57, %250
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %253 = call i32 @usage(%struct.TYPE_15__* %252, %struct.TYPE_16__* %9)
  br label %254

254:                                              ; preds = %251, %248, %246, %245, %233, %209, %203, %198, %196, %195, %168, %163, %162, %150, %148, %147, %120, %119, %118, %93
  br label %52

255:                                              ; preds = %52
  %256 = load i32, i32* @debug, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %266

258:                                              ; preds = %255
  %259 = load i32, i32* @debug, align 4
  %260 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.25, i64 0, i64 0), i32 %259)
  %261 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @start_time, i32 0, i32 1), align 8
  %262 = load i32, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @start_time, i32 0, i32 0), align 8
  %263 = sext i32 %262 to i64
  %264 = call i32 @ctime(i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @start_time, i32 0, i32 1))
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i64 0, i64 0), i64 %261, i64 %263, i32 %264)
  br label %266

266:                                              ; preds = %258, %255
  %267 = load i64, i64* @optind, align 8
  %268 = load i32, i32* %4, align 4
  %269 = sext i32 %268 to i64
  %270 = sub nsw i64 %269, %267
  %271 = trunc i64 %270 to i32
  store i32 %271, i32* %4, align 4
  %272 = load i64, i64* @optind, align 8
  %273 = load i8**, i8*** %5, align 8
  %274 = getelementptr inbounds i8*, i8** %273, i64 %272
  store i8** %274, i8*** %5, align 8
  %275 = load i32, i32* %4, align 4
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %277, label %280

277:                                              ; preds = %266
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %279 = call i32 @usage(%struct.TYPE_15__* %278, %struct.TYPE_16__* %9)
  br label %280

280:                                              ; preds = %277, %266
  %281 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  %282 = load i32, i32* %281, align 8
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %280
  %285 = load i8*, i8** %15, align 8
  %286 = icmp eq i8* %285, null
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.27, i64 0, i64 0))
  br label %289

289:                                              ; preds = %287, %284, %280
  %290 = load i8**, i8*** %5, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i64 1
  %292 = load i8*, i8** %291, align 8
  %293 = call i64 @strcmp(i8* %292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.28, i64 0, i64 0))
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %289
  %296 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  store i32 128, i32* %296, align 4
  br label %309

297:                                              ; preds = %289
  %298 = load i8**, i8*** %5, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 1
  %300 = load i8*, i8** %299, align 8
  %301 = call i32 @stat(i8* %300, %struct.stat* %6)
  %302 = icmp eq i32 %301, -1
  br i1 %302, label %303, label %308

303:                                              ; preds = %297
  %304 = load i8**, i8*** %5, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 1
  %306 = load i8*, i8** %305, align 8
  %307 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* %306)
  br label %308

308:                                              ; preds = %303, %297
  br label %309

309:                                              ; preds = %308, %295
  %310 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @S_IFMT, align 4
  %313 = and i32 %311, %312
  switch i32 %313, label %349 [
    i32 129, label %314
    i32 128, label %332
  ]

314:                                              ; preds = %309
  %315 = load i8**, i8*** %5, align 8
  %316 = getelementptr inbounds i8*, i8** %315, i64 1
  %317 = load i8*, i8** %316, align 8
  store i8* %317, i8** %14, align 8
  %318 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %319 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %318, i32 0, i32 0
  %320 = load i32, i32* %319, align 8
  %321 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %318, i32 0, i32 1
  %322 = load i64, i64* %321, align 8
  %323 = call i32 @TIMER_START(i32 %320, i64 %322)
  %324 = load i8*, i8** %14, align 8
  %325 = call i32* @walk_dir(i8* %324, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32* null, i32* null)
  store i32* %325, i32** %10, align 8
  %326 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %327 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %326, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = call i32 @TIMER_RESULTS(i32 %328, i64 %330, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.31, i64 0, i64 0))
  br label %354

332:                                              ; preds = %309
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i8** %14, align 8
  %333 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %334 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %333, i32 0, i32 1
  %337 = load i64, i64* %336, align 8
  %338 = call i32 @TIMER_START(i32 %335, i64 %337)
  %339 = load i8**, i8*** %5, align 8
  %340 = getelementptr inbounds i8*, i8** %339, i64 1
  %341 = load i8*, i8** %340, align 8
  %342 = call i32* @read_mtree(i8* %341, i32* null)
  store i32* %342, i32** %10, align 8
  %343 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %344 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %343, i32 0, i32 0
  %345 = load i32, i32* %344, align 8
  %346 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %343, i32 0, i32 1
  %347 = load i64, i64* %346, align 8
  %348 = call i32 @TIMER_RESULTS(i32 %345, i64 %347, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.32, i64 0, i64 0))
  br label %354

349:                                              ; preds = %309
  %350 = load i8**, i8*** %5, align 8
  %351 = getelementptr inbounds i8*, i8** %350, i64 1
  %352 = load i8*, i8** %351, align 8
  %353 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.33, i64 0, i64 0), i8* %352)
  br label %354

354:                                              ; preds = %349, %332, %314
  store i32 2, i32* %12, align 4
  br label %355

355:                                              ; preds = %406, %354
  %356 = load i32, i32* %12, align 4
  %357 = load i32, i32* %4, align 4
  %358 = icmp slt i32 %356, %357
  br i1 %358, label %359, label %409

359:                                              ; preds = %355
  %360 = load i8**, i8*** %5, align 8
  %361 = load i32, i32* %12, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %360, i64 %362
  %364 = load i8*, i8** %363, align 8
  %365 = call i32 @stat(i8* %364, %struct.stat* %6)
  %366 = icmp eq i32 %365, -1
  br i1 %366, label %367, label %374

367:                                              ; preds = %359
  %368 = load i8**, i8*** %5, align 8
  %369 = load i32, i32* %12, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i8*, i8** %368, i64 %370
  %372 = load i8*, i8** %371, align 8
  %373 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i64 0, i64 0), i8* %372)
  br label %374

374:                                              ; preds = %367, %359
  %375 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %376 = load i32, i32* %375, align 4
  %377 = call i32 @S_ISDIR(i32 %376)
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %386, label %379

379:                                              ; preds = %374
  %380 = load i8**, i8*** %5, align 8
  %381 = load i32, i32* %12, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i8*, i8** %380, i64 %382
  %384 = load i8*, i8** %383, align 8
  %385 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i64 0, i64 0), i8* %384)
  br label %386

386:                                              ; preds = %379, %374
  %387 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %388 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %387, i32 0, i32 0
  %389 = load i32, i32* %388, align 8
  %390 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %387, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = call i32 @TIMER_START(i32 %389, i64 %391)
  %393 = load i8**, i8*** %5, align 8
  %394 = load i32, i32* %12, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds i8*, i8** %393, i64 %395
  %397 = load i8*, i8** %396, align 8
  %398 = load i32*, i32** %10, align 8
  %399 = call i32* @walk_dir(i8* %397, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.30, i64 0, i64 0), i32* null, i32* %398)
  store i32* %399, i32** %10, align 8
  %400 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %401 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %400, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = call i32 @TIMER_RESULTS(i32 %402, i64 %404, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.35, i64 0, i64 0))
  br label %406

406:                                              ; preds = %386
  %407 = load i32, i32* %12, align 4
  %408 = add nsw i32 %407, 1
  store i32 %408, i32* %12, align 4
  br label %355

409:                                              ; preds = %355
  %410 = load i8*, i8** %15, align 8
  %411 = icmp ne i8* %410, null
  br i1 %411, label %412, label %432

412:                                              ; preds = %409
  %413 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %414 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %413, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %413, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = call i32 @TIMER_START(i32 %415, i64 %417)
  %419 = load i8*, i8** %15, align 8
  %420 = load i8*, i8** %14, align 8
  %421 = load i32*, i32** %10, align 8
  %422 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %9, i32 0, i32 4
  %423 = load i32, i32* %422, align 8
  %424 = sext i32 %423 to i64
  %425 = call i32 @apply_specfile(i8* %419, i8* %420, i32* %421, i64 %424)
  %426 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %427 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %426, i32 0, i32 0
  %428 = load i32, i32* %427, align 8
  %429 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %426, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = call i32 @TIMER_RESULTS(i32 %428, i64 %430, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0))
  br label %432

432:                                              ; preds = %412, %409
  %433 = load i32, i32* @debug, align 4
  %434 = load i32, i32* @DEBUG_DUMP_FSNODES, align 4
  %435 = and i32 %433, %434
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %443

437:                                              ; preds = %432
  %438 = load i8*, i8** %14, align 8
  %439 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.37, i64 0, i64 0), i8* %438)
  %440 = load i32*, i32** %10, align 8
  %441 = call i32 @dump_fsnodes(i32* %440)
  %442 = call i32 @putchar(i8 signext 10)
  br label %443

443:                                              ; preds = %437, %432
  %444 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %445 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %444, i32 0, i32 1
  %448 = load i64, i64* %447, align 8
  %449 = call i32 @TIMER_START(i32 %446, i64 %448)
  %450 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 0
  %452 = load i32 (i8*, i8*, i32*, %struct.TYPE_16__*)*, i32 (i8*, i8*, i32*, %struct.TYPE_16__*)** %451, align 8
  %453 = load i8**, i8*** %5, align 8
  %454 = getelementptr inbounds i8*, i8** %453, i64 0
  %455 = load i8*, i8** %454, align 8
  %456 = load i8*, i8** %14, align 8
  %457 = load i32*, i32** %10, align 8
  %458 = call i32 %452(i8* %455, i8* %456, i32* %457, %struct.TYPE_16__* %9)
  %459 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %460 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %459, i32 0, i32 1
  %463 = load i64, i64* %462, align 8
  %464 = call i32 @TIMER_RESULTS(i32 %461, i64 %463, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.38, i64 0, i64 0))
  %465 = load i32*, i32** %10, align 8
  %466 = call i32 @free_fsnodes(i32* %465)
  %467 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setprogname(i8*) #1

declare dso_local %struct.TYPE_15__* @get_fstype(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @warnx(i8*, i8*) #1

declare dso_local i32 @usage(%struct.TYPE_15__*, %struct.TYPE_16__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strsuftoll(i8*, i8*, i64, i32) #1

declare dso_local i32 @strtoll(i8*, i32*, i32) #1

declare dso_local i32 @setup_getid(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @get_tstamp(i8*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ctime(i64*) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @TIMER_START(i32, i64) #1

declare dso_local i32* @walk_dir(i8*, i8*, i32*, i32*) #1

declare dso_local i32 @TIMER_RESULTS(i32, i64, i8*) #1

declare dso_local i32* @read_mtree(i8*, i32*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32 @apply_specfile(i8*, i8*, i32*, i64) #1

declare dso_local i32 @dump_fsnodes(i32*) #1

declare dso_local i32 @putchar(i8 signext) #1

declare dso_local i32 @free_fsnodes(i32*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
