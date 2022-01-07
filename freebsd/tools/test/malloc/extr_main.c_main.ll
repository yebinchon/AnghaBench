; ModuleID = '/home/carl/AnghaBench/freebsd/tools/test/malloc/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/test/malloc/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NOPS = common dso_local global i32 0, align 4
@NBUCKETS = common dso_local global i32 0, align 4
@NSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"BRK(0)=%p \00", align 1
@foo = common dso_local global i32** null, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"BRK(1)=%p \00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"BRK(2)=%p NOPS=%lu NBUCKETS=%lu NSIZE=%lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = icmp sgt i32 %9, 1
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8**, i8*** %5, align 8
  %13 = getelementptr inbounds i8*, i8** %12, i64 1
  %14 = load i8*, i8** %13, align 8
  %15 = call i32 @strtoul(i8* %14, i32 0, i32 0)
  store i32 %15, i32* @NOPS, align 4
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 2
  br i1 %18, label %19, label %24

19:                                               ; preds = %16
  %20 = load i8**, i8*** %5, align 8
  %21 = getelementptr inbounds i8*, i8** %20, i64 2
  %22 = load i8*, i8** %21, align 8
  %23 = call i32 @strtoul(i8* %22, i32 0, i32 0)
  store i32 %23, i32* @NBUCKETS, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %4, align 4
  %26 = icmp sgt i32 %25, 3
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @strtoul(i8* %30, i32 0, i32 0)
  store i32 %31, i32* @NSIZE, align 4
  br label %32

32:                                               ; preds = %27, %24
  %33 = call i32 @sbrk(i32 0)
  %34 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @NBUCKETS, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 8, %36
  %38 = trunc i64 %37 to i32
  %39 = call i8* @malloc(i32 %38)
  %40 = bitcast i8* %39 to i32**
  store i32** %40, i32*** @foo, align 8
  %41 = load i32**, i32*** @foo, align 8
  %42 = load i32, i32* @NBUCKETS, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 8, %43
  %45 = trunc i64 %44 to i32
  %46 = call i32 @memset(i32** %41, i32 0, i32 %45)
  store i32 1, i32* %6, align 4
  br label %47

47:                                               ; preds = %100, %32
  %48 = load i32, i32* %6, align 4
  %49 = icmp sle i32 %48, 4096
  br i1 %49, label %50, label %103

50:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %70, %50
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sdiv i32 40960, %53
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @NBUCKETS, align 4
  %59 = icmp slt i32 %57, %58
  br label %60

60:                                               ; preds = %56, %51
  %61 = phi i1 [ false, %51 ], [ %59, %56 ]
  br i1 %61, label %62, label %73

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = call i8* @malloc(i32 %63)
  %65 = bitcast i8* %64 to i32*
  %66 = load i32**, i32*** @foo, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* %65, i32** %69, align 8
  br label %70

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %51

73:                                               ; preds = %60
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %96, %73
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %6, align 4
  %77 = sdiv i32 40960, %76
  %78 = icmp slt i32 %75, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @NBUCKETS, align 4
  %82 = icmp slt i32 %80, %81
  br label %83

83:                                               ; preds = %79, %74
  %84 = phi i1 [ false, %74 ], [ %82, %79 ]
  br i1 %84, label %85, label %99

85:                                               ; preds = %83
  %86 = load i32**, i32*** @foo, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = call i32 @free(i32* %90)
  %92 = load i32**, i32*** @foo, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  store i32* null, i32** %95, align 8
  br label %96

96:                                               ; preds = %85
  %97 = load i32, i32* %7, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %74

99:                                               ; preds = %83
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = mul nsw i32 %101, 2
  store i32 %102, i32* %6, align 4
  br label %47

103:                                              ; preds = %47
  store i32 0, i32* %6, align 4
  br label %104

104:                                              ; preds = %159, %103
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @NOPS, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %162

108:                                              ; preds = %104
  %109 = call i32 (...) @random()
  %110 = load i32, i32* @NBUCKETS, align 4
  %111 = srem i32 %109, %110
  store i32 %111, i32* %7, align 4
  %112 = call i32 (...) @random()
  %113 = load i32, i32* @NSIZE, align 4
  %114 = srem i32 %112, %113
  store i32 %114, i32* %8, align 4
  %115 = load i32**, i32*** @foo, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32*, i32** %115, i64 %117
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %108
  br label %126

124:                                              ; preds = %108
  %125 = load i32, i32* %8, align 4
  br label %126

126:                                              ; preds = %124, %123
  %127 = phi i32 [ 0, %123 ], [ %125, %124 ]
  %128 = call i32* @realloc(i32* %119, i32 %127)
  %129 = load i32**, i32*** @foo, align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32*, i32** %129, i64 %131
  store i32* %128, i32** %132, align 8
  %133 = load i32, i32* %8, align 4
  %134 = and i32 %133, 1
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %139, label %136

136:                                              ; preds = %126
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136, %126
  %140 = load i32**, i32*** @foo, align 8
  %141 = load i32, i32* %7, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %139, %136
  %145 = load i32**, i32*** @foo, align 8
  %146 = load i32, i32* %7, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32*, i32** %145, i64 %147
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i32**, i32*** @foo, align 8
  %153 = load i32, i32* %7, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i32*, i32** %152, i64 %154
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  store i32 1, i32* %157, align 4
  br label %158

158:                                              ; preds = %151, %144
  br label %159

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %6, align 4
  br label %104

162:                                              ; preds = %104
  %163 = call i32 @sbrk(i32 0)
  %164 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %163)
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %188, %162
  %166 = load i32, i32* %7, align 4
  %167 = load i32, i32* @NBUCKETS, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %191

169:                                              ; preds = %165
  %170 = load i32**, i32*** @foo, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32*, i32** %170, i64 %172
  %174 = load i32*, i32** %173, align 8
  %175 = icmp ne i32* %174, null
  br i1 %175, label %176, label %187

176:                                              ; preds = %169
  %177 = load i32**, i32*** @foo, align 8
  %178 = load i32, i32* %7, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32*, i32** %177, i64 %179
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @free(i32* %181)
  %183 = load i32**, i32*** @foo, align 8
  %184 = load i32, i32* %7, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32*, i32** %183, i64 %185
  store i32* null, i32** %186, align 8
  br label %187

187:                                              ; preds = %176, %169
  br label %188

188:                                              ; preds = %187
  %189 = load i32, i32* %7, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %7, align 4
  br label %165

191:                                              ; preds = %165
  %192 = call i32 @sbrk(i32 0)
  %193 = load i32, i32* @NOPS, align 4
  %194 = load i32, i32* @NBUCKETS, align 4
  %195 = load i32, i32* @NSIZE, align 4
  %196 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %192, i32 %193, i32 %194, i32 %195)
  ret i32 0
}

declare dso_local i32 @strtoul(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @sbrk(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @random(...) #1

declare dso_local i32* @realloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
