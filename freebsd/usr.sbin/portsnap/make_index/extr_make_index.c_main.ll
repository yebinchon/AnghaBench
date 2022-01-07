; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/portsnap/make_index/extr_make_index.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"fopen(%s)\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"malloc(pp)\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Unterminated line encountered\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"realloc(pp)\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"fgetln(%s)\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"fclose(%s)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 (...) @usage()
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32* %21, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  br label %28

28:                                               ; preds = %23, %17
  store i64 1024, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = mul i64 %29, 8
  %31 = call i32** @malloc(i64 %30)
  store i32** %31, i32*** %9, align 8
  %32 = icmp eq i32** %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %28
  store i64 0, i64* %12, align 8
  br label %36

36:                                               ; preds = %75, %35
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @fgetln(i32* %37, i64* %8)
  store i8* %38, i8** %7, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load i8*, i8** %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 10
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 @errx(i32 1, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %40
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %11, align 8
  %57 = icmp uge i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %50
  %59 = load i64, i64* %11, align 8
  %60 = mul i64 %59, 2
  store i64 %60, i64* %11, align 8
  %61 = load i32**, i32*** %9, align 8
  %62 = load i64, i64* %11, align 8
  %63 = mul i64 %62, 8
  %64 = call i32** @realloc(i32** %61, i64 %63)
  store i32** %64, i32*** %9, align 8
  %65 = icmp eq i32** %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %58
  br label %69

69:                                               ; preds = %68, %50
  %70 = load i8*, i8** %7, align 8
  %71 = call i32* @portify(i8* %70)
  %72 = load i32**, i32*** %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* %71, i32** %74, align 8
  br label %75

75:                                               ; preds = %69
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 1
  store i64 %77, i64* %12, align 8
  br label %36

78:                                               ; preds = %36
  %79 = load i64, i64* %12, align 8
  store i64 %79, i64* %11, align 8
  %80 = load i32**, i32*** %9, align 8
  %81 = load i64, i64* %11, align 8
  %82 = mul i64 %81, 8
  %83 = call i32** @realloc(i32** %80, i64 %82)
  store i32** %83, i32*** %9, align 8
  %84 = icmp eq i32** %83, null
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %87

87:                                               ; preds = %85, %78
  %88 = load i32*, i32** %6, align 8
  %89 = call i32 @feof(i32* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %96, label %91

91:                                               ; preds = %87
  %92 = load i8**, i8*** %5, align 8
  %93 = getelementptr inbounds i8*, i8** %92, i64 1
  %94 = load i8*, i8** %93, align 8
  %95 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %94)
  br label %96

96:                                               ; preds = %91, %87
  %97 = load i32*, i32** %6, align 8
  %98 = call i64 @fclose(i32* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i8**, i8*** %5, align 8
  %102 = getelementptr inbounds i8*, i8** %101, i64 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, i8*, ...) @err(i32 1, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %100, %96
  %106 = load i64, i64* %11, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %105
  store i32 0, i32* %3, align 4
  br label %194

109:                                              ; preds = %105
  %110 = load i64, i64* %11, align 8
  store i64 %110, i64* %12, align 8
  br label %111

111:                                              ; preds = %120, %109
  %112 = load i64, i64* %12, align 8
  %113 = icmp ugt i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %111
  %115 = load i32**, i32*** %9, align 8
  %116 = load i64, i64* %11, align 8
  %117 = load i64, i64* %12, align 8
  %118 = sub i64 %117, 1
  %119 = call i32 @heapifyports(i32** %115, i64 %116, i64 %118)
  br label %120

120:                                              ; preds = %114
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %12, align 8
  br label %111

123:                                              ; preds = %111
  %124 = load i64, i64* %11, align 8
  %125 = sub i64 %124, 1
  store i64 %125, i64* %12, align 8
  br label %126

126:                                              ; preds = %146, %123
  %127 = load i64, i64* %12, align 8
  %128 = icmp ugt i64 %127, 0
  br i1 %128, label %129, label %149

129:                                              ; preds = %126
  %130 = load i32**, i32*** %9, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 0
  %132 = load i32*, i32** %131, align 8
  store i32* %132, i32** %10, align 8
  %133 = load i32**, i32*** %9, align 8
  %134 = load i64, i64* %12, align 8
  %135 = getelementptr inbounds i32*, i32** %133, i64 %134
  %136 = load i32*, i32** %135, align 8
  %137 = load i32**, i32*** %9, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  store i32* %136, i32** %138, align 8
  %139 = load i32*, i32** %10, align 8
  %140 = load i32**, i32*** %9, align 8
  %141 = load i64, i64* %12, align 8
  %142 = getelementptr inbounds i32*, i32** %140, i64 %141
  store i32* %139, i32** %142, align 8
  %143 = load i32**, i32*** %9, align 8
  %144 = load i64, i64* %12, align 8
  %145 = call i32 @heapifyports(i32** %143, i64 %144, i64 0)
  br label %146

146:                                              ; preds = %129
  %147 = load i64, i64* %12, align 8
  %148 = add i64 %147, -1
  store i64 %148, i64* %12, align 8
  br label %126

149:                                              ; preds = %126
  store i64 0, i64* %12, align 8
  br label %150

150:                                              ; preds = %162, %149
  %151 = load i64, i64* %12, align 8
  %152 = load i64, i64* %11, align 8
  %153 = icmp ult i64 %151, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %150
  %155 = load i32**, i32*** %9, align 8
  %156 = load i64, i64* %11, align 8
  %157 = load i32**, i32*** %9, align 8
  %158 = load i64, i64* %12, align 8
  %159 = getelementptr inbounds i32*, i32** %157, i64 %158
  %160 = load i32*, i32** %159, align 8
  %161 = call i32 @translateport(i32** %155, i64 %156, i32* %160)
  br label %162

162:                                              ; preds = %154
  %163 = load i64, i64* %12, align 8
  %164 = add i64 %163, 1
  store i64 %164, i64* %12, align 8
  br label %150

165:                                              ; preds = %150
  store i64 0, i64* %12, align 8
  br label %166

166:                                              ; preds = %176, %165
  %167 = load i64, i64* %12, align 8
  %168 = load i64, i64* %11, align 8
  %169 = icmp ult i64 %167, %168
  br i1 %169, label %170, label %179

170:                                              ; preds = %166
  %171 = load i32**, i32*** %9, align 8
  %172 = load i64, i64* %12, align 8
  %173 = getelementptr inbounds i32*, i32** %171, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @recurse(i32* %174)
  br label %176

176:                                              ; preds = %170
  %177 = load i64, i64* %12, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %12, align 8
  br label %166

179:                                              ; preds = %166
  store i64 0, i64* %12, align 8
  br label %180

180:                                              ; preds = %190, %179
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* %11, align 8
  %183 = icmp ult i64 %181, %182
  br i1 %183, label %184, label %193

184:                                              ; preds = %180
  %185 = load i32**, i32*** %9, align 8
  %186 = load i64, i64* %12, align 8
  %187 = getelementptr inbounds i32*, i32** %185, i64 %186
  %188 = load i32*, i32** %187, align 8
  %189 = call i32 @printport(i32* %188)
  br label %190

190:                                              ; preds = %184
  %191 = load i64, i64* %12, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %12, align 8
  br label %180

193:                                              ; preds = %180
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %108
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @usage(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @err(i32, i8*, ...) #1

declare dso_local i32** @malloc(i64) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32** @realloc(i32**, i64) #1

declare dso_local i32* @portify(i8*) #1

declare dso_local i32 @feof(i32*) #1

declare dso_local i64 @fclose(i32*) #1

declare dso_local i32 @heapifyports(i32**, i64, i64) #1

declare dso_local i32 @translateport(i32**, i64, i32*) #1

declare dso_local i32 @recurse(i32*) #1

declare dso_local i32 @printport(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
