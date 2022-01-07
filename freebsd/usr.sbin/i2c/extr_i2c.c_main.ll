; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/i2c/extr_i2c.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iiccmd = type { i32 }
%struct.options = type { i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i64, i32 }

@errno = common dso_local global i64 0, align 8
@I2C_DEV = common dso_local global i8* null, align 8
@I2C_MODE_NOTSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"a:f:d:o:w:c:m:n:sbvrh\00", align 1
@optarg = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@I2C_MODE_NONE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@I2C_MODE_STOP_START = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"rs\00", align 1
@I2C_MODE_REPEATED_START = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [3 x i8] c"tr\00", align 1
@I2C_MODE_TRANSFER = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [68 x i8] c"dev: %s, addr: 0x%x, r/w: %c, offset: 0x%02x, width: %u, count: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"data malloc\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Enter %u bytes of data: \00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [26 x i8] c"not enough data, exiting\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"\0AData %s (hex):\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"written\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"%02hhx \00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.iiccmd, align 4
  %7 = alloca %struct.options, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* @errno, align 8
  store i32 0, i32* %11, align 4
  store i32 16, i32* %12, align 4
  %16 = load i8*, i8** @I2C_DEV, align 8
  store i8* %16, i8** %8, align 8
  %17 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  store i32 0, i32* %19, align 8
  %20 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  store i8 114, i8* %20, align 4
  %21 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4
  store i32 8, i32* %21, align 8
  %22 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 6
  store i32 0, i32* %23, align 8
  %24 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 7
  store i32 0, i32* %24, align 4
  %25 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 8
  store i32 0, i32* %25, align 8
  %26 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 9
  store i32 0, i32* %26, align 4
  %27 = load i64, i64* @I2C_MODE_NOTSET, align 8
  %28 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  store i64 %27, i64* %28, align 8
  br label %29

29:                                               ; preds = %133, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %15, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %134

