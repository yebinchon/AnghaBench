; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/xinstall/extr_xinstall.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i32 }

@owner = common dso_local global i8* null, align 8
@group = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [32 x i8] c"B:bCcD:df:g:h:l:M:m:N:o:pSsT:Uv\00", align 1
@optarg = common dso_local global i8* null, align 8
@suffix = common dso_local global i8* null, align 8
@dobackup = common dso_local global i32 0, align 4
@docompare = common dso_local global i32 0, align 4
@destdir = common dso_local global i8* null, align 8
@dodir = common dso_local global i32 0, align 4
@haveopt_f = common dso_local global i32 0, align 4
@fflags = common dso_local global i8* null, align 8
@haveopt_g = common dso_local global i32 0, align 4
@digest = common dso_local global i8* null, align 8
@LN_HARD = common dso_local global i32 0, align 4
@LN_MIXED = common dso_local global i32 0, align 4
@dolink = common dso_local global i32 0, align 4
@LN_SYMBOLIC = common dso_local global i32 0, align 4
@LN_RELATIVE = common dso_local global i32 0, align 4
@LN_ABSOLUTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%c: invalid link type\00", align 1
@metafile = common dso_local global i8* null, align 8
@haveopt_m = common dso_local global i32 0, align 4
@EX_USAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"invalid file mode: %s\00", align 1
@mode = common dso_local global i32 0, align 4
@EX_OSERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"Unable to use user and group databases in `%s'\00", align 1
@haveopt_o = common dso_local global i32 0, align 4
@dopreserve = common dso_local global i32 0, align 4
@safecopy = common dso_local global i32 0, align 4
@dostrip = common dso_local global i32 0, align 4
@tags = common dso_local global i8* null, align 8
@dounpriv = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [40 x i8] c"-d and -s may not be specified together\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"DONTSTRIP\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"DONTSTRIP set - will not strip installed binaries\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@DIGEST_NONE = common dso_local global i32 0, align 4
@digesttype = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [4 x i8] c"md5\00", align 1
@DIGEST_MD5 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"rmd160\00", align 1
@DIGEST_RIPEMD160 = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"sha1\00", align 1
@DIGEST_SHA1 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"sha256\00", align 1
@DIGEST_SHA256 = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [7 x i8] c"sha512\00", align 1
@DIGEST_SHA512 = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [20 x i8] c"unknown digest `%s'\00", align 1
@gid = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [17 x i8] c"unknown group %s\00", align 1
@uid = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [16 x i8] c"unknown user %s\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"%s: invalid flag\00", align 1
@SETFLAGS = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@metafp = common dso_local global i32* null, align 8
@.str.18 = private unnamed_addr constant [8 x i8] c"open %s\00", align 1
@EX_OK = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [12 x i8] c"%s vanished\00", align 1
@ENOTDIR = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@DIRECTORY = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [37 x i8] c"target directory `%s' does not exist\00", align 1
@.str.22 = private unnamed_addr constant [31 x i8] c"target `%s' is not a directory\00", align 1
@EFTYPE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [28 x i8] c"%s and %s are the same file\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.stat, align 8
  %7 = alloca %struct.stat, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  store i8* null, i8** @owner, align 8
  store i8* null, i8** @group, align 8
  br label %17

