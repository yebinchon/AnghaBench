; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fdwrite/extr_fdwrite.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fdwrite/extr_fdwrite.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fd_type = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"/dev/fd0\00", align 1
@stdout = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"d:f:vy\00", align 1
@optarg = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@optind = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [3 x i8] c"r+\00", align 1
@.str.4 = private unnamed_addr constant [56 x i8] c"Please insert floppy #%d in drive %s and press return >\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@FD_GTYPE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"not a floppy disk: %s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.7 = private unnamed_addr constant [61 x i8] c"Format: %d cylinders, %d heads, %d sectors, %d bytes = %dkb\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"\0D%3d \00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"compare\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"%d bytes on %d flopp%s\0A\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ies\00", align 1

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
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.fd_type, align 4
  %21 = alloca i32*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 -1, i32* %6, align 4
  store i32 0, i32* %8, align 4
  store i32 1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* %16, align 4
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %22 = load i32*, i32** @stdout, align 8
  %23 = call i32 @setbuf(i32* %22, i32 0)
  br label %24

24:                                               ; preds = %58, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = call i32 @getopt(i32 %25, i8** %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store i32 %27, i32* %7, align 4
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %59

29:                                               ; preds = %24
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %56 [
    i32 100, label %31
    i32 102, label %33
    i32 118, label %49
    i32 121, label %54
    i32 63, label %55
  ]

31:                                               ; preds = %29
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** %17, align 8
  br label %58

33:                                               ; preds = %29
  %34 = load i32, i32* %6, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @close(i32 %37)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i8*, i8** @optarg, align 8
  %41 = load i32, i32* @O_RDONLY, align 4
  %42 = call i32 @open(i8* %40, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %45, %39
  br label %58

49:                                               ; preds = %29
  %50 = load i32, i32* %13, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  store i32 %53, i32* %13, align 4
  br label %58

54:                                               ; preds = %29
  store i32 0, i32* %16, align 4
  br label %58

55:                                               ; preds = %29
  br label %56

56:                                               ; preds = %29, %55
  %57 = call i32 (...) @usage()
  br label %58

58:                                               ; preds = %56, %54, %49, %48, %31
  br label %24

59:                                               ; preds = %24
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %62, %59
  %64 = call i32 @isatty(i32 1)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %16, align 4
  br label %67

67:                                               ; preds = %66, %63
  %68 = load i32, i32* @optind, align 4
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = call i32 (...) @usage()
  br label %73

73:                                               ; preds = %71, %67
  %74 = load i8*, i8** @_PATH_TTY, align 8
  %75 = call i32* @fopen(i8* %74, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  store i32* %75, i32** %21, align 8
  %76 = load i32*, i32** %21, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %73
  %79 = load i8*, i8** @_PATH_TTY, align 8
  %80 = call i32 (i32, i8*, ...) @err(i32 1, i8* %79)
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32*, i32** %21, align 8
  %83 = call i32 @setbuf(i32* %82, i32 0)
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %375, %81
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 0
  br i1 %86, label %87, label %380

87:                                               ; preds = %84
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  %90 = load i32, i32* %16, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %87
  %93 = load i32*, i32** %21, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i8*, i8** %17, align 8
  %96 = call i32 @fprintf(i32* %93, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.4, i64 0, i64 0), i32 %94, i8* %95)
  br label %97

97:                                               ; preds = %92, %103
  %98 = load i32*, i32** %21, align 8
  %99 = call i32 @getc(i32* %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = icmp eq i32 %100, 10
  br i1 %101, label %102, label %103

102:                                              ; preds = %97
  br label %104

103:                                              ; preds = %97
  br label %97

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104, %87
  %106 = load i8*, i8** %17, align 8
  %107 = load i32, i32* @O_RDWR, align 4
  %108 = call i32 @open(i8* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load i8*, i8** %17, align 8
  %112 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* @FD_GTYPE, align 4
  %116 = call i64 @ioctl(i32 %114, i32 %115, %struct.fd_type* %20)
  %117 = icmp slt i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %113
  %119 = load i8*, i8** %17, align 8
  %120 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %119)
  br label %121

121:                                              ; preds = %118, %113
  %122 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 1, %125
  %127 = mul nsw i32 %123, %126
  %128 = mul nsw i32 %127, 128
  store i32 %128, i32* %12, align 4
  %129 = load i8*, i8** %18, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %139, label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %12, align 4
  %133 = call i8* @malloc(i32 %132)
  store i8* %133, i8** %18, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  br label %139

139:                                              ; preds = %138, %121
  %140 = load i8*, i8** %19, align 8
  %141 = icmp ne i8* %140, null
  br i1 %141, label %150, label %142

142:                                              ; preds = %139
  %143 = load i32, i32* %12, align 4
  %144 = call i8* @malloc(i32 %143)
  store i8* %144, i8** %19, align 8
  %145 = load i8*, i8** %19, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %142
  br label %150

150:                                              ; preds = %149, %139
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %212

153:                                              ; preds = %150
  %154 = load i32, i32* %13, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %176

156:                                              ; preds = %153
  %157 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = shl i32 1, %164
  %166 = mul nsw i32 %165, 128
  %167 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* %12, align 4
  %170 = mul nsw i32 %168, %169
  %171 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %170, %172
  %174 = sdiv i32 %173, 1024
  %175 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.7, i64 0, i64 0), i32 %158, i32 %160, i32 %162, i32 %166, i32 %174)
  br label %176

176:                                              ; preds = %156, %153
  %177 = load i8*, i8** %18, align 8
  %178 = load i32, i32* %12, align 4
  %179 = call i32 @memset(i8* %177, i32 0, i32 %178)
  store i32 0, i32* %10, align 4
  br label %180

180:                                              ; preds = %207, %176
  %181 = load i32, i32* %6, align 4
  %182 = icmp sge i32 %181, 0
  br i1 %182, label %183, label %187

183:                                              ; preds = %180
  %184 = load i32, i32* %10, align 4
  %185 = load i32, i32* %12, align 4
  %186 = icmp slt i32 %184, %185
  br label %187

187:                                              ; preds = %183, %180
  %188 = phi i1 [ false, %180 ], [ %186, %183 ]
  br i1 %188, label %189, label %211

189:                                              ; preds = %187
  %190 = load i32, i32* %6, align 4
  %191 = load i8*, i8** %18, align 8
  %192 = load i32, i32* %10, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %10, align 4
  %197 = sub nsw i32 %195, %196
  %198 = call i32 @read(i32 %190, i8* %194, i32 %197)
  store i32 %198, i32* %9, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %203, label %200

200:                                              ; preds = %189
  %201 = load i32, i32* %6, align 4
  %202 = call i32 @close(i32 %201)
  store i32 -1, i32* %6, align 4
  br label %211

203:                                              ; preds = %189
  %204 = load i32, i32* %9, align 4
  %205 = load i32, i32* %14, align 4
  %206 = add nsw i32 %205, %204
  store i32 %206, i32* %14, align 4
  br label %207

207:                                              ; preds = %203
  %208 = load i32, i32* %9, align 4
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, %208
  store i32 %210, i32* %10, align 4
  br label %180

211:                                              ; preds = %200, %187
  br label %212

212:                                              ; preds = %211, %150
  store i32 0, i32* %15, align 4
  br label %213

213:                                              ; preds = %372, %212
  %214 = load i32, i32* %15, align 4
  %215 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 2
  %216 = load i32, i32* %215, align 4
  %217 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 3
  %218 = load i32, i32* %217, align 4
  %219 = mul nsw i32 %216, %218
  %220 = icmp slt i32 %214, %219
  br i1 %220, label %221, label %375

221:                                              ; preds = %213
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %233

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 2
  %226 = load i32, i32* %225, align 4
  %227 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = mul nsw i32 %226, %228
  %230 = load i32, i32* %15, align 4
  %231 = sub nsw i32 %229, %230
  %232 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %224, %221
  %234 = load i32, i32* %13, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %233
  %237 = load i32, i32* %10, align 4
  %238 = icmp ne i32 %237, 0
  %239 = zext i1 %238 to i64
  %240 = select i1 %238, i32 73, i32 90
  %241 = trunc i32 %240 to i8
  %242 = load i32*, i32** @stdout, align 8
  %243 = call i32 @putc(i8 signext %241, i32* %242)
  br label %244

244:                                              ; preds = %236, %233
  %245 = load i32, i32* %11, align 4
  %246 = load i32, i32* %15, align 4
  %247 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = sdiv i32 %246, %248
  %250 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %15, align 4
  %253 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 3
  %254 = load i32, i32* %253, align 4
  %255 = srem i32 %252, %254
  %256 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 6
  %257 = load i32, i32* %256, align 4
  %258 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 5
  %259 = load i32, i32* %258, align 4
  %260 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = getelementptr inbounds %struct.fd_type, %struct.fd_type* %20, i32 0, i32 4
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @format_track(i32 %245, i32 %249, i32 %251, i32 %255, i32 %257, i32 %259, i32 %261, i32 230, i32 %263)
  %265 = load i32, i32* %13, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %270

267:                                              ; preds = %244
  %268 = load i32*, i32** @stdout, align 8
  %269 = call i32 @putc(i8 signext 70, i32* %268)
  br label %270

270:                                              ; preds = %267, %244
  %271 = load i32, i32* %11, align 4
  %272 = load i32, i32* %15, align 4
  %273 = sext i32 %272 to i64
  %274 = load i32, i32* %12, align 4
  %275 = sext i32 %274 to i64
  %276 = mul nsw i64 %273, %275
  %277 = call i64 @lseek(i32 %271, i64 %276, i32 0)
  %278 = icmp slt i64 %277, 0
  br i1 %278, label %279, label %281

279:                                              ; preds = %270
  %280 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %281

281:                                              ; preds = %279, %270
  %282 = load i32, i32* %11, align 4
  %283 = load i8*, i8** %18, align 8
  %284 = load i32, i32* %12, align 4
  %285 = call i32 @write(i32 %282, i8* %283, i32 %284)
  %286 = load i32, i32* %12, align 4
  %287 = icmp ne i32 %285, %286
  br i1 %287, label %288, label %290

288:                                              ; preds = %281
  %289 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0))
  br label %290

