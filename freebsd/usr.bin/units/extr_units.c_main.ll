; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/units/extr_units.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unittype = type { i32 }

@numfmt = common dso_local global i8* null, align 8
@outputformat = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"+ehf:o:qtvH:UV\00", align 1
@longopts = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%6e\00", align 1
@optarg = common dso_local global i8* null, align 8
@terse = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"FreeBSD units\0A\00", align 1
@UNITSFILE = common dso_local global i8* null, align 8
@F_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Units data file not found\00", align 1
@optind = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"unable to enter capability mode\00", align 1
@havestr = common dso_local global i8* null, align 8
@wantstr = common dso_local global i8* null, align 8
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@EL_PROMPT = common dso_local global i32 0, align 4
@prompt = common dso_local global i32 0, align 4
@EL_EDITOR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"emacs\00", align 1
@EL_SIGNAL = common dso_local global i32 0, align 4
@EL_HIST = common dso_local global i32 0, align 4
@H_SETSIZE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [29 x i8] c"Could not initialize history\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"%d units, %d prefixes\0A\00", align 1
@unitcount = common dso_local global i32 0, align 4
@prefixcount = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c"You have: \00", align 1
@promptstr = common dso_local global i8* null, align 8
@H_ENTER = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [11 x i8] c"You want: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.unittype, align 4
  %7 = alloca %struct.unittype, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i8* null, i8** %16, align 8
  %17 = load i8*, i8** @numfmt, align 8
  store i8* %17, i8** @outputformat, align 8
  store i32 0, i32* %11, align 4
  br label %18

18:                                               ; preds = %62, %2
  %19 = load i32, i32* %4, align 4
  %20 = load i8**, i8*** %5, align 8
  %21 = load i32, i32* @longopts, align 4
  %22 = call i32 @getopt_long(i32 %19, i8** %20, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %21, i32* null)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %63

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %60 [
    i32 101, label %26
    i32 102, label %27
    i32 72, label %37
    i32 113, label %39
    i32 116, label %40
    i32 111, label %41
    i32 118, label %43
    i32 86, label %44
    i32 85, label %47
    i32 104, label %59
  ]

26:                                               ; preds = %24
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** @outputformat, align 8
  br label %62

27:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  %28 = load i8*, i8** @optarg, align 8
  %29 = call i32 @strlen(i8* %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @readunits(i8* null)
  br label %36

33:                                               ; preds = %27
  %34 = load i8*, i8** @optarg, align 8
  %35 = call i32 @readunits(i8* %34)
  br label %36

36:                                               ; preds = %33, %31
  br label %62

37:                                               ; preds = %24
  %38 = load i8*, i8** @optarg, align 8
  store i8* %38, i8** %16, align 8
  br label %62

39:                                               ; preds = %24
  store i32 1, i32* %9, align 4
  br label %62

40:                                               ; preds = %24
  store i32 1, i32* @terse, align 4
  br label %62

41:                                               ; preds = %24
  %42 = load i8*, i8** @optarg, align 8
  store i8* %42, i8** @outputformat, align 8
  br label %62

43:                                               ; preds = %24
  store i32 1, i32* @verbose, align 4
  br label %62

44:                                               ; preds = %24
  %45 = load i32, i32* @stderr, align 4
  %46 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %47

47:                                               ; preds = %24, %44
  %48 = load i8*, i8** @UNITSFILE, align 8
  %49 = load i32, i32* @F_OK, align 4
  %50 = call i32 @access(i8* %48, i32 %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i8*, i8** @UNITSFILE, align 8
  %54 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  br label %57

55:                                               ; preds = %47
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %52
  %58 = call i32 @exit(i32 0) #3
  unreachable

59:                                               ; preds = %24
  br label %60

60:                                               ; preds = %24, %59
  %61 = call i32 (...) @usage()
  br label %62

62:                                               ; preds = %60, %43, %41, %40, %39, %37, %36, %26
  br label %18

63:                                               ; preds = %18
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = call i32 @readunits(i8* null)
  br label %68

68:                                               ; preds = %66, %63
  %69 = load i32, i32* @optind, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 2
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %99

73:                                               ; preds = %68
  %74 = call i64 (...) @caph_enter()
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i8**, i8*** %5, align 8
  %80 = load i32, i32* @optind, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8*, i8** %79, i64 %81
  %83 = load i8*, i8** %82, align 8
  store i8* %83, i8** @havestr, align 8
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* @optind, align 4
  %86 = add nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8*, i8** %84, i64 %87
  %89 = load i8*, i8** %88, align 8
  store i8* %89, i8** @wantstr, align 8
  %90 = call i32 @initializeunit(%struct.unittype* %6)
  %91 = load i8*, i8** @havestr, align 8
  %92 = call i64 @addunit(%struct.unittype* %6, i8* %91, i32 0, i32 1)
  %93 = call i64 @completereduce(%struct.unittype* %6)
  %94 = call i32 @initializeunit(%struct.unittype* %7)
  %95 = load i8*, i8** @wantstr, align 8
  %96 = call i64 @addunit(%struct.unittype* %7, i8* %95, i32 0, i32 1)
  %97 = call i64 @completereduce(%struct.unittype* %7)
  %98 = call i32 @showanswer(%struct.unittype* %6, %struct.unittype* %7)
  br label %222

99:                                               ; preds = %68
  %100 = call i32* (...) @history_init()
  store i32* %100, i32** %12, align 8
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i32, i32* @stdin, align 4
  %105 = load i32, i32* @stdout, align 4
  %106 = load i32, i32* @stderr, align 4
  %107 = call i32* @el_init(i8* %103, i32 %104, i32 %105, i32 %106)
  store i32* %107, i32** %13, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* @EL_PROMPT, align 4
  %110 = call i32 (i32*, i32, ...) @el_set(i32* %108, i32 %109, i32* @prompt)
  %111 = load i32*, i32** %13, align 8
  %112 = load i32, i32* @EL_EDITOR, align 4
  %113 = call i32 (i32*, i32, ...) @el_set(i32* %111, i32 %112, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %114 = load i32*, i32** %13, align 8
  %115 = load i32, i32* @EL_SIGNAL, align 4
  %116 = call i32 (i32*, i32, ...) @el_set(i32* %114, i32 %115, i32 1)
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* @EL_HIST, align 4
  %119 = load i32*, i32** %12, align 8
  %120 = call i32 (i32*, i32, ...) @el_set(i32* %117, i32 %118, i32 (i32*, i32*, i32, ...)* @history, i32* %119)
  %121 = load i32*, i32** %13, align 8
  %122 = call i32 @el_source(i32* %121, i32* null)
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* @H_SETSIZE, align 4
  %125 = call i32 (i32*, i32*, i32, ...) @history(i32* %123, i32* %14, i32 %124, i32 800)
  %126 = load i32*, i32** %12, align 8
  %127 = icmp eq i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %99
  %129 = call i32 @err(i32 1, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0))
  br label %130

130:                                              ; preds = %128, %99
  %131 = call i64 (...) @caph_enter()
  %132 = icmp slt i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = call i32 @err(i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %135

135:                                              ; preds = %133, %130
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* @unitcount, align 4
  %140 = load i32, i32* @prefixcount, align 4
  %141 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %138, %135
  br label %143

143:                                              ; preds = %215, %142
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  %146 = xor i1 %145, true
  br i1 %146, label %147, label %217

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %175, %147
  %149 = call i32 @initializeunit(%struct.unittype* %6)
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %148
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i8** @promptstr, align 8
  br label %153

153:                                              ; preds = %152, %148
  %154 = load i32*, i32** %13, align 8
  %155 = call i8* @el_gets(i32* %154, i32* %15)
  store i8* %155, i8** @havestr, align 8
  %156 = load i8*, i8** @havestr, align 8
  %157 = icmp eq i8* %156, null
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  store i32 1, i32* %11, align 4
  br label %177

159:                                              ; preds = %153
  %160 = load i32, i32* %15, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %159
  %163 = load i32*, i32** %12, align 8
  %164 = load i32, i32* @H_ENTER, align 4
  %165 = load i8*, i8** @havestr, align 8
  %166 = call i32 (i32*, i32*, i32, ...) @history(i32* %163, i32* %14, i32 %164, i8* %165)
  br label %167

167:                                              ; preds = %162, %159
  br label %168

168:                                              ; preds = %167
  %169 = load i8*, i8** @havestr, align 8
  %170 = call i64 @addunit(%struct.unittype* %6, i8* %169, i32 0, i32 1)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %175, label %172

172:                                              ; preds = %168
  %173 = call i64 @completereduce(%struct.unittype* %6)
  %174 = icmp ne i64 %173, 0
  br label %175

175:                                              ; preds = %172, %168
  %176 = phi i1 [ true, %168 ], [ %174, %172 ]
  br i1 %176, label %148, label %177

177:                                              ; preds = %175, %158
  %178 = load i32, i32* %11, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %177
  br label %217

181:                                              ; preds = %177
  br label %182

182:                                              ; preds = %209, %181
  %183 = call i32 @initializeunit(%struct.unittype* %7)
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %182
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0), i8** @promptstr, align 8
  br label %187

187:                                              ; preds = %186, %182
  %188 = load i32*, i32** %13, align 8
  %189 = call i8* @el_gets(i32* %188, i32* %15)
  store i8* %189, i8** @wantstr, align 8
  %190 = load i8*, i8** @wantstr, align 8
  %191 = icmp eq i8* %190, null
  br i1 %191, label %192, label %193

192:                                              ; preds = %187
  store i32 1, i32* %11, align 4
  br label %211

193:                                              ; preds = %187
  %194 = load i32, i32* %15, align 4
  %195 = icmp sgt i32 %194, 0
  br i1 %195, label %196, label %201

196:                                              ; preds = %193
  %197 = load i32*, i32** %12, align 8
  %198 = load i32, i32* @H_ENTER, align 4
  %199 = load i8*, i8** @wantstr, align 8
  %200 = call i32 (i32*, i32*, i32, ...) @history(i32* %197, i32* %14, i32 %198, i8* %199)
  br label %201

201:                                              ; preds = %196, %193
  br label %202

202:                                              ; preds = %201
  %203 = load i8*, i8** @wantstr, align 8
  %204 = call i64 @addunit(%struct.unittype* %7, i8* %203, i32 0, i32 1)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %202
  %207 = call i64 @completereduce(%struct.unittype* %7)
  %208 = icmp ne i64 %207, 0
  br label %209

209:                                              ; preds = %206, %202
  %210 = phi i1 [ true, %202 ], [ %208, %206 ]
  br i1 %210, label %182, label %211

211:                                              ; preds = %209, %192
  %212 = load i32, i32* %11, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %211
  br label %217

215:                                              ; preds = %211
  %216 = call i32 @showanswer(%struct.unittype* %6, %struct.unittype* %7)
  br label %143

217:                                              ; preds = %214, %180, %143
  %218 = load i32*, i32** %12, align 8
  %219 = call i32 @history_end(i32* %218)
  %220 = load i32*, i32** %13, align 8
  %221 = call i32 @el_end(i32* %220)
  br label %222

222:                                              ; preds = %217, %78
  ret i32 0
}

declare dso_local i32 @getopt_long(i32, i8**, i8*, i32, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @readunits(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @access(i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @usage(...) #1

declare dso_local i64 @caph_enter(...) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @initializeunit(%struct.unittype*) #1

declare dso_local i64 @addunit(%struct.unittype*, i8*, i32, i32) #1

declare dso_local i64 @completereduce(%struct.unittype*) #1

declare dso_local i32 @showanswer(%struct.unittype*, %struct.unittype*) #1

declare dso_local i32* @history_init(...) #1

declare dso_local i32* @el_init(i8*, i32, i32, i32) #1

declare dso_local i32 @el_set(i32*, i32, ...) #1

declare dso_local i32 @history(i32*, i32*, i32, ...) #1

declare dso_local i32 @el_source(i32*, i32*) #1

declare dso_local i8* @el_gets(i32*, i32*) #1

declare dso_local i32 @history_end(i32*) #1

declare dso_local i32 @el_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
