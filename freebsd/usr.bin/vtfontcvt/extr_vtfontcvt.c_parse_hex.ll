; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_parse_hex.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/vtfontcvt/extr_vtfontcvt.c_parse_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"# Height: \00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"malformed input: Height tag after font data\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"# Width: \00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"malformed input: Width tag after font data\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%6x:\00", align 1
@wbytes = common dso_local global i32 0, align 4
@height = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"malformed input: broken bitmap, character %06x\00", align 1
@width = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"%2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @parse_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hex(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64* null, i64** %8, align 8
  store i64* null, i64** %9, align 8
  store i64* null, i64** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %17, align 4
  br label %19

19:                                               ; preds = %180, %2
  %20 = load i32*, i32** %3, align 8
  %21 = call i8* @fgetln(i32* %20, i64* %7)
  store i8* %21, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %181

23:                                               ; preds = %19
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %7, align 8
  %26 = sub i64 %25, 1
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8 0, i8* %27, align 1
  %28 = load i8*, i8** %5, align 8
  %29 = call i64 @strncmp(i8* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 10)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load i64*, i64** %8, align 8
  %33 = icmp ne i64* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 10
  %39 = call i32 @atoi(i8* %38)
  %40 = call i32 @set_height(i32 %39)
  br label %180

41:                                               ; preds = %23
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 9)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i64*, i64** %8, align 8
  %47 = icmp ne i64* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %45
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 9
  %53 = call i32 @atoi(i8* %52)
  %54 = call i32 @set_width(i32 %53)
  br label %179

55:                                               ; preds = %41
  %56 = load i8*, i8** %5, align 8
  %57 = call i64 @sscanf(i8* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %11)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %178

59:                                               ; preds = %55
  %60 = load i64*, i64** %8, align 8
  %61 = icmp eq i64* %60, null
  br i1 %61, label %62, label %74

62:                                               ; preds = %59
  %63 = load i32, i32* @wbytes, align 4
  %64 = load i32, i32* @height, align 4
  %65 = mul nsw i32 %63, %64
  %66 = call i64* @xmalloc(i32 %65)
  store i64* %66, i64** %8, align 8
  %67 = load i32, i32* @wbytes, align 4
  %68 = load i32, i32* @height, align 4
  %69 = mul nsw i32 %67, %68
  %70 = call i64* @xmalloc(i32 %69)
  store i64* %70, i64** %9, align 8
  %71 = load i32, i32* @wbytes, align 4
  %72 = mul nsw i32 %71, 2
  %73 = call i64* @xmalloc(i32 %72)
  store i64* %73, i64** %10, align 8
  br label %74

