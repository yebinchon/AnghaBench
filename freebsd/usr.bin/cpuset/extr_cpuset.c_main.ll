; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/cpuset/extr_cpuset.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DOMAINSET_POLICY_INVALID = common dso_local global i32 0, align 4
@CPU_LEVEL_WHICH = common dso_local global i32 0, align 4
@level = common dso_local global i32 0, align 4
@CPU_WHICH_PID = common dso_local global i32 0, align 4
@which = common dso_local global i32 0, align 4
@id = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Ccd:gij:l:n:p:rs:t:x:\00", align 1
@Cflag = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@CPU_LEVEL_CPUSET = common dso_local global i32 0, align 4
@dflag = common dso_local global i32 0, align 4
@CPU_WHICH_DOMAIN = common dso_local global i32 0, align 4
@optarg = common dso_local global i32 0, align 4
@gflag = common dso_local global i32 0, align 4
@iflag = common dso_local global i32 0, align 4
@jflag = common dso_local global i32 0, align 4
@CPU_WHICH_JAIL = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@jail_errmsg = common dso_local global i32 0, align 4
@lflag = common dso_local global i32 0, align 4
@nflag = common dso_local global i32 0, align 4
@pflag = common dso_local global i32 0, align 4
@CPU_LEVEL_ROOT = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i32 0, align 4
@CPU_WHICH_CPUSET = common dso_local global i32 0, align 4
@tflag = common dso_local global i32 0, align 4
@CPU_WHICH_TID = common dso_local global i32 0, align 4
@xflag = common dso_local global i32 0, align 4
@CPU_WHICH_IRQ = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@EXIT_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"setid\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"newid\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"setaffinity\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"setdomain\00", align 1
@errno = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i64 0, align 8

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = call i32 @CPU_ZERO(i32* %8)
  %14 = call i32 @DOMAINSET_ZERO(i32* %6)
  %15 = load i32, i32* @DOMAINSET_POLICY_INVALID, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* @CPU_LEVEL_WHICH, align 4
  store i32 %16, i32* @level, align 4
  %17 = load i32, i32* @CPU_WHICH_PID, align 4
  store i32 %17, i32* @which, align 4
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 -1, i32* @id, align 4
  br label %18

