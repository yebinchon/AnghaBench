; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/procstat/extr_procstat.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i32 }
%struct.procstat_cmd = type { i64, i8*, i32 (i32, i8**)* }
%struct.procstat = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"abCcefHhijkLlM:N:nrSstvw:x\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@PS_OPT_CAPABILITIES = common dso_local global i32 0, align 4
@procstat_opts = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"arguments\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"environment\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"files\00", align 1
@PS_OPT_PERTHREAD = common dso_local global i32 0, align 4
@PS_OPT_NOHEADER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"signals\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"tsignals\00", align 1
@procstat_kstack = common dso_local global i64 0, align 8
@PS_OPT_VERBOSE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"kstack\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"ptlwpinfo\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"rlimit\00", align 1
@optarg = common dso_local global i8* null, align 8
@PS_OPT_SIGNUM = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"rusage\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"cpuset\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"credentials\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"vm\00", align 1
@INT_MAX = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"auxv\00", align 1
@optind = common dso_local global i32 0, align 4
@PS_SUBCOMMAND_OPTS = common dso_local global i32 0, align 4
@optreset = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@procstat_files = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [16 x i8] c"procstat_open()\00", align 1
@PROCSTAT_XO_VERSION = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [9 x i8] c"procstat\00", align 1
@KERN_PROC_PROC = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [20 x i8] c"procstat_getprocs()\00", align 1
@KERN_PROC_PID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.kinfo_proc*, align 8
  %10 = alloca %struct.procstat_cmd*, align 8
  %11 = alloca %struct.procstat*, align 8
  %12 = alloca %struct.procstat*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store %struct.procstat_cmd* null, %struct.procstat_cmd** %10, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = call i32 @xo_parse_args(i32 %20, i8** %21)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %203, %2
  %24 = load i32, i32* %4, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = call i32 @getopt(i32 %24, i8** %25, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 %26, i32* %6, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %204

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  switch i32 %29, label %201 [
    i32 97, label %30
    i32 98, label %33
    i32 67, label %40
    i32 99, label %44
    i32 101, label %51
    i32 102, label %58
    i32 72, label %65
    i32 104, label %69
    i32 105, label %73
    i32 106, label %80
    i32 107, label %87
    i32 76, label %115
    i32 108, label %122
    i32 77, label %129
    i32 78, label %131
    i32 110, label %133
    i32 114, label %137
    i32 83, label %144
    i32 115, label %151
    i32 116, label %158
    i32 118, label %165
    i32 119, label %172
    i32 120, label %193
    i32 63, label %200
  ]

30:                                               ; preds = %28
  %31 = load i32, i32* %18, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %18, align 4
  br label %203

33:                                               ; preds = %28
  %34 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %35 = icmp ne %struct.procstat_cmd* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (...) @usage()
  br label %38

38:                                               ; preds = %36, %33
  %39 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.procstat_cmd* %39, %struct.procstat_cmd** %10, align 8
  br label %203

40:                                               ; preds = %28
  %41 = load i32, i32* @PS_OPT_CAPABILITIES, align 4
  %42 = load i32, i32* @procstat_opts, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* @procstat_opts, align 4
  br label %203

44:                                               ; preds = %28
  %45 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %46 = icmp ne %struct.procstat_cmd* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %44
  %48 = call i32 (...) @usage()
  br label %49

49:                                               ; preds = %47, %44
  %50 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  store %struct.procstat_cmd* %50, %struct.procstat_cmd** %10, align 8
  br label %203

51:                                               ; preds = %28
  %52 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %53 = icmp ne %struct.procstat_cmd* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = call i32 (...) @usage()
  br label %56

56:                                               ; preds = %54, %51
  %57 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store %struct.procstat_cmd* %57, %struct.procstat_cmd** %10, align 8
  br label %203

58:                                               ; preds = %28
  %59 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %60 = icmp ne %struct.procstat_cmd* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = call i32 (...) @usage()
  br label %63

63:                                               ; preds = %61, %58
  %64 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store %struct.procstat_cmd* %64, %struct.procstat_cmd** %10, align 8
  br label %203

65:                                               ; preds = %28
  %66 = load i32, i32* @PS_OPT_PERTHREAD, align 4
  %67 = load i32, i32* @procstat_opts, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* @procstat_opts, align 4
  br label %203

69:                                               ; preds = %28
  %70 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %71 = load i32, i32* @procstat_opts, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* @procstat_opts, align 4
  br label %203

73:                                               ; preds = %28
  %74 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %75 = icmp ne %struct.procstat_cmd* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (...) @usage()
  br label %78

78:                                               ; preds = %76, %73
  %79 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store %struct.procstat_cmd* %79, %struct.procstat_cmd** %10, align 8
  br label %203

80:                                               ; preds = %28
  %81 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %82 = icmp ne %struct.procstat_cmd* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (...) @usage()
  br label %85

85:                                               ; preds = %83, %80
  %86 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  store %struct.procstat_cmd* %86, %struct.procstat_cmd** %10, align 8
  br label %203

87:                                               ; preds = %28
  %88 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %89 = icmp ne %struct.procstat_cmd* %88, null
  br i1 %89, label %90, label %107

90:                                               ; preds = %87
  %91 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %92 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @procstat_kstack, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %107

96:                                               ; preds = %90
  %97 = load i32, i32* @procstat_opts, align 4
  %98 = load i32, i32* @PS_OPT_VERBOSE, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = call i32 (...) @usage()
  br label %103

103:                                              ; preds = %101, %96
  %104 = load i32, i32* @PS_OPT_VERBOSE, align 4
  %105 = load i32, i32* @procstat_opts, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* @procstat_opts, align 4
  br label %114

107:                                              ; preds = %90, %87
  %108 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %109 = icmp ne %struct.procstat_cmd* %108, null
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = call i32 (...) @usage()
  br label %112

112:                                              ; preds = %110, %107
  %113 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  store %struct.procstat_cmd* %113, %struct.procstat_cmd** %10, align 8
  br label %114

114:                                              ; preds = %112, %103
  br label %203

115:                                              ; preds = %28
  %116 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %117 = icmp ne %struct.procstat_cmd* %116, null
  br i1 %117, label %118, label %120

118:                                              ; preds = %115
  %119 = call i32 (...) @usage()
  br label %120

120:                                              ; preds = %118, %115
  %121 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0))
  store %struct.procstat_cmd* %121, %struct.procstat_cmd** %10, align 8
  br label %203

