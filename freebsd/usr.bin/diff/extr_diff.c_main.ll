; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diff.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/diff/extr_diff.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@diff_context = common dso_local global i32 0, align 4
@diff_format = common dso_local global i64 0, align 8
@OPTIONS = common dso_local global i32 0, align 4
@longopts = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@D_FORCEASCII = common dso_local global i32 0, align 4
@D_FOLDBLANKS = common dso_local global i32 0, align 4
@cflag = common dso_local global i32 0, align 4
@D_CONTEXT = common dso_local global i64 0, align 8
@optarg = common dso_local global i32* null, align 8
@D_MINIMAL = common dso_local global i32 0, align 4
@D_IFDEF = common dso_local global i64 0, align 8
@ifdefname = common dso_local global i32* null, align 8
@D_EDIT = common dso_local global i64 0, align 8
@D_REVERSE = common dso_local global i64 0, align 8
@D_SKIPBLANKLINES = common dso_local global i32 0, align 4
@D_IGNORECASE = common dso_local global i32 0, align 4
@label = common dso_local global i32** null, align 8
@lflag = common dso_local global i32 0, align 4
@Nflag = common dso_local global i32 0, align 4
@D_NREVERSE = common dso_local global i64 0, align 8
@D_PROTOTYPE = common dso_local global i32 0, align 4
@Pflag = common dso_local global i32 0, align 4
@rflag = common dso_local global i32 0, align 4
@D_BRIEF = common dso_local global i64 0, align 8
@start = common dso_local global i32* null, align 8
@sflag = common dso_local global i32 0, align 4
@Tflag = common dso_local global i32 0, align 4
@D_EXPANDTABS = common dso_local global i32 0, align 4
@D_UNIFIED = common dso_local global i64 0, align 8
@D_IGNOREBLANKS = common dso_local global i32 0, align 4
@D_GFORMAT = common dso_local global i64 0, align 8
@group_format = common dso_local global i32* null, align 8
@ignore_file_case = common dso_local global i32 0, align 4
@D_NORMAL = common dso_local global i64 0, align 8
@tabsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Invalid argument for tabsize\00", align 1
@D_STRIPCR = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@ignore_pats = common dso_local global i8* null, align 8
@BUFSIZ = common dso_local global i32 0, align 4
@ignore_re = common dso_local global i32 0, align 4
@REG_NEWLINE = common dso_local global i32 0, align 4
@REG_EXTENDED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@STDIN_FILENO = common dso_local global i32 0, align 4
@stb1 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@stb2 = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"can't compare - to a directory\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"-D option not supported with directories\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@status = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  %19 = load i8**, i8*** %5, align 8
  store i8** %19, i8*** %8, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %14, align 4
  store i32 1, i32* %15, align 4
  store i32 3, i32* @diff_context, align 4
  store i64 0, i64* @diff_format, align 8
  br label %20

20:                                               ; preds = %224, %2
  %21 = load i32, i32* %4, align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = load i32, i32* @OPTIONS, align 4
  %24 = load i32, i32* @longopts, align 4
  %25 = call i32 @getopt_long(i32 %21, i8** %22, i32 %23, i32 %24, i32* null)
  store i32 %25, i32* %10, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %231

27:                                               ; preds = %20
  %28 = load i32, i32* %10, align 4
  switch i32 %28, label %222 [
    i32 48, label %29
    i32 49, label %29
    i32 50, label %29
    i32 51, label %29
    i32 52, label %29
    i32 53, label %29
    i32 54, label %29
    i32 55, label %29
    i32 56, label %29
    i32 57, label %29
    i32 97, label %60
    i32 98, label %64
    i32 67, label %68
    i32 99, label %68
    i32 100, label %93
    i32 68, label %97
    i32 101, label %100
    i32 102, label %102
    i32 72, label %104
    i32 104, label %105
    i32 66, label %106
    i32 73, label %110
    i32 105, label %113
    i32 76, label %117
    i32 108, label %139
    i32 78, label %140
    i32 110, label %141
    i32 112, label %143
    i32 80, label %152
    i32 114, label %153
    i32 113, label %154
    i32 83, label %156
    i32 115, label %158
    i32 84, label %159
    i32 116, label %160
    i32 85, label %164
    i32 117, label %164
    i32 119, label %189
    i32 88, label %193
    i32 120, label %196
    i32 134, label %199
    i32 133, label %202
    i32 132, label %203
    i32 130, label %204
    i32 131, label %205
    i32 128, label %207
    i32 129, label %218
  ]

