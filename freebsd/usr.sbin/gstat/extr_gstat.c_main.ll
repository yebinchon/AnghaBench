; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/gstat/extr_gstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/gstat/extr_gstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devstat = type { i64, i64, i32* }
%struct.timespec = type { double, i32 }
%struct.gmesh = type { i32 }
%struct.gprovider = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i32, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.gconsumer = type { i8*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.gident = type { i64, %struct.gprovider* }

@stdout = common dso_local global i32 0, align 4
@flag_b = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"abBdcCf:I:ops\00", align 1
@flag_a = common dso_local global i32 0, align 4
@flag_B = common dso_local global i32 0, align 4
@flag_c = common dso_local global i32 0, align 4
@flag_C = common dso_local global i32 0, align 4
@flag_d = common dso_local global i32 0, align 4
@optarg = common dso_local global i8* null, align 8
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Filter string too long\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Invalid filter - see re_format(7)\00", align 1
@flag_o = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"Invalid argument to -I\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ms\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"us\00", align 1
@flag_I = common dso_local global i32 0, align 4
@flag_p = common dso_local global i32 0, align 4
@flag_s = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [18 x i8] c"geom_gettree = %d\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"geom_stats_open()\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"geom_stats_snapshot()\00", align 1
@EX_SOFTWARE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"history_init()\00", align 1
@H_SETSIZE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"gstat\00", align 1
@stdin = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [8 x i8] c"el_init\00", align 1
@EL_EDITOR = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@EL_SIGNAL = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@EL_PROMPT = common dso_local global i32 0, align 4
@el_prompt = common dso_local global i32 0, align 4
@H_ENTER = common dso_local global i32 0, align 4
@COLOR_GREEN = common dso_local global i32 0, align 4
@COLOR_MAGENTA = common dso_local global i32 0, align 4
@COLOR_RED = common dso_local global i32 0, align 4
@stdscr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"%F %T\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"%s.%.9ld\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"dT: %5.3fs  w: %.3fs\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"  filter: \00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c" L(q)  ops/s   \00", align 1
@.str.21 = private unnamed_addr constant [29 x i8] c" r/s     kB   kBps   ms/r   \00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c" w/s     kB   kBps   ms/w   \00", align 1
@.str.23 = private unnamed_addr constant [22 x i8] c" r/s   kBps   ms/r   \00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c" w/s   kBps   ms/w   \00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c" d/s     kB   kBps\00", align 1
@.str.26 = private unnamed_addr constant [11 x i8] c"   ms/d   \00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c" d/s   kBps   ms/d   \00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c" o/s   ms/o   \00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"%%busy Name\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"timestamp,name,q-depth,total_ops/s\00", align 1
@.str.31 = private unnamed_addr constant [20 x i8] c",read/s,read_sz-KiB\00", align 1
@.str.32 = private unnamed_addr constant [20 x i8] c",read-KiB/s,ms/read\00", align 1
@.str.33 = private unnamed_addr constant [22 x i8] c",write/s,write_sz-KiB\00", align 1
@.str.34 = private unnamed_addr constant [22 x i8] c",write-KiB/s,ms/write\00", align 1
@.str.35 = private unnamed_addr constant [27 x i8] c",read/s,read-KiB/s,ms/read\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c",write/s,write-KiB/s,ms/write\00", align 1
@.str.37 = private unnamed_addr constant [24 x i8] c",delete/s,delete-sz-KiB\00", align 1
@.str.38 = private unnamed_addr constant [24 x i8] c",delete-KiB/s,ms/delete\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c",delete/s,delete-KiB/s\00", align 1
@.str.40 = private unnamed_addr constant [11 x i8] c",ms/delete\00", align 1
@.str.41 = private unnamed_addr constant [18 x i8] c",other/s,ms/other\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c",%%busy\0A\00", align 1
@ISCONSUMER = common dso_local global i64 0, align 8
@ISPROVIDER = common dso_local global i64 0, align 8
@.str.43 = private unnamed_addr constant [3 x i8] c"*\0A\00", align 1
@DSM_QUEUE_LENGTH = common dso_local global i32 0, align 4
@DSM_TRANSFERS_PER_SECOND = common dso_local global i32 0, align 4
@DSM_TRANSFERS_PER_SECOND_READ = common dso_local global i32 0, align 4
@DSM_MB_PER_SECOND_READ = common dso_local global i32 0, align 4
@DSM_MS_PER_TRANSACTION_READ = common dso_local global i32 0, align 4
@DSM_TRANSFERS_PER_SECOND_WRITE = common dso_local global i32 0, align 4
@DSM_MB_PER_SECOND_WRITE = common dso_local global i32 0, align 4
@DSM_MS_PER_TRANSACTION_WRITE = common dso_local global i32 0, align 4
@DSM_BUSY_PCT = common dso_local global i32 0, align 4
@DSM_TRANSFERS_PER_SECOND_FREE = common dso_local global i32 0, align 4
@DSM_MB_PER_SECOND_FREE = common dso_local global i32 0, align 4
@DSM_MS_PER_TRANSACTION_FREE = common dso_local global i32 0, align 4
@DSM_TRANSFERS_PER_SECOND_OTHER = common dso_local global i32 0, align 4
@DSM_MS_PER_TRANSACTION_OTHER = common dso_local global i32 0, align 4
@DSM_KB_PER_TRANSFER_READ = common dso_local global i32 0, align 4
@DSM_KB_PER_TRANSFER_WRITE = common dso_local global i32 0, align 4
@DSM_KB_PER_TRANSFER_FREE = common dso_local global i32 0, align 4
@DSM_NONE = common dso_local global i32 0, align 4
@.str.44 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.45 = private unnamed_addr constant [9 x i8] c"%s/%s/%s\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.47 = private unnamed_addr constant [5 x i8] c",%ju\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c",%.0f\00", align 1
@.str.49 = private unnamed_addr constant [6 x i8] c",%.1f\00", align 1
@.str.50 = private unnamed_addr constant [7 x i8] c",%.1lf\00", align 1
@.str.51 = private unnamed_addr constant [6 x i8] c" %4ju\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c" %6.0f\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c" %6.1f\00", align 1
@HIGH_PCT_BUSY_THRESH = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@MEDIUM_PCT_BUSY_THRESH = common dso_local global x86_fp80 0xK00000000000000000000, align 16
@.str.54 = private unnamed_addr constant [8 x i8] c" %6.1lf\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"|\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@ERR = common dso_local global i32 0, align 4
@.str.58 = private unnamed_addr constant [8 x i8] c"el_gets\00", align 1
@.str.59 = private unnamed_addr constant [15 x i8] c"Invalid filter\00", align 1
@EX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.devstat*, align 8
  %18 = alloca %struct.devstat*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca double, align 8
  %22 = alloca %struct.timespec, align 8
  %23 = alloca %struct.timespec, align 8
  %24 = alloca %struct.gmesh, align 4
  %25 = alloca %struct.gprovider*, align 8
  %26 = alloca %struct.gconsumer*, align 8
  %27 = alloca %struct.gident*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i16, align 2
  %31 = alloca i16, align 2
  %32 = alloca i8*, align 8
  %33 = alloca [100 x i8], align 16
  %34 = alloca [100 x i8], align 16
  %35 = alloca [100 x i8], align 16
  %36 = alloca [100 x i8], align 16
  %37 = alloca [4096 x i8], align 16
  %38 = alloca i8*, align 8
  %39 = alloca [16 x x86_fp80], align 16
  %40 = alloca i64, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i32*, align 8
  %43 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32* null, i32** %42, align 8
  store i32* null, i32** %41, align 8
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* %9, align 4
  store i32 1, i32* %14, align 4
  %44 = load i32, i32* @stdout, align 4
  %45 = call i32 @fileno(i32 %44)
  %46 = call i32 @isatty(i32 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %2
  store i32 1, i32* @flag_b, align 4
  br label %49

49:                                               ; preds = %48, %2
  %50 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  store i8 0, i8* %50, align 16
  br label %51

51:                                               ; preds = %132, %49
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = call i32 @getopt(i32 %52, i8** %53, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 %54, i32* %7, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %133

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  switch i32 %57, label %130 [
    i32 97, label %58
    i32 98, label %59
    i32 66, label %60
    i32 99, label %61
    i32 67, label %62
    i32 100, label %63
    i32 102, label %64
    i32 111, label %84
    i32 73, label %85
    i32 112, label %127
    i32 115, label %128
    i32 63, label %129
  ]

58:                                               ; preds = %56
  store i32 1, i32* @flag_a, align 4
  br label %132

59:                                               ; preds = %56
  store i32 1, i32* @flag_b, align 4
  br label %132

60:                                               ; preds = %56
  store i32 1, i32* @flag_B, align 4
  store i32 1, i32* @flag_b, align 4
  br label %132

61:                                               ; preds = %56
  store i32 1, i32* @flag_c, align 4
  br label %132

62:                                               ; preds = %56
  store i32 1, i32* @flag_C, align 4
  store i32 1, i32* @flag_b, align 4
  store i32 1, i32* @flag_B, align 4
  store i32 0, i32* %16, align 4
  br label %132

63:                                               ; preds = %56
  store i32 1, i32* @flag_d, align 4
  br label %132

64:                                               ; preds = %56
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i32 @strlen(i8* %65)
  %67 = sext i32 %66 to i64
  %68 = icmp ugt i64 %67, 99
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* @EX_USAGE, align 4
  %71 = call i32 @errx(i32 %70, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i8*, i8** @optarg, align 8
  %74 = load i32, i32* @REG_EXTENDED, align 4
  %75 = call i32 @regcomp(i32* %28, i8* %73, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* @EX_USAGE, align 4
  %79 = call i32 @errx(i32 %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %80

80:                                               ; preds = %77, %72
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 @strlcpy(i8* %81, i8* %82, i32 100)
  br label %132

84:                                               ; preds = %56
  store i32 1, i32* @flag_o, align 4
  br label %132

85:                                               ; preds = %56
  store i8* null, i8** %32, align 8
  %86 = load i8*, i8** @optarg, align 8
  %87 = call i32 @strtoul(i8* %86, i8** %32, i32 0)
  store i32 %87, i32* %7, align 4
  %88 = load i8*, i8** %32, align 8
  %89 = load i8*, i8** @optarg, align 8
  %90 = icmp eq i8* %88, %89
  br i1 %90, label %99, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @errno, align 4
  %93 = load i32, i32* @EINVAL, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* @errno, align 4
  %97 = load i32, i32* @ERANGE, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %95, %91, %85
  %100 = call i32 @errx(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %125

101:                                              ; preds = %95
  %102 = load i8*, i8** %32, align 8
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  %107 = mul nsw i32 %106, 1000000
  store i32 %107, i32* %7, align 4
  br label %124

108:                                              ; preds = %101
  %109 = load i8*, i8** %32, align 8
  %110 = call i32 @strcmp(i8* %109, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %7, align 4
  %114 = mul nsw i32 %113, 1000
  store i32 %114, i32* %7, align 4
  br label %123

115:                                              ; preds = %108
  %116 = load i8*, i8** %32, align 8
  %117 = call i32 @strcmp(i8* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %115
  %120 = load i32, i32* %7, align 4
  %121 = mul nsw i32 %120, 1
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %119, %115
  br label %123

123:                                              ; preds = %122, %112
  br label %124

124:                                              ; preds = %123, %105
  br label %125

125:                                              ; preds = %124, %99
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* @flag_I, align 4
  br label %132

127:                                              ; preds = %56
  store i32 1, i32* @flag_p, align 4
  br label %132

128:                                              ; preds = %56
  store i32 1, i32* @flag_s, align 4
  br label %132

129:                                              ; preds = %56
  br label %130

130:                                              ; preds = %56, %129
  %131 = call i32 (...) @usage()
  br label %132

132:                                              ; preds = %130, %128, %127, %125, %84, %80, %63, %62, %61, %60, %59, %58
  br label %51

133:                                              ; preds = %51
  %134 = load i64, i64* @optind, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = sub nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %4, align 4
  %139 = load i64, i64* @optind, align 8
  %140 = load i8**, i8*** %5, align 8
  %141 = getelementptr inbounds i8*, i8** %140, i64 %139
  store i8** %141, i8*** %5, align 8
  %142 = load i32, i32* %4, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %133
  %145 = call i32 (...) @usage()
  br label %146

146:                                              ; preds = %144, %133
  %147 = call i32 @geom_gettree(%struct.gmesh* %24)
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %146
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %150, %146
  %154 = call i32 (...) @geom_stats_open()
  store i32 %154, i32* %6, align 4
  %155 = load i32, i32* %6, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %153
  %158 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %153
  store i8* null, i8** %20, align 8
  %160 = call i8* (...) @geom_stats_snapshot_get()
  store i8* %160, i8** %20, align 8
  %161 = load i8*, i8** %20, align 8
  %162 = icmp eq i8* %161, null
  br i1 %162, label %163, label %165

163:                                              ; preds = %159
  %164 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %165

165:                                              ; preds = %163, %159
  %166 = load i32, i32* @flag_b, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %237, label %168

168:                                              ; preds = %165
  %169 = call i32* (...) @history_init()
  store i32* %169, i32** %42, align 8
  %170 = load i32*, i32** %42, align 8
  %171 = icmp eq i32* %170, null
  br i1 %171, label %172, label %175

172:                                              ; preds = %168
  %173 = load i32, i32* @EX_SOFTWARE, align 4
  %174 = call i32 (i32, i8*, ...) @err(i32 %173, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  br label %175

175:                                              ; preds = %172, %168
  %176 = load i32*, i32** %42, align 8
  %177 = load i32, i32* @H_SETSIZE, align 4
  %178 = call i32 (i32*, i32*, i32, ...) @history(i32* %176, i32* %43, i32 %177, i32 100)
  %179 = load i32, i32* @stdin, align 4
  %180 = load i32, i32* @stdout, align 4
  %181 = load i32, i32* @stderr, align 4
  %182 = call i32* @el_init(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 %179, i32 %180, i32 %181)
  store i32* %182, i32** %41, align 8
  %183 = load i32*, i32** %41, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  %186 = load i32, i32* @EX_SOFTWARE, align 4
  %187 = call i32 (i32, i8*, ...) @err(i32 %186, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %175
  %189 = load i32*, i32** %41, align 8
  %190 = load i32, i32* @EL_EDITOR, align 4
  %191 = call i32 (i32*, i32, ...) @el_set(i32* %189, i32 %190, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %192 = load i32*, i32** %41, align 8
  %193 = load i32, i32* @EL_SIGNAL, align 4
  %194 = call i32 (i32*, i32, ...) @el_set(i32* %192, i32 %193, i32 1)
  %195 = load i32*, i32** %41, align 8
  %196 = load i32, i32* @EL_HIST, align 4
  %197 = load i32*, i32** %42, align 8
  %198 = call i32 (i32*, i32, ...) @el_set(i32* %195, i32 %196, i32 (i32*, i32*, i32, ...)* @history, i32* %197)
  %199 = load i32*, i32** %41, align 8
  %200 = load i32, i32* @EL_PROMPT, align 4
  %201 = load i32, i32* @el_prompt, align 4
  %202 = call i32 (i32*, i32, ...) @el_set(i32* %199, i32 %200, i32 %201)
  %203 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %204 = load i8, i8* %203, align 16
  %205 = sext i8 %204 to i32
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %188
  %208 = load i32*, i32** %42, align 8
  %209 = load i32, i32* @H_ENTER, align 4
  %210 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %211 = call i32 (i32*, i32*, i32, ...) @history(i32* %208, i32* %43, i32 %209, i8* %210)
  br label %212

212:                                              ; preds = %207, %188
  %213 = call i32 (...) @initscr()
  %214 = call i32 (...) @start_color()
  %215 = call i32 (...) @use_default_colors()
  %216 = call i32 @pair_content(i32 0, i16* %30, i16* %31)
  %217 = load i32, i32* @COLOR_GREEN, align 4
  %218 = load i16, i16* %31, align 2
  %219 = call i32 @init_pair(i32 1, i32 %217, i16 signext %218)
  %220 = load i32, i32* @COLOR_MAGENTA, align 4
  %221 = load i16, i16* %31, align 2
  %222 = call i32 @init_pair(i32 2, i32 %220, i16 signext %221)
  %223 = load i32, i32* @COLOR_RED, align 4
  %224 = load i16, i16* %31, align 2
  %225 = call i32 @init_pair(i32 3, i32 %223, i16 signext %224)
  %226 = call i32 (...) @cbreak()
  %227 = call i32 (...) @noecho()
  %228 = call i32 (...) @nonl()
  %229 = load i32, i32* @stdscr, align 4
  %230 = call i32 @nodelay(i32 %229, i32 1)
  %231 = load i32, i32* @stdscr, align 4
  %232 = load i32, i32* @FALSE, align 4
  %233 = call i32 @intrflush(i32 %231, i32 %232)
  %234 = load i32, i32* @stdscr, align 4
  %235 = load i32, i32* @TRUE, align 4
  %236 = call i32 @keypad(i32 %234, i32 %235)
  br label %237

237:                                              ; preds = %212, %165
  %238 = load i8*, i8** %20, align 8
  %239 = call i32 @geom_stats_snapshot_timestamp(i8* %238, %struct.timespec* %23)
  store i32 0, i32* %8, align 4
  br label %240

240:                                              ; preds = %1095, %996, %237
  %241 = load i32, i32* %8, align 4
  %242 = icmp ne i32 %241, 0
  %243 = xor i1 %242, true
  br i1 %243, label %244, label %1096

244:                                              ; preds = %240
  %245 = call i8* (...) @geom_stats_snapshot_get()
  store i8* %245, i8** %19, align 8
  %246 = load i8*, i8** %19, align 8
  %247 = icmp eq i8* %246, null
  br i1 %247, label %248, label %250

248:                                              ; preds = %244
  %249 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %250

250:                                              ; preds = %248, %244
  %251 = load i8*, i8** %19, align 8
  %252 = call i32 @geom_stats_snapshot_timestamp(i8* %251, %struct.timespec* %22)
  %253 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0
  %254 = load double, double* %253, align 8
  %255 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  %256 = load double, double* %255, align 8
  %257 = fsub double %254, %256
  store double %257, double* %21, align 8
  %258 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 1
  %259 = load i32, i32* %258, align 8
  %260 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %261 = load i32, i32* %260, align 8
  %262 = sub nsw i32 %259, %261
  %263 = sitofp i32 %262 to double
  %264 = fmul double %263, 1.000000e-09
  %265 = load double, double* %21, align 8
  %266 = fadd double %265, %264
  store double %266, double* %21, align 8
  %267 = bitcast %struct.timespec* %23 to i8*
  %268 = bitcast %struct.timespec* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %267, i8* align 8 %268, i64 16, i1 false)
  %269 = load i32, i32* @flag_C, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %281

271:                                              ; preds = %250
  %272 = getelementptr inbounds [100 x i8], [100 x i8]* %36, i64 0, i64 0
  %273 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  %274 = call i32 @localtime(double* %273)
  %275 = call i32 @strftime(i8* %272, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0), i32 %274)
  %276 = getelementptr inbounds [100 x i8], [100 x i8]* %36, i64 0, i64 0
  %277 = getelementptr inbounds [100 x i8], [100 x i8]* %36, i64 0, i64 0
  %278 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %276, i32 100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0), i8* %277, i32 %279)
  br label %281

281:                                              ; preds = %271, %250
  %282 = load i8*, i8** %19, align 8
  %283 = call i32 @geom_stats_snapshot_reset(i8* %282)
  %284 = load i8*, i8** %20, align 8
  %285 = call i32 @geom_stats_snapshot_reset(i8* %284)
  %286 = load i32, i32* @flag_b, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %281
  %289 = call i32 @move(i32 0, i32 0)
  br label %290

290:                                              ; preds = %288, %281
  %291 = load i32, i32* @flag_C, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %300, label %293

293:                                              ; preds = %290
  %294 = load double, double* %21, align 8
  %295 = load i32, i32* @flag_I, align 4
  %296 = sitofp i32 %295 to float
  %297 = fdiv float %296, 1.000000e+06
  %298 = fpext float %297 to double
  %299 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.16, i64 0, i64 0), double %294, double %298)
  br label %300

300:                                              ; preds = %293, %290
  %301 = load i32, i32* @flag_C, align 4
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %367, label %303

303:                                              ; preds = %300
  %304 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %305 = load i8, i8* %304, align 16
  %306 = sext i8 %305 to i32
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %367

308:                                              ; preds = %303
  %309 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0))
  %310 = load i32, i32* @flag_b, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %321, label %312

312:                                              ; preds = %308
  %313 = load i32, i32* @stdscr, align 4
  %314 = load i32, i32* %10, align 4
  %315 = load i32, i32* %9, align 4
  %316 = call i32 @getyx(i32 %313, i32 %314, i32 %315)
  %317 = load i32, i32* @stdscr, align 4
  %318 = load i32, i32* %12, align 4
  %319 = load i32, i32* %11, align 4
  %320 = call i32 @getmaxyx(i32 %317, i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %312, %308
  %322 = getelementptr inbounds [100 x i8], [100 x i8]* %34, i64 0, i64 0
  %323 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %324 = call i32 @strlcpy(i8* %322, i8* %323, i32 100)
  %325 = load i32, i32* %11, align 4
  %326 = load i32, i32* %9, align 4
  %327 = sub nsw i32 %325, %326
  %328 = sub nsw i32 %327, 1
  store i32 %328, i32* %15, align 4
  %329 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %330 = call i32 @strlen(i8* %329)
  %331 = load i32, i32* %15, align 4
  %332 = icmp sgt i32 %330, %331
  br i1 %332, label %333, label %364

333:                                              ; preds = %321
  %334 = load i32, i32* %15, align 4
  %335 = icmp sge i32 %334, 0
  br i1 %335, label %336, label %364

336:                                              ; preds = %333
  %337 = load i32, i32* %15, align 4
  %338 = icmp sgt i32 %337, 3
  br i1 %338, label %339, label %344

339:                                              ; preds = %336
  %340 = load i32, i32* %15, align 4
  %341 = sub nsw i32 %340, 3
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds [100 x i8], [100 x i8]* %34, i64 0, i64 %342
  store i8 46, i8* %343, align 1
  br label %344

344:                                              ; preds = %339, %336
  %345 = load i32, i32* %15, align 4
  %346 = icmp sgt i32 %345, 2
  br i1 %346, label %347, label %352

347:                                              ; preds = %344
  %348 = load i32, i32* %15, align 4
  %349 = sub nsw i32 %348, 2
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds [100 x i8], [100 x i8]* %34, i64 0, i64 %350
  store i8 46, i8* %351, align 1
  br label %352

352:                                              ; preds = %347, %344
  %353 = load i32, i32* %15, align 4
  %354 = icmp sgt i32 %353, 1
  br i1 %354, label %355, label %360

355:                                              ; preds = %352
  %356 = load i32, i32* %15, align 4
  %357 = sub nsw i32 %356, 1
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [100 x i8], [100 x i8]* %34, i64 0, i64 %358
  store i8 46, i8* %359, align 1
  br label %360

360:                                              ; preds = %355, %352
  %361 = load i32, i32* %15, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [100 x i8], [100 x i8]* %34, i64 0, i64 %362
  store i8 0, i8* %363, align 1
  br label %364

364:                                              ; preds = %360, %333, %321
  %365 = getelementptr inbounds [100 x i8], [100 x i8]* %34, i64 0, i64 0
  %366 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %365)
  br label %367

367:                                              ; preds = %364, %303, %300
  %368 = load i32, i32* @flag_C, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %400, label %370

370:                                              ; preds = %367
  %371 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %372 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.20, i64 0, i64 0))
  %373 = load i32, i32* @flag_s, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %378

375:                                              ; preds = %370
  %376 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %377 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i64 0, i64 0))
  br label %381