122:                                              ; preds = %28
  %123 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %124 = icmp ne %struct.procstat_cmd* %123, null
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = call i32 (...) @usage()
  br label %127

127:                                              ; preds = %125, %122
  %128 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store %struct.procstat_cmd* %128, %struct.procstat_cmd** %10, align 8
  br label %203

129:                                              ; preds = %28
  %130 = load i8*, i8** @optarg, align 8
  store i8* %130, i8** %17, align 8
  br label %203

131:                                              ; preds = %28
  %132 = load i8*, i8** @optarg, align 8
  store i8* %132, i8** %16, align 8
  br label %203

133:                                              ; preds = %28
  %134 = load i32, i32* @PS_OPT_SIGNUM, align 4
  %135 = load i32, i32* @procstat_opts, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* @procstat_opts, align 4
  br label %203

137:                                              ; preds = %28
  %138 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %139 = icmp ne %struct.procstat_cmd* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %137
  %141 = call i32 (...) @usage()
  br label %142

142:                                              ; preds = %140, %137
  %143 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  store %struct.procstat_cmd* %143, %struct.procstat_cmd** %10, align 8
  br label %203

144:                                              ; preds = %28
  %145 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %146 = icmp ne %struct.procstat_cmd* %145, null
  br i1 %146, label %147, label %149

147:                                              ; preds = %144
  %148 = call i32 (...) @usage()
  br label %149

149:                                              ; preds = %147, %144
  %150 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  store %struct.procstat_cmd* %150, %struct.procstat_cmd** %10, align 8
  br label %203

151:                                              ; preds = %28
  %152 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %153 = icmp ne %struct.procstat_cmd* %152, null
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (...) @usage()
  br label %156

156:                                              ; preds = %154, %151
  %157 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  store %struct.procstat_cmd* %157, %struct.procstat_cmd** %10, align 8
  br label %203

158:                                              ; preds = %28
  %159 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %160 = icmp ne %struct.procstat_cmd* %159, null
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  %162 = call i32 (...) @usage()
  br label %163