29:                                               ; preds = %27, %27, %27, %27, %27, %27, %27, %27, %27, %27
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = call i32 (...) @usage()
  br label %54

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  %36 = icmp eq i32 %35, 99
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %12, align 4
  %39 = icmp eq i32 %38, 117
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  store i32 0, i32* @diff_context, align 4
  br label %53

41:                                               ; preds = %37
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @isdigit(i32 %42) #5
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* @diff_context, align 4
  %47 = load i32, i32* @INT_MAX, align 4
  %48 = sdiv i32 %47, 10
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %45, %41
  %51 = call i32 (...) @usage()
  br label %52

52:                                               ; preds = %50, %45
  br label %53

53:                                               ; preds = %52, %40
  br label %54

54:                                               ; preds = %53, %32
  %55 = load i32, i32* @diff_context, align 4
  %56 = mul nsw i32 %55, 10
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %57, 48
  %59 = add nsw i32 %56, %58
  store i32 %59, i32* @diff_context, align 4
  br label %224

60:                                               ; preds = %27
  %61 = load i32, i32* @D_FORCEASCII, align 4
  %62 = load i32, i32* %11, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %11, align 4
  br label %224

64:                                               ; preds = %27
  %65 = load i32, i32* @D_FOLDBLANKS, align 4
  %66 = load i32, i32* %11, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %11, align 4
  br label %224

68:                                               ; preds = %27, %27
  store i32 1, i32* @cflag, align 4
  %69 = load i64, i64* @D_CONTEXT, align 8
  store i64 %69, i64* @diff_format, align 8
  %70 = load i32*, i32** @optarg, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %68
  %73 = load i32*, i32** @optarg, align 8
  %74 = call i64 @strtol(i32* %73, i8** %7, i32 10)
  store i64 %74, i64* %9, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %87, label %79

79:                                               ; preds = %72
  %80 = load i64, i64* %9, align 8
  %81 = icmp slt i64 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* @INT_MAX, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp sge i64 %83, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %82, %79, %72
  %88 = call i32 (...) @usage()
  br label %89

89:                                               ; preds = %87, %82
  %90 = load i64, i64* %9, align 8
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* @diff_context, align 4
  br label %92

92:                                               ; preds = %89, %68
  br label %224

93:                                               ; preds = %27
  %94 = load i32, i32* @D_MINIMAL, align 4
  %95 = load i32, i32* %11, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %11, align 4
  br label %224

97:                                               ; preds = %27
  %98 = load i64, i64* @D_IFDEF, align 8
  store i64 %98, i64* @diff_format, align 8
  %99 = load i32*, i32** @optarg, align 8
  store i32* %99, i32** @ifdefname, align 8
  br label %224

100:                                              ; preds = %27
  %101 = load i64, i64* @D_EDIT, align 8
  store i64 %101, i64* @diff_format, align 8
  br label %224

102:                                              ; preds = %27
  %103 = load i64, i64* @D_REVERSE, align 8
  store i64 %103, i64* @diff_format, align 8
  br label %224

104:                                              ; preds = %27
  br label %224

105:                                              ; preds = %27
  br label %224

106:                                              ; preds = %27
  %107 = load i32, i32* @D_SKIPBLANKLINES, align 4
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %224

110:                                              ; preds = %27
  %111 = load i32*, i32** @optarg, align 8
  %112 = call i32 @push_ignore_pats(i32* %111)
  br label %224

113:                                              ; preds = %27
  %114 = load i32, i32* @D_IGNORECASE, align 4
  %115 = load i32, i32* %11, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %11, align 4
  br label %224

117:                                              ; preds = %27
  %118 = load i32**, i32*** @label, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 0
  %120 = load i32*, i32** %119, align 8
  %121 = icmp eq i32* %120, null
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load i32*, i32** @optarg, align 8
  %124 = load i32**, i32*** @label, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 0
  store i32* %123, i32** %125, align 8
  br label %138

126:                                              ; preds = %117
  %127 = load i32**, i32*** @label, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 1
  %129 = load i32*, i32** %128, align 8
  %130 = icmp eq i32* %129, null
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = load i32*, i32** @optarg, align 8
  %133 = load i32**, i32*** @label, align 8
  %134 = getelementptr inbounds i32*, i32** %133, i64 1
  store i32* %132, i32** %134, align 8
  br label %137

