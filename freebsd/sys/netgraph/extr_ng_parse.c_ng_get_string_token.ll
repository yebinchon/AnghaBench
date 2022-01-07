; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_get_string_token.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/extr_ng_parse.c_ng_get_string_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@M_NETGRAPH_PARSE = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ng_get_string_token(i8* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  br label %18

18:                                               ; preds = %27, %4
  %19 = load i8*, i8** %6, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %19, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = call i64 @isspace(i8 signext %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %18
  %28 = load i32*, i32** %7, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %18

31:                                               ; preds = %18
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %34, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp ne i32 %40, 34
  br i1 %41, label %42, label %43

42:                                               ; preds = %31
  store i8* null, i8** %5, align 8
  br label %227

43:                                               ; preds = %31
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %44, i64 %46
  %48 = call i32 @strlen(i8* %47)
  %49 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = call i8* @malloc(i32 %48, i32 %49, i32 %50)
  store i8* %51, i8** %10, align 8
  %52 = load i8*, i8** %10, align 8
  %53 = icmp eq i8* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i8* null, i8** %5, align 8
  br label %227

55:                                               ; preds = %43
  %56 = load i8*, i8** %10, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = getelementptr inbounds i8, i8* %60, i64 1
  %62 = call i32 @strcpy(i8* %56, i8* %61)
  store i32 0, i32* %14, align 4
  store i32 1, i32* %13, align 4
  %63 = load i8*, i8** %10, align 8
  store i8* %63, i8** %11, align 8
  br label %64

64:                                               ; preds = %216, %55
  %65 = load i8*, i8** %11, align 8
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %223

69:                                               ; preds = %64
  %70 = load i8*, i8** %11, align 8
  %71 = load i8, i8* %70, align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %72, 34
  br i1 %73, label %74, label %86

74:                                               ; preds = %69
  %75 = load i8*, i8** %11, align 8
  store i8 0, i8* %75, align 1
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32*, i32** %8, align 8
  store i32 %77, i32* %78, align 4
  %79 = load i32*, i32** %9, align 8
  %80 = icmp ne i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load i32, i32* %14, align 4
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %74
  %85 = load i8*, i8** %10, align 8
  store i8* %85, i8** %5, align 8
  br label %227

86:                                               ; preds = %69
  %87 = load i8*, i8** %11, align 8
  %88 = getelementptr inbounds i8, i8* %87, i64 0
  %89 = load i8, i8* %88, align 1
  %90 = sext i8 %89 to i32
  %91 = icmp eq i32 %90, 92
  br i1 %91, label %92, label %214

92:                                               ; preds = %86
  %93 = load i8*, i8** %11, align 8
  %94 = getelementptr inbounds i8, i8* %93, i64 1
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %214

98:                                               ; preds = %92
  %99 = load i8*, i8** %11, align 8
  %100 = load i8*, i8** %11, align 8
  %101 = getelementptr inbounds i8, i8* %100, i64 1
  %102 = call i32 @strcpy(i8* %99, i8* %101)
  %103 = load i8*, i8** %11, align 8
  store i8* %103, i8** %17, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  switch i32 %106, label %209 [
    i32 116, label %107
    i32 110, label %111
    i32 114, label %115
    i32 118, label %119
    i32 102, label %123
    i32 34, label %127
    i32 48, label %131
    i32 49, label %131
    i32 50, label %131
    i32 51, label %131
    i32 52, label %131
    i32 53, label %131
    i32 54, label %131
    i32 55, label %131
    i32 120, label %165
  ]

107:                                              ; preds = %98
  %108 = load i8*, i8** %17, align 8
  store i8 9, i8* %108, align 1
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  br label %216

111:                                              ; preds = %98
  %112 = load i8*, i8** %17, align 8
  store i8 10, i8* %112, align 1
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %216

115:                                              ; preds = %98
  %116 = load i8*, i8** %17, align 8
  store i8 13, i8* %116, align 1
  %117 = load i32, i32* %13, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %13, align 4
  br label %216

119:                                              ; preds = %98
  %120 = load i8*, i8** %17, align 8
  store i8 11, i8* %120, align 1
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %13, align 4
  br label %216

123:                                              ; preds = %98
  %124 = load i8*, i8** %17, align 8
  store i8 12, i8* %124, align 1
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %216

127:                                              ; preds = %98
  %128 = load i8*, i8** %17, align 8
  store i8 34, i8* %128, align 1
  %129 = load i32, i32* %13, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %13, align 4
  br label %216

131:                                              ; preds = %98, %98, %98, %98, %98, %98, %98, %98
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %132

132:                                              ; preds = %157, %131
  %133 = load i32, i32* %16, align 4
  %134 = icmp slt i32 %133, 3
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i8*, i8** %17, align 8
  %137 = load i8, i8* %136, align 1
  %138 = sext i8 %137 to i32
  %139 = icmp sge i32 %138, 48
  br i1 %139, label %140, label %145

140:                                              ; preds = %135
  %141 = load i8*, i8** %17, align 8
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp sle i32 %143, 55
  br label %145

145:                                              ; preds = %140, %135, %132
  %146 = phi i1 [ false, %135 ], [ false, %132 ], [ %144, %140 ]
  br i1 %146, label %147, label %160

147:                                              ; preds = %145
  %148 = load i32, i32* %15, align 4
  %149 = shl i32 %148, 3
  %150 = load i8*, i8** %17, align 8
  %151 = load i8, i8* %150, align 1
  %152 = sext i8 %151 to i32
  %153 = sub nsw i32 %152, 48
  %154 = add nsw i32 %149, %153
  store i32 %154, i32* %15, align 4
  %155 = load i32, i32* %13, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %13, align 4
  br label %157

157:                                              ; preds = %147
  %158 = load i8*, i8** %17, align 8
  %159 = getelementptr inbounds i8, i8* %158, i32 1
  store i8* %159, i8** %17, align 8
  br label %132

160:                                              ; preds = %145
  %161 = load i32, i32* %15, align 4
  %162 = trunc i32 %161 to i8
  %163 = load i8*, i8** %17, align 8
  %164 = getelementptr inbounds i8, i8* %163, i32 -1
  store i8* %164, i8** %17, align 8
  store i8 %162, i8* %164, align 1
  br label %210

165:                                              ; preds = %98
  %166 = load i8*, i8** %17, align 8
  %167 = getelementptr inbounds i8, i8* %166, i32 1
  store i8* %167, i8** %17, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  br label %168

168:                                              ; preds = %201, %165
  %169 = load i32, i32* %16, align 4
  %170 = icmp slt i32 %169, 2
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load i8*, i8** %17, align 8
  %173 = load i8, i8* %172, align 1
  %174 = call i32 @isxdigit(i8 signext %173)
  %175 = icmp ne i32 %174, 0
  br label %176

176:                                              ; preds = %171, %168
  %177 = phi i1 [ false, %168 ], [ %175, %171 ]
  br i1 %177, label %178, label %204

178:                                              ; preds = %176
  %179 = load i32, i32* %15, align 4
  %180 = shl i32 %179, 4
  %181 = load i8*, i8** %17, align 8
  %182 = load i8, i8* %181, align 1
  %183 = call i32 @isdigit(i8 signext %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %190

185:                                              ; preds = %178
  %186 = load i8*, i8** %17, align 8
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = sub nsw i32 %188, 48
  br label %196

190:                                              ; preds = %178
  %191 = load i8*, i8** %17, align 8
  %192 = load i8, i8* %191, align 1
  %193 = call i32 @tolower(i8 signext %192)
  %194 = sub nsw i32 %193, 97
  %195 = add nsw i32 %194, 10
  br label %196

196:                                              ; preds = %190, %185
  %197 = phi i32 [ %189, %185 ], [ %195, %190 ]
  %198 = add nsw i32 %180, %197
  store i32 %198, i32* %15, align 4
  %199 = load i32, i32* %13, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %13, align 4
  br label %201

201:                                              ; preds = %196
  %202 = load i8*, i8** %17, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %17, align 8
  br label %168

204:                                              ; preds = %176
  %205 = load i32, i32* %15, align 4
  %206 = trunc i32 %205 to i8
  %207 = load i8*, i8** %17, align 8
  %208 = getelementptr inbounds i8, i8* %207, i32 -1
  store i8* %208, i8** %17, align 8
  store i8 %206, i8* %208, align 1
  br label %210

209:                                              ; preds = %98
  br label %216

210:                                              ; preds = %204, %160
  %211 = load i8*, i8** %11, align 8
  %212 = load i8*, i8** %17, align 8
  %213 = call i32 @strcpy(i8* %211, i8* %212)
  br label %214

214:                                              ; preds = %210, %92, %86
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215, %209, %127, %123, %119, %115, %111, %107
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  %219 = load i32, i32* %13, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %13, align 4
  %221 = load i8*, i8** %11, align 8
  %222 = getelementptr inbounds i8, i8* %221, i32 1
  store i8* %222, i8** %11, align 8
  br label %64

223:                                              ; preds = %64
  %224 = load i8*, i8** %10, align 8
  %225 = load i32, i32* @M_NETGRAPH_PARSE, align 4
  %226 = call i32 @free(i8* %224, i32 %225)
  store i8* null, i8** %5, align 8
  br label %227

227:                                              ; preds = %223, %84, %54, %42
  %228 = load i8*, i8** %5, align 8
  ret i8* %228
}

declare dso_local i64 @isspace(i8 signext) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @isxdigit(i8 signext) #1

declare dso_local i32 @isdigit(i8 signext) #1

declare dso_local i32 @tolower(i8 signext) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