17:                                               ; preds = %143, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i8**, i8*** %5, align 8
  %20 = call i32 @getopt(i32 %18, i8** %19, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %10, align 4
  %21 = icmp ne i32 %20, -1
  br i1 %21, label %22, label %144

22:                                               ; preds = %17
  %23 = load i32, i32* %10, align 4
  %24 = trunc i32 %23 to i8
  %25 = sext i8 %24 to i32
  switch i32 %25, label %141 [
    i32 66, label %26
    i32 98, label %28
    i32 67, label %29
    i32 99, label %30
    i32 68, label %31
    i32 100, label %33
    i32 102, label %34
    i32 103, label %36
    i32 104, label %38
    i32 108, label %40
    i32 77, label %107
    i32 109, label %109
    i32 78, label %122
    i32 111, label %131
    i32 112, label %133
    i32 83, label %134
    i32 115, label %135
    i32 84, label %136
    i32 85, label %138
    i32 118, label %139
    i32 63, label %140
  ]

26:                                               ; preds = %22
  %27 = load i8*, i8** @optarg, align 8
  store i8* %27, i8** @suffix, align 8
  br label %28

28:                                               ; preds = %22, %26
  store i32 1, i32* @dobackup, align 4
  br label %143

29:                                               ; preds = %22
  store i32 1, i32* @docompare, align 4
  br label %143

30:                                               ; preds = %22
  br label %143

31:                                               ; preds = %22
  %32 = load i8*, i8** @optarg, align 8
  store i8* %32, i8** @destdir, align 8
  br label %143

33:                                               ; preds = %22
  store i32 1, i32* @dodir, align 4
  br label %143

34:                                               ; preds = %22
  store i32 1, i32* @haveopt_f, align 4
  %35 = load i8*, i8** @optarg, align 8
  store i8* %35, i8** @fflags, align 8
  br label %143

36:                                               ; preds = %22
  store i32 1, i32* @haveopt_g, align 4
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** @group, align 8
  br label %143

38:                                               ; preds = %22
  %39 = load i8*, i8** @optarg, align 8
  store i8* %39, i8** @digest, align 8
  br label %143

40:                                               ; preds = %22
  %41 = load i8*, i8** @optarg, align 8
  store i8* %41, i8** %13, align 8
  br label %42

42:                                               ; preds = %103, %40
  %43 = load i8*, i8** %13, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %106

47:                                               ; preds = %42
  %48 = load i8*, i8** %13, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %97 [
    i32 115, label %51
    i32 104, label %61
    i32 109, label %71
    i32 97, label %81
    i32 114, label %89
  ]

51:                                               ; preds = %47
  %52 = load i32, i32* @LN_HARD, align 4
  %53 = load i32, i32* @LN_MIXED, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* @dolink, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* @dolink, align 4
  %58 = load i32, i32* @LN_SYMBOLIC, align 4
  %59 = load i32, i32* @dolink, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* @dolink, align 4
  br label %102

61:                                               ; preds = %47
  %62 = load i32, i32* @LN_SYMBOLIC, align 4
  %63 = load i32, i32* @LN_MIXED, align 4
  %64 = or i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* @dolink, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* @dolink, align 4
  %68 = load i32, i32* @LN_HARD, align 4
  %69 = load i32, i32* @dolink, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* @dolink, align 4
  br label %102

71:                                               ; preds = %47
  %72 = load i32, i32* @LN_SYMBOLIC, align 4
  %73 = load i32, i32* @LN_HARD, align 4
  %74 = or i32 %72, %73
  %75 = xor i32 %74, -1
  %76 = load i32, i32* @dolink, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* @dolink, align 4
  %78 = load i32, i32* @LN_MIXED, align 4
  %79 = load i32, i32* @dolink, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* @dolink, align 4
  br label %102

81:                                               ; preds = %47
  %82 = load i32, i32* @LN_RELATIVE, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* @dolink, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* @dolink, align 4
  %86 = load i32, i32* @LN_ABSOLUTE, align 4
  %87 = load i32, i32* @dolink, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* @dolink, align 4
  br label %102

89:                                               ; preds = %47
  %90 = load i32, i32* @LN_ABSOLUTE, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* @dolink, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* @dolink, align 4
  %94 = load i32, i32* @LN_RELATIVE, align 4
  %95 = load i32, i32* @dolink, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* @dolink, align 4
  br label %102

97:                                               ; preds = %47
  %98 = load i8*, i8** %13, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %97, %89, %81, %71, %61, %51
  br label %103

103:                                              ; preds = %102
  %104 = load i8*, i8** %13, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %13, align 8
  br label %42

106:                                              ; preds = %42
  br label %143

107:                                              ; preds = %22
  %108 = load i8*, i8** @optarg, align 8
  store i8* %108, i8** @metafile, align 8
  br label %143

109:                                              ; preds = %22
  store i32 1, i32* @haveopt_m, align 4
  %110 = load i8*, i8** @optarg, align 8
  %111 = call i32* @setmode(i8* %110)
  store i32* %111, i32** %8, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load i32, i32* @EX_USAGE, align 4
  %115 = load i8*, i8** @optarg, align 8
  %116 = call i32 (i32, i8*, ...) @errx(i32 %114, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %115)
  br label %117

117:                                              ; preds = %113, %109
  %118 = load i32*, i32** %8, align 8
  %119 = call i32 @getmode(i32* %118, i32 0)
  store i32 %119, i32* @mode, align 4
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @free(i32* %120)
  br label %143

122:                                              ; preds = %22
  %123 = load i8*, i8** @optarg, align 8
  %124 = call i32 @setup_getid(i8* %123)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %130, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* @EX_OSERR, align 4
  %128 = load i8*, i8** @optarg, align 8
  %129 = call i32 @err(i32 %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %128)
  br label %130

130:                                              ; preds = %126, %122
  br label %143

131:                                              ; preds = %22
  store i32 1, i32* @haveopt_o, align 4
  %132 = load i8*, i8** @optarg, align 8
  store i8* %132, i8** @owner, align 8
  br label %143

133:                                              ; preds = %22
  store i32 1, i32* @dopreserve, align 4
  store i32 1, i32* @docompare, align 4
  br label %143

134:                                              ; preds = %22
  store i32 1, i32* @safecopy, align 4
  br label %143

135:                                              ; preds = %22
  store i32 1, i32* @dostrip, align 4
  br label %143

136:                                              ; preds = %22
  %137 = load i8*, i8** @optarg, align 8
  store i8* %137, i8** @tags, align 8
  br label %143

138:                                              ; preds = %22
  store i32 1, i32* @dounpriv, align 4
  br label %143

139:                                              ; preds = %22
  store i32 1, i32* @verbose, align 4
  br label %143

140:                                              ; preds = %22
  br label %141

141:                                              ; preds = %22, %140
  %142 = call i32 (...) @usage()
  br label %143

143:                                              ; preds = %141, %139, %138, %136, %135, %134, %133, %131, %130, %117, %107, %106, %38, %36, %34, %33, %31, %30, %29, %28
  br label %17

144:                                              ; preds = %17
  %145 = load i64, i64* @optind, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = sub nsw i64 %147, %145
  %149 = trunc i64 %148 to i32
  store i32 %149, i32* %4, align 4
  %150 = load i64, i64* @optind, align 8
  %151 = load i8**, i8*** %5, align 8
  %152 = getelementptr inbounds i8*, i8** %151, i64 %150
  store i8** %152, i8*** %5, align 8
  %153 = load i32, i32* @dostrip, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %161

155:                                              ; preds = %144
  %156 = load i32, i32* @dodir, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %160 = call i32 (...) @usage()
  br label %161

161:                                              ; preds = %158, %155, %144
  %162 = call i32* @getenv(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %163 = icmp ne i32* %162, null
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* @dostrip, align 4
  br label %166

166:                                              ; preds = %164, %161
  %167 = load i32, i32* %4, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %175, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %4, align 4
  %171 = icmp eq i32 %170, 1
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* @dodir, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %172, %166
  %176 = call i32 (...) @usage()
  br label %177

177:                                              ; preds = %175, %172, %169
  %178 = load i8*, i8** @digest, align 8
  %179 = icmp ne i8* %178, null
  br i1 %179, label %180, label %226

180:                                              ; preds = %177
  %181 = load i8*, i8** @digest, align 8
  %182 = call i64 @strcmp(i8* %181, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %183 = icmp eq i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %180
  %185 = load i32, i32* @DIGEST_NONE, align 4
  store i32 %185, i32* @digesttype, align 4
  br label %225

186:                                              ; preds = %180
  %187 = load i8*, i8** @digest, align 8
  %188 = call i64 @strcmp(i8* %187, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0))
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %186
  %191 = load i32, i32* @DIGEST_MD5, align 4
  store i32 %191, i32* @digesttype, align 4
  br label %224

192:                                              ; preds = %186
  %193 = load i8*, i8** @digest, align 8
  %194 = call i64 @strcmp(i8* %193, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %195 = icmp eq i64 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %192
  %197 = load i32, i32* @DIGEST_RIPEMD160, align 4
  store i32 %197, i32* @digesttype, align 4
  br label %223

198:                                              ; preds = %192
  %199 = load i8*, i8** @digest, align 8
  %200 = call i64 @strcmp(i8* %199, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %198
  %203 = load i32, i32* @DIGEST_SHA1, align 4
  store i32 %203, i32* @digesttype, align 4
  br label %222

204:                                              ; preds = %198
  %205 = load i8*, i8** @digest, align 8
  %206 = call i64 @strcmp(i8* %205, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0))
  %207 = icmp eq i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204
  %209 = load i32, i32* @DIGEST_SHA256, align 4
  store i32 %209, i32* @digesttype, align 4
  br label %221

210:                                              ; preds = %204
  %211 = load i8*, i8** @digest, align 8
  %212 = call i64 @strcmp(i8* %211, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %216

214:                                              ; preds = %210
  %215 = load i32, i32* @DIGEST_SHA512, align 4
  store i32 %215, i32* @digesttype, align 4
  br label %220

216:                                              ; preds = %210
  %217 = load i8*, i8** @digest, align 8
  %218 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i64 0, i64 0), i8* %217)
  %219 = call i32 (...) @usage()
  br label %220

220:                                              ; preds = %216, %214
  br label %221

221:                                              ; preds = %220, %208
  br label %222

222:                                              ; preds = %221, %202
  br label %223

223:                                              ; preds = %222, %196
  br label %224

224:                                              ; preds = %223, %190
  br label %225

225:                                              ; preds = %224, %184
  br label %226

226:                                              ; preds = %225, %177
  %227 = load i32, i32* @docompare, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load i32, i32* @dostrip, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %229
  store i32 1, i32* @safecopy, align 4
  br label %233

233:                                              ; preds = %232, %229, %226
  %234 = load i8*, i8** @group, align 8
  %235 = icmp ne i8* %234, null
  br i1 %235, label %236, label %253

236:                                              ; preds = %233
  %237 = load i32, i32* @dounpriv, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %253, label %239

239:                                              ; preds = %236
  %240 = load i8*, i8** @group, align 8
  %241 = call i32 @gid_from_group(i8* %240, i8** @gid)
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %252

243:                                              ; preds = %239
  %244 = load i8*, i8** @group, align 8
  %245 = call i32 @parseid(i8* %244, i8** %15)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %250, label %247

247:                                              ; preds = %243
  %248 = load i8*, i8** @group, align 8
  %249 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* %248)
  br label %250

250:                                              ; preds = %247, %243
  %251 = load i8*, i8** %15, align 8
  store i8* %251, i8** @gid, align 8
  br label %252

252:                                              ; preds = %250, %239
  br label %254

253:                                              ; preds = %236, %233
  store i8* inttoptr (i64 -1 to i8*), i8** @gid, align 8
  br label %254

254:                                              ; preds = %253, %252
  %255 = load i8*, i8** @owner, align 8
  %256 = icmp ne i8* %255, null
  br i1 %256, label %257, label %274

257:                                              ; preds = %254
  %258 = load i32, i32* @dounpriv, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %274, label %260

260:                                              ; preds = %257
  %261 = load i8*, i8** @owner, align 8
  %262 = call i32 @uid_from_user(i8* %261, i8** @uid)
  %263 = icmp eq i32 %262, -1
  br i1 %263, label %264, label %273

264:                                              ; preds = %260
  %265 = load i8*, i8** @owner, align 8
  %266 = call i32 @parseid(i8* %265, i8** %16)
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %264
  %269 = load i8*, i8** @owner, align 8
  %270 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0), i8* %269)
  br label %271