378:                                              ; preds = %370
  %379 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.23, i64 0, i64 0))
  %380 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.24, i64 0, i64 0))
  br label %381

381:                                              ; preds = %378, %375
  %382 = load i32, i32* @flag_d, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %393

384:                                              ; preds = %381
  %385 = load i32, i32* @flag_s, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %390

387:                                              ; preds = %384
  %388 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.25, i64 0, i64 0))
  %389 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.26, i64 0, i64 0))
  br label %392

390:                                              ; preds = %384
  %391 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.27, i64 0, i64 0))
  br label %392

392:                                              ; preds = %390, %387
  br label %393

393:                                              ; preds = %392, %381
  %394 = load i32, i32* @flag_o, align 4
  %395 = icmp ne i32 %394, 0
  br i1 %395, label %396, label %398

396:                                              ; preds = %393
  %397 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i64 0, i64 0))
  br label %398

398:                                              ; preds = %396, %393
  %399 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0))
  br label %439

400:                                              ; preds = %367
  %401 = load i32, i32* @flag_C, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %438

403:                                              ; preds = %400
  %404 = load i32, i32* %16, align 4
  %405 = icmp ne i32 %404, 0
  br i1 %405, label %438, label %406

406:                                              ; preds = %403
  %407 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i64 0, i64 0))
  %408 = load i32, i32* @flag_s, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %415

