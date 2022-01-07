; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_fillin_program.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/crunch/crunchgen/extr_crunchgen.c_fillin_program.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i8*, i8*, i8*, i32, i32, i64 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@MAXLINELEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"filling in parms for %s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"cd %s && echo -n `/bin/pwd`\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Can't execute: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Can't perform pwd on: %s\0A\00", align 1
@makeobj = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@objprefix = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [12 x i8] c"MK_AUTO_OBJ\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Makefile.%s\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"Using %s for %s\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"%s/Makefile\00", align 1
@verbose = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [11 x i8] c"%s: %s: %s\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"warning: could not find source directory\00", align 1
@infilename = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [45 x i8] c"%s: %s: warning: could not find any .o files\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fillin_program(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @MAXPATHLEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %3, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %4, align 8
  %12 = load i32, i32* @MAXLINELEN, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  %15 = load i32, i32* @MAXLINELEN, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %14, i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = call i32 @status(i8* %14)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 6
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i64 @genident(i8* %28)
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 6
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %25, %1
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %32
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @dir_search(i8* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %44

44:                                               ; preds = %37, %32
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %82

49:                                               ; preds = %44
  %50 = load i32, i32* @MAXLINELEN, align 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %14, i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  %55 = call i32* @popen(i8* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %55, i32** %6, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %49
  %59 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  br label %60

60:                                               ; preds = %58, %49
  %61 = getelementptr inbounds i8, i8* %11, i64 0
  store i8 0, i8* %61, align 16
  %62 = trunc i64 %9 to i32
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @fgets(i8* %11, i32 %62, i32* %63)
  %65 = load i32*, i32** %6, align 8
  %66 = call i64 @pclose(i32* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @errx(i32 1, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8* %14)
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i8, i8* %11, align 16
  %72 = icmp ne i8 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 @errx(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  br label %78

78:                                               ; preds = %73, %70
  %79 = call i8* @strdup(i8* %11)
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  store i8* %79, i8** %81, align 8
  br label %82

82:                                               ; preds = %78, %44
  %83 = load i32, i32* @makeobj, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %126, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = load i8*, i8** %87, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %126, label %90

90:                                               ; preds = %85
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %126

95:                                               ; preds = %90
  store i8* null, i8** %7, align 8
  %96 = trunc i64 %13 to i32
  %97 = load i8*, i8** @objprefix, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i8*, i8** %99, align 8
  %101 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %14, i32 %96, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %97, i8* %100)
  %102 = call i64 @is_dir(i8* %14)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %111, label %104

104:                                              ; preds = %95
  %105 = call i8* @getenv(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  store i8* %105, i8** %7, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %119

107:                                              ; preds = %104
  %108 = load i8*, i8** %7, align 8
  %109 = call i64 @strcmp(i8* %108, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %107, %95
  %112 = call i8* @strdup(i8* %14)
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  store i8* %112, i8** %114, align 8
  %115 = icmp eq i8* %112, null
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = call i32 (...) @out_of_memory()
  br label %118

118:                                              ; preds = %116, %111
  br label %125

119:                                              ; preds = %107, %104
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  br label %125

125:                                              ; preds = %119, %118
  br label %126

126:                                              ; preds = %125, %90, %85, %82
  %127 = trunc i64 %9 to i32
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %11, i32 %127, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i8* %130)
  %132 = call i64 @is_nonempty_file(i8* %11)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %141

134:                                              ; preds = %126
  %135 = load i32, i32* @MAXLINELEN, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %14, i32 %135, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %11, i8* %138)
  %140 = call i32 @status(i8* %14)
  br label %153

141:                                              ; preds = %126
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = trunc i64 %9 to i32
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %11, i32 %147, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i8* %150)
  br label %152

152:                                              ; preds = %146, %141
  br label %153

153:                                              ; preds = %152, %134
  %154 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 5
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %169, label %158

158:                                              ; preds = %153
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = call i64 @is_nonempty_file(i8* %11)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %163
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %168 = call i32 @fillin_program_objs(%struct.TYPE_4__* %167, i8* %11)
  br label %169

169:                                              ; preds = %166, %163, %158, %153
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = icmp ne i8* %172, null
  br i1 %173, label %190, label %174

174:                                              ; preds = %169
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 3
  %177 = load i8*, i8** %176, align 8
  %178 = icmp ne i8* %177, null
  br i1 %178, label %190, label %179

179:                                              ; preds = %174
  %180 = load i64, i64* @verbose, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %190

182:                                              ; preds = %179
  %183 = load i32, i32* @infilename, align 4
  %184 = sext i32 %183 to i64
  %185 = inttoptr i64 %184 to i8*
  %186 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = call i32 (i8*, i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.12, i64 0, i64 0), i8* %185, i8* %188)
  br label %190

190:                                              ; preds = %182, %179, %174, %169
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %206, label %195

195:                                              ; preds = %190
  %196 = load i64, i64* @verbose, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %206

198:                                              ; preds = %195
  %199 = load i32, i32* @infilename, align 4
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i8*
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 (i8*, i8*, i8*, ...) @warnx(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.13, i64 0, i64 0), i8* %201, i8* %204)
  br label %206

206:                                              ; preds = %198, %195, %190
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i8*, i8** %208, align 8
  %210 = icmp ne i8* %209, null
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %224, label %216

216:                                              ; preds = %211, %206
  %217 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %218 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %224, label %221

221:                                              ; preds = %216
  %222 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %223 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %222, i32 0, i32 4
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %216, %211
  %225 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %225)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i32 @status(i8*) #2

declare dso_local i64 @genident(i8*) #2

declare dso_local i8* @dir_search(i8*) #2

declare dso_local i32* @popen(i8*, i8*) #2

declare dso_local i32 @errx(i32, i8*, i8*) #2

declare dso_local i32 @fgets(i8*, i32, i32*) #2

declare dso_local i64 @pclose(i32*) #2

declare dso_local i8* @strdup(i8*) #2

declare dso_local i64 @is_dir(i8*) #2

declare dso_local i8* @getenv(i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @out_of_memory(...) #2

declare dso_local i64 @is_nonempty_file(i8*) #2

declare dso_local i32 @fillin_program_objs(%struct.TYPE_4__*, i8*) #2

declare dso_local i32 @warnx(i8*, i8*, i8*, ...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
