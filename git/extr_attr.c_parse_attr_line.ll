; ModuleID = '/home/carl/AnghaBench/git/extr_attr.c_parse_attr_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_attr.c_parse_attr_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i32 }
%struct.match_attr = type { i32, i32, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@blank = common dso_local global i32 0, align 4
@ATTRIBUTE_MACRO_PREFIX = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"%s not allowed: %s:%d\00", align 1
@PATTERN_FLAG_NEGATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [90 x i8] c"Negative patterns are ignored in git attributes\0AUse '\\!' for literal leading exclamation.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.match_attr* (i8*, i8*, i32, i32)* @parse_attr_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.match_attr* @parse_attr_line(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.match_attr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.match_attr*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.strbuf, align 8
  %19 = alloca i8*, align 8
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.match_attr* null, %struct.match_attr** %16, align 8
  %20 = bitcast %struct.strbuf* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %21 = load i8*, i8** %6, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @blank, align 4
  %24 = call i32 @strspn(i8* %22, i32 %23)
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %13, align 8
  %27 = load i8*, i8** %13, align 8
  %28 = load i8, i8* %27, align 1
  %29 = icmp ne i8 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %4
  %31 = load i8*, i8** %13, align 8
  %32 = load i8, i8* %31, align 1
  %33 = sext i8 %32 to i32
  %34 = icmp eq i32 %33, 35
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %4
  store %struct.match_attr* null, %struct.match_attr** %5, align 8
  br label %235

36:                                               ; preds = %30
  %37 = load i8*, i8** %13, align 8
  store i8* %37, i8** %14, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 34
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load i8*, i8** %14, align 8
  %44 = call i32 @unquote_c_style(%struct.strbuf* %18, i8* %43, i8** %15)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  store i8* %48, i8** %14, align 8
  %49 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %18, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %10, align 4
  br label %59

51:                                               ; preds = %42, %36
  %52 = load i8*, i8** %14, align 8
  %53 = load i32, i32* @blank, align 4
  %54 = call i32 @strcspn(i8* %52, i32 %53)
  store i32 %54, i32* %10, align 4
  %55 = load i8*, i8** %14, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  store i8* %58, i8** %15, align 8
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i32, i32* @ATTRIBUTE_MACRO_PREFIX, align 4
  %61 = call i32 @strlen(i32 %60)
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %105

64:                                               ; preds = %59
  %65 = load i8*, i8** %14, align 8
  %66 = load i32, i32* @ATTRIBUTE_MACRO_PREFIX, align 4
  %67 = call i64 @starts_with(i8* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %105

69:                                               ; preds = %64
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* @stderr, align 4
  %74 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %75 = load i8*, i8** %14, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @fprintf_ln(i32 %73, i32 %74, i8* %75, i8* %76, i32 %77)
  br label %231

79:                                               ; preds = %69
  store i32 1, i32* %17, align 4
  %80 = load i32, i32* @ATTRIBUTE_MACRO_PREFIX, align 4
  %81 = call i32 @strlen(i32 %80)
  %82 = load i8*, i8** %14, align 8
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i8, i8* %82, i64 %83
  store i8* %84, i8** %14, align 8
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* @blank, align 4
  %87 = call i32 @strspn(i8* %85, i32 %86)
  %88 = load i8*, i8** %14, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8* %90, i8** %14, align 8
  %91 = load i8*, i8** %14, align 8
  %92 = load i32, i32* @blank, align 4
  %93 = call i32 @strcspn(i8* %91, i32 %92)
  store i32 %93, i32* %10, align 4
  %94 = load i8*, i8** %14, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @attr_name_valid(i8* %94, i32 %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %79
  %99 = load i8*, i8** %14, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i8*, i8** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call i32 @report_invalid_attr(i8* %99, i32 %100, i8* %101, i32 %102)
  br label %231

104:                                              ; preds = %79
  br label %106

105:                                              ; preds = %64, %59
  store i32 0, i32* %17, align 4
  br label %106

106:                                              ; preds = %105, %104
  %107 = load i8*, i8** %15, align 8
  %108 = load i32, i32* @blank, align 4
  %109 = call i32 @strspn(i8* %107, i32 %108)
  %110 = load i8*, i8** %15, align 8
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8* %112, i8** %15, align 8
  %113 = load i8*, i8** %15, align 8
  store i8* %113, i8** %13, align 8
  store i32 0, i32* %11, align 4
  br label %114

114:                                              ; preds = %127, %106
  %115 = load i8*, i8** %13, align 8
  %116 = load i8, i8* %115, align 1
  %117 = icmp ne i8 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %114
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = load i8*, i8** %13, align 8
  %122 = call i8* @parse_attr(i8* %119, i32 %120, i8* %121, i32* null)
  store i8* %122, i8** %13, align 8
  %123 = load i8*, i8** %13, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %126, label %125

125:                                              ; preds = %118
  br label %231

126:                                              ; preds = %118
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %114

130:                                              ; preds = %114
  %131 = load i32, i32* %11, align 4
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = add i64 48, %133
  %135 = load i32, i32* %17, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %130
  br label %141

138:                                              ; preds = %130
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  br label %141

141:                                              ; preds = %138, %137
  %142 = phi i32 [ 0, %137 ], [ %140, %138 ]
  %143 = sext i32 %142 to i64
  %144 = add i64 %134, %143
  %145 = trunc i64 %144 to i32
  %146 = call %struct.match_attr* @xcalloc(i32 1, i32 %145)
  store %struct.match_attr* %146, %struct.match_attr** %16, align 8
  %147 = load i32, i32* %17, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %156

149:                                              ; preds = %141
  %150 = load i8*, i8** %14, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i32 @git_attr_internal(i8* %150, i32 %151)
  %153 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %154 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 1
  store i32 %152, i32* %155, align 8
  br label %202

156:                                              ; preds = %141
  %157 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %158 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %157, i32 0, i32 2
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = bitcast i32* %162 to i8*
  store i8* %163, i8** %19, align 8
  %164 = load i8*, i8** %19, align 8
  %165 = load i8*, i8** %14, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @memcpy(i8* %164, i8* %165, i32 %166)
  %168 = load i8*, i8** %19, align 8
  %169 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %170 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  store i8* %168, i8** %172, align 8
  %173 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %174 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %173, i32 0, i32 3
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %178 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %179, i32 0, i32 3
  %181 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %182 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %181, i32 0, i32 3
  %183 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %183, i32 0, i32 1
  %185 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %186 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 2
  %189 = call i32 @parse_path_pattern(i8** %176, i32* %180, i32* %184, i32* %188)
  %190 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %191 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %190, i32 0, i32 3
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @PATTERN_FLAG_NEGATIVE, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %156
  %199 = call i32 @_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0))
  %200 = call i32 @warning(i32 %199)
  br label %231

201:                                              ; preds = %156
  br label %202

202:                                              ; preds = %201, %149
  %203 = load i32, i32* %17, align 4
  %204 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %205 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %208 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %207, i32 0, i32 1
  store i32 %206, i32* %208, align 4
  %209 = load i8*, i8** %15, align 8
  store i8* %209, i8** %13, align 8
  store i32 0, i32* %12, align 4
  br label %210

210:                                              ; preds = %225, %202
  %211 = load i8*, i8** %13, align 8
  %212 = load i8, i8* %211, align 1
  %213 = icmp ne i8 %212, 0
  br i1 %213, label %214, label %228

214:                                              ; preds = %210
  %215 = load i8*, i8** %7, align 8
  %216 = load i32, i32* %8, align 4
  %217 = load i8*, i8** %13, align 8
  %218 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %219 = getelementptr inbounds %struct.match_attr, %struct.match_attr* %218, i32 0, i32 2
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %12, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = call i8* @parse_attr(i8* %215, i32 %216, i8* %217, i32* %223)
  store i8* %224, i8** %13, align 8
  br label %225

225:                                              ; preds = %214
  %226 = load i32, i32* %12, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %12, align 4
  br label %210

228:                                              ; preds = %210
  %229 = call i32 @strbuf_release(%struct.strbuf* %18)
  %230 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  store %struct.match_attr* %230, %struct.match_attr** %5, align 8
  br label %235

231:                                              ; preds = %198, %125, %98, %72
  %232 = call i32 @strbuf_release(%struct.strbuf* %18)
  %233 = load %struct.match_attr*, %struct.match_attr** %16, align 8
  %234 = call i32 @free(%struct.match_attr* %233)
  store %struct.match_attr* null, %struct.match_attr** %5, align 8
  br label %235

235:                                              ; preds = %231, %228, %35
  %236 = load %struct.match_attr*, %struct.match_attr** %5, align 8
  ret %struct.match_attr* %236
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strspn(i8*, i32) #2

declare dso_local i32 @unquote_c_style(%struct.strbuf*, i8*, i8**) #2

declare dso_local i32 @strcspn(i8*, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i64 @starts_with(i8*, i32) #2

declare dso_local i32 @fprintf_ln(i32, i32, i8*, i8*, i32) #2

declare dso_local i32 @_(i8*) #2

declare dso_local i32 @attr_name_valid(i8*, i32) #2

declare dso_local i32 @report_invalid_attr(i8*, i32, i8*, i32) #2

declare dso_local i8* @parse_attr(i8*, i32, i8*, i32*) #2

declare dso_local %struct.match_attr* @xcalloc(i32, i32) #2

declare dso_local i32 @git_attr_internal(i8*, i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @parse_path_pattern(i8**, i32*, i32*, i32*) #2

declare dso_local i32 @warning(i32) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @free(%struct.match_attr*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
