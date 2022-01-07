; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_fillin_program_objs.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_fillin_program_objs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, %struct.TYPE_4__* }

@.str = private unnamed_addr constant [5 x i8] c"OBJS\00", align 1
@MAXLINELEN = common dso_local global i32 0, align 4
@tempfname = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@goterror = common dso_local global i32 0, align 4
@outhdrname = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c".include \22%s\22\0A\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c".POSIX:\0A\00", align 1
@buildopts = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [12 x i8] c"BUILDOPTS+=\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c".if defined(PROG)\0A\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%s?=${PROG}.o\0A\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c".endif\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"loop:\0A\09@echo 'OBJS= '${%s}\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"crunchgen_objs:\0A\09@cd %s && %s -f %s $(BUILDOPTS) $(%s_OPTS)\00", align 1
@path_make = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c" loop\0A\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c"cd %s && %s -f %s -B crunchgen_objs\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"submake pipe\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"OBJS= \00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"make error: %s\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"make error: make returned %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fillin_program_objs(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i8* %1, i8** %4, align 8
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %15 = load i32, i32* @MAXLINELEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %12, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %13, align 8
  %19 = load i8*, i8** @tempfname, align 8
  %20 = call i32 @mkstemp(i8* %19)
  store i32 %20, i32* %7, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i8*, i8** @tempfname, align 8
  %24 = call i32 @perror(i8* %23)
  %25 = call i32 @exit(i32 1) #4
  unreachable

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = call i32* @fdopen(i32 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %28, i32** %9, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i8*, i8** @tempfname, align 8
  %32 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %31)
  store i32 1, i32* @goterror, align 4
  store i32 1, i32* %14, align 4
  br label %195

33:                                               ; preds = %26
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  store i8* %41, i8** %10, align 8
  br label %42

42:                                               ; preds = %38, %33
  %43 = load i8*, i8** @outhdrname, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 0
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32*, i32** %9, align 8
  %50 = load i8*, i8** @outhdrname, align 8
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %50)
  br label %52

52:                                               ; preds = %48, %42
  %53 = load i32*, i32** %9, align 8
  %54 = load i8*, i8** %4, align 8
  %55 = call i32 (i32*, i8*, ...) @fprintf(i32* %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %54)
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 (i32*, i8*, ...) @fprintf(i32* %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %58 = load i64, i64* @buildopts, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %52
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 (i32*, i8*, ...) @fprintf(i32* %61, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0))
  %63 = load i32*, i32** %9, align 8
  %64 = load i64, i64* @buildopts, align 8
  %65 = call i32 @output_strlst(i32* %63, i64 %64)
  br label %66

66:                                               ; preds = %60, %52
  %67 = load i32*, i32** %9, align 8
  %68 = call i32 (i32*, i8*, ...) @fprintf(i32* %67, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %69 = load i32*, i32** %9, align 8
  %70 = load i8*, i8** %10, align 8
  %71 = call i32 (i32*, i8*, ...) @fprintf(i32* %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = call i32 (i32*, i8*, ...) @fprintf(i32* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %74 = load i32*, i32** %9, align 8
  %75 = load i8*, i8** %10, align 8
  %76 = call i32 (i32*, i8*, ...) @fprintf(i32* %74, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8* %75)
  %77 = load i32*, i32** %9, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = load i8*, i8** @path_make, align 8
  %82 = load i8*, i8** @tempfname, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 (i32*, i8*, ...) @fprintf(i32* %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i8* %80, i8* %81, i8* %82, i8* %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  store %struct.TYPE_4__* %89, %struct.TYPE_4__** %11, align 8
  br label %90

90:                                               ; preds = %99, %66
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %92 = icmp ne %struct.TYPE_4__* %91, null
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 (i32*, i8*, ...) @fprintf(i32* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i8* %97)
  br label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  store %struct.TYPE_4__* %102, %struct.TYPE_4__** %11, align 8
  br label %90

103:                                              ; preds = %90
  %104 = load i32*, i32** %9, align 8
  %105 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0))
  %106 = load i32*, i32** %9, align 8
  %107 = call i32 @fclose(i32* %106)
  %108 = load i32, i32* @MAXLINELEN, align 4
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 1
  %111 = load i8*, i8** %110, align 8
  %112 = load i8*, i8** @path_make, align 8
  %113 = load i8*, i8** @tempfname, align 8
  %114 = call i32 @snprintf(i8* %18, i32 %108, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.13, i64 0, i64 0), i8* %111, i8* %112, i8* %113)
  %115 = call i32* @popen(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0))
  store i32* %115, i32** %9, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %119