271:                                              ; preds = %268, %264
  %272 = load i8*, i8** %16, align 8
  store i8* %272, i8** @uid, align 8
  br label %273

273:                                              ; preds = %271, %260
  br label %275

274:                                              ; preds = %257, %254
  store i8* inttoptr (i64 -1 to i8*), i8** @uid, align 8
  br label %275

275:                                              ; preds = %274, %273
  %276 = load i8*, i8** @fflags, align 8
  %277 = icmp ne i8* %276, null
  br i1 %277, label %278, label %292

278:                                              ; preds = %275
  %279 = load i32, i32* @dounpriv, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %292, label %281

281:                                              ; preds = %278
  %282 = call i64 @strtofflags(i8** @fflags, i64* %9, i32* null)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %288

284:                                              ; preds = %281
  %285 = load i32, i32* @EX_USAGE, align 4
  %286 = load i8*, i8** @fflags, align 8
  %287 = call i32 (i32, i8*, ...) @errx(i32 %285, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i8* %286)
  br label %288

288:                                              ; preds = %284, %281
  %289 = load i32, i32* @SETFLAGS, align 4
  %290 = load i32, i32* %12, align 4
  %291 = or i32 %290, %289
  store i32 %291, i32* %12, align 4
  br label %292

292:                                              ; preds = %288, %278, %275
  %293 = load i8*, i8** @metafile, align 8
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %303