290:                                              ; preds = %288, %281
  %291 = load i32, i32* %13, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %290
  %294 = load i32*, i32** @stdout, align 8
  %295 = call i32 @putc(i8 signext 87, i32* %294)
  br label %296

296:                                              ; preds = %293, %290
  %297 = load i32, i32* %11, align 4
  %298 = load i32, i32* %15, align 4
  %299 = sext i32 %298 to i64
  %300 = load i32, i32* %12, align 4
  %301 = sext i32 %300 to i64
  %302 = mul nsw i64 %299, %301
  %303 = call i64 @lseek(i32 %297, i64 %302, i32 0)
  %304 = icmp slt i64 %303, 0
  br i1 %304, label %305, label %307

305:                                              ; preds = %296
  %306 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %307

307:                                              ; preds = %305, %296
  %308 = load i32, i32* %11, align 4
  %309 = load i8*, i8** %19, align 8
  %310 = load i32, i32* %12, align 4
  %311 = call i32 @read(i32 %308, i8* %309, i32 %310)
  %312 = load i32, i32* %12, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %314, label %316

314:                                              ; preds = %307
  %315 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  br label %316

316:                                              ; preds = %314, %307
  %317 = load i32, i32* %13, align 4
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i32*, i32** @stdout, align 8
  %321 = call i32 @putc(i8 signext 82, i32* %320)
  br label %322