18:                                               ; preds = %76, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = call i32 @getopt(i32 %19, i8** %20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 %21, i32* %12, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %77

23:                                               ; preds = %18
  %24 = load i32, i32* %12, align 4
  switch i32 %24, label %74 [
    i32 67, label %25
    i32 99, label %26
    i32 100, label %28
    i32 103, label %33
    i32 105, label %34
    i32 106, label %35
    i32 108, label %46
    i32 110, label %49
    i32 112, label %52
    i32 114, label %57
    i32 115, label %59
    i32 116, label %64
    i32 120, label %69
  ]

25:                                               ; preds = %23
  store i32 1, i32* @Cflag, align 4
  br label %76

26:                                               ; preds = %23
  store i32 1, i32* @cflag, align 4
  %27 = load i32, i32* @CPU_LEVEL_CPUSET, align 4
  store i32 %27, i32* @level, align 4
  br label %76

28:                                               ; preds = %23
  store i32 1, i32* @dflag, align 4
  %29 = load i32, i32* @CPU_WHICH_DOMAIN, align 4
  store i32 %29, i32* @which, align 4
  %30 = load i32, i32* @optarg, align 4
  %31 = call i8* @atoi(i32 %30)
  %32 = ptrtoint i8* %31 to i32
  store i32 %32, i32* @id, align 4
  br label %76

33:                                               ; preds = %23
  store i32 1, i32* @gflag, align 4
  br label %76

34:                                               ; preds = %23
  store i32 1, i32* @iflag, align 4
  br label %76

35:                                               ; preds = %23
  store i32 1, i32* @jflag, align 4
  %36 = load i32, i32* @CPU_WHICH_JAIL, align 4
  store i32 %36, i32* @which, align 4
  %37 = load i32, i32* @optarg, align 4
  %38 = call i32 @jail_getid(i32 %37)
  store i32 %38, i32* @id, align 4
  %39 = load i32, i32* @id, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load i32, i32* @EXIT_FAILURE, align 4
  %43 = load i32, i32* @jail_errmsg, align 4
  %44 = call i32 @errx(i32 %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %41, %35
  br label %76

46:                                               ; preds = %23
  store i32 1, i32* @lflag, align 4
  %47 = load i32, i32* @optarg, align 4
  %48 = call i32 @parsecpulist(i32 %47, i32* %8)
  br label %76

49:                                               ; preds = %23
  store i32 1, i32* @nflag, align 4
  %50 = load i32, i32* @optarg, align 4
  %51 = call i32 @parsedomainlist(i32 %50, i32* %6, i32* %9)
  br label %76

52:                                               ; preds = %23
  store i32 1, i32* @pflag, align 4
  %53 = load i32, i32* @CPU_WHICH_PID, align 4
  store i32 %53, i32* @which, align 4
  %54 = load i32, i32* @optarg, align 4
  %55 = call i8* @atoi(i32 %54)
  %56 = ptrtoint i8* %55 to i32
  store i32 %56, i32* %11, align 4
  store i32 %56, i32* @id, align 4
  br label %76

57:                                               ; preds = %23
  %58 = load i32, i32* @CPU_LEVEL_ROOT, align 4
  store i32 %58, i32* @level, align 4
  store i32 1, i32* @rflag, align 4
  br label %76

59:                                               ; preds = %23
  store i32 1, i32* @sflag, align 4
  %60 = load i32, i32* @CPU_WHICH_CPUSET, align 4
  store i32 %60, i32* @which, align 4
  %61 = load i32, i32* @optarg, align 4
  %62 = call i8* @atoi(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  store i32 %63, i32* %7, align 4
  store i32 %63, i32* @id, align 4
  br label %76

64:                                               ; preds = %23
  store i32 1, i32* @tflag, align 4
  %65 = load i32, i32* @CPU_WHICH_TID, align 4
  store i32 %65, i32* @which, align 4
  %66 = load i32, i32* @optarg, align 4
  %67 = call i8* @atoi(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  store i32 %68, i32* %10, align 4
  store i32 %68, i32* @id, align 4
  br label %76

69:                                               ; preds = %23
  store i32 1, i32* @xflag, align 4
  %70 = load i32, i32* @CPU_WHICH_IRQ, align 4
  store i32 %70, i32* @which, align 4
  %71 = load i32, i32* @optarg, align 4
  %72 = call i8* @atoi(i32 %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* @id, align 4
  br label %76

74:                                               ; preds = %23
  %75 = call i32 (...) @usage()
  br label %76

76:                                               ; preds = %74, %69, %64, %59, %57, %52, %49, %46, %45, %34, %33, %28, %26, %25
  br label %18

77:                                               ; preds = %18
  %78 = load i64, i64* @optind, align 8
  %79 = load i32, i32* %4, align 4
  %80 = sext i32 %79 to i64
  %81 = sub nsw i64 %80, %78
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %4, align 4
  %83 = load i64, i64* @optind, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i64 %83
  store i8** %85, i8*** %5, align 8
  %86 = load i32, i32* @gflag, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %127

88:                                               ; preds = %77
  %89 = load i32, i32* %4, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %100, label %91

91:                                               ; preds = %88
  %92 = load i32, i32* @Cflag, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = load i32, i32* @lflag, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* @nflag, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97, %94, %91, %88
  %101 = call i32 (...) @usage()
  br label %102

102:                                              ; preds = %100, %97
  %103 = load i32, i32* @dflag, align 4
  %104 = load i32, i32* @jflag, align 4
  %105 = add nsw i32 %103, %104
  %106 = load i32, i32* @xflag, align 4
  %107 = add nsw i32 %105, %106
  %108 = load i32, i32* @sflag, align 4
  %109 = add nsw i32 %107, %108
  %110 = load i32, i32* @pflag, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* @tflag, align 4
  %113 = add nsw i32 %111, %112
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %117

115:                                              ; preds = %102
  %116 = call i32 (...) @usage()
  br label %117

117:                                              ; preds = %115, %102
  %118 = load i32, i32* @iflag, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 (...) @printsetid()
  br label %124

122:                                              ; preds = %117
  %123 = call i32 (...) @printaffinity()
  br label %124

124:                                              ; preds = %122, %120
  %125 = load i32, i32* @EXIT_SUCCESS, align 4
  %126 = call i32 @exit(i32 %125) #3
  unreachable

127:                                              ; preds = %77
  %128 = load i32, i32* @dflag, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %136, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @iflag, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %130
  %134 = load i32, i32* @rflag, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133, %130, %127
  %137 = call i32 (...) @usage()
  br label %138

138:                                              ; preds = %136, %133
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %215

141:                                              ; preds = %138
  %142 = load i32, i32* @Cflag, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %156, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* @pflag, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %156, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @tflag, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* @xflag, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %156, label %153

153:                                              ; preds = %150
  %154 = load i32, i32* @jflag, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %153, %150, %147, %144, %141
  %157 = call i32 (...) @usage()
  br label %158

158:                                              ; preds = %156, %153
  %159 = load i32, i32* @sflag, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %170

161:                                              ; preds = %158
  %162 = load i32, i32* @CPU_WHICH_PID, align 4
  %163 = load i32, i32* %7, align 4
  %164 = call i64 @cpuset_setid(i32 %162, i32 -1, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %161
  %167 = load i32, i32* %4, align 4
  %168 = call i32 (i32, i8*, ...) @err(i32 %167, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %169

169:                                              ; preds = %166, %161
  br label %177

170:                                              ; preds = %158
  %171 = call i64 @cpuset(i32* %7)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load i32, i32* %4, align 4
  %175 = call i32 (i32, i8*, ...) @err(i32 %174, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %176

176:                                              ; preds = %173, %170
  br label %177

177:                                              ; preds = %176, %169
  %178 = load i32, i32* @lflag, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %189

180:                                              ; preds = %177
  %181 = load i32, i32* @level, align 4
  %182 = load i32, i32* @CPU_WHICH_PID, align 4
  %183 = call i64 @cpuset_setaffinity(i32 %181, i32 %182, i32 -1, i32 4, i32* %8)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %180
  %186 = load i32, i32* @EXIT_FAILURE, align 4
  %187 = call i32 (i32, i8*, ...) @err(i32 %186, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %188

188:                                              ; preds = %185, %180
  br label %189

189:                                              ; preds = %188, %177
  %190 = load i32, i32* @nflag, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %189
  %193 = load i32, i32* @level, align 4
  %194 = load i32, i32* @CPU_WHICH_PID, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i64 @cpuset_setdomain(i32 %193, i32 %194, i32 -1, i32 4, i32* %6, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %192
  %199 = load i32, i32* @EXIT_FAILURE, align 4
  %200 = call i32 (i32, i8*, ...) @err(i32 %199, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %201

201:                                              ; preds = %198, %192
  br label %202

202:                                              ; preds = %201, %189
  store i64 0, i64* @errno, align 8
  %203 = load i8**, i8*** %5, align 8
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** %5, align 8
  %206 = call i32 @execvp(i8* %204, i8** %205)
  %207 = load i64, i64* @errno, align 8
  %208 = load i64, i64* @ENOENT, align 8
  %209 = icmp eq i64 %207, %208
  %210 = zext i1 %209 to i64
  %211 = select i1 %209, i32 127, i32 126
  %212 = load i8**, i8*** %5, align 8
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 (i32, i8*, ...) @err(i32 %211, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %213)
  br label %215

215:                                              ; preds = %202, %138
  %216 = load i32, i32* @Cflag, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %235

218:                                              ; preds = %215
  %219 = load i32, i32* @jflag, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %233, label %221

221:                                              ; preds = %218
  %222 = load i32, i32* @pflag, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %221
  %225 = load i32, i32* @sflag, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %233, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* @tflag, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %233, label %230

230:                                              ; preds = %227
  %231 = load i32, i32* @xflag, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %230, %227, %224, %221, %218
  %234 = call i32 (...) @usage()
  br label %235

235:                                              ; preds = %233, %230, %215
  %236 = load i32, i32* @lflag, align 4
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %246, label %238

238:                                              ; preds = %235
  %239 = load i32, i32* @nflag, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %246, label %241

241:                                              ; preds = %238
  %242 = load i32, i32* @cflag, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %246

244:                                              ; preds = %241
  %245 = call i32 (...) @usage()
  br label %246

246:                                              ; preds = %244, %241, %238, %235
  %247 = load i32, i32* @lflag, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %260, label %249

249:                                              ; preds = %246
  %250 = load i32, i32* @nflag, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %260, label %252

252:                                              ; preds = %249
  %253 = load i32, i32* @Cflag, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %260, label %255

255:                                              ; preds = %252
  %256 = load i32, i32* @sflag, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %255
  %259 = call i32 (...) @usage()
  br label %260

260:                                              ; preds = %258, %255, %252, %249, %246
  %261 = load i32, i32* @tflag, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %274

263:                                              ; preds = %260
  %264 = load i32, i32* @sflag, align 4
  %265 = load i32, i32* @pflag, align 4
  %266 = or i32 %264, %265
  %267 = load i32, i32* @xflag, align 4
  %268 = or i32 %266, %267
  %269 = load i32, i32* @jflag, align 4
  %270 = or i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %274

272:                                              ; preds = %263
  %273 = call i32 (...) @usage()
  br label %274

274:                                              ; preds = %272, %263, %260
  %275 = load i32, i32* @xflag, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %274
  %278 = load i32, i32* @jflag, align 4
  %279 = load i32, i32* @pflag, align 4
  %280 = or i32 %278, %279
  %281 = load i32, i32* @sflag, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @tflag, align 4
  %284 = or i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %288

286:                                              ; preds = %277
  %287 = call i32 (...) @usage()
  br label %288

288:                                              ; preds = %286, %277, %274
  %289 = load i32, i32* @Cflag, align 4
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %288
  %292 = call i64 @cpuset(i32* %7)
  %293 = icmp slt i64 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* @EXIT_FAILURE, align 4
  %296 = call i32 (i32, i8*, ...) @err(i32 %295, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %297

297:                                              ; preds = %294, %291
  store i32 1, i32* @sflag, align 4
  br label %298

298:                                              ; preds = %297, %288
  %299 = load i32, i32* @pflag, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %316

301:                                              ; preds = %298
  %302 = load i32, i32* @sflag, align 4
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %316

304:                                              ; preds = %301
  %305 = load i32, i32* @CPU_WHICH_PID, align 4
  %306 = load i32, i32* %11, align 4
  %307 = load i32, i32* %7, align 4
  %308 = call i64 @cpuset_setid(i32 %305, i32 %306, i32 %307)
  %309 = icmp ne i64 %308, 0
  br i1 %309, label %310, label %313

310:                                              ; preds = %304
  %311 = load i32, i32* @EXIT_FAILURE, align 4
  %312 = call i32 (i32, i8*, ...) @err(i32 %311, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %313

313:                                              ; preds = %310, %304
  %314 = load i32, i32* @CPU_WHICH_PID, align 4
  store i32 %314, i32* @which, align 4
  %315 = load i32, i32* %11, align 4
  store i32 %315, i32* @id, align 4
  br label %316

316:                                              ; preds = %313, %301, %298
  %317 = load i32, i32* @lflag, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %329

319:                                              ; preds = %316
  %320 = load i32, i32* @level, align 4
  %321 = load i32, i32* @which, align 4
  %322 = load i32, i32* @id, align 4
  %323 = call i64 @cpuset_setaffinity(i32 %320, i32 %321, i32 %322, i32 4, i32* %8)
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %328

325:                                              ; preds = %319
  %326 = load i32, i32* @EXIT_FAILURE, align 4
  %327 = call i32 (i32, i8*, ...) @err(i32 %326, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %328

328:                                              ; preds = %325, %319
  br label %329

329:                                              ; preds = %328, %316
  %330 = load i32, i32* @nflag, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %343

332:                                              ; preds = %329
  %333 = load i32, i32* @level, align 4
  %334 = load i32, i32* @which, align 4
  %335 = load i32, i32* @id, align 4
  %336 = load i32, i32* %9, align 4
  %337 = call i64 @cpuset_setdomain(i32 %333, i32 %334, i32 %335, i32 4, i32* %6, i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %332
  %340 = load i32, i32* @EXIT_FAILURE, align 4
  %341 = call i32 (i32, i8*, ...) @err(i32 %340, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %342

342:                                              ; preds = %339, %332
  br label %343

343:                                              ; preds = %342, %329
  %344 = load i32, i32* @EXIT_SUCCESS, align 4
  %345 = call i32 @exit(i32 %344) #3
  unreachable
}

declare dso_local i32 @CPU_ZERO(i32*) #1

declare dso_local i32 @DOMAINSET_ZERO(i32*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i8* @atoi(i32) #1

declare dso_local i32 @jail_getid(i32) #1

declare dso_local i32 @errx(i32, i8*, i32) #1

declare dso_local i32 @parsecpulist(i32, i32*) #1

declare dso_local i32 @parsedomainlist(i32, i32*, i32*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @printsetid(...) #1

declare dso_local i32 @printaffinity(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @cpuset_setid(i32, i32, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @cpuset(i32*) #1

declare dso_local i64 @cpuset_setaffinity(i32, i32, i32, i32, i32*) #1

declare dso_local i64 @cpuset_setdomain(i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @execvp(i8*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