135:                                              ; preds = %126
  %136 = call i32 (...) @usage()
  br label %137

137:                                              ; preds = %135, %131
  br label %138

138:                                              ; preds = %137, %122
  br label %224

139:                                              ; preds = %27
  store i32 1, i32* @lflag, align 4
  br label %224

140:                                              ; preds = %27
  store i32 1, i32* @Nflag, align 4
  br label %224

141:                                              ; preds = %27
  %142 = load i64, i64* @D_NREVERSE, align 8
  store i64 %142, i64* @diff_format, align 8
  br label %224

143:                                              ; preds = %27
  %144 = load i64, i64* @diff_format, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %143
  %147 = load i64, i64* @D_CONTEXT, align 8
  store i64 %147, i64* @diff_format, align 8
  br label %148

148:                                              ; preds = %146, %143
  %149 = load i32, i32* @D_PROTOTYPE, align 4
  %150 = load i32, i32* %11, align 4
  %151 = or i32 %150, %149
  store i32 %151, i32* %11, align 4
  br label %224

152:                                              ; preds = %27
  store i32 1, i32* @Pflag, align 4
  br label %224

153:                                              ; preds = %27
  store i32 1, i32* @rflag, align 4
  br label %224

154:                                              ; preds = %27
  %155 = load i64, i64* @D_BRIEF, align 8
  store i64 %155, i64* @diff_format, align 8
  br label %224

156:                                              ; preds = %27
  %157 = load i32*, i32** @optarg, align 8
  store i32* %157, i32** @start, align 8
  br label %224

158:                                              ; preds = %27
  store i32 1, i32* @sflag, align 4
  br label %224

159:                                              ; preds = %27
  store i32 1, i32* @Tflag, align 4
  br label %224

160:                                              ; preds = %27
  %161 = load i32, i32* @D_EXPANDTABS, align 4
  %162 = load i32, i32* %11, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %11, align 4
  br label %224

164:                                              ; preds = %27, %27
  %165 = load i64, i64* @D_UNIFIED, align 8
  store i64 %165, i64* @diff_format, align 8
  %166 = load i32*, i32** @optarg, align 8
  %167 = icmp ne i32* %166, null
  br i1 %167, label %168, label %188

168:                                              ; preds = %164
  %169 = load i32*, i32** @optarg, align 8
  %170 = call i64 @strtol(i32* %169, i8** %7, i32 10)
  store i64 %170, i64* %9, align 8
  %171 = load i8*, i8** %7, align 8
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %168
  %176 = load i64, i64* %9, align 8
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  %179 = load i64, i64* %9, align 8
  %180 = load i32, i32* @INT_MAX, align 4
  %181 = sext i32 %180 to i64
  %182 = icmp sge i64 %179, %181
  br i1 %182, label %183, label %185

183:                                              ; preds = %178, %175, %168
  %184 = call i32 (...) @usage()
  br label %185

185:                                              ; preds = %183, %178
  %186 = load i64, i64* %9, align 8
  %187 = trunc i64 %186 to i32
  store i32 %187, i32* @diff_context, align 4
  br label %188

188:                                              ; preds = %185, %164
  br label %224

189:                                              ; preds = %27
  %190 = load i32, i32* @D_IGNOREBLANKS, align 4
  %191 = load i32, i32* %11, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %11, align 4
  br label %224

193:                                              ; preds = %27
  %194 = load i32*, i32** @optarg, align 8
  %195 = call i32 @read_excludes_file(i32* %194)
  br label %224

196:                                              ; preds = %27
  %197 = load i32*, i32** @optarg, align 8
  %198 = call i32 @push_excludes(i32* %197)
  br label %224

199:                                              ; preds = %27
  %200 = load i64, i64* @D_GFORMAT, align 8
  store i64 %200, i64* @diff_format, align 8
  %201 = load i32*, i32** @optarg, align 8
  store i32* %201, i32** @group_format, align 8
  br label %224

202:                                              ; preds = %27
  br label %224

203:                                              ; preds = %27
  store i32 1, i32* @ignore_file_case, align 4
  br label %224

204:                                              ; preds = %27
  store i32 0, i32* @ignore_file_case, align 4
  br label %224

