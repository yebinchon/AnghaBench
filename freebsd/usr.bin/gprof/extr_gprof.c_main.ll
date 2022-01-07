; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@debug = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@bflag = common dso_local global i8* null, align 8
@aflag = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@Cflag = common dso_local global i8* null, align 8
@cyclethreshold = common dso_local global i32 0, align 4
@dflag = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@ANYDEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"gprof: -d ignored\0A\00", align 1
@Elist = common dso_local global i32 0, align 4
@Eflag = common dso_local global i8* null, align 8
@elist = common dso_local global i32 0, align 4
@eflag = common dso_local global i8* null, align 8
@Flist = common dso_local global i32 0, align 4
@Fflag = common dso_local global i8* null, align 8
@flist = common dso_local global i32 0, align 4
@fflag = common dso_local global i8* null, align 8
@kfromlist = common dso_local global i32 0, align 4
@ktolist = common dso_local global i32 0, align 4
@kflag = common dso_local global i8* null, align 8
@Kflag = common dso_local global i8* null, align 8
@lflag = common dso_local global i32 0, align 4
@Lflag = common dso_local global i32 0, align 4
@sflag = common dso_local global i8* null, align 8
@uflag = common dso_local global i8* null, align 8
@zflag = common dso_local global i8* null, align 8
@a_outname = common dso_local global i8* null, align 8
@A_OUTNAME = common dso_local global i8* null, align 8
@gmonname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c".gmon\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%s: bad format\00", align 1
@nl = common dso_local global i32 0, align 4
@nname = common dso_local global i32 0, align 4
@valcmp = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"time is in ticks, not seconds\0A\00", align 1
@GMONSUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = load i8**, i8*** %5, align 8
  %12 = getelementptr inbounds i8*, i8** %11, i32 1
  store i8** %12, i8*** %5, align 8
  store i32 0, i32* @debug, align 4
  %13 = load i8*, i8** @TRUE, align 8
  store i8* %13, i8** @bflag, align 8
  br label %14

14:                                               ; preds = %120, %2
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %15, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %14
  %19 = load i8**, i8*** %5, align 8
  %20 = load i8*, i8** %19, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 45
  br label %24

24:                                               ; preds = %18, %14
  %25 = phi i1 [ false, %14 ], [ %23, %18 ]
  br i1 %25, label %26, label %123

26:                                               ; preds = %24
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %27, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  switch i32 %33, label %120 [
    i32 97, label %34
    i32 98, label %36
    i32 67, label %38
    i32 100, label %44
    i32 69, label %58
    i32 101, label %71
    i32 70, label %78
    i32 102, label %91
    i32 107, label %98
    i32 75, label %110
    i32 108, label %112
    i32 76, label %113
    i32 115, label %114
    i32 117, label %116
    i32 122, label %118
  ]

34:                                               ; preds = %26
  %35 = load i8*, i8** @TRUE, align 8
  store i8* %35, i8** @aflag, align 8
  br label %120

36:                                               ; preds = %26
  %37 = load i8*, i8** @FALSE, align 8
  store i8* %37, i8** @bflag, align 8
  br label %120

38:                                               ; preds = %26
  %39 = load i8*, i8** @TRUE, align 8
  store i8* %39, i8** @Cflag, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i32 1
  store i8** %41, i8*** %5, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @atoi(i8* %42)
  store i32 %43, i32* @cyclethreshold, align 4
  br label %120

44:                                               ; preds = %26
  %45 = load i8*, i8** @TRUE, align 8
  store i8* %45, i8** @dflag, align 8
  %46 = load i32, i32* @stdout, align 4
  %47 = call i32 @setlinebuf(i32 %46)
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i32 1
  store i8** %49, i8*** %5, align 8
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @atoi(i8* %50)
  %52 = load i32, i32* @debug, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* @debug, align 4
  %54 = load i32, i32* @ANYDEBUG, align 4
  %55 = load i32, i32* @debug, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* @debug, align 4
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %120

58:                                               ; preds = %26
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i32 1
  store i8** %60, i8*** %5, align 8
  %61 = load i32, i32* @Elist, align 4
  %62 = load i8**, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = call i32 @addlist(i32 %61, i8* %63)
  %65 = load i8*, i8** @TRUE, align 8
  store i8* %65, i8** @Eflag, align 8
  %66 = load i32, i32* @elist, align 4
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @addlist(i32 %66, i8* %68)
  %70 = load i8*, i8** @TRUE, align 8
  store i8* %70, i8** @eflag, align 8
  br label %120

71:                                               ; preds = %26
  %72 = load i32, i32* @elist, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i32 1
  store i8** %74, i8*** %5, align 8
  %75 = load i8*, i8** %74, align 8
  %76 = call i32 @addlist(i32 %72, i8* %75)
  %77 = load i8*, i8** @TRUE, align 8
  store i8* %77, i8** @eflag, align 8
  br label %120