295:                                              ; preds = %292
  %296 = load i8*, i8** @metafile, align 8
  %297 = call i32* @fopen(i8* %296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i64 0, i64 0))
  store i32* %297, i32** @metafp, align 8
  %298 = icmp eq i32* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %295
  %300 = load i8*, i8** @metafile, align 8
  %301 = call i32 @warn(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.18, i64 0, i64 0), i8* %300)
  br label %302

302:                                              ; preds = %299, %295
  br label %305

303:                                              ; preds = %292
  %304 = load i32, i32* @DIGEST_NONE, align 4
  store i32 %304, i32* @digesttype, align 4
  br label %305

305:                                              ; preds = %303, %302
  %306 = load i32, i32* @dodir, align 4
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %323

308:                                              ; preds = %305
  br label %309

309:                                              ; preds = %317, %308
  %310 = load i8**, i8*** %5, align 8
  %311 = load i8*, i8** %310, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %313, label %320

313:                                              ; preds = %309
  %314 = load i8**, i8*** %5, align 8
  %315 = load i8*, i8** %314, align 8
  %316 = call i32 @install_dir(i8* %315)
  br label %317

317:                                              ; preds = %313
  %318 = load i8**, i8*** %5, align 8
  %319 = getelementptr inbounds i8*, i8** %318, i32 1
  store i8** %319, i8*** %5, align 8
  br label %309