205:                                              ; preds = %27
  %206 = load i64, i64* @D_NORMAL, align 8
  store i64 %206, i64* @diff_format, align 8
  br label %224

207:                                              ; preds = %27
  %208 = load i32*, i32** @optarg, align 8
  %209 = load i32, i32* @INT_MAX, align 4
  %210 = call i64 @strtonum(i32* %208, i32 1, i32 %209, i8** %6)
  %211 = trunc i64 %210 to i32
  store i32 %211, i32* @tabsize, align 4
  %212 = load i8*, i8** %6, align 8
  %213 = icmp ne i8* %212, null
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = call i32 @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %216 = call i32 (...) @usage()
  br label %217

217:                                              ; preds = %214, %207
  br label %224

218:                                              ; preds = %27
  %219 = load i32, i32* @D_STRIPCR, align 4
  %220 = load i32, i32* %11, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %11, align 4
  br label %224

222:                                              ; preds = %27
  %223 = call i32 (...) @usage()
  br label %224

224:                                              ; preds = %222, %218, %217, %205, %204, %203, %202, %199, %196, %193, %189, %188, %160, %159, %158, %156, %154, %153, %152, %148, %141, %140, %139, %138, %113, %110, %106, %105, %104, %102, %100, %97, %93, %92, %64, %60, %54
  %225 = load i32, i32* %10, align 4
  store i32 %225, i32* %12, align 4
  %226 = load i32, i32* @optind, align 4
  %227 = load i32, i32* %14, align 4
  %228 = icmp ne i32 %226, %227
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %15, align 4
  %230 = load i32, i32* @optind, align 4
  store i32 %230, i32* %14, align 4
  br label %20

231:                                              ; preds = %20
  %232 = load i32, i32* @optind, align 4
  %233 = load i32, i32* %4, align 4
  %234 = sub nsw i32 %233, %232
  store i32 %234, i32* %4, align 4
  %235 = load i32, i32* @optind, align 4
  %236 = load i8**, i8*** %5, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i8*, i8** %236, i64 %237
  store i8** %238, i8*** %5, align 8
  %239 = load i32, i32* %4, align 4
  %240 = icmp ne i32 %239, 2
  br i1 %240, label %241, label %243

241:                                              ; preds = %231
  %242 = call i32 (...) @usage()
  br label %243

243:                                              ; preds = %241, %231
  %244 = load i8*, i8** @ignore_pats, align 8
  %245 = icmp ne i8* %244, null
  br i1 %245, label %246, label %273

246:                                              ; preds = %243
  %247 = load i32, i32* @BUFSIZ, align 4
  %248 = zext i32 %247 to i64
  %249 = call i8* @llvm.stacksave()
  store i8* %249, i8** %16, align 8
  %250 = alloca i8, i64 %248, align 16
  store i64 %248, i64* %17, align 8
  %251 = load i8*, i8** @ignore_pats, align 8
  %252 = load i32, i32* @REG_NEWLINE, align 4
  %253 = load i32, i32* @REG_EXTENDED, align 4
  %254 = or i32 %252, %253
  %255 = call i32 @regcomp(i32* @ignore_re, i8* %251, i32 %254)
  store i32 %255, i32* %18, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %271

257:                                              ; preds = %246
  %258 = load i32, i32* %18, align 4
  %259 = trunc i64 %248 to i32
  %260 = call i32 @regerror(i32 %258, i32* @ignore_re, i8* %250, i32 %259)
  %261 = load i8*, i8** @ignore_pats, align 8
  %262 = load i8, i8* %261, align 1
  %263 = sext i8 %262 to i32
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %257
  %266 = load i8*, i8** @ignore_pats, align 8
  %267 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %266, i8* %250)
  br label %270

268:                                              ; preds = %257
  %269 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %250)
  br label %270

270:                                              ; preds = %268, %265
  br label %271

271:                                              ; preds = %270, %246
  %272 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %272)
  br label %273