410:                                              ; preds = %406
  %411 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.31, i64 0, i64 0))
  %412 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.32, i64 0, i64 0))
  %413 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.33, i64 0, i64 0))
  %414 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.34, i64 0, i64 0))
  br label %418

415:                                              ; preds = %406
  %416 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.35, i64 0, i64 0))
  %417 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.36, i64 0, i64 0))
  br label %418

418:                                              ; preds = %415, %410
  %419 = load i32, i32* @flag_d, align 4
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %431

421:                                              ; preds = %418
  %422 = load i32, i32* @flag_s, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %427

424:                                              ; preds = %421
  %425 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.37, i64 0, i64 0))
  %426 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.38, i64 0, i64 0))
  br label %430

427:                                              ; preds = %421
  %428 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.39, i64 0, i64 0))
  %429 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.40, i64 0, i64 0))
  br label %430

430:                                              ; preds = %427, %424
  br label %431

431:                                              ; preds = %430, %418
  %432 = load i32, i32* @flag_o, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %436

434:                                              ; preds = %431
  %435 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.41, i64 0, i64 0))
  br label %436

436:                                              ; preds = %434, %431
  %437 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0))
  store i32 1, i32* %16, align 4
  br label %438

438:                                              ; preds = %436, %403, %400
  br label %439