163:                                              ; preds = %161, %158
  %164 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0))
  store %struct.procstat_cmd* %164, %struct.procstat_cmd** %10, align 8
  br label %203

165:                                              ; preds = %28
  %166 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %167 = icmp ne %struct.procstat_cmd* %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %165
  %169 = call i32 (...) @usage()
  br label %170

170:                                              ; preds = %168, %165
  %171 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  store %struct.procstat_cmd* %171, %struct.procstat_cmd** %10, align 8
  br label %203

172:                                              ; preds = %28
  %173 = load i8*, i8** @optarg, align 8
  %174 = call i64 @strtol(i8* %173, i8** %15, i32 10)
  store i64 %174, i64* %13, align 8
  %175 = load i8*, i8** %15, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %172
  %180 = call i32 (...) @usage()
  br label %181

181:                                              ; preds = %179, %172
  %182 = load i64, i64* %13, align 8
  %183 = icmp slt i64 %182, 1
  br i1 %183, label %188, label %184

184:                                              ; preds = %181
  %185 = load i64, i64* %13, align 8
  %186 = load i64, i64* @INT_MAX, align 8
  %187 = icmp sgt i64 %185, %186
  br i1 %187, label %188, label %190

188:                                              ; preds = %184, %181
  %189 = call i32 (...) @usage()
  br label %190

190:                                              ; preds = %188, %184
  %191 = load i64, i64* %13, align 8
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %7, align 4
  br label %203

193:                                              ; preds = %28
  %194 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %195 = icmp ne %struct.procstat_cmd* %194, null
  br i1 %195, label %196, label %198

196:                                              ; preds = %193
  %197 = call i32 (...) @usage()
  br label %198

198:                                              ; preds = %196, %193
  %199 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.15, i64 0, i64 0))
  store %struct.procstat_cmd* %199, %struct.procstat_cmd** %10, align 8
  br label %203

200:                                              ; preds = %28
  br label %201

201:                                              ; preds = %28, %200
  %202 = call i32 (...) @usage()
  br label %203

203:                                              ; preds = %201, %198, %190, %170, %163, %156, %149, %142, %133, %131, %129, %127, %120, %114, %85, %78, %69, %65, %63, %56, %49, %40, %38, %30
  br label %23

204:                                              ; preds = %23
  %205 = load i32, i32* @optind, align 4
  %206 = load i32, i32* %4, align 4
  %207 = sub nsw i32 %206, %205
  store i32 %207, i32* %4, align 4
  %208 = load i32, i32* @optind, align 4
  %209 = load i8**, i8*** %5, align 8
  %210 = sext i32 %208 to i64
  %211 = getelementptr inbounds i8*, i8** %209, i64 %210
  store i8** %211, i8*** %5, align 8
  %212 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %213 = icmp eq %struct.procstat_cmd* %212, null
  br i1 %213, label %214, label %257

214:                                              ; preds = %204
  %215 = load i8**, i8*** %5, align 8
  %216 = getelementptr inbounds i8*, i8** %215, i64 0
  %217 = load i8*, i8** %216, align 8
  %218 = icmp ne i8* %217, null
  br i1 %218, label %219, label %257

219:                                              ; preds = %214
  %220 = load i8**, i8*** %5, align 8
  %221 = getelementptr inbounds i8*, i8** %220, i64 0
  %222 = load i8*, i8** %221, align 8
  %223 = call %struct.procstat_cmd* @getcmd(i8* %222)
  store %struct.procstat_cmd* %223, %struct.procstat_cmd** %10, align 8
  %224 = icmp ne %struct.procstat_cmd* %223, null
  br i1 %224, label %225, label %257

225:                                              ; preds = %219
  %226 = load i32, i32* @procstat_opts, align 4
  %227 = load i32, i32* @PS_SUBCOMMAND_OPTS, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %232

230:                                              ; preds = %225
  %231 = call i32 (...) @usage()
  br label %232