273:                                              ; preds = %271, %243
  %274 = load i8**, i8*** %5, align 8
  %275 = getelementptr inbounds i8*, i8** %274, i64 0
  %276 = load i8*, i8** %275, align 8
  %277 = call i64 @strcmp(i8* %276, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %273
  %280 = load i32, i32* @STDIN_FILENO, align 4
  %281 = call i32 @fstat(i32 %280, %struct.TYPE_5__* @stb1)
  store i32 1, i32* %13, align 4
  br label %294

282:                                              ; preds = %273
  %283 = load i8**, i8*** %5, align 8
  %284 = getelementptr inbounds i8*, i8** %283, i64 0
  %285 = load i8*, i8** %284, align 8
  %286 = call i64 @stat(i8* %285, %struct.TYPE_5__* @stb1)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %282
  %289 = load i8**, i8*** %5, align 8
  %290 = getelementptr inbounds i8*, i8** %289, i64 0
  %291 = load i8*, i8** %290, align 8
  %292 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %291)
  br label %293

293:                                              ; preds = %288, %282
  br label %294

294:                                              ; preds = %293, %279
  %295 = load i8**, i8*** %5, align 8
  %296 = getelementptr inbounds i8*, i8** %295, i64 1
  %297 = load i8*, i8** %296, align 8
  %298 = call i64 @strcmp(i8* %297, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %294
  %301 = load i32, i32* @STDIN_FILENO, align 4
  %302 = call i32 @fstat(i32 %301, %struct.TYPE_5__* @stb2)
  store i32 1, i32* %13, align 4
  br label %315

303:                                              ; preds = %294
  %304 = load i8**, i8*** %5, align 8
  %305 = getelementptr inbounds i8*, i8** %304, i64 1
  %306 = load i8*, i8** %305, align 8
  %307 = call i64 @stat(i8* %306, %struct.TYPE_5__* @stb2)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %314

309:                                              ; preds = %303
  %310 = load i8**, i8*** %5, align 8
  %311 = getelementptr inbounds i8*, i8** %310, i64 1
  %312 = load i8*, i8** %311, align 8
  %313 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %312)
  br label %314

314:                                              ; preds = %309, %303
  br label %315

315:                                              ; preds = %314, %300
  %316 = load i32, i32* %13, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %328

318:                                              ; preds = %315
  %319 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stb1, i32 0, i32 0), align 4
  %320 = call i64 @S_ISDIR(i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %326, label %322

322:                                              ; preds = %318
  %323 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stb2, i32 0, i32 0), align 4
  %324 = call i64 @S_ISDIR(i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %328

326:                                              ; preds = %322, %318
  %327 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %328

328:                                              ; preds = %326, %322, %315
  %329 = load i8**, i8*** %8, align 8
  %330 = load i8**, i8*** %5, align 8
  %331 = call i32 @set_argstr(i8** %329, i8** %330)
  %332 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stb1, i32 0, i32 0), align 4
  %333 = call i64 @S_ISDIR(i32 %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %354

335:                                              ; preds = %328
  %336 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stb2, i32 0, i32 0), align 4
  %337 = call i64 @S_ISDIR(i32 %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %354

339:                                              ; preds = %335
  %340 = load i64, i64* @diff_format, align 8
  %341 = load i64, i64* @D_IFDEF, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %345

343:                                              ; preds = %339
  %344 = call i32 (i32, i8*, ...) @errx(i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %345

345:                                              ; preds = %343, %339
  %346 = load i8**, i8*** %5, align 8
  %347 = getelementptr inbounds i8*, i8** %346, i64 0
  %348 = load i8*, i8** %347, align 8
  %349 = load i8**, i8*** %5, align 8
  %350 = getelementptr inbounds i8*, i8** %349, i64 1
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* %11, align 4
  %353 = call i32 @diffdir(i8* %348, i8* %351, i32 %352)
  br label %420

354:                                              ; preds = %335, %328
  %355 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stb1, i32 0, i32 0), align 4
  %356 = call i64 @S_ISDIR(i32 %355)
  %357 = icmp ne i64 %356, 0
  br i1 %357, label %358, label %379

358:                                              ; preds = %354
  %359 = load i8**, i8*** %5, align 8
  %360 = getelementptr inbounds i8*, i8** %359, i64 0
  %361 = load i8*, i8** %360, align 8
  %362 = load i8**, i8*** %5, align 8
  %363 = getelementptr inbounds i8*, i8** %362, i64 1
  %364 = load i8*, i8** %363, align 8
  %365 = call i8* @splice(i8* %361, i8* %364)
  %366 = load i8**, i8*** %5, align 8
  %367 = getelementptr inbounds i8*, i8** %366, i64 0
  store i8* %365, i8** %367, align 8
  %368 = load i8**, i8*** %5, align 8
  %369 = getelementptr inbounds i8*, i8** %368, i64 0
  %370 = load i8*, i8** %369, align 8
  %371 = call i64 @stat(i8* %370, %struct.TYPE_5__* @stb1)
  %372 = icmp slt i64 %371, 0
  br i1 %372, label %373, label %378

373:                                              ; preds = %358
  %374 = load i8**, i8*** %5, align 8
  %375 = getelementptr inbounds i8*, i8** %374, i64 0
  %376 = load i8*, i8** %375, align 8
  %377 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %376)
  br label %378

