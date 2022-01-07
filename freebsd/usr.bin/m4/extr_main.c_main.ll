; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/m4/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i64 0, align 8
@onintr = common dso_local global i64 0, align 8
@INITSTACKMAX = common dso_local global i32 0, align 4
@STACKMAX = common dso_local global i32 0, align 4
@mstack = common dso_local global i32 0, align 4
@sstack = common dso_local global i32 0, align 4
@maxout = common dso_local global i32 0, align 4
@outfile = common dso_local global i32** null, align 8
@MAXOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"gst:d:D:EU:o:I:P\00", align 1
@optarg = common dso_local global i8* null, align 8
@EOS = common dso_local global i8 0, align 1
@error_warns = common dso_local global i32 0, align 4
@fatal_warns = common dso_local global i32 0, align 4
@prefix_builtins = common dso_local global i32 0, align 4
@mimic_gnu = common dso_local global i32 0, align 4
@synch_lines = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"format\00", align 1
@FORMATTYPE = common dso_local global i32 0, align 4
@stdout = common dso_local global i64 0, align 8
@active = common dso_local global i64 0, align 8
@bufbase = common dso_local global i32 0, align 4
@bbase = common dso_local global i32* null, align 8
@sp = common dso_local global i32 0, align 4
@fp = common dso_local global i64 0, align 8
@infile = common dso_local global i64 0, align 8
@stdin = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@wrapindex = common dso_local global i32 0, align 4
@ilevel = common dso_local global i64 0, align 8
@buf = common dso_local global i32 0, align 4
@bp = common dso_local global i32 0, align 4
@m4wraps = common dso_local global i32* null, align 8
@exit_code = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @SIGINT, align 4
  %11 = load i64, i64* @SIG_IGN, align 8
  %12 = call i64 @signal(i32 %10, i64 %11)
  %13 = load i64, i64* @SIG_IGN, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32, i32* @SIGINT, align 4
  %17 = load i64, i64* @onintr, align 8
  %18 = call i64 @signal(i32 %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = call i32 (...) @init_macros()
  %21 = call i32 (...) @initspaces()
  %22 = load i32, i32* @INITSTACKMAX, align 4
  store i32 %22, i32* @STACKMAX, align 4
  %23 = load i32, i32* @STACKMAX, align 4
  %24 = call i32 @xreallocarray(i32* null, i32 %23, i32 4, i32* null)
  store i32 %24, i32* @mstack, align 4
  %25 = load i32, i32* @STACKMAX, align 4
  %26 = call i32 @xalloc(i32 %25, i32* null)
  store i32 %26, i32* @sstack, align 4
  store i32 0, i32* @maxout, align 4
  store i32** null, i32*** @outfile, align 8
  %27 = load i32, i32* @MAXOUT, align 4
  %28 = call i32 @resizedivs(i32 %27)
  br label %29

29:                                               ; preds = %90, %19
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 %32, i32* %6, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %91

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  switch i32 %35, label %90 [
    i32 68, label %36
    i32 69, label %64
    i32 73, label %70
    i32 80, label %73
    i32 85, label %74
    i32 103, label %77
    i32 100, label %78
    i32 115, label %81
    i32 116, label %82
    i32 111, label %85
    i32 63, label %88
  ]

36:                                               ; preds = %34
  %37 = load i8*, i8** @optarg, align 8
  store i8* %37, i8** %8, align 8
  br label %38

38:                                               ; preds = %49, %36
  %39 = load i8*, i8** %8, align 8
  %40 = load i8, i8* %39, align 1
  %41 = icmp ne i8 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %38
  %43 = load i8*, i8** %8, align 8
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = icmp eq i32 %45, 61
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %52

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load i8*, i8** %8, align 8
  %51 = getelementptr inbounds i8, i8* %50, i32 1
  store i8* %51, i8** %8, align 8
  br label %38

52:                                               ; preds = %47, %38
  %53 = load i8*, i8** %8, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load i8, i8* @EOS, align 1
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  store i8 %57, i8* %58, align 1
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i8*, i8** @optarg, align 8
  %62 = load i8*, i8** %8, align 8
  %63 = call i32 @dodefine(i8* %61, i8* %62)
  br label %90

64:                                               ; preds = %34
  %65 = load i32, i32* @error_warns, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  store i32 1, i32* @error_warns, align 4
  br label %69

68:                                               ; preds = %64
  store i32 1, i32* @fatal_warns, align 4
  br label %69

69:                                               ; preds = %68, %67
  br label %90

70:                                               ; preds = %34
  %71 = load i8*, i8** @optarg, align 8
  %72 = call i32 @addtoincludepath(i8* %71)
  br label %90

73:                                               ; preds = %34
  store i32 1, i32* @prefix_builtins, align 4
  br label %90

74:                                               ; preds = %34
  %75 = load i8*, i8** @optarg, align 8
  %76 = call i32 @macro_popdef(i8* %75)
  br label %90

77:                                               ; preds = %34
  store i32 1, i32* @mimic_gnu, align 4
  br label %90

78:                                               ; preds = %34
  %79 = load i8*, i8** @optarg, align 8
  %80 = call i32 @set_trace_flags(i8* %79)
  br label %90

81:                                               ; preds = %34
  store i32 1, i32* @synch_lines, align 4
  br label %90

82:                                               ; preds = %34
  %83 = load i8*, i8** @optarg, align 8
  %84 = call i32 @mark_traced(i8* %83, i32 1)
  br label %90

85:                                               ; preds = %34
  %86 = load i8*, i8** @optarg, align 8
  %87 = call i32 @trace_file(i8* %86)
  br label %90

88:                                               ; preds = %34
  %89 = call i32 (...) @usage()
  br label %90

90:                                               ; preds = %88, %34, %85, %82, %81, %78, %77, %74, %73, %70, %69, %60
  br label %29

91:                                               ; preds = %29
  %92 = load i64, i64* @optind, align 8
  %93 = load i32, i32* %4, align 4
  %94 = sext i32 %93 to i64
  %95 = sub nsw i64 %94, %92
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %4, align 4
  %97 = load i64, i64* @optind, align 8
  %98 = load i8**, i8*** %5, align 8
  %99 = getelementptr inbounds i8*, i8** %98, i64 %97
  store i8** %99, i8*** %5, align 8
  %100 = call i32 (...) @initkwds()
  %101 = load i32, i32* @mimic_gnu, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %91
  %104 = load i32, i32* @FORMATTYPE, align 4
  %105 = call i32 @setup_builtin(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %104)
  br label %106

106:                                              ; preds = %103, %91
  %107 = load i64, i64* @stdout, align 8
  store i64 %107, i64* @active, align 8
  %108 = load i32, i32* @bufbase, align 4
  %109 = load i32*, i32** @bbase, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  store i32 %108, i32* %110, align 4
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %119, label %113

113:                                              ; preds = %106
  store i32 -1, i32* @sp, align 4
  store i64 0, i64* @fp, align 8
  %114 = load i64, i64* @infile, align 8
  %115 = add nsw i64 %114, 0
  %116 = load i32, i32* @stdin, align 4
  %117 = call i32 @set_input(i64 %115, i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %118 = call i32 (...) @macro()
  br label %161

119:                                              ; preds = %106
  br label %120

120:                                              ; preds = %157, %119
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %4, align 4
  %123 = icmp ne i32 %121, 0
  br i1 %123, label %124, label %160

124:                                              ; preds = %120
  %125 = load i8**, i8*** %5, align 8
  %126 = load i8*, i8** %125, align 8
  store i8* %126, i8** %8, align 8
  %127 = load i8*, i8** %8, align 8
  %128 = getelementptr inbounds i8, i8* %127, i64 0
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 45
  br i1 %131, label %132, label %144

132:                                              ; preds = %124
  %133 = load i8*, i8** %8, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 1
  %135 = load i8, i8* %134, align 1
  %136 = sext i8 %135 to i32
  %137 = load i8, i8* @EOS, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp eq i32 %136, %138
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i64, i64* @infile, align 8
  %142 = load i32, i32* @stdin, align 4
  %143 = call i32 @set_input(i64 %141, i32 %142, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %153

144:                                              ; preds = %132, %124
  %145 = load i64, i64* @infile, align 8
  %146 = load i8*, i8** %8, align 8
  %147 = call i32* @fopen_trypath(i64 %145, i8* %146)
  %148 = icmp eq i32* %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %149, %144
  br label %153

153:                                              ; preds = %152, %140
  store i32 -1, i32* @sp, align 4
  store i64 0, i64* @fp, align 8
  %154 = call i32 (...) @macro()
  %155 = load i64, i64* @infile, align 8
  %156 = call i32 @release_input(i64 %155)
  br label %157

157:                                              ; preds = %153
  %158 = load i8**, i8*** %5, align 8
  %159 = getelementptr inbounds i8*, i8** %158, i32 1
  store i8** %159, i8*** %5, align 8
  br label %120

160:                                              ; preds = %120
  br label %161

161:                                              ; preds = %160, %113
  %162 = load i32, i32* @wrapindex, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %208

164:                                              ; preds = %161
  store i64 0, i64* @ilevel, align 8
  %165 = load i32, i32* @buf, align 4
  store i32 %165, i32* @bp, align 4
  store i32 %165, i32* @bufbase, align 4
  %166 = load i32, i32* @mimic_gnu, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %187, %168
  %170 = load i32, i32* @wrapindex, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %189

172:                                              ; preds = %169
  store i32 0, i32* %9, align 4
  br label %173

173:                                              ; preds = %184, %172
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @wrapindex, align 4
  %176 = icmp slt i32 %174, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %173
  %178 = load i32*, i32** @m4wraps, align 8
  %179 = load i32, i32* %9, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %178, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @pbstr(i32 %182)
  br label %184

184:                                              ; preds = %177
  %185 = load i32, i32* %9, align 4
  %186 = add nsw i32 %185, 1
  store i32 %186, i32* %9, align 4
  br label %173

187:                                              ; preds = %173
  store i32 0, i32* @wrapindex, align 4
  %188 = call i32 (...) @macro()
  br label %169

189:                                              ; preds = %169
  br label %207

190:                                              ; preds = %164
  store i32 0, i32* %9, align 4
  br label %191

191:                                              ; preds = %203, %190
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @wrapindex, align 4
  %194 = icmp slt i32 %192, %193
  br i1 %194, label %195, label %206

195:                                              ; preds = %191
  %196 = load i32*, i32** @m4wraps, align 8
  %197 = load i32, i32* %9, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @pbstr(i32 %200)
  %202 = call i32 (...) @macro()
  br label %203

203:                                              ; preds = %195
  %204 = load i32, i32* %9, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %9, align 4
  br label %191

206:                                              ; preds = %191
  br label %207

207:                                              ; preds = %206, %189
  br label %208

208:                                              ; preds = %207, %161
  %209 = load i64, i64* @active, align 8
  %210 = load i64, i64* @stdout, align 8
  %211 = icmp ne i64 %209, %210
  br i1 %211, label %212, label %214

212:                                              ; preds = %208
  %213 = load i64, i64* @stdout, align 8
  store i64 %213, i64* @active, align 8
  br label %214

214:                                              ; preds = %212, %208
  store i32 1, i32* %7, align 4
  br label %215

215:                                              ; preds = %230, %214
  %216 = load i32, i32* %7, align 4
  %217 = load i32, i32* @maxout, align 4
  %218 = icmp slt i32 %216, %217
  br i1 %218, label %219, label %233

219:                                              ; preds = %215
  %220 = load i32**, i32*** @outfile, align 8
  %221 = load i32, i32* %7, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32*, i32** %220, i64 %222
  %224 = load i32*, i32** %223, align 8
  %225 = icmp ne i32* %224, null
  br i1 %225, label %226, label %229

226:                                              ; preds = %219
  %227 = load i32, i32* %7, align 4
  %228 = call i32 @getdiv(i32 %227)
  br label %229

229:                                              ; preds = %226, %219
  br label %230

230:                                              ; preds = %229
  %231 = load i32, i32* %7, align 4
  %232 = add nsw i32 %231, 1
  store i32 %232, i32* %7, align 4
  br label %215

233:                                              ; preds = %215
  %234 = load i32**, i32*** @outfile, align 8
  %235 = getelementptr inbounds i32*, i32** %234, i64 0
  %236 = load i32*, i32** %235, align 8
  %237 = icmp ne i32* %236, null
  br i1 %237, label %238, label %243

238:                                              ; preds = %233
  %239 = load i32**, i32*** @outfile, align 8
  %240 = getelementptr inbounds i32*, i32** %239, i64 0
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @fclose(i32* %241)
  br label %243

243:                                              ; preds = %238, %233
  %244 = load i32, i32* @exit_code, align 4
  ret i32 %244
}

declare dso_local i64 @signal(i32, i64) #1

declare dso_local i32 @init_macros(...) #1

declare dso_local i32 @initspaces(...) #1

declare dso_local i32 @xreallocarray(i32*, i32, i32, i32*) #1

declare dso_local i32 @xalloc(i32, i32*) #1

declare dso_local i32 @resizedivs(i32) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @dodefine(i8*, i8*) #1

declare dso_local i32 @addtoincludepath(i8*) #1

declare dso_local i32 @macro_popdef(i8*) #1

declare dso_local i32 @set_trace_flags(i8*) #1

declare dso_local i32 @mark_traced(i8*, i32) #1

declare dso_local i32 @trace_file(i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32 @initkwds(...) #1

declare dso_local i32 @setup_builtin(i8*, i32) #1

declare dso_local i32 @set_input(i64, i32, i8*) #1

declare dso_local i32 @macro(...) #1

declare dso_local i32* @fopen_trypath(i64, i8*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @release_input(i64) #1

declare dso_local i32 @pbstr(i32) #1

declare dso_local i32 @getdiv(i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