34:                                               ; preds = %29
  %35 = load i32, i32* %15, align 4
  switch i32 %35, label %131 [
    i32 97, label %36
    i32 102, label %53
    i32 100, label %55
    i32 111, label %60
    i32 119, label %73
    i32 99, label %78
    i32 109, label %83
    i32 110, label %119
    i32 115, label %122
    i32 98, label %124
    i32 118, label %126
    i32 114, label %128
    i32 104, label %130
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** @optarg, align 8
  %38 = call i32 @strtoul(i8* %37, i32 0, i32 16)
  %39 = shl i32 %38, 1
  %40 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 11
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 11
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i64, i64* @errno, align 8
  %46 = load i64, i64* @EINVAL, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  store i32 0, i32* %49, align 8
  br label %52

50:                                               ; preds = %44, %36
  %51 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  store i32 1, i32* %51, align 8
  br label %52

52:                                               ; preds = %50, %48
  br label %133

53:                                               ; preds = %34
  %54 = load i8*, i8** @optarg, align 8
  store i8* %54, i8** %8, align 8
  br label %133

55:                                               ; preds = %34
  %56 = load i8*, i8** @optarg, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  store i8 %58, i8* %59, align 4
  br label %133

60:                                               ; preds = %34
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i32 @strtoul(i8* %61, i32 0, i32 16)
  %63 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load i64, i64* @errno, align 8
  %69 = load i64, i64* @EINVAL, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 1, i32* %11, align 4
  br label %72

72:                                               ; preds = %71, %67, %60
  br label %133

73:                                               ; preds = %34
  %74 = load i8*, i8** @optarg, align 8
  %75 = call i8* @atoi(i8* %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4
  store i32 %76, i32* %77, align 8
  br label %133

78:                                               ; preds = %34
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i8* @atoi(i8* %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  store i32 %81, i32* %82, align 4
  br label %133

83:                                               ; preds = %34
  %84 = load i8*, i8** @optarg, align 8
  %85 = call i32 @strcmp(i8* %84, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %83
  %88 = load i8*, i8** @I2C_MODE_NONE, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  store i64 %89, i64* %90, align 8
  br label %118

91:                                               ; preds = %83
  %92 = load i8*, i8** @optarg, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i8*, i8** @I2C_MODE_STOP_START, align 8
  %97 = ptrtoint i8* %96 to i64
  %98 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  store i64 %97, i64* %98, align 8
  br label %117

99:                                               ; preds = %91
  %100 = load i8*, i8** @optarg, align 8
  %101 = call i32 @strcmp(i8* %100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* @I2C_MODE_REPEATED_START, align 8
  %105 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  store i64 %104, i64* %105, align 8
  br label %116

106:                                              ; preds = %99
  %107 = load i8*, i8** @optarg, align 8
  %108 = call i32 @strcmp(i8* %107, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %106
  %111 = load i64, i64* @I2C_MODE_TRANSFER, align 8
  %112 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  store i64 %111, i64* %112, align 8
  br label %115

113:                                              ; preds = %106
  %114 = call i32 (...) @usage()
  br label %115

115:                                              ; preds = %113, %110
  br label %116

116:                                              ; preds = %115, %103
  br label %117

117:                                              ; preds = %116, %95
  br label %118

118:                                              ; preds = %117, %87
  br label %133

119:                                              ; preds = %34
  %120 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 8
  store i32 1, i32* %120, align 8
  %121 = load i8*, i8** @optarg, align 8
  store i8* %121, i8** %9, align 8
  br label %133

122:                                              ; preds = %34
  %123 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 7
  store i32 1, i32* %123, align 4
  br label %133

124:                                              ; preds = %34
  %125 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 6
  store i32 1, i32* %125, align 8
  br label %133

126:                                              ; preds = %34
  %127 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  store i32 1, i32* %127, align 8
  br label %133

128:                                              ; preds = %34
  %129 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 9
  store i32 1, i32* %129, align 4
  br label %133

130:                                              ; preds = %34
  br label %131

131:                                              ; preds = %34, %130
  %132 = call i32 (...) @usage()
  br label %133

133:                                              ; preds = %131, %128, %126, %124, %122, %119, %118, %78, %73, %72, %55, %53, %52
  br label %29

134:                                              ; preds = %29
  %135 = load i64, i64* @optind, align 8
  %136 = load i32, i32* %4, align 4
  %137 = sext i32 %136 to i64
  %138 = sub nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %4, align 4
  %140 = load i64, i64* @optind, align 8
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i64 %140
  store i8** %142, i8*** %5, align 8
  %143 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @I2C_MODE_NOTSET, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %167

147:                                              ; preds = %134
  %148 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %149 = load i8, i8* %148, align 4
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 114
  br i1 %151, label %152, label %156

152:                                              ; preds = %147
  %153 = load i8*, i8** @I2C_MODE_STOP_START, align 8
  %154 = ptrtoint i8* %153 to i64
  %155 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  store i64 %154, i64* %155, align 8
  br label %166

156:                                              ; preds = %147
  %157 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %158 = load i8, i8* %157, align 4
  %159 = sext i8 %158 to i32
  %160 = icmp eq i32 %159, 119
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i8*, i8** @I2C_MODE_NONE, align 8
  %163 = ptrtoint i8* %162 to i64
  %164 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  store i64 %163, i64* %164, align 8
  br label %165

165:                                              ; preds = %161, %156
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %134
  %168 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 7
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %167
  %172 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %171
  %176 = call i32 (...) @usage()
  br label %177

177:                                              ; preds = %175, %171
  br label %226

178:                                              ; preds = %167
  %179 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 9
  %180 = load i32, i32* %179, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = call i32 (...) @usage()
  br label %188

188:                                              ; preds = %186, %182
  br label %225

189:                                              ; preds = %178
  %190 = load i32, i32* %11, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %189
  %193 = call i32 (...) @usage()
  br label %224

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %196 = load i8, i8* %195, align 4
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 114
  br i1 %198, label %204, label %199

199:                                              ; preds = %194
  %200 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %201 = load i8, i8* %200, align 4
  %202 = sext i8 %201 to i32
  %203 = icmp eq i32 %202, 119
  br i1 %203, label %204, label %223

204:                                              ; preds = %199, %194
  %205 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %222, label %212

212:                                              ; preds = %208
  %213 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 8
  br i1 %215, label %222, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = icmp eq i32 %218, 16
  br i1 %219, label %222, label %220

220:                                              ; preds = %216, %204
  %221 = call i32 (...) @usage()
  br label %222

222:                                              ; preds = %220, %216, %212, %208
  br label %223

223:                                              ; preds = %222, %199
  br label %224

224:                                              ; preds = %223, %192
  br label %225

225:                                              ; preds = %224, %188
  br label %226

226:                                              ; preds = %225, %177
  %227 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  %228 = load i32, i32* %227, align 8
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %246

230:                                              ; preds = %226
  %231 = load i32, i32* @stderr, align 4
  %232 = load i8*, i8** %8, align 8
  %233 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 11
  %234 = load i32, i32* %233, align 8
  %235 = ashr i32 %234, 1
  %236 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %237 = load i8, i8* %236, align 4
  %238 = sext i8 %237 to i32
  %239 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  %244 = load i32, i32* %243, align 4
  %245 = call i32 (i32, i8*, ...) @fprintf(i32 %231, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.5, i64 0, i64 0), i8* %232, i32 %235, i32 %238, i32 %240, i32 %242, i32 %244)
  br label %246

246:                                              ; preds = %230, %226
  %247 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 7
  %248 = load i32, i32* %247, align 4
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %259

250:                                              ; preds = %246
  %251 = load i8*, i8** %8, align 8
  %252 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 8
  %253 = load i32, i32* %252, align 8
  %254 = load i8*, i8** %9, align 8
  %255 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %6, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @scan_bus(i32 %256, i8* %251, i32 %253, i8* %254)
  %258 = call i32 @exit(i32 %257) #3
  unreachable

259:                                              ; preds = %246
  %260 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 9
  %261 = load i32, i32* %260, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %269

263:                                              ; preds = %259
  %264 = load i8*, i8** %8, align 8
  %265 = getelementptr inbounds %struct.iiccmd, %struct.iiccmd* %6, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @reset_bus(i32 %266, i8* %264)
  %268 = call i32 @exit(i32 %267) #3
  unreachable

269:                                              ; preds = %259
  %270 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  %271 = load i32, i32* %270, align 4
  %272 = call i8* @malloc(i32 %271)
  store i8* %272, i8** %10, align 8
  %273 = load i8*, i8** %10, align 8
  %274 = icmp eq i8* %273, null
  br i1 %274, label %275, label %277

275:                                              ; preds = %269
  %276 = call i32 @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  br label %277

277:                                              ; preds = %275, %269
  %278 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %279 = load i8, i8* %278, align 4
  %280 = sext i8 %279 to i32
  %281 = icmp eq i32 %280, 119
  br i1 %281, label %282, label %321

282:                                              ; preds = %277
  %283 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  %284 = load i32, i32* %283, align 8
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %295

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 6
  %288 = load i32, i32* %287, align 8
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %295, label %290

290:                                              ; preds = %286
  %291 = load i32, i32* @stderr, align 4
  %292 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  %293 = load i32, i32* %292, align 4
  %294 = call i32 (i32, i8*, ...) @fprintf(i32 %291, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0), i32 %293)
  br label %295

295:                                              ; preds = %290, %286, %282
  store i32 0, i32* %13, align 4
  br label %296

296:                                              ; preds = %317, %295
  %297 = load i32, i32* %13, align 4
  %298 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  %299 = load i32, i32* %298, align 4
  %300 = icmp slt i32 %297, %299
  br i1 %300, label %301, label %320

301:                                              ; preds = %296
  %302 = call i32 (...) @getchar()
  store i32 %302, i32* %15, align 4
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* @EOF, align 4
  %305 = icmp eq i32 %303, %304
  br i1 %305, label %306, label %310

306:                                              ; preds = %301
  %307 = load i8*, i8** %10, align 8
  %308 = call i32 @free(i8* %307)
  %309 = call i32 @err(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %310

310:                                              ; preds = %306, %301
  %311 = load i32, i32* %15, align 4
  %312 = trunc i32 %311 to i8
  %313 = load i8*, i8** %10, align 8
  %314 = load i32, i32* %13, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds i8, i8* %313, i64 %315
  store i8 %312, i8* %316, align 1
  br label %317

317:                                              ; preds = %310
  %318 = load i32, i32* %13, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %13, align 4
  br label %296

320:                                              ; preds = %296
  br label %321

321:                                              ; preds = %320, %277
  %322 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 10
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @I2C_MODE_TRANSFER, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %330

326:                                              ; preds = %321
  %327 = load i8*, i8** %8, align 8
  %328 = load i8*, i8** %10, align 8
  %329 = call i32 @i2c_rdwr_transfer(i8* %327, %struct.options* byval(%struct.options) align 8 %7, i8* %328)
  store i32 %329, i32* %11, align 4
  br label %344

330:                                              ; preds = %321
  %331 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %332 = load i8, i8* %331, align 4
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %333, 119
  br i1 %334, label %335, label %339

335:                                              ; preds = %330
  %336 = load i8*, i8** %8, align 8
  %337 = load i8*, i8** %10, align 8
  %338 = call i32 @i2c_write(i8* %336, %struct.options* byval(%struct.options) align 8 %7, i8* %337)
  store i32 %338, i32* %11, align 4
  br label %343

339:                                              ; preds = %330
  %340 = load i8*, i8** %8, align 8
  %341 = load i8*, i8** %10, align 8
  %342 = call i32 @i2c_read(i8* %340, %struct.options* byval(%struct.options) align 8 %7, i8* %341)
  store i32 %342, i32* %11, align 4
  br label %343

343:                                              ; preds = %339, %335
  br label %344

344:                                              ; preds = %343, %326
  %345 = load i32, i32* %11, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %350

347:                                              ; preds = %344
  %348 = load i8*, i8** %10, align 8
  %349 = call i32 @free(i8* %348)
  store i32 1, i32* %3, align 4
  br label %448

350:                                              ; preds = %344
  %351 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %363

354:                                              ; preds = %350
  %355 = load i32, i32* @stderr, align 4
  %356 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %357 = load i8, i8* %356, align 4
  %358 = sext i8 %357 to i32
  %359 = icmp eq i32 %358, 114
  %360 = zext i1 %359 to i64
  %361 = select i1 %359, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)
  %362 = call i32 (i32, i8*, ...) @fprintf(i32 %355, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i8* %361)
  br label %363

363:                                              ; preds = %354, %350
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %364

364:                                              ; preds = %436, %363
  %365 = load i32, i32* %13, align 4
  %366 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 5
  %367 = load i32, i32* %366, align 4
  %368 = icmp slt i32 %365, %367
  br i1 %368, label %369, label %437

369:                                              ; preds = %364
  %370 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %382, label %373

373:                                              ; preds = %369
  %374 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %375 = load i8, i8* %374, align 4
  %376 = sext i8 %375 to i32
  %377 = icmp eq i32 %376, 114
  br i1 %377, label %378, label %392

378:                                              ; preds = %373
  %379 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 6
  %380 = load i32, i32* %379, align 8
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %392, label %382

382:                                              ; preds = %378, %369
  %383 = load i32, i32* @stderr, align 4
  %384 = load i8*, i8** %10, align 8
  %385 = load i32, i32* %13, align 4
  %386 = add nsw i32 %385, 1
  store i32 %386, i32* %13, align 4
  %387 = sext i32 %385 to i64
  %388 = getelementptr inbounds i8, i8* %384, i64 %387
  %389 = load i8, i8* %388, align 1
  %390 = sext i8 %389 to i32
  %391 = call i32 (i32, i8*, ...) @fprintf(i32 %383, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0), i32 %390)
  br label %392

392:                                              ; preds = %382, %378, %373
  %393 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %394 = load i8, i8* %393, align 4
  %395 = sext i8 %394 to i32
  %396 = icmp eq i32 %395, 114
  br i1 %396, label %397, label %418

397:                                              ; preds = %392
  %398 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 6
  %399 = load i32, i32* %398, align 8
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %418

401:                                              ; preds = %397
  %402 = load i32, i32* @stdout, align 4
  %403 = load i8*, i8** %10, align 8
  %404 = load i32, i32* %14, align 4
  %405 = add nsw i32 %404, 1
  store i32 %405, i32* %14, align 4
  %406 = sext i32 %404 to i64
  %407 = getelementptr inbounds i8, i8* %403, i64 %406
  %408 = load i8, i8* %407, align 1
  %409 = sext i8 %408 to i32
  %410 = call i32 (i32, i8*, ...) @fprintf(i32 %402, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i32 %409)
  %411 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  %412 = load i32, i32* %411, align 8
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %417, label %414

414:                                              ; preds = %401
  %415 = load i32, i32* %13, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %13, align 4
  br label %417

417:                                              ; preds = %414, %401
  br label %418

418:                                              ; preds = %417, %397, %392
  %419 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %428, label %422

422:                                              ; preds = %418
  %423 = getelementptr inbounds %struct.options, %struct.options* %7, i32 0, i32 3
  %424 = load i8, i8* %423, align 4
  %425 = sext i8 %424 to i32
  %426 = icmp eq i32 %425, 119
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  br label %437

428:                                              ; preds = %422, %418
  %429 = load i32, i32* %13, align 4
  %430 = load i32, i32* %12, align 4
  %431 = srem i32 %429, %430
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %436

433:                                              ; preds = %428
  %434 = load i32, i32* @stderr, align 4
  %435 = call i32 (i32, i8*, ...) @fprintf(i32 %434, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %436

436:                                              ; preds = %433, %428
  br label %364

437:                                              ; preds = %427, %364
  %438 = load i32, i32* %13, align 4
  %439 = load i32, i32* %12, align 4
  %440 = srem i32 %438, %439
  %441 = icmp ne i32 %440, 0
  br i1 %441, label %442, label %445

442:                                              ; preds = %437
  %443 = load i32, i32* @stderr, align 4
  %444 = call i32 (i32, i8*, ...) @fprintf(i32 %443, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  br label %445

445:                                              ; preds = %442, %437
  %446 = load i8*, i8** %10, align 8
  %447 = call i32 @free(i8* %446)
  store i32 0, i32* %3, align 4
  br label %448

448:                                              ; preds = %445, %347
  %449 = load i32, i32* %3, align 4
  ret i32 %449
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @strtoul(i8*, i32, i32) #1

declare dso_local i8* @atoi(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @scan_bus(i32, i8*, i32, i8*) #1

declare dso_local i32 @reset_bus(i32, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @getchar(...) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @i2c_rdwr_transfer(i8*, %struct.options* byval(%struct.options) align 8, i8*) #1

declare dso_local i32 @i2c_write(i8*, %struct.options* byval(%struct.options) align 8, i8*) #1

declare dso_local i32 @i2c_read(i8*, %struct.options* byval(%struct.options) align 8, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
