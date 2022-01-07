; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/smbmsg/extr_smbmsg.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/smbmsg/extr_smbmsg.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"F:c:f:i:o:ps:w\00", align 1
@optarg = common dso_local global i8* null, align 8
@fmt = common dso_local global i8* null, align 8
@cflag = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Invalid number: %s\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"CMD out of range: %d\00", align 1
@dev = common dso_local global i8* null, align 8
@iflag = common dso_local global i32 0, align 4
@SMB_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"# input bytes out of range: %d\00", align 1
@oflag = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"# output bytes out of range: %d\00", align 1
@pflag = common dso_local global i32 0, align 4
@slave = common dso_local global i32 0, align 4
@MIN_I2C_ADDR = common dso_local global i32 0, align 4
@MAX_I2C_ADDR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [31 x i8] c"Slave address out of range: %d\00", align 1
@wflag = common dso_local global i64 0, align 8
@optind = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [31 x i8] c"Illegal # IO bytes for word IO\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"Nothing to do\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"Too few arguments for -o count\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Value out of range: %d\00", align 1
@oword = common dso_local global i32 0, align 4
@obuf = common dso_local global i32* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@fd = common dso_local global i32 0, align 4
@EX_UNAVAILABLE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [15 x i8] c"Cannot open %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [26 x i8] c"Error performing SMBus IO\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"Invalid option combination\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %106, %2
  %11 = load i32, i32* %4, align 4
  %12 = load i8**, i8*** %5, align 8
  %13 = call i32 @getopt(i32 %11, i8** %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  store i32 %13, i32* %6, align 4
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %107

15:                                               ; preds = %10
  %16 = load i32, i32* %6, align 4
  switch i32 %16, label %103 [
    i32 70, label %17
    i32 99, label %19
    i32 102, label %38
    i32 105, label %40
    i32 111, label %60
    i32 112, label %80
    i32 115, label %81
    i32 119, label %102
  ]

17:                                               ; preds = %15
  %18 = load i8*, i8** @optarg, align 8
  store i8* %18, i8** @fmt, align 8
  br label %106

19:                                               ; preds = %15
  %20 = load i8*, i8** @optarg, align 8
  %21 = call i32 @getnum(i8* %20)
  store i32 %21, i32* @cflag, align 4
  %22 = icmp eq i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load i32, i32* @EX_USAGE, align 4
  %25 = load i8*, i8** @optarg, align 8
  %26 = call i32 (i32, i8*, ...) @errx(i32 %24, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load i32, i32* @cflag, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @cflag, align 4
  %32 = icmp sge i32 %31, 256
  br i1 %32, label %33, label %37

33:                                               ; preds = %30, %27
  %34 = load i32, i32* @EX_USAGE, align 4
  %35 = load i32, i32* @cflag, align 4
  %36 = call i32 (i32, i8*, ...) @errx(i32 %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %30
  br label %106

38:                                               ; preds = %15
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** @dev, align 8
  br label %106

40:                                               ; preds = %15
  %41 = load i8*, i8** @optarg, align 8
  %42 = call i32 @getnum(i8* %41)
  store i32 %42, i32* @iflag, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @EX_USAGE, align 4
  %46 = load i8*, i8** @optarg, align 8
  %47 = call i32 (i32, i8*, ...) @errx(i32 %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %46)
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i32, i32* @iflag, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @iflag, align 4
  %53 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51, %48
  %56 = load i32, i32* @EX_USAGE, align 4
  %57 = load i32, i32* @iflag, align 4
  %58 = call i32 (i32, i8*, ...) @errx(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %55, %51
  br label %106

60:                                               ; preds = %15
  %61 = load i8*, i8** @optarg, align 8
  %62 = call i32 @getnum(i8* %61)
  store i32 %62, i32* @oflag, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load i32, i32* @EX_USAGE, align 4
  %66 = load i8*, i8** @optarg, align 8
  %67 = call i32 (i32, i8*, ...) @errx(i32 %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %66)
  br label %68

68:                                               ; preds = %64, %60
  %69 = load i32, i32* @oflag, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %68
  %72 = load i32, i32* @oflag, align 4
  %73 = load i32, i32* @SMB_MAXBLOCKSIZE, align 4
  %74 = icmp sgt i32 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %71, %68
  %76 = load i32, i32* @EX_USAGE, align 4
  %77 = load i32, i32* @oflag, align 4
  %78 = call i32 (i32, i8*, ...) @errx(i32 %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %77)
  br label %79

79:                                               ; preds = %75, %71
  br label %106

80:                                               ; preds = %15
  store i32 1, i32* @pflag, align 4
  br label %106

81:                                               ; preds = %15
  %82 = load i8*, i8** @optarg, align 8
  %83 = call i32 @getnum(i8* %82)
  store i32 %83, i32* @slave, align 4
  %84 = icmp eq i32 %83, -1
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @EX_USAGE, align 4
  %87 = load i8*, i8** @optarg, align 8
  %88 = call i32 (i32, i8*, ...) @errx(i32 %86, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %87)
  br label %89

89:                                               ; preds = %85, %81
  %90 = load i32, i32* @slave, align 4
  %91 = load i32, i32* @MIN_I2C_ADDR, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %97, label %93

93:                                               ; preds = %89
  %94 = load i32, i32* @slave, align 4
  %95 = load i32, i32* @MAX_I2C_ADDR, align 4
  %96 = icmp sge i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %93, %89
  %98 = load i32, i32* @EX_USAGE, align 4
  %99 = load i32, i32* @slave, align 4
  %100 = call i32 (i32, i8*, ...) @errx(i32 %98, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %97, %93
  br label %106

102:                                              ; preds = %15
  store i64 1, i64* @wflag, align 8
  br label %106

103:                                              ; preds = %15
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %103, %102, %101, %80, %79, %59, %38, %37, %17
  br label %10

107:                                              ; preds = %10
  %108 = load i64, i64* @optind, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = sub nsw i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  %113 = load i64, i64* @optind, align 8
  %114 = load i8**, i8*** %5, align 8
  %115 = getelementptr inbounds i8*, i8** %114, i64 %113
  store i8** %115, i8*** %5, align 8
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %130, label %118

118:                                              ; preds = %107
  %119 = load i32, i32* @slave, align 4
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i32, i32* @pflag, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %130, label %124

124:                                              ; preds = %121, %118
  %125 = load i32, i32* @slave, align 4
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %132

127:                                              ; preds = %124
  %128 = load i32, i32* @pflag, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %132, label %130

130:                                              ; preds = %127, %121, %107
  %131 = call i32 (...) @usage()
  br label %132

132:                                              ; preds = %130, %127, %124
  %133 = load i64, i64* @wflag, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %132
  %136 = load i32, i32* @iflag, align 4
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* @oflag, align 4
  %140 = icmp eq i32 %139, -1
  br i1 %140, label %156, label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* @iflag, align 4
  %143 = icmp eq i32 %142, -1
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load i32, i32* @oflag, align 4
  %146 = icmp eq i32 %145, 2
  br i1 %146, label %156, label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @iflag, align 4
  %149 = icmp eq i32 %148, 2
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  %151 = load i32, i32* @oflag, align 4
  %152 = icmp eq i32 %151, 2
  br i1 %152, label %156, label %153

153:                                              ; preds = %150, %147
  %154 = load i32, i32* @EX_USAGE, align 4
  %155 = call i32 (i32, i8*, ...) @errx(i32 %154, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  br label %156

156:                                              ; preds = %153, %150, %144, %138, %132
  %157 = load i32, i32* @pflag, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* @iflag, align 4
  %161 = icmp eq i32 %160, -1
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* @oflag, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* @EX_USAGE, align 4
  %167 = call i32 (i32, i8*, ...) @errx(i32 %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %162, %159, %156
  %169 = load i32, i32* @pflag, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %185

171:                                              ; preds = %168
  %172 = load i32, i32* @cflag, align 4
  %173 = icmp ne i32 %172, -1
  br i1 %173, label %183, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* @iflag, align 4
  %176 = icmp ne i32 %175, -1
  br i1 %176, label %183, label %177

177:                                              ; preds = %174
  %178 = load i32, i32* @oflag, align 4
  %179 = icmp ne i32 %178, -1
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i64, i64* @wflag, align 8
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180, %177, %174, %171
  %184 = call i32 (...) @usage()
  br label %185

185:                                              ; preds = %183, %180, %168
  %186 = load i32, i32* @oflag, align 4
  %187 = icmp sgt i32 %186, 0
  br i1 %187, label %188, label %272

188:                                              ; preds = %185
  %189 = load i32, i32* @oflag, align 4
  %190 = icmp eq i32 %189, 2
  br i1 %190, label %191, label %226

191:                                              ; preds = %188
  %192 = load i64, i64* @wflag, align 8
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %226

194:                                              ; preds = %191
  %195 = load i32, i32* %4, align 4
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = load i32, i32* @EX_USAGE, align 4
  %199 = call i32 (i32, i8*, ...) @errx(i32 %198, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %200

200:                                              ; preds = %197, %194
  %201 = load i8**, i8*** %5, align 8
  %202 = load i8*, i8** %201, align 8
  %203 = call i32 @getnum(i8* %202)
  store i32 %203, i32* %7, align 4
  %204 = icmp eq i32 %203, -1
  br i1 %204, label %205, label %210

205:                                              ; preds = %200
  %206 = load i32, i32* @EX_USAGE, align 4
  %207 = load i8**, i8*** %5, align 8
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 (i32, i8*, ...) @errx(i32 %206, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %205, %200
  %211 = load i32, i32* %7, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %210
  %214 = load i32, i32* %7, align 4
  %215 = icmp sge i32 %214, 65535
  br i1 %215, label %216, label %220

216:                                              ; preds = %213, %210
  %217 = load i32, i32* @EX_USAGE, align 4
  %218 = load i32, i32* %7, align 4
  %219 = call i32 (i32, i8*, ...) @errx(i32 %217, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %218)
  br label %220

220:                                              ; preds = %216, %213
  %221 = load i32, i32* %7, align 4
  store i32 %221, i32* @oword, align 4
  %222 = load i32, i32* %4, align 4
  %223 = add nsw i32 %222, -1
  store i32 %223, i32* %4, align 4
  %224 = load i8**, i8*** %5, align 8
  %225 = getelementptr inbounds i8*, i8** %224, i32 1
  store i8** %225, i8*** %5, align 8
  br label %271

226:                                              ; preds = %191, %188
  store i32 0, i32* %6, align 4
  br label %227

227:                                              ; preds = %263, %226
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* @oflag, align 4
  %230 = icmp slt i32 %228, %229
  br i1 %230, label %231, label %270

231:                                              ; preds = %227
  %232 = load i32, i32* %4, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %231
  %235 = load i32, i32* @EX_USAGE, align 4
  %236 = call i32 (i32, i8*, ...) @errx(i32 %235, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %237

237:                                              ; preds = %234, %231
  %238 = load i8**, i8*** %5, align 8
  %239 = load i8*, i8** %238, align 8
  %240 = call i32 @getnum(i8* %239)
  store i32 %240, i32* %7, align 4
  %241 = icmp eq i32 %240, -1
  br i1 %241, label %242, label %247

242:                                              ; preds = %237
  %243 = load i32, i32* @EX_USAGE, align 4
  %244 = load i8**, i8*** %5, align 8
  %245 = load i8*, i8** %244, align 8
  %246 = call i32 (i32, i8*, ...) @errx(i32 %243, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %245)
  br label %247

247:                                              ; preds = %242, %237
  %248 = load i32, i32* %7, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %253, label %250

250:                                              ; preds = %247
  %251 = load i32, i32* %7, align 4
  %252 = icmp sge i32 %251, 256
  br i1 %252, label %253, label %257

253:                                              ; preds = %250, %247
  %254 = load i32, i32* @EX_USAGE, align 4
  %255 = load i32, i32* %7, align 4
  %256 = call i32 (i32, i8*, ...) @errx(i32 %254, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0), i32 %255)
  br label %257

257:                                              ; preds = %253, %250
  %258 = load i32, i32* %7, align 4
  %259 = load i32*, i32** @obuf, align 8
  %260 = load i32, i32* %6, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %258, i32* %262, align 4
  br label %263

263:                                              ; preds = %257
  %264 = load i32, i32* %6, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %6, align 4
  %266 = load i8**, i8*** %5, align 8
  %267 = getelementptr inbounds i8*, i8** %266, i32 1
  store i8** %267, i8*** %5, align 8
  %268 = load i32, i32* %4, align 4
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %4, align 4
  br label %227

270:                                              ; preds = %227
  br label %271

271:                                              ; preds = %270, %220
  br label %272

272:                                              ; preds = %271, %185
  %273 = load i32, i32* %4, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %277

275:                                              ; preds = %272
  %276 = call i32 (...) @usage()
  br label %277

277:                                              ; preds = %275, %272
  %278 = load i8*, i8** @dev, align 8
  %279 = load i32, i32* @O_RDWR, align 4
  %280 = call i32 @open(i8* %278, i32 %279)
  store i32 %280, i32* @fd, align 4
  %281 = icmp eq i32 %280, -1
  br i1 %281, label %282, label %286

282:                                              ; preds = %277
  %283 = load i32, i32* @EX_UNAVAILABLE, align 4
  %284 = load i8*, i8** @dev, align 8
  %285 = call i32 (i32, i8*, ...) @err(i32 %283, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0), i8* %284)
  br label %286

286:                                              ; preds = %282, %277
  store i32 0, i32* %6, align 4
  %287 = load i32, i32* @pflag, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %291

289:                                              ; preds = %286
  %290 = call i32 (...) @probe_i2c()
  br label %293

291:                                              ; preds = %286
  %292 = call i32 (...) @do_io()
  store i32 %292, i32* %6, align 4
  br label %293

293:                                              ; preds = %291, %289
  %294 = load i32, i32* @errno, align 4
  store i32 %294, i32* %9, align 4
  %295 = load i32, i32* @fd, align 4
  %296 = call i32 @close(i32 %295)
  %297 = load i32, i32* %9, align 4
  store i32 %297, i32* @errno, align 4
  %298 = load i32, i32* %6, align 4
  %299 = icmp eq i32 %298, -1
  br i1 %299, label %300, label %303

300:                                              ; preds = %293
  %301 = load i32, i32* @EX_UNAVAILABLE, align 4
  %302 = call i32 (i32, i8*, ...) @err(i32 %301, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %310

303:                                              ; preds = %293
  %304 = load i32, i32* %6, align 4
  %305 = icmp eq i32 %304, -2
  br i1 %305, label %306, label %309

306:                                              ; preds = %303
  %307 = load i32, i32* @EX_USAGE, align 4
  %308 = call i32 (i32, i8*, ...) @errx(i32 %307, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0))
  br label %309

309:                                              ; preds = %306, %303
  br label %310

310:                                              ; preds = %309, %300
  ret i32 0
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @getnum(i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32 @probe_i2c(...) #1

declare dso_local i32 @do_io(...) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