232:                                              ; preds = %230, %225
  %233 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %234 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %233, i32 0, i32 2
  %235 = load i32 (i32, i8**)*, i32 (i32, i8**)** %234, align 8
  %236 = icmp ne i32 (i32, i8**)* %235, null
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  store i32 1, i32* @optreset, align 4
  store i32 1, i32* @optind, align 4
  %238 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %239 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %238, i32 0, i32 2
  %240 = load i32 (i32, i8**)*, i32 (i32, i8**)** %239, align 8
  %241 = load i32, i32* %4, align 4
  %242 = load i8**, i8*** %5, align 8
  %243 = call i32 %240(i32 %241, i8** %242)
  %244 = load i32, i32* @optind, align 4
  %245 = load i32, i32* %4, align 4
  %246 = sub nsw i32 %245, %244
  store i32 %246, i32* %4, align 4
  %247 = load i32, i32* @optind, align 4
  %248 = load i8**, i8*** %5, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i8*, i8** %248, i64 %249
  store i8** %250, i8*** %5, align 8
  br label %256

251:                                              ; preds = %232
  %252 = load i32, i32* %4, align 4
  %253 = sub nsw i32 %252, 1
  store i32 %253, i32* %4, align 4
  %254 = load i8**, i8*** %5, align 8
  %255 = getelementptr inbounds i8*, i8** %254, i64 1
  store i8** %255, i8*** %5, align 8
  br label %256

256:                                              ; preds = %251, %237
  br label %276

257:                                              ; preds = %219, %214, %204
  %258 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %259 = icmp eq %struct.procstat_cmd* %258, null
  br i1 %259, label %260, label %262

260:                                              ; preds = %257
  %261 = call %struct.procstat_cmd* @getcmd(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  store %struct.procstat_cmd* %261, %struct.procstat_cmd** %10, align 8
  br label %262

262:                                              ; preds = %260, %257
  %263 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %264 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %263, i32 0, i32 0
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @procstat_files, align 8
  %267 = icmp ne i64 %265, %266
  br i1 %267, label %268, label %275

268:                                              ; preds = %262
  %269 = load i32, i32* @procstat_opts, align 4
  %270 = load i32, i32* @PS_OPT_CAPABILITIES, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268
  %274 = call i32 (...) @usage()
  br label %275

275:                                              ; preds = %273, %268, %262
  br label %276

276:                                              ; preds = %275, %256
  %277 = load i32, i32* %18, align 4
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load i32, i32* %4, align 4
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %290, label %282

282:                                              ; preds = %279, %276
  %283 = load i32, i32* %18, align 4
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load i32, i32* %4, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %285, %282
  %289 = call i32 (...) @usage()
  br label %290

290:                                              ; preds = %288, %285, %279
  %291 = load i8*, i8** %17, align 8
  %292 = icmp ne i8* %291, null
  br i1 %292, label %293, label %297

293:                                              ; preds = %290
  %294 = load i8*, i8** %16, align 8
  %295 = load i8*, i8** %17, align 8
  %296 = call %struct.procstat* @procstat_open_kvm(i8* %294, i8* %295)
  store %struct.procstat* %296, %struct.procstat** %11, align 8
  br label %299

297:                                              ; preds = %290
  %298 = call %struct.procstat* (...) @procstat_open_sysctl()
  store %struct.procstat* %298, %struct.procstat** %11, align 8
  br label %299

299:                                              ; preds = %297, %293
  %300 = load %struct.procstat*, %struct.procstat** %11, align 8
  %301 = icmp eq %struct.procstat* %300, null
  br i1 %301, label %302, label %304

302:                                              ; preds = %299
  %303 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302, %299
  br label %305

305:                                              ; preds = %447, %304
  %306 = load i32, i32* @PROCSTAT_XO_VERSION, align 4
  %307 = call i32 @xo_set_version(i32 %306)
  %308 = call i32 @xo_open_container(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %309 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %310 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %309, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = call i32 @xo_open_container(i8* %311)
  %313 = load i32, i32* %18, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %350

315:                                              ; preds = %305
  %316 = load %struct.procstat*, %struct.procstat** %11, align 8
  %317 = load i32, i32* @KERN_PROC_PROC, align 4
  %318 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %316, i32 %317, i32 0, i32* %19)
  store %struct.kinfo_proc* %318, %struct.kinfo_proc** %9, align 8
  %319 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %320 = icmp eq %struct.kinfo_proc* %319, null
  br i1 %320, label %321, label %323

321:                                              ; preds = %315
  %322 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %323

323:                                              ; preds = %321, %315
  %324 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %325 = load i32, i32* %19, align 4
  %326 = call i32 @kinfo_proc_sort(%struct.kinfo_proc* %324, i32 %325)
  store i32 0, i32* %8, align 4
  br label %327

327:                                              ; preds = %343, %323
  %328 = load i32, i32* %8, align 4
  %329 = load i32, i32* %19, align 4
  %330 = icmp slt i32 %328, %329
  br i1 %330, label %331, label %346

331:                                              ; preds = %327
  %332 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %333 = load %struct.procstat*, %struct.procstat** %11, align 8
  %334 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %335 = load i32, i32* %8, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %334, i64 %336
  %338 = call i32 @procstat(%struct.procstat_cmd* %332, %struct.procstat* %333, %struct.kinfo_proc* %337)
  %339 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %340 = load i32, i32* @procstat_opts, align 4
  %341 = or i32 %340, %339
  store i32 %341, i32* @procstat_opts, align 4
  %342 = call i32 (...) @xo_flush()
  br label %343

343:                                              ; preds = %331
  %344 = load i32, i32* %8, align 4
  %345 = add nsw i32 %344, 1
  store i32 %345, i32* %8, align 4
  br label %327

346:                                              ; preds = %327
  %347 = load %struct.procstat*, %struct.procstat** %11, align 8
  %348 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %349 = call i32 @procstat_freeprocs(%struct.procstat* %347, %struct.kinfo_proc* %348)
  br label %350

350:                                              ; preds = %346, %305
  store i32 0, i32* %8, align 4
  br label %351

351:                                              ; preds = %431, %350
  %352 = load i32, i32* %8, align 4
  %353 = load i32, i32* %4, align 4
  %354 = icmp slt i32 %352, %353
  br i1 %354, label %355, label %434

355:                                              ; preds = %351
  %356 = load i8**, i8*** %5, align 8
  %357 = load i32, i32* %8, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds i8*, i8** %356, i64 %358
  %360 = load i8*, i8** %359, align 8
  %361 = call i64 @strtol(i8* %360, i8** %15, i32 10)
  store i64 %361, i64* %13, align 8
  %362 = load i8*, i8** %15, align 8
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %394

366:                                              ; preds = %355
  %367 = load i64, i64* %13, align 8
  %368 = icmp slt i64 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %366
  %370 = call i32 (...) @usage()
  br label %371

371:                                              ; preds = %369, %366
  %372 = load i64, i64* %13, align 8
  %373 = trunc i64 %372 to i32
  store i32 %373, i32* %14, align 4
  %374 = load %struct.procstat*, %struct.procstat** %11, align 8
  %375 = load i32, i32* @KERN_PROC_PID, align 4
  %376 = load i32, i32* %14, align 4
  %377 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %374, i32 %375, i32 %376, i32* %19)
  store %struct.kinfo_proc* %377, %struct.kinfo_proc** %9, align 8
  %378 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %379 = icmp eq %struct.kinfo_proc* %378, null
  br i1 %379, label %380, label %382

