; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_edit.c_eparse.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sdiff/extr_edit.c_eparse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFSIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s\0A%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"could not allocate memory\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"%s/sdiff.XXXXXXXXXX\00", align 1
@tmpdir = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [9 x i8] c"asprintf\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"mkstemp\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"error writing to temp file\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"error editing %s\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"could not open edited file: %s\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"error reading edited file: %s\00", align 1
@outfp = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"error writing to output file\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"could not delete: %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eparse(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %19 = load i32, i32* @BUFSIZ, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  br label %23

23:                                               ; preds = %28, %3
  %24 = load i8*, i8** %5, align 8
  %25 = load i8, i8* %24, align 1
  %26 = call i64 @isspace(i8 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i8*, i8** %5, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %5, align 8
  br label %23

31:                                               ; preds = %23
  store i8* null, i8** %14, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %76 [
    i32 0, label %35
    i32 98, label %36
    i32 108, label %52
    i32 114, label %64
  ]

35:                                               ; preds = %31
  br label %77

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = icmp eq i8* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  br label %65

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = icmp eq i8* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %53

44:                                               ; preds = %40
  %45 = load i8*, i8** %6, align 8
  %46 = load i8*, i8** %7, align 8
  %47 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %45, i8* %46)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @err(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %44
  br label %77

52:                                               ; preds = %31
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i8*, i8** %6, align 8
  %55 = icmp eq i8* %54, null
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %77

57:                                               ; preds = %53
  %58 = load i8*, i8** %6, align 8
  %59 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %58)
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = call i32 @err(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %57
  br label %77

64:                                               ; preds = %31
  br label %65

65:                                               ; preds = %64, %39
  %66 = load i8*, i8** %7, align 8
  %67 = icmp eq i8* %66, null
  br i1 %67, label %68, label %69

68:                                               ; preds = %65
  br label %77

69:                                               ; preds = %65
  %70 = load i8*, i8** %7, align 8
  %71 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %70)
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = call i32 @err(i32 2, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %75

75:                                               ; preds = %73, %69
  br label %77

76:                                               ; preds = %31
  store i32 -1, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %183

77:                                               ; preds = %75, %68, %63, %56, %51, %35
  %78 = load i8*, i8** @tmpdir, align 8
  %79 = call i32 (i8**, i8*, i8*, ...) @asprintf(i8** %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = call i32 @err(i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %77
  %84 = load i8*, i8** %11, align 8
  %85 = call i32 @mkstemp(i8* %84)
  store i32 %85, i32* %10, align 4
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = call i32 @err(i32 2, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %83
  %90 = load i8*, i8** %14, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %92, label %110

92:                                               ; preds = %89
  %93 = load i8*, i8** %14, align 8
  %94 = call i64 @strlen(i8* %93)
  store i64 %94, i64* %16, align 8
  %95 = load i32, i32* %10, align 4
  %96 = load i8*, i8** %14, align 8
  %97 = load i64, i64* %16, align 8
  %98 = call i32 @write(i32 %95, i8* %96, i64 %97)
  store i32 %98, i32* %17, align 4
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %105, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %17, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %16, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %100, %92
  %106 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i8*, i8** %11, align 8
  %108 = call i32 @cleanup(i8* %107)
  br label %109

109:                                              ; preds = %105, %100
  br label %110

110:                                              ; preds = %109, %89
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @close(i32 %111)
  %113 = load i8*, i8** %14, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i8*, i8** %11, align 8
  %116 = call i32 @editit(i8* %115)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load i8*, i8** %11, align 8
  %120 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i8* %119)
  %121 = load i8*, i8** %11, align 8
  %122 = call i32 @cleanup(i8* %121)
  br label %123

123:                                              ; preds = %118, %110
  %124 = load i8*, i8** %11, align 8
  %125 = call i32* @fopen(i8* %124, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  store i32* %125, i32** %8, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %132, label %127

127:                                              ; preds = %123
  %128 = load i8*, i8** %11, align 8
  %129 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i8* %128)
  %130 = load i8*, i8** %11, align 8
  %131 = call i32 @cleanup(i8* %130)
  br label %132

132:                                              ; preds = %127, %123
  store i64 %20, i64* %9, align 8
  br label %133

133:                                              ; preds = %170, %132
  %134 = load i64, i64* %9, align 8
  %135 = icmp eq i64 %134, %20
  br i1 %135, label %136, label %171

136:                                              ; preds = %133
  %137 = trunc i64 %20 to i32
  %138 = load i32*, i32** %8, align 8
  %139 = call i64 @fread(i8* %22, i32 1, i32 %137, i32* %138)
  store i64 %139, i64* %9, align 8
  %140 = load i64, i64* %9, align 8
  %141 = icmp ne i64 %140, %20
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load i32*, i32** %8, align 8
  %144 = call i64 @ferror(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %142
  %147 = load i32*, i32** %8, align 8
  %148 = call i32 @feof(i32* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %155, label %150

150:                                              ; preds = %146, %142
  %151 = load i8*, i8** %11, align 8
  %152 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i64 0, i64 0), i8* %151)
  %153 = load i8*, i8** %11, align 8
  %154 = call i32 @cleanup(i8* %153)
  br label %155

155:                                              ; preds = %150, %146, %136
  %156 = load i64, i64* %9, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  br label %171

159:                                              ; preds = %155
  %160 = load i64, i64* %9, align 8
  %161 = load i32, i32* @outfp, align 4
  %162 = call i64 @fwrite(i8* %22, i32 1, i64 %160, i32 %161)
  store i64 %162, i64* %18, align 8
  %163 = load i64, i64* %18, align 8
  %164 = load i64, i64* %9, align 8
  %165 = icmp ne i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %159
  %167 = call i32 (i8*, ...) @warnx(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  %168 = load i8*, i8** %11, align 8
  %169 = call i32 @cleanup(i8* %168)
  br label %170

170:                                              ; preds = %166, %159
  br label %133

171:                                              ; preds = %158, %133
  %172 = load i8*, i8** %11, align 8
  %173 = call i64 @unlink(i8* %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = load i8*, i8** %11, align 8
  %177 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i8* %176)
  br label %178

178:                                              ; preds = %175, %171
  %179 = load i32*, i32** %8, align 8
  %180 = call i32 @fclose(i32* %179)
  %181 = load i8*, i8** %11, align 8
  %182 = call i32 @free(i8* %181)
  store i32 0, i32* %4, align 4
  store i32 1, i32* %15, align 4
  br label %183

183:                                              ; preds = %178, %76
  %184 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %184)
  %185 = load i32, i32* %4, align 4
  ret i32 %185
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @isspace(i8 signext) #2

declare dso_local i32 @asprintf(i8**, i8*, i8*, ...) #2

declare dso_local i32 @err(i32, i8*) #2

declare dso_local i32 @mkstemp(i8*) #2

declare dso_local i64 @strlen(i8*) #2

declare dso_local i32 @write(i32, i8*, i64) #2

declare dso_local i32 @warn(i8*, ...) #2

declare dso_local i32 @cleanup(i8*) #2

declare dso_local i32 @close(i32) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @editit(i8*) #2

declare dso_local i32* @fopen(i8*, i8*) #2

declare dso_local i64 @fread(i8*, i32, i32, i32*) #2

declare dso_local i64 @ferror(i32*) #2

declare dso_local i32 @feof(i32*) #2

declare dso_local i32 @warnx(i8*, ...) #2

declare dso_local i64 @fwrite(i8*, i32, i64, i32) #2

declare dso_local i64 @unlink(i8*) #2

declare dso_local i32 @fclose(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