78:                                               ; preds = %26
  %79 = load i8**, i8*** %5, align 8
  %80 = getelementptr inbounds i8*, i8** %79, i32 1
  store i8** %80, i8*** %5, align 8
  %81 = load i32, i32* @Flist, align 4
  %82 = load i8**, i8*** %5, align 8
  %83 = load i8*, i8** %82, align 8
  %84 = call i32 @addlist(i32 %81, i8* %83)
  %85 = load i8*, i8** @TRUE, align 8
  store i8* %85, i8** @Fflag, align 8
  %86 = load i32, i32* @flist, align 4
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @addlist(i32 %86, i8* %88)
  %90 = load i8*, i8** @TRUE, align 8
  store i8* %90, i8** @fflag, align 8
  br label %120

91:                                               ; preds = %26
  %92 = load i32, i32* @flist, align 4
  %93 = load i8**, i8*** %5, align 8
  %94 = getelementptr inbounds i8*, i8** %93, i32 1
  store i8** %94, i8*** %5, align 8
  %95 = load i8*, i8** %94, align 8
  %96 = call i32 @addlist(i32 %92, i8* %95)
  %97 = load i8*, i8** @TRUE, align 8
  store i8* %97, i8** @fflag, align 8
  br label %120

98:                                               ; preds = %26
  %99 = load i32, i32* @kfromlist, align 4
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %5, align 8
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @addlist(i32 %99, i8* %102)
  %104 = load i32, i32* @ktolist, align 4
  %105 = load i8**, i8*** %5, align 8
  %106 = getelementptr inbounds i8*, i8** %105, i32 1
  store i8** %106, i8*** %5, align 8
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @addlist(i32 %104, i8* %107)
  %109 = load i8*, i8** @TRUE, align 8
  store i8* %109, i8** @kflag, align 8
  br label %120

110:                                              ; preds = %26
  %111 = load i8*, i8** @TRUE, align 8
  store i8* %111, i8** @Kflag, align 8
  br label %120

112:                                              ; preds = %26
  store i32 1, i32* @lflag, align 4
  store i32 0, i32* @Lflag, align 4
  br label %120

113:                                              ; preds = %26
  store i32 1, i32* @Lflag, align 4
  store i32 0, i32* @lflag, align 4
  br label %120

114:                                              ; preds = %26
  %115 = load i8*, i8** @TRUE, align 8
  store i8* %115, i8** @sflag, align 8
  br label %120

116:                                              ; preds = %26
  %117 = load i8*, i8** @TRUE, align 8
  store i8* %117, i8** @uflag, align 8
  br label %120

118:                                              ; preds = %26
  %119 = load i8*, i8** @TRUE, align 8
  store i8* %119, i8** @zflag, align 8
  br label %120

120:                                              ; preds = %26, %118, %116, %114, %113, %112, %110, %98, %91, %78, %71, %58, %44, %38, %36, %34
  %121 = load i8**, i8*** %5, align 8
  %122 = getelementptr inbounds i8*, i8** %121, i32 1
  store i8** %122, i8*** %5, align 8
  br label %14

123:                                              ; preds = %24
  %124 = load i8**, i8*** %5, align 8
  %125 = load i8*, i8** %124, align 8
  %126 = icmp ne i8* %125, null
  br i1 %126, label %127, label %132

127:                                              ; preds = %123
  %128 = load i8**, i8*** %5, align 8
  %129 = load i8*, i8** %128, align 8
  store i8* %129, i8** @a_outname, align 8
  %130 = load i8**, i8*** %5, align 8
  %131 = getelementptr inbounds i8*, i8** %130, i32 1
  store i8** %131, i8*** %5, align 8
  br label %134

132:                                              ; preds = %123
  %133 = load i8*, i8** @A_OUTNAME, align 8
  store i8* %133, i8** @a_outname, align 8
  br label %134

134:                                              ; preds = %132, %127
  %135 = load i8**, i8*** %5, align 8
  %136 = load i8*, i8** %135, align 8
  %137 = icmp ne i8* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load i8**, i8*** %5, align 8
  %140 = load i8*, i8** %139, align 8
  store i8* %140, i8** @gmonname, align 8
  %141 = load i8**, i8*** %5, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i32 1
  store i8** %142, i8*** %5, align 8
  br label %154