439:                                              ; preds = %438, %398
  br label %440

440:                                              ; preds = %974, %609, %563, %548, %520, %509, %490, %480, %456, %439
  %441 = load i8*, i8** %19, align 8
  %442 = call %struct.devstat* @geom_stats_snapshot_next(i8* %441)
  store %struct.devstat* %442, %struct.devstat** %17, align 8
  %443 = load i8*, i8** %20, align 8
  %444 = call %struct.devstat* @geom_stats_snapshot_next(i8* %443)
  store %struct.devstat* %444, %struct.devstat** %18, align 8
  %445 = load %struct.devstat*, %struct.devstat** %17, align 8
  %446 = icmp eq %struct.devstat* %445, null
  br i1 %446, label %450, label %447

447:                                              ; preds = %440
  %448 = load %struct.devstat*, %struct.devstat** %18, align 8
  %449 = icmp eq %struct.devstat* %448, null
  br i1 %449, label %450, label %451

450:                                              ; preds = %447, %440
  br label %980

451:                                              ; preds = %447
  %452 = load %struct.devstat*, %struct.devstat** %17, align 8
  %453 = getelementptr inbounds %struct.devstat, %struct.devstat* %452, i32 0, i32 2
  %454 = load i32*, i32** %453, align 8
  %455 = icmp eq i32* %454, null
  br i1 %455, label %456, label %457

456:                                              ; preds = %451
  br label %440

457:                                              ; preds = %451
  %458 = load %struct.devstat*, %struct.devstat** %17, align 8
  %459 = getelementptr inbounds %struct.devstat, %struct.devstat* %458, i32 0, i32 2
  %460 = load i32*, i32** %459, align 8
  %461 = call %struct.gident* @geom_lookupid(%struct.gmesh* %24, i32* %460)
  store %struct.gident* %461, %struct.gident** %27, align 8
  %462 = load %struct.gident*, %struct.gident** %27, align 8
  %463 = icmp eq %struct.gident* %462, null
  br i1 %463, label %464, label %477

464:                                              ; preds = %457
  %465 = call i32 @geom_deletetree(%struct.gmesh* %24)
  %466 = call i32 @geom_gettree(%struct.gmesh* %24)
  store i32 %466, i32* %7, align 4
  %467 = load i32, i32* %7, align 4
  %468 = icmp ne i32 %467, 0
  br i1 %468, label %469, label %472

469:                                              ; preds = %464
  %470 = load i32, i32* %7, align 4
  %471 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %470)
  br label %472

472:                                              ; preds = %469, %464
  %473 = load %struct.devstat*, %struct.devstat** %17, align 8
  %474 = getelementptr inbounds %struct.devstat, %struct.devstat* %473, i32 0, i32 2
  %475 = load i32*, i32** %474, align 8
  %476 = call %struct.gident* @geom_lookupid(%struct.gmesh* %24, i32* %475)
  store %struct.gident* %476, %struct.gident** %27, align 8
  br label %477

477:                                              ; preds = %472, %457
  %478 = load %struct.gident*, %struct.gident** %27, align 8
  %479 = icmp eq %struct.gident* %478, null
  br i1 %479, label %480, label %481

480:                                              ; preds = %477
  br label %440

481:                                              ; preds = %477
  %482 = load %struct.gident*, %struct.gident** %27, align 8
  %483 = getelementptr inbounds %struct.gident, %struct.gident* %482, i32 0, i32 0
  %484 = load i64, i64* %483, align 8
  %485 = load i64, i64* @ISCONSUMER, align 8
  %486 = icmp eq i64 %484, %485
  br i1 %486, label %487, label %491

487:                                              ; preds = %481
  %488 = load i32, i32* @flag_c, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %487
  br label %440

491:                                              ; preds = %487, %481
  %492 = load i32, i32* @flag_p, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %494, label %510

494:                                              ; preds = %491
  %495 = load %struct.gident*, %struct.gident** %27, align 8
  %496 = getelementptr inbounds %struct.gident, %struct.gident* %495, i32 0, i32 0
  %497 = load i64, i64* %496, align 8
  %498 = load i64, i64* @ISPROVIDER, align 8
  %499 = icmp eq i64 %497, %498
  br i1 %499, label %500, label %510

500:                                              ; preds = %494
  %501 = load %struct.gident*, %struct.gident** %27, align 8
  %502 = getelementptr inbounds %struct.gident, %struct.gident* %501, i32 0, i32 1
  %503 = load %struct.gprovider*, %struct.gprovider** %502, align 8
  %504 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %503, i32 0, i32 2
  %505 = load %struct.TYPE_5__*, %struct.TYPE_5__** %504, align 8
  %506 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 8
  %508 = icmp ne i32 %507, 1
  br i1 %508, label %509, label %510

509:                                              ; preds = %500
  br label %440

510:                                              ; preds = %500, %494, %491
  %511 = load i32, i32* @flag_b, align 4
  %512 = icmp ne i32 %511, 0
  br i1 %512, label %522, label %513

513:                                              ; preds = %510
  %514 = load i32, i32* @stdscr, align 4
  %515 = load i32, i32* %10, align 4
  %516 = load i32, i32* %9, align 4
  %517 = call i32 @getyx(i32 %514, i32 %515, i32 %516)
  %518 = load i32, i32* %9, align 4
  %519 = icmp sgt i32 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %513
  br label %440

521:                                              ; preds = %513
  br label %522

522:                                              ; preds = %521, %510
  %523 = load %struct.gident*, %struct.gident** %27, align 8
  %524 = getelementptr inbounds %struct.gident, %struct.gident* %523, i32 0, i32 0
  %525 = load i64, i64* %524, align 8
  %526 = load i64, i64* @ISPROVIDER, align 8
  %527 = icmp eq i64 %525, %526
  br i1 %527, label %534, label %528

528:                                              ; preds = %522
  %529 = load %struct.gident*, %struct.gident** %27, align 8
  %530 = getelementptr inbounds %struct.gident, %struct.gident* %529, i32 0, i32 0
  %531 = load i64, i64* %530, align 8
  %532 = load i64, i64* @ISCONSUMER, align 8
  %533 = icmp eq i64 %531, %532
  br i1 %533, label %534, label %550

534:                                              ; preds = %528, %522
  %535 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %536 = load i8, i8* %535, align 16
  %537 = sext i8 %536 to i32
  %538 = icmp ne i32 %537, 0
  br i1 %538, label %539, label %550

539:                                              ; preds = %534
  %540 = load %struct.gident*, %struct.gident** %27, align 8
  %541 = getelementptr inbounds %struct.gident, %struct.gident* %540, i32 0, i32 1
  %542 = load %struct.gprovider*, %struct.gprovider** %541, align 8
  store %struct.gprovider* %542, %struct.gprovider** %25, align 8
  %543 = load %struct.gprovider*, %struct.gprovider** %25, align 8
  %544 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %543, i32 0, i32 0
  %545 = load i8*, i8** %544, align 8
  %546 = call i64 @regexec(i32* %28, i8* %545, i32 0, i32* null, i32 0)
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %539
  br label %440

549:                                              ; preds = %539
  br label %550

550:                                              ; preds = %549, %534, %528
  %551 = load %struct.devstat*, %struct.devstat** %17, align 8
  %552 = getelementptr inbounds %struct.devstat, %struct.devstat* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  %554 = load %struct.devstat*, %struct.devstat** %17, align 8
  %555 = getelementptr inbounds %struct.devstat, %struct.devstat* %554, i32 0, i32 1
  %556 = load i64, i64* %555, align 8
  %557 = icmp ne i64 %553, %556
  br i1 %557, label %558, label %564