378:                                              ; preds = %373, %358
  br label %379

379:                                              ; preds = %378, %354
  %380 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @stb2, i32 0, i32 0), align 4
  %381 = call i64 @S_ISDIR(i32 %380)
  %382 = icmp ne i64 %381, 0
  br i1 %382, label %383, label %404

383:                                              ; preds = %379
  %384 = load i8**, i8*** %5, align 8
  %385 = getelementptr inbounds i8*, i8** %384, i64 1
  %386 = load i8*, i8** %385, align 8
  %387 = load i8**, i8*** %5, align 8
  %388 = getelementptr inbounds i8*, i8** %387, i64 0
  %389 = load i8*, i8** %388, align 8
  %390 = call i8* @splice(i8* %386, i8* %389)
  %391 = load i8**, i8*** %5, align 8
  %392 = getelementptr inbounds i8*, i8** %391, i64 1
  store i8* %390, i8** %392, align 8
  %393 = load i8**, i8*** %5, align 8
  %394 = getelementptr inbounds i8*, i8** %393, i64 1
  %395 = load i8*, i8** %394, align 8
  %396 = call i64 @stat(i8* %395, %struct.TYPE_5__* @stb2)
  %397 = icmp slt i64 %396, 0
  br i1 %397, label %398, label %403

398:                                              ; preds = %383
  %399 = load i8**, i8*** %5, align 8
  %400 = getelementptr inbounds i8*, i8** %399, i64 1
  %401 = load i8*, i8** %400, align 8
  %402 = call i32 (i32, i8*, ...) @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %401)
  br label %403

403:                                              ; preds = %398, %383
  br label %404

404:                                              ; preds = %403, %379
  %405 = load i8**, i8*** %5, align 8
  %406 = getelementptr inbounds i8*, i8** %405, i64 0
  %407 = load i8*, i8** %406, align 8
  %408 = load i8**, i8*** %5, align 8
  %409 = getelementptr inbounds i8*, i8** %408, i64 1
  %410 = load i8*, i8** %409, align 8
  %411 = load i32, i32* %11, align 4
  %412 = call i32 @diffreg(i8* %407, i8* %410, i32 %411, i32 1)
  %413 = load i8**, i8*** %5, align 8
  %414 = getelementptr inbounds i8*, i8** %413, i64 0
  %415 = load i8*, i8** %414, align 8
  %416 = load i8**, i8*** %5, align 8
  %417 = getelementptr inbounds i8*, i8** %416, i64 1
  %418 = load i8*, i8** %417, align 8
  %419 = call i32 @print_status(i32 %412, i8* %415, i8* %418, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %420

420:                                              ; preds = %404, %345
  %421 = load i32, i32* @status, align 4
  %422 = call i32 @exit(i32 %421) #6
  unreachable
}

declare dso_local i32 @getopt_long(i32, i8**, i32, i32, i32*) #1

declare dso_local i32 @usage(...) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isdigit(i32) #2

declare dso_local i64 @strtol(i32*, i8**, i32) #1

declare dso_local i32 @push_ignore_pats(i32*) #1

declare dso_local i32 @read_excludes_file(i32*) #1

declare dso_local i32 @push_excludes(i32*) #1

declare dso_local i64 @strtonum(i32*, i32, i32, i8**) #1

declare dso_local i32 @warnx(i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @regcomp(i32*, i8*, i32) #1

declare dso_local i32 @regerror(i32, i32*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @fstat(i32, %struct.TYPE_5__*) #1

declare dso_local i64 @stat(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_argstr(i8**, i8**) #1

declare dso_local i32 @diffdir(i8*, i8*, i32) #1

declare dso_local i8* @splice(i8*, i8*) #1

declare dso_local i32 @print_status(i32, i8*, i8*, i8*) #1

declare dso_local i32 @diffreg(i8*, i8*, i32, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readonly }
attributes #6 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