320:                                              ; preds = %309
  %321 = load i32, i32* @EX_OK, align 4
  %322 = call i32 @exit(i32 %321) #3
  unreachable

323:                                              ; preds = %305
  %324 = load i8**, i8*** %5, align 8
  %325 = load i32, i32* %4, align 4
  %326 = sub nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds i8*, i8** %324, i64 %327
  %329 = load i8*, i8** %328, align 8
  store i8* %329, i8** %14, align 8
  %330 = load i8*, i8** %14, align 8
  %331 = call i32 @stat(i8* %330, %struct.stat* %7)
  store i32 %331, i32* %11, align 4
  %332 = load i32, i32* %11, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %396, label %334

334:                                              ; preds = %323
  %335 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %336 = load i32, i32* %335, align 8
  %337 = call i64 @S_ISDIR(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %396

339:                                              ; preds = %334
  %340 = load i32, i32* @dolink, align 4
  %341 = load i32, i32* @LN_SYMBOLIC, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %375

344:                                              ; preds = %339
  %345 = load i8*, i8** %14, align 8
  %346 = call i64 @lstat(i8* %345, %struct.stat* %7)
  %347 = icmp ne i64 %346, 0
  br i1 %347, label %348, label %352

348:                                              ; preds = %344
  %349 = load i32, i32* @EX_OSERR, align 4
  %350 = load i8*, i8** %14, align 8
  %351 = call i32 @err(i32 %349, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i64 0, i64 0), i8* %350)
  br label %352