558:                                              ; preds = %550
  %559 = load i32, i32* @flag_C, align 4
  %560 = icmp ne i32 %559, 0
  br i1 %560, label %563, label %561

561:                                              ; preds = %558
  %562 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i64 0, i64 0))
  br label %563

563:                                              ; preds = %561, %558
  br label %440

564:                                              ; preds = %550
  %565 = load %struct.devstat*, %struct.devstat** %17, align 8
  %566 = load %struct.devstat*, %struct.devstat** %18, align 8
  %567 = load double, double* %21, align 8
  %568 = load i32, i32* @DSM_QUEUE_LENGTH, align 4
  %569 = load i32, i32* @DSM_TRANSFERS_PER_SECOND, align 4
  %570 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 0
  %571 = load i32, i32* @DSM_TRANSFERS_PER_SECOND_READ, align 4
  %572 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 1
  %573 = load i32, i32* @DSM_MB_PER_SECOND_READ, align 4
  %574 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 2
  %575 = load i32, i32* @DSM_MS_PER_TRANSACTION_READ, align 4
  %576 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 3
  %577 = load i32, i32* @DSM_TRANSFERS_PER_SECOND_WRITE, align 4
  %578 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 4
  %579 = load i32, i32* @DSM_MB_PER_SECOND_WRITE, align 4
  %580 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 5
  %581 = load i32, i32* @DSM_MS_PER_TRANSACTION_WRITE, align 4
  %582 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 6
  %583 = load i32, i32* @DSM_BUSY_PCT, align 4
  %584 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 7
  %585 = load i32, i32* @DSM_TRANSFERS_PER_SECOND_FREE, align 4
  %586 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 8
  %587 = load i32, i32* @DSM_MB_PER_SECOND_FREE, align 4
  %588 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 9
  %589 = load i32, i32* @DSM_MS_PER_TRANSACTION_FREE, align 4
  %590 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 10
  %591 = load i32, i32* @DSM_TRANSFERS_PER_SECOND_OTHER, align 4
  %592 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 11
  %593 = load i32, i32* @DSM_MS_PER_TRANSACTION_OTHER, align 4
  %594 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 12
  %595 = load i32, i32* @DSM_KB_PER_TRANSFER_READ, align 4
  %596 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 13
  %597 = load i32, i32* @DSM_KB_PER_TRANSFER_WRITE, align 4
  %598 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 14
  %599 = load i32, i32* @DSM_KB_PER_TRANSFER_FREE, align 4
  %600 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 15
  %601 = load i32, i32* @DSM_NONE, align 4
  %602 = call i32 @devstat_compute_statistics(%struct.devstat* %565, %struct.devstat* %566, double %567, i32 %568, i64* %40, i32 %569, x86_fp80* %570, i32 %571, x86_fp80* %572, i32 %573, x86_fp80* %574, i32 %575, x86_fp80* %576, i32 %577, x86_fp80* %578, i32 %579, x86_fp80* %580, i32 %581, x86_fp80* %582, i32 %583, x86_fp80* %584, i32 %585, x86_fp80* %586, i32 %587, x86_fp80* %588, i32 %589, x86_fp80* %590, i32 %591, x86_fp80* %592, i32 %593, x86_fp80* %594, i32 %595, x86_fp80* %596, i32 %597, x86_fp80* %598, i32 %599, x86_fp80* %600, i32 %601)
  %603 = load i32, i32* @flag_a, align 4
  %604 = icmp ne i32 %603, 0
  br i1 %604, label %605, label %614

605:                                              ; preds = %564
  %606 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 7
  %607 = load x86_fp80, x86_fp80* %606, align 16
  %608 = fcmp olt x86_fp80 %607, 0xK3FFBCCCCCCCCCCCCD000
  br i1 %608, label %609, label %614

609:                                              ; preds = %605
  %610 = load %struct.devstat*, %struct.devstat** %18, align 8
  %611 = load %struct.devstat*, %struct.devstat** %17, align 8
  %612 = bitcast %struct.devstat* %610 to i8*
  %613 = bitcast %struct.devstat* %611 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %612, i8* align 8 %613, i64 24, i1 false)
  br label %440

614:                                              ; preds = %605, %564
  %615 = load %struct.gident*, %struct.gident** %27, align 8
  %616 = icmp eq %struct.gident* %615, null
  br i1 %616, label %617, label %620

617:                                              ; preds = %614
  %618 = getelementptr inbounds [4096 x i8], [4096 x i8]* %37, i64 0, i64 0
  %619 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %618, i32 4096, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i64 0, i64 0))
  br label %667

620:                                              ; preds = %614
  %621 = load %struct.gident*, %struct.gident** %27, align 8
  %622 = getelementptr inbounds %struct.gident, %struct.gident* %621, i32 0, i32 0
  %623 = load i64, i64* %622, align 8
  %624 = load i64, i64* @ISPROVIDER, align 8
  %625 = icmp eq i64 %623, %624
  br i1 %625, label %626, label %635

626:                                              ; preds = %620
  %627 = load %struct.gident*, %struct.gident** %27, align 8
  %628 = getelementptr inbounds %struct.gident, %struct.gident* %627, i32 0, i32 1
  %629 = load %struct.gprovider*, %struct.gprovider** %628, align 8
  store %struct.gprovider* %629, %struct.gprovider** %25, align 8
  %630 = getelementptr inbounds [4096 x i8], [4096 x i8]* %37, i64 0, i64 0
  %631 = load %struct.gprovider*, %struct.gprovider** %25, align 8
  %632 = getelementptr inbounds %struct.gprovider, %struct.gprovider* %631, i32 0, i32 0
  %633 = load i8*, i8** %632, align 8
  %634 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %630, i32 4096, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %633)
  br label %666

635:                                              ; preds = %620
  %636 = load %struct.gident*, %struct.gident** %27, align 8
  %637 = getelementptr inbounds %struct.gident, %struct.gident* %636, i32 0, i32 0
  %638 = load i64, i64* %637, align 8
  %639 = load i64, i64* @ISCONSUMER, align 8
  %640 = icmp eq i64 %638, %639
  br i1 %640, label %641, label %665

641:                                              ; preds = %635
  %642 = load %struct.gident*, %struct.gident** %27, align 8
  %643 = getelementptr inbounds %struct.gident, %struct.gident* %642, i32 0, i32 1
  %644 = load %struct.gprovider*, %struct.gprovider** %643, align 8
  %645 = bitcast %struct.gprovider* %644 to %struct.gconsumer*
  store %struct.gconsumer* %645, %struct.gconsumer** %26, align 8
  %646 = getelementptr inbounds [4096 x i8], [4096 x i8]* %37, i64 0, i64 0
  %647 = load %struct.gconsumer*, %struct.gconsumer** %26, align 8
  %648 = getelementptr inbounds %struct.gconsumer, %struct.gconsumer* %647, i32 0, i32 2
  %649 = load %struct.TYPE_5__*, %struct.TYPE_5__** %648, align 8
  %650 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %649, i32 0, i32 2
  %651 = load %struct.TYPE_4__*, %struct.TYPE_4__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %651, i32 0, i32 0
  %653 = load i8*, i8** %652, align 8
  %654 = load %struct.gconsumer*, %struct.gconsumer** %26, align 8
  %655 = getelementptr inbounds %struct.gconsumer, %struct.gconsumer* %654, i32 0, i32 2
  %656 = load %struct.TYPE_5__*, %struct.TYPE_5__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %656, i32 0, i32 1
  %658 = load i8*, i8** %657, align 8
  %659 = load %struct.gconsumer*, %struct.gconsumer** %26, align 8
  %660 = getelementptr inbounds %struct.gconsumer, %struct.gconsumer* %659, i32 0, i32 1
  %661 = load %struct.TYPE_6__*, %struct.TYPE_6__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %661, i32 0, i32 0
  %663 = load i8*, i8** %662, align 8
  %664 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %646, i32 4096, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.45, i64 0, i64 0), i8* %653, i8* %658, i8* %663)
  br label %665

665:                                              ; preds = %641, %635
  br label %666

666:                                              ; preds = %665, %626
  br label %667

667:                                              ; preds = %666, %617
  %668 = load i32, i32* @flag_C, align 4
  %669 = icmp ne i32 %668, 0
  br i1 %669, label %670, label %805

