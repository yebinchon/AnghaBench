; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_otln.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/pr/extr_pr.c_otln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ogap = common dso_local global i32 0, align 4
@ochar = common dso_local global i8 0, align 1
@EOF = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@dspace = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @otln(i8* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = load i32, i32* @ogap, align 4
  store i32 %17, i32* %14, align 4
  %18 = load i32, i32* @ogap, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %167

20:                                               ; preds = %5
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  store i8* %24, i8** %16, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %109, %50, %38, %20
  %30 = load i8*, i8** %7, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = icmp ult i8* %30, %31
  br i1 %32, label %33, label %114

33:                                               ; preds = %29
  %34 = load i8*, i8** %7, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 32
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load i32, i32* %13, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i8*, i8** %7, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %7, align 8
  br label %29

43:                                               ; preds = %33
  %44 = load i8*, i8** %7, align 8
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* @ochar, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %60

50:                                               ; preds = %43
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %14, align 4
  %54 = srem i32 %52, %53
  %55 = sub nsw i32 %51, %54
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %13, align 4
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %7, align 8
  br label %29

60:                                               ; preds = %43
  br label %61

61:                                               ; preds = %84, %60
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %62, %63
  %65 = icmp sgt i32 %64, 1
  br i1 %65, label %66, label %86

66:                                               ; preds = %61
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %14, align 4
  %69 = add nsw i32 %67, %68
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* %14, align 4
  %72 = srem i32 %70, %71
  %73 = sub nsw i32 %69, %72
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  br label %86

77:                                               ; preds = %66
  %78 = load i8, i8* @ochar, align 1
  %79 = call i64 @putchar(i8 signext %78)
  %80 = load i64, i64* @EOF, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = call i32 (...) @pfail()
  store i32 1, i32* %6, align 4
  br label %197

84:                                               ; preds = %77
  %85 = load i32, i32* %15, align 4
  store i32 %85, i32* %12, align 4
  br label %61

86:                                               ; preds = %76, %61
  br label %87

87:                                               ; preds = %97, %86
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %100

91:                                               ; preds = %87
  %92 = call i64 @putchar(i8 signext 32)
  %93 = load i64, i64* @EOF, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %91
  %96 = call i32 (...) @pfail()
  store i32 1, i32* %6, align 4
  br label %197

97:                                               ; preds = %91
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %87

100:                                              ; preds = %87
  %101 = load i8*, i8** %7, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %7, align 8
  %103 = load i8, i8* %101, align 1
  %104 = call i64 @putchar(i8 signext %103)
  %105 = load i64, i64* @EOF, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %100
  %108 = call i32 (...) @pfail()
  store i32 1, i32* %6, align 4
  br label %197

109:                                              ; preds = %100
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %12, align 4
  br label %29

114:                                              ; preds = %29
  %115 = load i32, i32* %11, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32, i32* %13, align 4
  %121 = load i32*, i32** %9, align 8
  store i32 %120, i32* %121, align 4
  store i32 0, i32* %6, align 4
  br label %197

122:                                              ; preds = %114
  %123 = load i32, i32* %11, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %166

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %149, %125
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %12, align 4
  %129 = sub nsw i32 %127, %128
  %130 = icmp sgt i32 %129, 1
  br i1 %130, label %131, label %151

131:                                              ; preds = %126
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %132, %133
  %135 = load i32, i32* %12, align 4
  %136 = load i32, i32* %14, align 4
  %137 = srem i32 %135, %136
  %138 = sub nsw i32 %134, %137
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %13, align 4
  %140 = icmp sgt i32 %138, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %131
  br label %151

142:                                              ; preds = %131
  %143 = load i8, i8* @ochar, align 1
  %144 = call i64 @putchar(i8 signext %143)
  %145 = load i64, i64* @EOF, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 (...) @pfail()
  store i32 1, i32* %6, align 4
  br label %197

149:                                              ; preds = %142
  %150 = load i32, i32* %15, align 4
  store i32 %150, i32* %12, align 4
  br label %126

151:                                              ; preds = %141, %126
  br label %152

152:                                              ; preds = %162, %151
  %153 = load i32, i32* %12, align 4
  %154 = load i32, i32* %13, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %165

156:                                              ; preds = %152
  %157 = call i64 @putchar(i8 signext 32)
  %158 = load i64, i64* @EOF, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %160, label %162

160:                                              ; preds = %156
  %161 = call i32 (...) @pfail()
  store i32 1, i32* %6, align 4
  br label %197

162:                                              ; preds = %156
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %12, align 4
  br label %152

165:                                              ; preds = %152
  store i32 0, i32* %6, align 4
  br label %197

166:                                              ; preds = %122
  br label %183

167:                                              ; preds = %5
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %167
  %171 = load i8*, i8** %7, align 8
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @stdout, align 4
  %174 = call i64 @fwrite(i8* %171, i32 1, i32 %172, i32 %173)
  %175 = icmp sle i64 %174, 0
  br i1 %175, label %176, label %178

176:                                              ; preds = %170
  %177 = call i32 (...) @pfail()
  store i32 1, i32* %6, align 4
  br label %197

178:                                              ; preds = %170, %167
  %179 = load i32, i32* %11, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %178
  store i32 0, i32* %6, align 4
  br label %197

182:                                              ; preds = %178
  br label %183

183:                                              ; preds = %182, %166
  %184 = call i64 @putchar(i8 signext 10)
  %185 = load i64, i64* @EOF, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %194, label %187

187:                                              ; preds = %183
  %188 = load i64, i64* @dspace, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = call i64 @putchar(i8 signext 10)
  %192 = load i64, i64* @EOF, align 8
  %193 = icmp eq i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %190, %183
  %195 = call i32 (...) @pfail()
  store i32 1, i32* %6, align 4
  br label %197

196:                                              ; preds = %190, %187
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %196, %194, %181, %176, %165, %160, %147, %117, %107, %95, %82
  %198 = load i32, i32* %6, align 4
  ret i32 %198
}

declare dso_local i64 @putchar(i8 signext) #1

declare dso_local i32 @pfail(...) #1

declare dso_local i64 @fwrite(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