143:                                              ; preds = %134
  %144 = load i8*, i8** @a_outname, align 8
  %145 = call i64 @strlen(i8* %144)
  %146 = add nsw i64 %145, 6
  %147 = call i64 @malloc(i64 %146)
  %148 = inttoptr i64 %147 to i8*
  store i8* %148, i8** @gmonname, align 8
  %149 = load i8*, i8** @gmonname, align 8
  %150 = load i8*, i8** @a_outname, align 8
  %151 = call i32 @strcpy(i8* %149, i8* %150)
  %152 = load i8*, i8** @gmonname, align 8
  %153 = call i32 @strcat(i8* %152, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %143, %138
  %155 = load i8*, i8** @Kflag, align 8
  %156 = icmp ne i8* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load i8*, i8** @a_outname, align 8
  %159 = call i32 @kernel_getnfile(i8* %158, i8*** %8)
  %160 = icmp eq i32 %159, -1
  br i1 %160, label %168, label %161

161:                                              ; preds = %157, %154
  %162 = load i8*, i8** @Kflag, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %171, label %164

164:                                              ; preds = %161
  %165 = load i8*, i8** @a_outname, align 8
  %166 = call i32 @elf_getnfile(i8* %165, i8*** %8)
  %167 = icmp eq i32 %166, -1
  br i1 %167, label %168, label %171

168:                                              ; preds = %164, %157
  %169 = load i8*, i8** @a_outname, align 8
  %170 = call i32 @errx(i32 1, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %169)
  br label %171

171:                                              ; preds = %168, %164, %161
  %172 = load i32, i32* @nl, align 4
  %173 = load i32, i32* @nname, align 4
  %174 = load i32, i32* @valcmp, align 4
  %175 = call i32 @qsort(i32 %172, i32 %173, i32 4, i32 %174)
  %176 = load i8**, i8*** %8, align 8
  store i8** %176, i8*** %6, align 8
  br label %177

177:                                              ; preds = %192, %171
  %178 = load i8**, i8*** %6, align 8
  %179 = load i8*, i8** %178, align 8
  %180 = icmp ne i8* %179, null
  br i1 %180, label %181, label %195

181:                                              ; preds = %177
  %182 = load i8*, i8** @TRUE, align 8
  store i8* %182, i8** @Eflag, align 8
  %183 = load i32, i32* @Elist, align 4
  %184 = load i8**, i8*** %6, align 8
  %185 = load i8*, i8** %184, align 8
  %186 = call i32 @addlist(i32 %183, i8* %185)
  %187 = load i8*, i8** @TRUE, align 8
  store i8* %187, i8** @eflag, align 8
  %188 = load i32, i32* @elist, align 4
  %189 = load i8**, i8*** %6, align 8
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @addlist(i32 %188, i8* %190)
  br label %192

192:                                              ; preds = %181
  %193 = load i8**, i8*** %6, align 8
  %194 = getelementptr inbounds i8*, i8** %193, i32 1
  store i8** %194, i8*** %6, align 8
  br label %177

195:                                              ; preds = %177
  br label %196

196:                                              ; preds = %206, %195
  %197 = load i8*, i8** @gmonname, align 8
  %198 = call i32 @getpfile(i8* %197)
  %199 = load i8**, i8*** %5, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = icmp ne i8* %200, null
  br i1 %201, label %202, label %205

202:                                              ; preds = %196
  %203 = load i8**, i8*** %5, align 8
  %204 = load i8*, i8** %203, align 8
  store i8* %204, i8** @gmonname, align 8
  br label %205

205:                                              ; preds = %202, %196
  br label %206

206:                                              ; preds = %205
  %207 = load i8**, i8*** %5, align 8
  %208 = getelementptr inbounds i8*, i8** %207, i32 1
  store i8** %208, i8*** %5, align 8
  %209 = load i8*, i8** %207, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %196, label %211

211:                                              ; preds = %206
  %212 = load i32, i32* @hz, align 4
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %211
  store i32 1, i32* @hz, align 4
  %215 = load i32, i32* @stderr, align 4
  %216 = call i32 @fprintf(i32 %215, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %217

217:                                              ; preds = %214, %211
  %218 = load i8*, i8** @sflag, align 8
  %219 = icmp ne i8* %218, null
  br i1 %219, label %220, label %223

220:                                              ; preds = %217
  %221 = load i32, i32* @GMONSUM, align 4
  %222 = call i32 @dumpsum(i32 %221)
  br label %223

223:                                              ; preds = %220, %217
  %224 = call i32 (...) @asgnsamples()
  %225 = call i32** (...) @doarcs()
  store i32** %225, i32*** %7, align 8
  %226 = load i32, i32* @lflag, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %223
  %229 = load i32**, i32*** %7, align 8
  %230 = call i32 @printgprof(i32** %229)
  br label %231

231:                                              ; preds = %228, %223
  %232 = load i32, i32* @Lflag, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = call i32 (...) @printprof()
  br label %236

236:                                              ; preds = %234, %231
  %237 = call i32 (...) @printindex()
  %238 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @setlinebuf(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @addlist(i32, i8*) #1

declare dso_local i64 @malloc(i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @kernel_getnfile(i8*, i8***) #1

declare dso_local i32 @elf_getnfile(i8*, i8***) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32 @qsort(i32, i32, i32, i32) #1

declare dso_local i32 @getpfile(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @dumpsum(i32) #1

declare dso_local i32 @asgnsamples(...) #1

declare dso_local i32** @doarcs(...) #1

declare dso_local i32 @printgprof(i32**) #1

declare dso_local i32 @printprof(...) #1

declare dso_local i32 @printindex(...) #1

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