670:                                              ; preds = %667
  %671 = getelementptr inbounds [100 x i8], [100 x i8]* %36, i64 0, i64 0
  %672 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i64 0, i64 0), i8* %671)
  %673 = getelementptr inbounds [4096 x i8], [4096 x i8]* %37, i64 0, i64 0
  %674 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i64 0, i64 0), i8* %673)
  %675 = load i64, i64* %40, align 8
  %676 = trunc i64 %675 to i32
  %677 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.47, i64 0, i64 0), i32 %676)
  %678 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 0
  %679 = load x86_fp80, x86_fp80* %678, align 16
  %680 = fptrunc x86_fp80 %679 to double
  %681 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %680)
  %682 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 1
  %683 = load x86_fp80, x86_fp80* %682, align 16
  %684 = fptrunc x86_fp80 %683 to double
  %685 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %684)
  %686 = load i32, i32* @flag_s, align 4
  %687 = icmp ne i32 %686, 0
  br i1 %687, label %688, label %693

688:                                              ; preds = %670
  %689 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 13
  %690 = load x86_fp80, x86_fp80* %689, align 16
  %691 = fptrunc x86_fp80 %690 to double
  %692 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %691)
  br label %693

693:                                              ; preds = %688, %670
  %694 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 2
  %695 = load x86_fp80, x86_fp80* %694, align 16
  %696 = fptrunc x86_fp80 %695 to double
  %697 = fmul double %696, 1.024000e+03
  %698 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %697)
  %699 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 3
  %700 = load x86_fp80, x86_fp80* %699, align 16
  %701 = fcmp ogt x86_fp80 %700, 0xK4008FA00000000000000
  br i1 %701, label %702, label %707

702:                                              ; preds = %693
  %703 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 3
  %704 = load x86_fp80, x86_fp80* %703, align 16
  %705 = fptrunc x86_fp80 %704 to double
  %706 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %705)
  br label %712

707:                                              ; preds = %693
  %708 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 3
  %709 = load x86_fp80, x86_fp80* %708, align 16
  %710 = fptrunc x86_fp80 %709 to double
  %711 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), double %710)
  br label %712

712:                                              ; preds = %707, %702
  %713 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 4
  %714 = load x86_fp80, x86_fp80* %713, align 16
  %715 = fptrunc x86_fp80 %714 to double
  %716 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %715)
  %717 = load i32, i32* @flag_s, align 4
  %718 = icmp ne i32 %717, 0
  br i1 %718, label %719, label %724

719:                                              ; preds = %712
  %720 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 14
  %721 = load x86_fp80, x86_fp80* %720, align 16
  %722 = fptrunc x86_fp80 %721 to double
  %723 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %722)
  br label %724

724:                                              ; preds = %719, %712
  %725 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 5
  %726 = load x86_fp80, x86_fp80* %725, align 16
  %727 = fptrunc x86_fp80 %726 to double
  %728 = fmul double %727, 1.024000e+03
  %729 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %728)
  %730 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 6
  %731 = load x86_fp80, x86_fp80* %730, align 16
  %732 = fcmp ogt x86_fp80 %731, 0xK4008FA00000000000000
  br i1 %732, label %733, label %738

733:                                              ; preds = %724
  %734 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 6
  %735 = load x86_fp80, x86_fp80* %734, align 16
  %736 = fptrunc x86_fp80 %735 to double
  %737 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %736)
  br label %743

738:                                              ; preds = %724
  %739 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 6
  %740 = load x86_fp80, x86_fp80* %739, align 16
  %741 = fptrunc x86_fp80 %740 to double
  %742 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), double %741)
  br label %743

743:                                              ; preds = %738, %733
  %744 = load i32, i32* @flag_d, align 4
  %745 = icmp ne i32 %744, 0
  br i1 %745, label %746, label %778

746:                                              ; preds = %743
  %747 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 8
  %748 = load x86_fp80, x86_fp80* %747, align 16
  %749 = fptrunc x86_fp80 %748 to double
  %750 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %749)
  %751 = load i32, i32* @flag_s, align 4
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %753, label %758

753:                                              ; preds = %746
  %754 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 15
  %755 = load x86_fp80, x86_fp80* %754, align 16
  %756 = fptrunc x86_fp80 %755 to double
  %757 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %756)
  br label %758

758:                                              ; preds = %753, %746
  %759 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 9
  %760 = load x86_fp80, x86_fp80* %759, align 16
  %761 = fptrunc x86_fp80 %760 to double
  %762 = fmul double %761, 1.024000e+03
  %763 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %762)
  %764 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 10
  %765 = load x86_fp80, x86_fp80* %764, align 16
  %766 = fcmp ogt x86_fp80 %765, 0xK4008FA00000000000000
  br i1 %766, label %767, label %772

767:                                              ; preds = %758
  %768 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 10
  %769 = load x86_fp80, x86_fp80* %768, align 16
  %770 = fptrunc x86_fp80 %769 to double
  %771 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %770)
  br label %777

772:                                              ; preds = %758
  %773 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 10
  %774 = load x86_fp80, x86_fp80* %773, align 16
  %775 = fptrunc x86_fp80 %774 to double
  %776 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), double %775)
  br label %777

777:                                              ; preds = %772, %767
  br label %778

778:                                              ; preds = %777, %743
  %779 = load i32, i32* @flag_o, align 4
  %780 = icmp ne i32 %779, 0
  br i1 %780, label %781, label %800

781:                                              ; preds = %778
  %782 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 11
  %783 = load x86_fp80, x86_fp80* %782, align 16
  %784 = fptrunc x86_fp80 %783 to double
  %785 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %784)
  %786 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 12
  %787 = load x86_fp80, x86_fp80* %786, align 16
  %788 = fcmp ogt x86_fp80 %787, 0xK4008FA00000000000000
  br i1 %788, label %789, label %794

789:                                              ; preds = %781
  %790 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 12
  %791 = load x86_fp80, x86_fp80* %790, align 16
  %792 = fptrunc x86_fp80 %791 to double
  %793 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.48, i64 0, i64 0), double %792)
  br label %799

794:                                              ; preds = %781
  %795 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 12
  %796 = load x86_fp80, x86_fp80* %795, align 16
  %797 = fptrunc x86_fp80 %796 to double
  %798 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.49, i64 0, i64 0), double %797)
  br label %799

799:                                              ; preds = %794, %789
  br label %800

800:                                              ; preds = %799, %778
  %801 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 7
  %802 = load x86_fp80, x86_fp80* %801, align 16
  %803 = fptrunc x86_fp80 %802 to double
  %804 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.50, i64 0, i64 0), double %803)
  br label %974

805:                                              ; preds = %667
  %806 = load i64, i64* %40, align 8
  %807 = trunc i64 %806 to i32
  %808 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.51, i64 0, i64 0), i32 %807)
  %809 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 0
  %810 = load x86_fp80, x86_fp80* %809, align 16
  %811 = fptrunc x86_fp80 %810 to double
  %812 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %811)
  %813 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 1
  %814 = load x86_fp80, x86_fp80* %813, align 16
  %815 = fptrunc x86_fp80 %814 to double
  %816 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %815)
  %817 = load i32, i32* @flag_s, align 4
  %818 = icmp ne i32 %817, 0
  br i1 %818, label %819, label %824

819:                                              ; preds = %805
  %820 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 13
  %821 = load x86_fp80, x86_fp80* %820, align 16
  %822 = fptrunc x86_fp80 %821 to double
  %823 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %822)
  br label %824

824:                                              ; preds = %819, %805
  %825 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 2
  %826 = load x86_fp80, x86_fp80* %825, align 16
  %827 = fptrunc x86_fp80 %826 to double
  %828 = fmul double %827, 1.024000e+03
  %829 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %828)
  %830 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 3
  %831 = load x86_fp80, x86_fp80* %830, align 16
  %832 = fcmp ogt x86_fp80 %831, 0xK4008FA00000000000000
  br i1 %832, label %833, label %838

833:                                              ; preds = %824
  %834 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 3
  %835 = load x86_fp80, x86_fp80* %834, align 16
  %836 = fptrunc x86_fp80 %835 to double
  %837 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %836)
  br label %843

838:                                              ; preds = %824
  %839 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 3
  %840 = load x86_fp80, x86_fp80* %839, align 16
  %841 = fptrunc x86_fp80 %840 to double
  %842 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), double %841)
  br label %843

843:                                              ; preds = %838, %833
  %844 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 4
  %845 = load x86_fp80, x86_fp80* %844, align 16
  %846 = fptrunc x86_fp80 %845 to double
  %847 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %846)
  %848 = load i32, i32* @flag_s, align 4
  %849 = icmp ne i32 %848, 0
  br i1 %849, label %850, label %855

850:                                              ; preds = %843
  %851 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 14
  %852 = load x86_fp80, x86_fp80* %851, align 16
  %853 = fptrunc x86_fp80 %852 to double
  %854 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %853)
  br label %855

