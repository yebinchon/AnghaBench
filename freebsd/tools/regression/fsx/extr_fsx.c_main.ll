; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/fsx/extr_fsx.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }

@page_size = common dso_local global i64 0, align 8
@page_mask = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@_IOLBF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"b:c:di:l:m:no:p:qr:s:t:w:D:LN:OP:RS:UW\00", align 1
@optarg = common dso_local global i8* null, align 8
@simulatedopcount = common dso_local global i32 0, align 4
@quiet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Will begin at operation %ld\0A\00", align 1
@closeprob = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Chance of close/open is 1 in %d\0A\00", align 1
@debug = common dso_local global i32 0, align 4
@invlprob = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Chance of MS_INVALIDATE is 1 in %d\0A\00", align 1
@maxfilelen = common dso_local global i32 0, align 4
@monitorstart = common dso_local global i8* null, align 8
@monitorend = common dso_local global i32 0, align 4
@sizechecks = common dso_local global i32 0, align 4
@maxoplen = common dso_local global i32 0, align 4
@progressinterval = common dso_local global i8* null, align 8
@readbdy = common dso_local global i8* null, align 8
@style = common dso_local global i32 0, align 4
@truncbdy = common dso_local global i8* null, align 8
@writebdy = common dso_local global i8* null, align 8
@debugstart = common dso_local global i32 0, align 4
@lite = common dso_local global i32 0, align 4
@numops = common dso_local global i32 0, align 4
@randomoplen = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@mapped_reads = common dso_local global i32 0, align 4
@seed = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"clock_gettime\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Seed set to %d\0A\00", align 1
@mapped_writes = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"mapped writes DISABLED\0A\00", align 1
@mapped_msync = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [23 x i8] c"mapped msync DISABLED\0A\00", align 1
@optind = common dso_local global i64 0, align 8
@fname = common dso_local global i8* null, align 8
@SIGHUP = common dso_local global i32 0, align 4
@cleanup = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@SIGXFSZ = common dso_local global i32 0, align 4
@SIGVTALRM = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@SIGUSR2 = common dso_local global i32 0, align 4
@state = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@fd = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [9 x i8] c".fsxgood\00", align 1
@fsxgoodfd = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [8 x i8] c".fsxlog\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@fsxlogf = common dso_local global i32* null, align 8
@SEEK_END = common dso_local global i32 0, align 4
@file_size = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [16 x i8] c"main: lseek eof\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c"main: lseek 0\00", align 1
@original_buf = common dso_local global i8* null, align 8
@good_buf = common dso_local global i8* null, align 8
@temp_buf = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [21 x i8] c"main: error on write\00", align 1
@.str.15 = private unnamed_addr constant [48 x i8] c"main: short write, 0x%x bytes instead of 0x%lx\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"All operations completed A-OK!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [1024 x i8], align 16
  %10 = alloca [1024 x i8], align 16
  %11 = alloca %struct.timespec, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  store i8 0, i8* %14, align 16
  %15 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %15, align 16
  %16 = call i64 (...) @getpagesize()
  store i64 %16, i64* @page_size, align 8
  %17 = load i64, i64* @page_size, align 8
  %18 = sub nsw i64 %17, 1
  store i64 %18, i64* @page_mask, align 8
  %19 = load i32, i32* @stdout, align 4
  %20 = load i32, i32* @_IOLBF, align 4
  %21 = call i32 @setvbuf(i32 %19, i8* null, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %252, %2
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = call i32 @getopt(i32 %23, i8** %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 %25, i32* %7, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %253

27:                                               ; preds = %22
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %250 [
    i32 98, label %29
    i32 99, label %47
    i32 100, label %63
    i32 105, label %64
    i32 108, label %80
    i32 109, label %89
    i32 110, label %120
    i32 111, label %121
    i32 112, label %130
    i32 113, label %138
    i32 114, label %139
    i32 115, label %147
    i32 116, label %159
    i32 119, label %167
    i32 68, label %175
    i32 76, label %184
    i32 78, label %185
    i32 79, label %194
    i32 80, label %195
    i32 82, label %206
    i32 83, label %207
    i32 87, label %236
    i32 85, label %243
  ]

29:                                               ; preds = %27
  %30 = load i8*, i8** @optarg, align 8
  %31 = call i8* @getnum(i8* %30, i8** %8)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* @simulatedopcount, align 4
  %33 = load i32, i32* @quiet, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @stdout, align 4
  %37 = load i32, i32* @simulatedopcount, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i32, i32* @simulatedopcount, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = call i32 (...) @usage()
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* @simulatedopcount, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* @simulatedopcount, align 4
  br label %252

47:                                               ; preds = %27
  %48 = load i8*, i8** @optarg, align 8
  %49 = call i8* @getnum(i8* %48, i8** %8)
  %50 = ptrtoint i8* %49 to i32
  store i32 %50, i32* @closeprob, align 4
  %51 = load i32, i32* @quiet, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i32, i32* @stdout, align 4
  %55 = load i32, i32* @closeprob, align 4
  %56 = call i32 (i32, i8*, ...) @fprintf(i32 %54, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %53, %47
  %58 = load i32, i32* @closeprob, align 4
  %59 = icmp sle i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %57
  br label %252

63:                                               ; preds = %27
  store i32 1, i32* @debug, align 4
  br label %252

64:                                               ; preds = %27
  %65 = load i8*, i8** @optarg, align 8
  %66 = call i8* @getnum(i8* %65, i8** %8)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* @invlprob, align 4
  %68 = load i32, i32* @quiet, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @stdout, align 4
  %72 = load i32, i32* @invlprob, align 4
  %73 = call i32 (i32, i8*, ...) @fprintf(i32 %71, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %70, %64
  %75 = load i32, i32* @invlprob, align 4
  %76 = icmp sle i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = call i32 (...) @usage()
  br label %79

79:                                               ; preds = %77, %74
  br label %252

80:                                               ; preds = %27
  %81 = load i8*, i8** @optarg, align 8
  %82 = call i8* @getnum(i8* %81, i8** %8)
  %83 = ptrtoint i8* %82 to i32
  store i32 %83, i32* @maxfilelen, align 4
  %84 = load i32, i32* @maxfilelen, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 (...) @usage()
  br label %88

88:                                               ; preds = %86, %80
  br label %252

89:                                               ; preds = %27
  %90 = load i8*, i8** @optarg, align 8
  %91 = call i8* @getnum(i8* %90, i8** %8)
  store i8* %91, i8** @monitorstart, align 8
  %92 = load i8*, i8** @monitorstart, align 8
  %93 = icmp ult i8* %92, null
  br i1 %93, label %94, label %96

94:                                               ; preds = %89
  %95 = call i32 (...) @usage()
  br label %96

96:                                               ; preds = %94, %89
  %97 = load i8*, i8** %8, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %105

99:                                               ; preds = %96
  %100 = load i8*, i8** %8, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %8, align 8
  %102 = load i8, i8* %100, align 1
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 58
  br i1 %104, label %105, label %107

105:                                              ; preds = %99, %96
  %106 = call i32 (...) @usage()
  br label %107

107:                                              ; preds = %105, %99
  %108 = load i8*, i8** %8, align 8
  %109 = call i8* @getnum(i8* %108, i8** %8)
  %110 = ptrtoint i8* %109 to i32
  store i32 %110, i32* @monitorend, align 4
  %111 = load i32, i32* @monitorend, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %107
  %116 = load i32, i32* @monitorend, align 4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  store i32 -1, i32* @monitorend, align 4
  br label %119

119:                                              ; preds = %118, %115
  store i32 1, i32* @debug, align 4
  br label %120

120:                                              ; preds = %27, %119
  store i32 0, i32* @sizechecks, align 4
  br label %252

121:                                              ; preds = %27
  %122 = load i8*, i8** @optarg, align 8
  %123 = call i8* @getnum(i8* %122, i8** %8)
  %124 = ptrtoint i8* %123 to i32
  store i32 %124, i32* @maxoplen, align 4
  %125 = load i32, i32* @maxoplen, align 4
  %126 = icmp sle i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call i32 (...) @usage()
  br label %129

129:                                              ; preds = %127, %121
  br label %252

130:                                              ; preds = %27
  %131 = load i8*, i8** @optarg, align 8
  %132 = call i8* @getnum(i8* %131, i8** %8)
  store i8* %132, i8** @progressinterval, align 8
  %133 = load i8*, i8** @progressinterval, align 8
  %134 = icmp ult i8* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %130
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135, %130
  br label %252

138:                                              ; preds = %27
  store i32 1, i32* @quiet, align 4
  br label %252

139:                                              ; preds = %27
  %140 = load i8*, i8** @optarg, align 8
  %141 = call i8* @getnum(i8* %140, i8** %8)
  store i8* %141, i8** @readbdy, align 8
  %142 = load i8*, i8** @readbdy, align 8
  %143 = icmp ule i8* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %139
  %145 = call i32 (...) @usage()
  br label %146

146:                                              ; preds = %144, %139
  br label %252

147:                                              ; preds = %27
  %148 = load i8*, i8** @optarg, align 8
  %149 = call i8* @getnum(i8* %148, i8** %8)
  %150 = ptrtoint i8* %149 to i32
  store i32 %150, i32* @style, align 4
  %151 = load i32, i32* @style, align 4
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %147
  %154 = load i32, i32* @style, align 4
  %155 = icmp sgt i32 %154, 1
  br i1 %155, label %156, label %158

156:                                              ; preds = %153, %147
  %157 = call i32 (...) @usage()
  br label %158

158:                                              ; preds = %156, %153
  br label %252

159:                                              ; preds = %27
  %160 = load i8*, i8** @optarg, align 8
  %161 = call i8* @getnum(i8* %160, i8** %8)
  store i8* %161, i8** @truncbdy, align 8
  %162 = load i8*, i8** @truncbdy, align 8
  %163 = icmp ule i8* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = call i32 (...) @usage()
  br label %166

166:                                              ; preds = %164, %159
  br label %252

167:                                              ; preds = %27
  %168 = load i8*, i8** @optarg, align 8
  %169 = call i8* @getnum(i8* %168, i8** %8)
  store i8* %169, i8** @writebdy, align 8
  %170 = load i8*, i8** @writebdy, align 8
  %171 = icmp ule i8* %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %167
  %173 = call i32 (...) @usage()
  br label %174

174:                                              ; preds = %172, %167
  br label %252

175:                                              ; preds = %27
  %176 = load i8*, i8** @optarg, align 8
  %177 = call i8* @getnum(i8* %176, i8** %8)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* @debugstart, align 4
  %179 = load i32, i32* @debugstart, align 4
  %180 = icmp slt i32 %179, 1
  br i1 %180, label %181, label %183

181:                                              ; preds = %175
  %182 = call i32 (...) @usage()
  br label %183

183:                                              ; preds = %181, %175
  br label %252

184:                                              ; preds = %27
  store i32 1, i32* @lite, align 4
  br label %252

185:                                              ; preds = %27
  %186 = load i8*, i8** @optarg, align 8
  %187 = call i8* @getnum(i8* %186, i8** %8)
  %188 = ptrtoint i8* %187 to i32
  store i32 %188, i32* @numops, align 4
  %189 = load i32, i32* @numops, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %185
  %192 = call i32 (...) @usage()
  br label %193

193:                                              ; preds = %191, %185
  br label %252

194:                                              ; preds = %27
  store i32 0, i32* @randomoplen, align 4
  br label %252

195:                                              ; preds = %27
  %196 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %197 = load i8*, i8** @optarg, align 8
  %198 = call i32 @strncpy(i8* %196, i8* %197, i32 1024)
  %199 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %200 = call i32 @strcat(i8* %199, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %201 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %202 = load i8*, i8** @optarg, align 8
  %203 = call i32 @strncpy(i8* %201, i8* %202, i32 1024)
  %204 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %205 = call i32 @strcat(i8* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  br label %252

206:                                              ; preds = %27
  store i32 0, i32* @mapped_reads, align 4
  br label %252

207:                                              ; preds = %27
  %208 = load i8*, i8** @optarg, align 8
  %209 = call i8* @getnum(i8* %208, i8** %8)
  %210 = ptrtoint i8* %209 to i32
  store i32 %210, i32* @seed, align 4
  %211 = load i32, i32* @seed, align 4
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %213, label %223

213:                                              ; preds = %207
  %214 = load i32, i32* @CLOCK_REALTIME, align 4
  %215 = call i32 @clock_gettime(i32 %214, %struct.timespec* %11)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = call i32 @err(i32 1, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  br label %219

219:                                              ; preds = %217, %213
  %220 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = srem i32 %221, 10000
  store i32 %222, i32* @seed, align 4
  br label %223

223:                                              ; preds = %219, %207
  %224 = load i32, i32* @quiet, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %223
  %227 = load i32, i32* @stdout, align 4
  %228 = load i32, i32* @seed, align 4
  %229 = call i32 (i32, i8*, ...) @fprintf(i32 %227, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %228)
  br label %230

230:                                              ; preds = %226, %223
  %231 = load i32, i32* @seed, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = call i32 (...) @usage()
  br label %235

235:                                              ; preds = %233, %230
  br label %252

236:                                              ; preds = %27
  store i32 0, i32* @mapped_writes, align 4
  %237 = load i32, i32* @quiet, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %242, label %239

239:                                              ; preds = %236
  %240 = load i32, i32* @stdout, align 4
  %241 = call i32 (i32, i8*, ...) @fprintf(i32 %240, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %236
  br label %252

243:                                              ; preds = %27
  store i32 0, i32* @mapped_msync, align 4
  %244 = load i32, i32* @quiet, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %249, label %246

246:                                              ; preds = %243
  %247 = load i32, i32* @stdout, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  br label %249

249:                                              ; preds = %246, %243
  br label %252

250:                                              ; preds = %27
  %251 = call i32 (...) @usage()
  br label %252

252:                                              ; preds = %250, %249, %242, %235, %206, %195, %194, %193, %184, %183, %174, %166, %158, %146, %138, %137, %129, %120, %88, %79, %63, %62, %44
  br label %22

253:                                              ; preds = %22
  %254 = load i64, i64* @optind, align 8
  %255 = load i32, i32* %4, align 4
  %256 = sext i32 %255 to i64
  %257 = sub nsw i64 %256, %254
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %4, align 4
  %259 = load i64, i64* @optind, align 8
  %260 = load i8**, i8*** %5, align 8
  %261 = getelementptr inbounds i8*, i8** %260, i64 %259
  store i8** %261, i8*** %5, align 8
  %262 = load i32, i32* %4, align 4
  %263 = icmp ne i32 %262, 1
  br i1 %263, label %264, label %266

264:                                              ; preds = %253
  %265 = call i32 (...) @usage()
  br label %266

266:                                              ; preds = %264, %253
  %267 = load i8**, i8*** %5, align 8
  %268 = getelementptr inbounds i8*, i8** %267, i64 0
  %269 = load i8*, i8** %268, align 8
  store i8* %269, i8** @fname, align 8
  %270 = load i32, i32* @SIGHUP, align 4
  %271 = load i32, i32* @cleanup, align 4
  %272 = call i32 @signal(i32 %270, i32 %271)
  %273 = load i32, i32* @SIGINT, align 4
  %274 = load i32, i32* @cleanup, align 4
  %275 = call i32 @signal(i32 %273, i32 %274)
  %276 = load i32, i32* @SIGPIPE, align 4
  %277 = load i32, i32* @cleanup, align 4
  %278 = call i32 @signal(i32 %276, i32 %277)
  %279 = load i32, i32* @SIGALRM, align 4
  %280 = load i32, i32* @cleanup, align 4
  %281 = call i32 @signal(i32 %279, i32 %280)
  %282 = load i32, i32* @SIGTERM, align 4
  %283 = load i32, i32* @cleanup, align 4
  %284 = call i32 @signal(i32 %282, i32 %283)
  %285 = load i32, i32* @SIGXCPU, align 4
  %286 = load i32, i32* @cleanup, align 4
  %287 = call i32 @signal(i32 %285, i32 %286)
  %288 = load i32, i32* @SIGXFSZ, align 4
  %289 = load i32, i32* @cleanup, align 4
  %290 = call i32 @signal(i32 %288, i32 %289)
  %291 = load i32, i32* @SIGVTALRM, align 4
  %292 = load i32, i32* @cleanup, align 4
  %293 = call i32 @signal(i32 %291, i32 %292)
  %294 = load i32, i32* @SIGUSR1, align 4
  %295 = load i32, i32* @cleanup, align 4
  %296 = call i32 @signal(i32 %294, i32 %295)
  %297 = load i32, i32* @SIGUSR2, align 4
  %298 = load i32, i32* @cleanup, align 4
  %299 = call i32 @signal(i32 %297, i32 %298)
  %300 = load i32, i32* @seed, align 4
  %301 = load i32, i32* @state, align 4
  %302 = call i32 @initstate(i32 %300, i32 %301, i32 256)
  %303 = load i32, i32* @state, align 4
  %304 = call i32 @setstate(i32 %303)
  %305 = load i8*, i8** @fname, align 8
  %306 = load i32, i32* @O_RDWR, align 4
  %307 = load i32, i32* @lite, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %266
  br label %314

310:                                              ; preds = %266
  %311 = load i32, i32* @O_CREAT, align 4
  %312 = load i32, i32* @O_TRUNC, align 4
  %313 = or i32 %311, %312
  br label %314

314:                                              ; preds = %310, %309
  %315 = phi i32 [ 0, %309 ], [ %313, %310 ]
  %316 = or i32 %306, %315
  %317 = call i64 @open(i8* %305, i32 %316, i32 438)
  store i64 %317, i64* @fd, align 8
  %318 = load i64, i64* @fd, align 8
  %319 = icmp slt i64 %318, 0
  br i1 %319, label %320, label %324

320:                                              ; preds = %314
  %321 = load i8*, i8** @fname, align 8
  %322 = call i32 @prterr(i8* %321)
  %323 = call i32 @exit(i32 91) #3
  unreachable

324:                                              ; preds = %314
  %325 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %326 = load i8*, i8** @fname, align 8
  %327 = call i32 @strncat(i8* %325, i8* %326, i32 256)
  %328 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %329 = call i32 @strcat(i8* %328, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0))
  %330 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %331 = load i32, i32* @O_RDWR, align 4
  %332 = load i32, i32* @O_CREAT, align 4
  %333 = or i32 %331, %332
  %334 = load i32, i32* @O_TRUNC, align 4
  %335 = or i32 %333, %334
  %336 = call i64 @open(i8* %330, i32 %335, i32 438)
  store i64 %336, i64* @fsxgoodfd, align 8
  %337 = load i64, i64* @fsxgoodfd, align 8
  %338 = icmp slt i64 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %324
  %340 = getelementptr inbounds [1024 x i8], [1024 x i8]* %9, i64 0, i64 0
  %341 = call i32 @prterr(i8* %340)
  %342 = call i32 @exit(i32 92) #3
  unreachable

343:                                              ; preds = %324
  %344 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %345 = load i8*, i8** @fname, align 8
  %346 = call i32 @strncat(i8* %344, i8* %345, i32 256)
  %347 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %348 = call i32 @strcat(i8* %347, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %349 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %350 = call i32* @fopen(i8* %349, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store i32* %350, i32** @fsxlogf, align 8
  %351 = load i32*, i32** @fsxlogf, align 8
  %352 = icmp eq i32* %351, null
  br i1 %352, label %353, label %357

353:                                              ; preds = %343
  %354 = getelementptr inbounds [1024 x i8], [1024 x i8]* %10, i64 0, i64 0
  %355 = call i32 @prterr(i8* %354)
  %356 = call i32 @exit(i32 93) #3
  unreachable

357:                                              ; preds = %343
  %358 = load i32, i32* @lite, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %386

360:                                              ; preds = %357
  %361 = load i64, i64* @fd, align 8
  %362 = load i32, i32* @SEEK_END, align 4
  %363 = call i8* @lseek(i64 %361, i64 0, i32 %362)
  %364 = ptrtoint i8* %363 to i32
  store i32 %364, i32* @maxfilelen, align 4
  %365 = sext i32 %364 to i64
  store i64 %365, i64* @file_size, align 8
  %366 = load i64, i64* @file_size, align 8
  %367 = icmp eq i64 %366, -1
  br i1 %367, label %368, label %373

368:                                              ; preds = %360
  %369 = load i8*, i8** @fname, align 8
  %370 = call i32 @prterr(i8* %369)
  %371 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0))
  %372 = call i32 @exit(i32 94) #3
  unreachable

373:                                              ; preds = %360
  %374 = load i64, i64* @fd, align 8
  %375 = load i32, i32* @SEEK_SET, align 4
  %376 = call i8* @lseek(i64 %374, i64 0, i32 %375)
  %377 = ptrtoint i8* %376 to i64
  store i64 %377, i64* %12, align 8
  %378 = load i64, i64* %12, align 8
  %379 = icmp eq i64 %378, -1
  br i1 %379, label %380, label %385

380:                                              ; preds = %373
  %381 = load i8*, i8** @fname, align 8
  %382 = call i32 @prterr(i8* %381)
  %383 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  %384 = call i32 @exit(i32 95) #3
  unreachable

385:                                              ; preds = %373
  br label %386

386:                                              ; preds = %385, %357
  %387 = load i32, i32* @maxfilelen, align 4
  %388 = call i64 @malloc(i32 %387)
  %389 = inttoptr i64 %388 to i8*
  store i8* %389, i8** @original_buf, align 8
  store i32 0, i32* %6, align 4
  br label %390

390:                                              ; preds = %402, %386
  %391 = load i32, i32* %6, align 4
  %392 = load i32, i32* @maxfilelen, align 4
  %393 = icmp slt i32 %391, %392
  br i1 %393, label %394, label %405

394:                                              ; preds = %390
  %395 = call i32 (...) @random()
  %396 = srem i32 %395, 256
  %397 = trunc i32 %396 to i8
  %398 = load i8*, i8** @original_buf, align 8
  %399 = load i32, i32* %6, align 4
  %400 = sext i32 %399 to i64
  %401 = getelementptr inbounds i8, i8* %398, i64 %400
  store i8 %397, i8* %401, align 1
  br label %402

402:                                              ; preds = %394
  %403 = load i32, i32* %6, align 4
  %404 = add nsw i32 %403, 1
  store i32 %404, i32* %6, align 4
  br label %390

405:                                              ; preds = %390
  %406 = load i32, i32* @maxfilelen, align 4
  %407 = call i64 @malloc(i32 %406)
  %408 = inttoptr i64 %407 to i8*
  store i8* %408, i8** @good_buf, align 8
  %409 = load i8*, i8** @good_buf, align 8
  %410 = load i32, i32* @maxfilelen, align 4
  %411 = call i32 @memset(i8* %409, i8 signext 0, i32 %410)
  %412 = load i32, i32* @maxoplen, align 4
  %413 = call i64 @malloc(i32 %412)
  %414 = inttoptr i64 %413 to i8*
  store i8* %414, i8** @temp_buf, align 8
  %415 = load i8*, i8** @temp_buf, align 8
  %416 = load i32, i32* @maxoplen, align 4
  %417 = call i32 @memset(i8* %415, i8 signext 0, i32 %416)
  %418 = load i32, i32* @lite, align 4
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %443

420:                                              ; preds = %405
  %421 = load i64, i64* @fd, align 8
  %422 = load i8*, i8** @good_buf, align 8
  %423 = load i32, i32* @maxfilelen, align 4
  %424 = sext i32 %423 to i64
  %425 = call i32 @write(i64 %421, i8* %422, i64 %424)
  store i32 %425, i32* %13, align 4
  %426 = load i32, i32* %13, align 4
  %427 = load i32, i32* @maxfilelen, align 4
  %428 = icmp ne i32 %426, %427
  br i1 %428, label %429, label %442

429:                                              ; preds = %420
  %430 = load i32, i32* %13, align 4
  %431 = icmp eq i32 %430, -1
  br i1 %431, label %432, label %436

432:                                              ; preds = %429
  %433 = load i8*, i8** @fname, align 8
  %434 = call i32 @prterr(i8* %433)
  %435 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.14, i64 0, i64 0))
  br label %440

436:                                              ; preds = %429
  %437 = load i32, i32* %13, align 4
  %438 = load i32, i32* @maxfilelen, align 4
  %439 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.15, i64 0, i64 0), i32 %437, i32 %438)
  br label %440

440:                                              ; preds = %436, %432
  %441 = call i32 @exit(i32 98) #3
  unreachable

442:                                              ; preds = %420
  br label %445

443:                                              ; preds = %405
  %444 = call i32 (...) @check_trunc_hack()
  br label %445

445:                                              ; preds = %443, %442
  br label %446

446:                                              ; preds = %455, %445
  %447 = load i32, i32* @numops, align 4
  %448 = icmp eq i32 %447, -1
  br i1 %448, label %453, label %449

449:                                              ; preds = %446
  %450 = load i32, i32* @numops, align 4
  %451 = add nsw i32 %450, -1
  store i32 %451, i32* @numops, align 4
  %452 = icmp ne i32 %450, 0
  br label %453

453:                                              ; preds = %449, %446
  %454 = phi i1 [ true, %446 ], [ %452, %449 ]
  br i1 %454, label %455, label %457

455:                                              ; preds = %453
  %456 = call i32 (...) @test()
  br label %446

457:                                              ; preds = %453
  %458 = load i64, i64* @fd, align 8
  %459 = call i64 @close(i64 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %464

461:                                              ; preds = %457
  %462 = call i32 @prterr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %463 = call i32 @report_failure(i32 99)
  br label %464

464:                                              ; preds = %461, %457
  %465 = call i32 @prt(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.17, i64 0, i64 0))
  %466 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i64 @getpagesize(...) #1

declare dso_local i32 @setvbuf(i32, i8*, i32, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @getnum(i8*, i8**) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i32 @initstate(i32, i32, i32) #1

declare dso_local i32 @setstate(i32) #1

declare dso_local i64 @open(i8*, i32, i32) #1

declare dso_local i32 @prterr(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @strncat(i8*, i8*, i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i8* @lseek(i64, i64, i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @random(...) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @write(i64, i8*, i64) #1

declare dso_local i32 @check_trunc_hack(...) #1

declare dso_local i32 @test(...) #1

declare dso_local i64 @close(i64) #1

declare dso_local i32 @report_failure(i32) #1

declare dso_local i32 @prt(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