74:                                               ; preds = %62, %59
  %75 = load i8*, i8** %5, align 8
  %76 = call i8* @strchr(i8* %75, i8 signext 58)
  %77 = getelementptr inbounds i8, i8* %76, i64 1
  store i8* %77, i8** %6, align 8
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @strlen(i8* %78)
  %80 = load i32, i32* @height, align 4
  %81 = sdiv i32 %79, %80
  store i32 %81, i32* %16, align 4
  %82 = load i32, i32* %16, align 4
  %83 = load i32, i32* @wbytes, align 4
  %84 = mul nsw i32 %83, 2
  %85 = icmp ult i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %74
  %87 = load i32, i32* %11, align 4
  %88 = call i32 (i32, i8*, ...) @errx(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %86, %74
  %90 = load i32, i32* @width, align 4
  %91 = mul nsw i32 %90, 2
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @howmany(i32 %92, i32 8)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %16, align 4
  %95 = load i32, i32* %13, align 4
  %96 = mul i32 %95, 2
  %97 = icmp ult i32 %94, %96
  br i1 %97, label %101, label %98

98:                                               ; preds = %89
  %99 = load i32, i32* %12, align 4
  %100 = icmp ule i32 %99, 8
  br i1 %100, label %101, label %104

101:                                              ; preds = %98, %89
  %102 = load i32, i32* @width, align 4
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* @wbytes, align 4
  store i32 %103, i32* %13, align 4
  br label %104

104:                                              ; preds = %101, %98
  store i32 0, i32* %14, align 4
  br label %105

105:                                              ; preds = %158, %104
  %106 = load i32, i32* %14, align 4
  %107 = load i32, i32* @height, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %161

109:                                              ; preds = %105
  store i32 0, i32* %15, align 4
  br label %110

110:                                              ; preds = %130, %109
  %111 = load i32, i32* %15, align 4
  %112 = load i32, i32* %13, align 4
  %113 = icmp ult i32 %111, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %110
  %115 = load i8*, i8** %6, align 8
  %116 = load i32, i32* %15, align 4
  %117 = mul i32 %116, 2
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %115, i64 %118
  %120 = call i64 @sscanf(i8* %119, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32* %18)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %133

123:                                              ; preds = %114
  %124 = load i32, i32* %18, align 4
  %125 = zext i32 %124 to i64
  %126 = load i64*, i64** %10, align 8
  %127 = load i32, i32* %15, align 4
  %128 = zext i32 %127 to i64
  %129 = getelementptr inbounds i64, i64* %126, i64 %128
  store i64 %125, i64* %129, align 8
  br label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %15, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %15, align 4
  br label %110

133:                                              ; preds = %122, %110
  %134 = load i64*, i64** %8, align 8
  %135 = load i32, i32* %14, align 4
  %136 = load i32, i32* @wbytes, align 4
  %137 = mul i32 %135, %136
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %134, i64 %138
  %140 = load i64*, i64** %9, align 8
  %141 = load i32, i32* %14, align 4
  %142 = load i32, i32* @wbytes, align 4
  %143 = mul i32 %141, %142
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %140, i64 %144
  %146 = load i64*, i64** %10, align 8
  %147 = load i32, i32* %12, align 4
  %148 = call i32 @split_row(i64* %139, i64* %145, i64* %146, i32 %147)
  store i32 %148, i32* %17, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %133
  br label %182

152:                                              ; preds = %133
  %153 = load i32, i32* %13, align 4
  %154 = mul i32 %153, 2
  %155 = load i8*, i8** %6, align 8
  %156 = zext i32 %154 to i64
  %157 = getelementptr inbounds i8, i8* %155, i64 %156
  store i8* %157, i8** %6, align 8
  br label %158

158:                                              ; preds = %152
  %159 = load i32, i32* %14, align 4
  %160 = add i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %105

161:                                              ; preds = %105
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %4, align 4
  %164 = load i64*, i64** %8, align 8
  %165 = load i32, i32* %12, align 4
  %166 = load i32, i32* @width, align 4
  %167 = icmp ne i32 %165, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %161
  %169 = load i64*, i64** %9, align 8
  br label %171

170:                                              ; preds = %161
  br label %171

171:                                              ; preds = %170, %168
  %172 = phi i64* [ %169, %168 ], [ null, %170 ]
  %173 = call i32 @add_char(i32 %162, i32 %163, i64* %164, i64* %172)
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %182

177:                                              ; preds = %171
  br label %178

178:                                              ; preds = %177, %55
  br label %179

179:                                              ; preds = %178, %50
  br label %180

180:                                              ; preds = %179, %36
  br label %19

181:                                              ; preds = %19
  br label %182

182:                                              ; preds = %181, %176, %151
  %183 = load i64*, i64** %8, align 8
  %184 = call i32 @free(i64* %183)
  %185 = load i64*, i64** %9, align 8
  %186 = call i32 @free(i64* %185)
  %187 = load i64*, i64** %10, align 8
  %188 = call i32 @free(i64* %187)
  %189 = load i32, i32* %17, align 4
  ret i32 %189
}

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @errx(i32, i8*, ...) #1

declare dso_local i32 @set_height(i32) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32 @set_width(i32) #1

declare dso_local i64 @sscanf(i8*, i8*, i32*) #1

declare dso_local i64* @xmalloc(i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @split_row(i64*, i64*, i64*, i32) #1

declare dso_local i32 @add_char(i32, i32, i64*, i64*) #1

declare dso_local i32 @free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