380:                                              ; preds = %371
  %381 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %382

382:                                              ; preds = %380, %371
  %383 = load i32, i32* %19, align 4
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %390

385:                                              ; preds = %382
  %386 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %387 = load %struct.procstat*, %struct.procstat** %11, align 8
  %388 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %389 = call i32 @procstat(%struct.procstat_cmd* %386, %struct.procstat* %387, %struct.kinfo_proc* %388)
  br label %390

390:                                              ; preds = %385, %382
  %391 = load %struct.procstat*, %struct.procstat** %11, align 8
  %392 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %393 = call i32 @procstat_freeprocs(%struct.procstat* %391, %struct.kinfo_proc* %392)
  br label %427

394:                                              ; preds = %355
  %395 = load i8**, i8*** %5, align 8
  %396 = load i32, i32* %8, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds i8*, i8** %395, i64 %397
  %399 = load i8*, i8** %398, align 8
  %400 = call %struct.procstat* @procstat_open_core(i8* %399)
  store %struct.procstat* %400, %struct.procstat** %12, align 8
  %401 = load %struct.procstat*, %struct.procstat** %12, align 8
  %402 = icmp eq %struct.procstat* %401, null
  br i1 %402, label %403, label %405

403:                                              ; preds = %394
  %404 = call i32 @warnx(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %431

405:                                              ; preds = %394
  %406 = load %struct.procstat*, %struct.procstat** %12, align 8
  %407 = load i32, i32* @KERN_PROC_PID, align 4
  %408 = call %struct.kinfo_proc* @procstat_getprocs(%struct.procstat* %406, i32 %407, i32 -1, i32* %19)
  store %struct.kinfo_proc* %408, %struct.kinfo_proc** %9, align 8
  %409 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %410 = icmp eq %struct.kinfo_proc* %409, null
  br i1 %410, label %411, label %413

411:                                              ; preds = %405
  %412 = call i32 @xo_errx(i32 1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  br label %413

413:                                              ; preds = %411, %405
  %414 = load i32, i32* %19, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %421

416:                                              ; preds = %413
  %417 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %418 = load %struct.procstat*, %struct.procstat** %12, align 8
  %419 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %420 = call i32 @procstat(%struct.procstat_cmd* %417, %struct.procstat* %418, %struct.kinfo_proc* %419)
  br label %421

421:                                              ; preds = %416, %413
  %422 = load %struct.procstat*, %struct.procstat** %12, align 8
  %423 = load %struct.kinfo_proc*, %struct.kinfo_proc** %9, align 8
  %424 = call i32 @procstat_freeprocs(%struct.procstat* %422, %struct.kinfo_proc* %423)
  %425 = load %struct.procstat*, %struct.procstat** %12, align 8
  %426 = call i32 @procstat_close(%struct.procstat* %425)
  br label %427

427:                                              ; preds = %421, %390
  %428 = load i32, i32* @PS_OPT_NOHEADER, align 4
  %429 = load i32, i32* @procstat_opts, align 4
  %430 = or i32 %429, %428
  store i32 %430, i32* @procstat_opts, align 4
  br label %431

431:                                              ; preds = %427, %403
  %432 = load i32, i32* %8, align 4
  %433 = add nsw i32 %432, 1
  store i32 %433, i32* %8, align 4
  br label %351

434:                                              ; preds = %351
  %435 = load %struct.procstat_cmd*, %struct.procstat_cmd** %10, align 8
  %436 = getelementptr inbounds %struct.procstat_cmd, %struct.procstat_cmd* %435, i32 0, i32 1
  %437 = load i8*, i8** %436, align 8
  %438 = call i32 @xo_close_container(i8* %437)
  %439 = call i32 @xo_close_container(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %440 = call i32 (...) @xo_finish()
  %441 = load i32, i32* %7, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %443, label %446

443:                                              ; preds = %434
  %444 = load i32, i32* %7, align 4
  %445 = call i32 @sleep(i32 %444)
  br label %446

446:                                              ; preds = %443, %434
  br label %447

447:                                              ; preds = %446
  %448 = load i32, i32* %7, align 4
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %305, label %450

450:                                              ; preds = %447
  %451 = load %struct.procstat*, %struct.procstat** %11, align 8
  %452 = call i32 @procstat_close(%struct.procstat* %451)
  %453 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @xo_parse_args(i32, i8**) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local %struct.procstat_cmd* @getcmd(i8*) #1

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local %struct.procstat* @procstat_open_kvm(i8*, i8*) #1

declare dso_local %struct.procstat* @procstat_open_sysctl(...) #1

declare dso_local i32 @xo_errx(i32, i8*) #1

declare dso_local i32 @xo_set_version(i32) #1

declare dso_local i32 @xo_open_container(i8*) #1

declare dso_local %struct.kinfo_proc* @procstat_getprocs(%struct.procstat*, i32, i32, i32*) #1

declare dso_local i32 @kinfo_proc_sort(%struct.kinfo_proc*, i32) #1

declare dso_local i32 @procstat(%struct.procstat_cmd*, %struct.procstat*, %struct.kinfo_proc*) #1

declare dso_local i32 @xo_flush(...) #1

declare dso_local i32 @procstat_freeprocs(%struct.procstat*, %struct.kinfo_proc*) #1

declare dso_local %struct.procstat* @procstat_open_core(i8*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @procstat_close(%struct.procstat*) #1

declare dso_local i32 @xo_close_container(i8*) #1

declare dso_local i32 @xo_finish(...) #1

declare dso_local i32 @sleep(i32) #1

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