117:                                              ; preds = %103
  %118 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  store i32 1, i32* @goterror, align 4
  store i32 1, i32* %14, align 4
  br label %195

119:                                              ; preds = %103
  br label %120

120:                                              ; preds = %184, %128, %119
  %121 = load i32, i32* @MAXLINELEN, align 4
  %122 = load i32*, i32** %9, align 8
  %123 = call i64 @fgets(i8* %18, i32 %121, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %185

125:                                              ; preds = %120
  %126 = call i64 @strncmp(i8* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i32 6)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.17, i64 0, i64 0), i8* %18)
  store i32 1, i32* @goterror, align 4
  br label %120

130:                                              ; preds = %125
  %131 = getelementptr inbounds i8, i8* %18, i64 6
  store i8* %131, i8** %6, align 8
  br label %132

132:                                              ; preds = %137, %130
  %133 = load i8*, i8** %6, align 8
  %134 = load i8, i8* %133, align 1
  %135 = call i64 @isspace(i8 zeroext %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %140

137:                                              ; preds = %132
  %138 = load i8*, i8** %6, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %6, align 8
  br label %132

140:                                              ; preds = %132
  br label %141

141:                                              ; preds = %183, %140
  %142 = load i8*, i8** %6, align 8
  %143 = load i8, i8* %142, align 1
  %144 = icmp ne i8 %143, 0
  br i1 %144, label %145, label %184

145:                                              ; preds = %141
  %146 = load i8*, i8** %6, align 8
  store i8* %146, i8** %5, align 8
  br label %147

147:                                              ; preds = %160, %145
  %148 = load i8*, i8** %6, align 8
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i8*, i8** %6, align 8
  %154 = load i8, i8* %153, align 1
  %155 = call i64 @isspace(i8 zeroext %154)
  %156 = icmp ne i64 %155, 0
  %157 = xor i1 %156, true
  br label %158

158:                                              ; preds = %152, %147
  %159 = phi i1 [ false, %147 ], [ %157, %152 ]
  br i1 %159, label %160, label %163

160:                                              ; preds = %158
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i32 1
  store i8* %162, i8** %6, align 8
  br label %147

163:                                              ; preds = %158
  %164 = load i8*, i8** %6, align 8
  %165 = load i8, i8* %164, align 1
  %166 = icmp ne i8 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i8*, i8** %6, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %6, align 8
  store i8 0, i8* %168, align 1
  br label %170

170:                                              ; preds = %167, %163
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  %173 = load i8*, i8** %5, align 8
  %174 = call i32 @add_string(i32* %172, i8* %173)
  br label %175

175:                                              ; preds = %180, %170
  %176 = load i8*, i8** %6, align 8
  %177 = load i8, i8* %176, align 1
  %178 = call i64 @isspace(i8 zeroext %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i8*, i8** %6, align 8
  %182 = getelementptr inbounds i8, i8* %181, i32 1
  store i8* %182, i8** %6, align 8
  br label %175

183:                                              ; preds = %175
  br label %141

184:                                              ; preds = %141
  br label %120

185:                                              ; preds = %120
  %186 = load i32*, i32** %9, align 8
  %187 = call i32 @pclose(i32* %186)
  store i32 %187, i32* %8, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %192

189:                                              ; preds = %185
  %190 = load i32, i32* %8, align 4
  %191 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.18, i64 0, i64 0), i32 %190)
  store i32 1, i32* @goterror, align 4
  br label %192

192:                                              ; preds = %189, %185
  %193 = load i8*, i8** @tempfname, align 8
  %194 = call i32 @unlink(i8* %193)
  store i32 0, i32* %14, align 4
  br label %195

195:                                              ; preds = %192, %117, %30
  %196 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %196)
  %197 = load i32, i32* %14, align 4
  switch i32 %197, label %199 [
    i32 0, label %198
    i32 1, label %198
  ]

198:                                              ; preds = %195, %195
  ret void

199:                                              ; preds = %195
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i32 @perror(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i32* @fdopen(i32, i8*) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i32 @fprintf(i32*, i8*, ...) #2

declare dso_local i32 @output_strlst(i32*, i64) #2

declare dso_local i32 @fclose(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*, i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i64 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i64 @isspace(i8 zeroext) #2

declare dso_local i32 @add_string(i32*, i8*) #2

declare dso_local i32 @pclose(i32*) #2

declare dso_local i32 @unlink(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
