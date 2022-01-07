; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_match_string_spaces.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_match_string_spaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XDF_WHITESPACE_FLAGS = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE = common dso_local global i64 0, align 8
@XDF_IGNORE_WHITESPACE_CHANGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i32, i64)* @match_string_spaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @match_string_spaces(i8* %0, i32 %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @XDF_WHITESPACE_FLAGS, align 8
  %14 = and i64 %12, %13
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %55

16:                                               ; preds = %5
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i32, i32* %8, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %21, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = call i64 @XDL_ISSPACE(i8 signext %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %20, %17
  %30 = phi i1 [ false, %17 ], [ %28, %20 ]
  br i1 %30, label %31, label %35

31:                                               ; preds = %29
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %8, align 4
  br label %17

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %10, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %36
  %40 = load i8*, i8** %9, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %40, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = call i64 @XDL_ISSPACE(i8 signext %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %39, %36
  %49 = phi i1 [ false, %36 ], [ %47, %39 ]
  br i1 %49, label %50, label %54

50:                                               ; preds = %48
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %10, align 4
  br label %36

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %5
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @XDF_IGNORE_WHITESPACE, align 8
  %58 = load i64, i64* @XDF_IGNORE_WHITESPACE_CHANGE, align 8
  %59 = or i64 %57, %58
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %76, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i8*, i8** %7, align 8
  %68 = load i8*, i8** %9, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @memcmp(i8* %67, i8* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  br label %73

73:                                               ; preds = %66, %62
  %74 = phi i1 [ false, %62 ], [ %72, %66 ]
  %75 = zext i1 %74 to i32
  store i32 %75, i32* %6, align 4
  br label %232

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %179, %76
  %78 = load i32, i32* %8, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32, i32* %10, align 4
  %82 = icmp sgt i32 %81, 0
  br label %83

83:                                               ; preds = %80, %77
  %84 = phi i1 [ false, %77 ], [ %82, %80 ]
  br i1 %84, label %85, label %180

85:                                               ; preds = %83
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i8, i8* %90, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = call i64 @XDL_ISSPACE(i8 signext %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %85
  %98 = load i8*, i8** %9, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i8, i8* %98, i64 %100
  %102 = load i8, i8* %101, align 1
  %103 = call i64 @XDL_ISSPACE(i8 signext %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %164

105:                                              ; preds = %97, %85
  %106 = load i64, i64* %11, align 8
  %107 = load i64, i64* @XDF_IGNORE_WHITESPACE_CHANGE, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %105
  %111 = load i8*, i8** %7, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %111, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call i64 @XDL_ISSPACE(i8 signext %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load i8*, i8** %9, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = call i64 @XDL_ISSPACE(i8 signext %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %127, label %126

126:                                              ; preds = %118, %110
  store i32 0, i32* %6, align 4
  br label %232

127:                                              ; preds = %118, %105
  br label %128

128:                                              ; preds = %142, %127
  %129 = load i32, i32* %8, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %128
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %8, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i8, i8* %132, i64 %134
  %136 = load i8, i8* %135, align 1
  %137 = call i64 @XDL_ISSPACE(i8 signext %136)
  %138 = icmp ne i64 %137, 0
  br label %139

139:                                              ; preds = %131, %128
  %140 = phi i1 [ false, %128 ], [ %138, %131 ]
  br i1 %140, label %141, label %145

141:                                              ; preds = %139
  br label %142

142:                                              ; preds = %141
  %143 = load i32, i32* %8, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %8, align 4
  br label %128

145:                                              ; preds = %139
  br label %146

146:                                              ; preds = %160, %145
  %147 = load i32, i32* %10, align 4
  %148 = icmp sgt i32 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %146
  %150 = load i8*, i8** %9, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = call i64 @XDL_ISSPACE(i8 signext %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %149, %146
  %158 = phi i1 [ false, %146 ], [ %156, %149 ]
  br i1 %158, label %159, label %163

159:                                              ; preds = %157
  br label %160

160:                                              ; preds = %159
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %10, align 4
  br label %146

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163, %97
  %165 = load i8*, i8** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds i8, i8* %165, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = sext i8 %169 to i32
  %171 = load i8*, i8** %9, align 8
  %172 = load i32, i32* %10, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i8, i8* %171, i64 %173
  %175 = load i8, i8* %174, align 1
  %176 = sext i8 %175 to i32
  %177 = icmp ne i32 %170, %176
  br i1 %177, label %178, label %179

178:                                              ; preds = %164
  store i32 0, i32* %6, align 4
  br label %232

179:                                              ; preds = %164
  br label %77

180:                                              ; preds = %83
  %181 = load i64, i64* %11, align 8
  %182 = load i64, i64* @XDF_IGNORE_WHITESPACE, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %224

185:                                              ; preds = %180
  br label %186

186:                                              ; preds = %201, %185
  %187 = load i32, i32* %8, align 4
  %188 = icmp sgt i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %186
  %190 = load i8*, i8** %7, align 8
  %191 = load i32, i32* %8, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i8, i8* %190, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = call i64 @XDL_ISSPACE(i8 signext %195)
  %197 = icmp ne i64 %196, 0
  br label %198

198:                                              ; preds = %189, %186
  %199 = phi i1 [ false, %186 ], [ %197, %189 ]
  br i1 %199, label %200, label %204

200:                                              ; preds = %198
  br label %201

201:                                              ; preds = %200
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %8, align 4
  br label %186

204:                                              ; preds = %198
  br label %205

205:                                              ; preds = %220, %204
  %206 = load i32, i32* %10, align 4
  %207 = icmp sgt i32 %206, 0
  br i1 %207, label %208, label %217

208:                                              ; preds = %205
  %209 = load i8*, i8** %9, align 8
  %210 = load i32, i32* %10, align 4
  %211 = sub nsw i32 %210, 1
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8, i8* %209, i64 %212
  %214 = load i8, i8* %213, align 1
  %215 = call i64 @XDL_ISSPACE(i8 signext %214)
  %216 = icmp ne i64 %215, 0
  br label %217

217:                                              ; preds = %208, %205
  %218 = phi i1 [ false, %205 ], [ %216, %208 ]
  br i1 %218, label %219, label %223

219:                                              ; preds = %217
  br label %220

220:                                              ; preds = %219
  %221 = load i32, i32* %10, align 4
  %222 = add nsw i32 %221, -1
  store i32 %222, i32* %10, align 4
  br label %205

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %223, %180
  %225 = load i32, i32* %8, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %224
  %228 = load i32, i32* %10, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %227
  store i32 1, i32* %6, align 4
  br label %232

231:                                              ; preds = %227, %224
  store i32 0, i32* %6, align 4
  br label %232

232:                                              ; preds = %231, %230, %178, %126, %73
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

declare dso_local i64 @XDL_ISSPACE(i8 signext) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