855:                                              ; preds = %850, %843
  %856 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 5
  %857 = load x86_fp80, x86_fp80* %856, align 16
  %858 = fptrunc x86_fp80 %857 to double
  %859 = fmul double %858, 1.024000e+03
  %860 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %859)
  %861 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 6
  %862 = load x86_fp80, x86_fp80* %861, align 16
  %863 = fcmp ogt x86_fp80 %862, 0xK4008FA00000000000000
  br i1 %863, label %864, label %869

864:                                              ; preds = %855
  %865 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 6
  %866 = load x86_fp80, x86_fp80* %865, align 16
  %867 = fptrunc x86_fp80 %866 to double
  %868 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %867)
  br label %874

869:                                              ; preds = %855
  %870 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 6
  %871 = load x86_fp80, x86_fp80* %870, align 16
  %872 = fptrunc x86_fp80 %871 to double
  %873 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), double %872)
  br label %874

874:                                              ; preds = %869, %864
  %875 = load i32, i32* @flag_d, align 4
  %876 = icmp ne i32 %875, 0
  br i1 %876, label %877, label %909

877:                                              ; preds = %874
  %878 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 8
  %879 = load x86_fp80, x86_fp80* %878, align 16
  %880 = fptrunc x86_fp80 %879 to double
  %881 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %880)
  %882 = load i32, i32* @flag_s, align 4
  %883 = icmp ne i32 %882, 0
  br i1 %883, label %884, label %889

884:                                              ; preds = %877
  %885 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 15
  %886 = load x86_fp80, x86_fp80* %885, align 16
  %887 = fptrunc x86_fp80 %886 to double
  %888 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %887)
  br label %889

889:                                              ; preds = %884, %877
  %890 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 9
  %891 = load x86_fp80, x86_fp80* %890, align 16
  %892 = fptrunc x86_fp80 %891 to double
  %893 = fmul double %892, 1.024000e+03
  %894 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %893)
  %895 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 10
  %896 = load x86_fp80, x86_fp80* %895, align 16
  %897 = fcmp ogt x86_fp80 %896, 0xK4008FA00000000000000
  br i1 %897, label %898, label %903

898:                                              ; preds = %889
  %899 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 10
  %900 = load x86_fp80, x86_fp80* %899, align 16
  %901 = fptrunc x86_fp80 %900 to double
  %902 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %901)
  br label %908

903:                                              ; preds = %889
  %904 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 10
  %905 = load x86_fp80, x86_fp80* %904, align 16
  %906 = fptrunc x86_fp80 %905 to double
  %907 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), double %906)
  br label %908

908:                                              ; preds = %903, %898
  br label %909

909:                                              ; preds = %908, %874
  %910 = load i32, i32* @flag_o, align 4
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %912, label %931

912:                                              ; preds = %909
  %913 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 11
  %914 = load x86_fp80, x86_fp80* %913, align 16
  %915 = fptrunc x86_fp80 %914 to double
  %916 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %915)
  %917 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 12
  %918 = load x86_fp80, x86_fp80* %917, align 16
  %919 = fcmp ogt x86_fp80 %918, 0xK4008FA00000000000000
  br i1 %919, label %920, label %925

920:                                              ; preds = %912
  %921 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 12
  %922 = load x86_fp80, x86_fp80* %921, align 16
  %923 = fptrunc x86_fp80 %922 to double
  %924 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i64 0, i64 0), double %923)
  br label %930

925:                                              ; preds = %912
  %926 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 12
  %927 = load x86_fp80, x86_fp80* %926, align 16
  %928 = fptrunc x86_fp80 %927 to double
  %929 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i64 0, i64 0), double %928)
  br label %930

930:                                              ; preds = %925, %920
  br label %931

931:                                              ; preds = %930, %909
  %932 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 7
  %933 = load x86_fp80, x86_fp80* %932, align 16
  %934 = load x86_fp80, x86_fp80* @HIGH_PCT_BUSY_THRESH, align 16
  %935 = fcmp ogt x86_fp80 %933, %934
  br i1 %935, label %936, label %937

936:                                              ; preds = %931
  store i32 3, i32* %7, align 4
  br label %945

937:                                              ; preds = %931
  %938 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 7
  %939 = load x86_fp80, x86_fp80* %938, align 16
  %940 = load x86_fp80, x86_fp80* @MEDIUM_PCT_BUSY_THRESH, align 16
  %941 = fcmp ogt x86_fp80 %939, %940
  br i1 %941, label %942, label %943

942:                                              ; preds = %937
  store i32 2, i32* %7, align 4
  br label %944

943:                                              ; preds = %937
  store i32 1, i32* %7, align 4
  br label %944

944:                                              ; preds = %943, %942
  br label %945

945:                                              ; preds = %944, %936
  %946 = load i32, i32* @flag_b, align 4
  %947 = icmp ne i32 %946, 0
  br i1 %947, label %952, label %948

948:                                              ; preds = %945
  %949 = load i32, i32* %7, align 4
  %950 = call i32 @COLOR_PAIR(i32 %949)
  %951 = call i32 @attron(i32 %950)
  br label %952

952:                                              ; preds = %948, %945
  %953 = getelementptr inbounds [16 x x86_fp80], [16 x x86_fp80]* %39, i64 0, i64 7
  %954 = load x86_fp80, x86_fp80* %953, align 16
  %955 = fptrunc x86_fp80 %954 to double
  %956 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.54, i64 0, i64 0), double %955)
  %957 = load i32, i32* @flag_b, align 4
  %958 = icmp ne i32 %957, 0
  br i1 %958, label %964, label %959

959:                                              ; preds = %952
  %960 = load i32, i32* %7, align 4
  %961 = call i32 @COLOR_PAIR(i32 %960)
  %962 = call i32 @attroff(i32 %961)
  %963 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.55, i64 0, i64 0))
  br label %966

964:                                              ; preds = %952
  %965 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i64 0, i64 0))
  br label %966

966:                                              ; preds = %964, %959
  %967 = getelementptr inbounds [4096 x i8], [4096 x i8]* %37, i64 0, i64 0
  %968 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8* %967)
  %969 = load i32, i32* @flag_b, align 4
  %970 = icmp ne i32 %969, 0
  br i1 %970, label %973, label %971

971:                                              ; preds = %966
  %972 = call i32 (...) @clrtoeol()
  br label %973

973:                                              ; preds = %971, %966
  br label %974

974:                                              ; preds = %973, %800
  %975 = call i32 (i8*, ...) @PRINTMSG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  %976 = load %struct.devstat*, %struct.devstat** %18, align 8
  %977 = load %struct.devstat*, %struct.devstat** %17, align 8
  %978 = bitcast %struct.devstat* %976 to i8*
  %979 = bitcast %struct.devstat* %977 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %978, i8* align 8 %979, i64 24, i1 false)
  br label %440

980:                                              ; preds = %450
  %981 = load i8*, i8** %19, align 8
  %982 = call i32 @geom_stats_snapshot_free(i8* %981)
  %983 = load i32, i32* @flag_b, align 4
  %984 = icmp ne i32 %983, 0
  br i1 %984, label %985, label %999

985:                                              ; preds = %980
  %986 = load i32, i32* %14, align 4
  %987 = icmp ne i32 %986, 0
  br i1 %987, label %989, label %988

988:                                              ; preds = %985
  br label %1096

989:                                              ; preds = %985
  %990 = load i32, i32* @flag_B, align 4
  %991 = icmp ne i32 %990, 0
  br i1 %991, label %993, label %992

992:                                              ; preds = %989
  store i32 0, i32* %14, align 4
  br label %996

993:                                              ; preds = %989
  %994 = load i32, i32* @stdout, align 4
  %995 = call i32 @fflush(i32 %994)
  br label %996

996:                                              ; preds = %993, %992
  %997 = load i32, i32* @flag_I, align 4
  %998 = call i32 @usleep(i32 %997)
  br label %240

999:                                              ; preds = %980
  %1000 = load i32, i32* @stdscr, align 4
  %1001 = load i32, i32* %10, align 4
  %1002 = load i32, i32* %9, align 4
  %1003 = call i32 @getyx(i32 %1000, i32 %1001, i32 %1002)
  %1004 = load i32, i32* @stdscr, align 4
  %1005 = load i32, i32* %12, align 4
  %1006 = load i32, i32* %11, align 4
  %1007 = call i32 @getmaxyx(i32 %1004, i32 %1005, i32 %1006)
  %1008 = call i32 (...) @clrtobot()
  %1009 = load i32, i32* %12, align 4
  %1010 = sub nsw i32 %1009, 1
  %1011 = load i32, i32* %10, align 4
  %1012 = icmp sle i32 %1010, %1011
  br i1 %1012, label %1013, label %1017