352:                                              ; preds = %348, %344
  %353 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %354 = load i32, i32* %353, align 8
  %355 = call i64 @S_ISLNK(i32 %354)
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %374

357:                                              ; preds = %352
  %358 = load i32, i32* %4, align 4
  %359 = icmp ne i32 %358, 2
  br i1 %359, label %360, label %365

360:                                              ; preds = %357
  %361 = load i32, i32* @ENOTDIR, align 4
  store i32 %361, i32* @errno, align 4
  %362 = load i32, i32* @EX_USAGE, align 4
  %363 = load i8*, i8** %14, align 8
  %364 = call i32 @err(i32 %362, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %363)
  br label %365

365:                                              ; preds = %360, %357
  %366 = load i8**, i8*** %5, align 8
  %367 = load i8*, i8** %366, align 8
  %368 = load i8*, i8** %14, align 8
  %369 = load i64, i64* %9, align 8
  %370 = load i32, i32* %12, align 4
  %371 = call i32 @install(i8* %367, i8* %368, i64 %369, i32 %370)
  %372 = load i32, i32* @EX_OK, align 4
  %373 = call i32 @exit(i32 %372) #3
  unreachable

374:                                              ; preds = %352
  br label %375

375:                                              ; preds = %374, %339
  br label %376

376:                                              ; preds = %390, %375
  %377 = load i8**, i8*** %5, align 8
  %378 = load i8*, i8** %377, align 8
  %379 = load i8*, i8** %14, align 8
  %380 = icmp ne i8* %378, %379
  br i1 %380, label %381, label %393

381:                                              ; preds = %376
  %382 = load i8**, i8*** %5, align 8
  %383 = load i8*, i8** %382, align 8
  %384 = load i8*, i8** %14, align 8
  %385 = load i64, i64* %9, align 8
  %386 = load i32, i32* %12, align 4
  %387 = load i32, i32* @DIRECTORY, align 4
  %388 = or i32 %386, %387
  %389 = call i32 @install(i8* %383, i8* %384, i64 %385, i32 %388)
  br label %390

390:                                              ; preds = %381
  %391 = load i8**, i8*** %5, align 8
  %392 = getelementptr inbounds i8*, i8** %391, i32 1
  store i8** %392, i8*** %5, align 8
  br label %376

393:                                              ; preds = %376
  %394 = load i32, i32* @EX_OK, align 4
  %395 = call i32 @exit(i32 %394) #3
  unreachable

396:                                              ; preds = %334, %323
  %397 = load i32, i32* %4, align 4
  %398 = icmp ne i32 %397, 2
  br i1 %398, label %399, label %420

399:                                              ; preds = %396
  %400 = load i32, i32* %11, align 4
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %410

402:                                              ; preds = %399
  %403 = load i8**, i8*** %5, align 8
  %404 = load i32, i32* %4, align 4
  %405 = sub nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i8*, i8** %403, i64 %406
  %408 = load i8*, i8** %407, align 8
  %409 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.21, i64 0, i64 0), i8* %408)
  br label %418