322:                                              ; preds = %319, %316
  %323 = load i8*, i8** %18, align 8
  %324 = load i8*, i8** %19, align 8
  %325 = load i32, i32* %12, align 4
  %326 = call i64 @memcmp(i8* %323, i8* %324, i32 %325)
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %330

328:                                              ; preds = %322
  %329 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.12, i64 0, i64 0))
  br label %330

330:                                              ; preds = %328, %322
  %331 = load i32, i32* %13, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %336

333:                                              ; preds = %330
  %334 = load i32*, i32** @stdout, align 8
  %335 = call i32 @putc(i8 signext 67, i32* %334)
  br label %336

336:                                              ; preds = %333, %330
  %337 = load i8*, i8** %18, align 8
  %338 = load i32, i32* %12, align 4
  %339 = call i32 @memset(i8* %337, i32 0, i32 %338)
  store i32 0, i32* %10, align 4
  br label %340

340:                                              ; preds = %367, %336
  %341 = load i32, i32* %6, align 4
  %342 = icmp sge i32 %341, 0
  br i1 %342, label %343, label %347

343:                                              ; preds = %340
  %344 = load i32, i32* %10, align 4
  %345 = load i32, i32* %12, align 4
  %346 = icmp slt i32 %344, %345
  br label %347

347:                                              ; preds = %343, %340
  %348 = phi i1 [ false, %340 ], [ %346, %343 ]
  br i1 %348, label %349, label %371

349:                                              ; preds = %347
  %350 = load i32, i32* %6, align 4
  %351 = load i8*, i8** %18, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %351, i64 %353
  %355 = load i32, i32* %12, align 4
  %356 = load i32, i32* %10, align 4
  %357 = sub nsw i32 %355, %356
  %358 = call i32 @read(i32 %350, i8* %354, i32 %357)
  store i32 %358, i32* %9, align 4
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %349
  %361 = load i32, i32* %6, align 4
  %362 = call i32 @close(i32 %361)
  store i32 -1, i32* %6, align 4
  br label %371

363:                                              ; preds = %349
  %364 = load i32, i32* %9, align 4
  %365 = load i32, i32* %14, align 4
  %366 = add nsw i32 %365, %364
  store i32 %366, i32* %14, align 4
  br label %367

367:                                              ; preds = %363
  %368 = load i32, i32* %9, align 4
  %369 = load i32, i32* %10, align 4
  %370 = add nsw i32 %369, %368
  store i32 %370, i32* %10, align 4
  br label %340

371:                                              ; preds = %360, %347
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %15, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %15, align 4
  br label %213

375:                                              ; preds = %213
  %376 = load i32, i32* %11, align 4
  %377 = call i32 @close(i32 %376)
  %378 = load i32*, i32** @stdout, align 8
  %379 = call i32 @putc(i8 signext 13, i32* %378)
  br label %84

380:                                              ; preds = %84
  %381 = load i32, i32* %13, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %391

383:                                              ; preds = %380
  %384 = load i32, i32* %14, align 4
  %385 = load i32, i32* %8, align 4
  %386 = load i32, i32* %8, align 4
  %387 = icmp eq i32 %386, 1
  %388 = zext i1 %387 to i64
  %389 = select i1 %387, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0)
  %390 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %384, i32 %385, i8* %389)
  br label %391

391:                                              ; preds = %383, %380
  %392 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setbuf(i32*, i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @getc(i32*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.fd_type*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @putc(i8 signext, i32*) #1

declare dso_local i32 @format_track(i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @lseek(i32, i64, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

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