1013:                                             ; preds = %999
  %1014 = load i32, i32* %12, align 4
  %1015 = sub nsw i32 %1014, 1
  %1016 = call i32 @move(i32 %1015, i32 0)
  br label %1017

1017:                                             ; preds = %1013, %999
  %1018 = call i32 (...) @refresh()
  %1019 = load i32, i32* @flag_I, align 4
  %1020 = call i32 @usleep(i32 %1019)
  br label %1021

1021:                                             ; preds = %1094, %1017
  %1022 = call i32 (...) @getch()
  store i32 %1022, i32* %7, align 4
  %1023 = load i32, i32* @ERR, align 4
  %1024 = icmp ne i32 %1022, %1023
  br i1 %1024, label %1025, label %1095

1025:                                             ; preds = %1021
  %1026 = load i32, i32* %7, align 4
  switch i32 %1026, label %1093 [
    i32 62, label %1027
    i32 60, label %1030
    i32 99, label %1037
    i32 102, label %1042
    i32 70, label %1090
    i32 113, label %1092
  ]

1027:                                             ; preds = %1025
  %1028 = load i32, i32* @flag_I, align 4
  %1029 = mul nsw i32 %1028, 2
  store i32 %1029, i32* @flag_I, align 4
  br label %1094

1030:                                             ; preds = %1025
  %1031 = load i32, i32* @flag_I, align 4
  %1032 = sdiv i32 %1031, 2
  store i32 %1032, i32* @flag_I, align 4
  %1033 = load i32, i32* @flag_I, align 4
  %1034 = icmp slt i32 %1033, 1000
  br i1 %1034, label %1035, label %1036

1035:                                             ; preds = %1030
  store i32 1000, i32* @flag_I, align 4
  br label %1036

1036:                                             ; preds = %1035, %1030
  br label %1094

1037:                                             ; preds = %1025
  %1038 = load i32, i32* @flag_c, align 4
  %1039 = icmp ne i32 %1038, 0
  %1040 = xor i1 %1039, true
  %1041 = zext i1 %1040 to i32
  store i32 %1041, i32* @flag_c, align 4
  br label %1094

1042:                                             ; preds = %1025
  %1043 = call i32 @move(i32 0, i32 0)
  %1044 = call i32 (...) @clrtoeol()
  %1045 = call i32 (...) @refresh()
  %1046 = load i32*, i32** %41, align 8
  %1047 = call i8* @el_gets(i32* %1046, i32* %13)
  store i8* %1047, i8** %38, align 8
  %1048 = load i8*, i8** %38, align 8
  %1049 = icmp eq i8* %1048, null
  br i1 %1049, label %1050, label %1052

1050:                                             ; preds = %1042
  %1051 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.58, i64 0, i64 0))
  br label %1052

1052:                                             ; preds = %1050, %1042
  %1053 = load i32, i32* %13, align 4
  %1054 = icmp sgt i32 %1053, 1
  br i1 %1054, label %1055, label %1060

1055:                                             ; preds = %1052
  %1056 = load i32*, i32** %42, align 8
  %1057 = load i32, i32* @H_ENTER, align 4
  %1058 = load i8*, i8** %38, align 8
  %1059 = call i32 (i32*, i32*, i32, ...) @history(i32* %1056, i32* %43, i32 %1057, i8* %1058)
  br label %1060

1060:                                             ; preds = %1055, %1052
  %1061 = getelementptr inbounds [100 x i8], [100 x i8]* %35, i64 0, i64 0
  %1062 = load i8*, i8** %38, align 8
  %1063 = call i32 @strlcpy(i8* %1061, i8* %1062, i32 100)
  %1064 = getelementptr inbounds [100 x i8], [100 x i8]* %35, i64 0, i64 0
  %1065 = call i8* @strchr(i8* %1064, i8 signext 10)
  store i8* %1065, i8** %32, align 8
  %1066 = icmp ne i8* %1065, null
  br i1 %1066, label %1067, label %1069

1067:                                             ; preds = %1060
  %1068 = load i8*, i8** %32, align 8
  store i8 0, i8* %1068, align 1
  br label %1069

1069:                                             ; preds = %1067, %1060
  %1070 = call i32 (...) @clear()
  %1071 = call i32 (...) @refresh()
  %1072 = call i32 (...) @cbreak()
  %1073 = call i32 (...) @noecho()
  %1074 = call i32 (...) @nonl()
  %1075 = getelementptr inbounds [100 x i8], [100 x i8]* %35, i64 0, i64 0
  %1076 = load i32, i32* @REG_EXTENDED, align 4
  %1077 = call i32 @regcomp(i32* %29, i8* %1075, i32 %1076)
  %1078 = icmp ne i32 %1077, 0
  br i1 %1078, label %1079, label %1084

1079:                                             ; preds = %1069
  %1080 = call i32 @move(i32 0, i32 0)
  %1081 = call i32 @printw(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.59, i64 0, i64 0))
  %1082 = call i32 (...) @refresh()
  %1083 = call i32 @sleep(i32 1)
  br label %1089

1084:                                             ; preds = %1069
  %1085 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  %1086 = getelementptr inbounds [100 x i8], [100 x i8]* %35, i64 0, i64 0
  %1087 = call i32 @strlcpy(i8* %1085, i8* %1086, i32 100)
  %1088 = load i32, i32* %29, align 4
  store i32 %1088, i32* %28, align 4
  br label %1089

1089:                                             ; preds = %1084, %1079
  br label %1094

1090:                                             ; preds = %1025
  %1091 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0
  store i8 0, i8* %1091, align 16
  br label %1094

1092:                                             ; preds = %1025
  store i32 1, i32* %8, align 4
  br label %1094

1093:                                             ; preds = %1025
  br label %1094

1094:                                             ; preds = %1093, %1092, %1090, %1089, %1037, %1036, %1027
  br label %1021

1095:                                             ; preds = %1021
  br label %240

1096:                                             ; preds = %988, %240
  %1097 = load i32, i32* @flag_b, align 4
  %1098 = icmp ne i32 %1097, 0
  br i1 %1098, label %1103, label %1099

1099:                                             ; preds = %1096
  %1100 = load i32*, i32** %41, align 8
  %1101 = call i32 @el_end(i32* %1100)
  %1102 = call i32 (...) @endwin()
  br label %1103

1103:                                             ; preds = %1099, %1096
  %1104 = load i32, i32* @EX_OK, align 4
  %1105 = call i32 @exit(i32 %1104) #4
  unreachable
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fileno(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @geom_gettree(%struct.gmesh*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @geom_stats_open(...) #1

declare dso_local i8* @geom_stats_snapshot_get(...) #1

declare dso_local i32* @history_init(...) #1

declare dso_local i32 @history(i32*, i32*, i32, ...) #1

declare dso_local i32* @el_init(i8*, i32, i32, i32) #1

declare dso_local i32 @el_set(i32*, i32, ...) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @start_color(...) #1

declare dso_local i32 @use_default_colors(...) #1

declare dso_local i32 @pair_content(i32, i16*, i16*) #1

declare dso_local i32 @init_pair(i32, i32, i16 signext) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @nodelay(i32, i32) #1

declare dso_local i32 @intrflush(i32, i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @geom_stats_snapshot_timestamp(i8*, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @strftime(i8*, i32, i8*, i32) #1

declare dso_local i32 @localtime(double*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @geom_stats_snapshot_reset(i8*) #1

declare dso_local i32 @move(i32, i32) #1

declare dso_local i32 @PRINTMSG(i8*, ...) #1

declare dso_local i32 @getyx(i32, i32, i32) #1

declare dso_local i32 @getmaxyx(i32, i32, i32) #1

declare dso_local %struct.devstat* @geom_stats_snapshot_next(i8*) #1

declare dso_local %struct.gident* @geom_lookupid(%struct.gmesh*, i32*) #1

declare dso_local i32 @geom_deletetree(%struct.gmesh*) #1

declare dso_local i64 @regexec(i32*, i8*, i32, i32*, i32) #1

declare dso_local i32 @devstat_compute_statistics(%struct.devstat*, %struct.devstat*, double, i32, i64*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32, x86_fp80*, i32) #1

declare dso_local i32 @attron(i32) #1

declare dso_local i32 @COLOR_PAIR(i32) #1

declare dso_local i32 @attroff(i32) #1

declare dso_local i32 @clrtoeol(...) #1

declare dso_local i32 @geom_stats_snapshot_free(i8*) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i32 @clrtobot(...) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @getch(...) #1

declare dso_local i8* @el_gets(i32*, i32*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @printw(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i32 @el_end(i32*) #1

declare dso_local i32 @endwin(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