410:                                              ; preds = %399
  %411 = load i8**, i8*** %5, align 8
  %412 = load i32, i32* %4, align 4
  %413 = sub nsw i32 %412, 1
  %414 = sext i32 %413 to i64
  %415 = getelementptr inbounds i8*, i8** %411, i64 %414
  %416 = load i8*, i8** %415, align 8
  %417 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.22, i64 0, i64 0), i8* %416)
  br label %418

418:                                              ; preds = %410, %402
  %419 = call i32 (...) @usage()
  br label %420

420:                                              ; preds = %418, %396
  %421 = load i32, i32* %11, align 4
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %465, label %423

423:                                              ; preds = %420
  %424 = load i32, i32* @dolink, align 4
  %425 = icmp ne i32 %424, 0
  br i1 %425, label %465, label %426

426:                                              ; preds = %423
  %427 = load i8**, i8*** %5, align 8
  %428 = load i8*, i8** %427, align 8
  %429 = call i32 @stat(i8* %428, %struct.stat* %6)
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %436

431:                                              ; preds = %426
  %432 = load i32, i32* @EX_OSERR, align 4
  %433 = load i8**, i8*** %5, align 8
  %434 = load i8*, i8** %433, align 8
  %435 = call i32 @err(i32 %432, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %434)
  br label %436

436:                                              ; preds = %431, %426
  %437 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %438 = load i32, i32* %437, align 8
  %439 = call i32 @S_ISREG(i32 %438)
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %446, label %441

441:                                              ; preds = %436
  %442 = load i32, i32* @EFTYPE, align 4
  store i32 %442, i32* @errno, align 4
  %443 = load i32, i32* @EX_OSERR, align 4
  %444 = load i8*, i8** %14, align 8
  %445 = call i32 @err(i32 %443, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i64 0, i64 0), i8* %444)
  br label %446

446:                                              ; preds = %441, %436
  %447 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %448 = load i64, i64* %447, align 8
  %449 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = icmp eq i64 %448, %450
  br i1 %451, label %452, label %464

452:                                              ; preds = %446
  %453 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %454 = load i64, i64* %453, align 8
  %455 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 1
  %456 = load i64, i64* %455, align 8
  %457 = icmp eq i64 %454, %456
  br i1 %457, label %458, label %464

458:                                              ; preds = %452
  %459 = load i32, i32* @EX_USAGE, align 4
  %460 = load i8**, i8*** %5, align 8
  %461 = load i8*, i8** %460, align 8
  %462 = load i8*, i8** %14, align 8
  %463 = call i32 (i32, i8*, ...) @errx(i32 %459, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.23, i64 0, i64 0), i8* %461, i8* %462)
  br label %464

464:                                              ; preds = %458, %452, %446
  br label %465

465:                                              ; preds = %464, %423, %420
  %466 = load i8**, i8*** %5, align 8
  %467 = load i8*, i8** %466, align 8
  %468 = load i8*, i8** %14, align 8
  %469 = load i64, i64* %9, align 8
  %470 = load i32, i32* %12, align 4
  %471 = call i32 @install(i8* %467, i8* %468, i64 %469, i32 %470)
  %472 = load i32, i32* @EX_OK, align 4
  %473 = call i32 @exit(i32 %472) #3
  unreachable
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32* @setmode(i8*) #1

declare dso_local i32 @getmode(i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @setup_getid(i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @warnx(i8*, ...) #1

declare dso_local i32* @getenv(i8*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @gid_from_group(i8*, i8**) #1

declare dso_local i32 @parseid(i8*, i8**) #1

declare dso_local i32 @uid_from_user(i8*, i8**) #1

declare dso_local i64 @strtofflags(i8**, i64*, i32*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @warn(i8*, i8*) #1

declare dso_local i32 @install_dir(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @install(i8*, i8*, i64, i32) #1

declare dso_local i32 @S_ISREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
