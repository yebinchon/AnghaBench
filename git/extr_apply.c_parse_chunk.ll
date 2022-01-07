; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_parse_chunk.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_parse_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.patch = type { i32, i64, i8*, i64 }

@parse_chunk.git_binary = internal constant [18 x i8] c"GIT binary patch\0A\00", align 16
@.str = private unnamed_addr constant [9 x i8] c" differ\0A\00", align 1
@parse_chunk.binhdr = internal global [3 x i8*] [i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16
@.str.1 = private unnamed_addr constant [14 x i8] c"Binary files \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Files \00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"patch with only garbage at line %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*, i64, %struct.patch*)* @parse_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_chunk(%struct.apply_state* %0, i8* %1, i64 %2, %struct.patch* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.apply_state*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.patch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.patch* %3, %struct.patch** %9, align 8
  %18 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load %struct.patch*, %struct.patch** %9, align 8
  %22 = call i32 @find_header(%struct.apply_state* %18, i8* %19, i64 %20, i32* %10, %struct.patch* %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %239

27:                                               ; preds = %4
  %28 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %29 = load %struct.patch*, %struct.patch** %9, align 8
  %30 = call i32 @prefix_patch(%struct.apply_state* %28, %struct.patch* %29)
  %31 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %32 = load %struct.patch*, %struct.patch** %9, align 8
  %33 = call i32 @use_patch(%struct.apply_state* %31, %struct.patch* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load %struct.patch*, %struct.patch** %9, align 8
  %37 = getelementptr inbounds %struct.patch, %struct.patch* %36, i32 0, i32 2
  store i8* null, i8** %37, align 8
  br label %68

38:                                               ; preds = %27
  %39 = load %struct.patch*, %struct.patch** %9, align 8
  %40 = getelementptr inbounds %struct.patch, %struct.patch* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %45 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.patch*, %struct.patch** %9, align 8
  %50 = getelementptr inbounds %struct.patch, %struct.patch* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = call i8* @whitespace_rule(i32 %48, i64 %51)
  %53 = load %struct.patch*, %struct.patch** %9, align 8
  %54 = getelementptr inbounds %struct.patch, %struct.patch* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  br label %67

55:                                               ; preds = %38
  %56 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %57 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %56, i32 0, i32 3
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.patch*, %struct.patch** %9, align 8
  %62 = getelementptr inbounds %struct.patch, %struct.patch* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i8* @whitespace_rule(i32 %60, i64 %63)
  %65 = load %struct.patch*, %struct.patch** %9, align 8
  %66 = getelementptr inbounds %struct.patch, %struct.patch* %65, i32 0, i32 2
  store i8* %64, i8** %66, align 8
  br label %67

67:                                               ; preds = %55, %43
  br label %68

68:                                               ; preds = %67, %35
  %69 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %70 = load i8*, i8** %7, align 8
  %71 = load i32, i32* %12, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %70, i64 %72
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i64, i64* %8, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = sub i64 %77, %79
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = sub i64 %80, %82
  %84 = load %struct.patch*, %struct.patch** %9, align 8
  %85 = call i32 @parse_single_patch(%struct.apply_state* %69, i8* %76, i64 %83, %struct.patch* %84)
  store i32 %85, i32* %11, align 4
  %86 = load i32, i32* %11, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %68
  store i32 -128, i32* %5, align 4
  br label %239

89:                                               ; preds = %68
  %90 = load i32, i32* %11, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %233, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %13, align 4
  %96 = load i8*, i8** %7, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = load i64, i64* %8, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = sub i64 %100, %102
  %104 = call i64 @linelen(i8* %99, i64 %103)
  store i64 %104, i64* %14, align 8
  %105 = load i64, i64* %14, align 8
  %106 = icmp eq i64 %105, 17
  br i1 %106, label %107, label %150

107:                                              ; preds = %92
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i64, i64* %14, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memcmp(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @parse_chunk.git_binary, i64 0, i64 0), i8* %111, i32 %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %150, label %116

116:                                              ; preds = %107
  %117 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %118 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %122 = load i8*, i8** %7, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = load i64, i64* %14, align 8
  %127 = getelementptr inbounds i8, i8* %125, i64 %126
  %128 = load i64, i64* %8, align 8
  %129 = load i32, i32* %13, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 %128, %130
  %132 = load i64, i64* %14, align 8
  %133 = sub i64 %131, %132
  %134 = load %struct.patch*, %struct.patch** %9, align 8
  %135 = call i32 @parse_binary(%struct.apply_state* %121, i8* %127, i64 %133, %struct.patch* %134)
  store i32 %135, i32* %15, align 4
  %136 = load i32, i32* %15, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %116
  store i32 -1, i32* %5, align 4
  br label %239

139:                                              ; preds = %116
  %140 = load i32, i32* %15, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* %15, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %14, align 8
  %146 = add i64 %144, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %11, align 4
  br label %149

148:                                              ; preds = %139
  store i32 0, i32* %11, align 4
  br label %149

149:                                              ; preds = %148, %142
  br label %207

150:                                              ; preds = %107, %92
  %151 = load i8*, i8** %7, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = load i64, i64* %14, align 8
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  %157 = getelementptr inbounds i8, i8* %156, i64 -8
  %158 = call i32 @memcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* %157, i32 8)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %206, label %160

160:                                              ; preds = %150
  store i32 0, i32* %16, align 4
  br label %161

161:                                              ; preds = %202, %160
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [3 x i8*], [3 x i8*]* @parse_chunk.binhdr, i64 0, i64 %163
  %165 = load i8*, i8** %164, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %205

167:                                              ; preds = %161
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [3 x i8*], [3 x i8*]* @parse_chunk.binhdr, i64 0, i64 %169
  %171 = load i8*, i8** %170, align 8
  %172 = call i32 @strlen(i8* %171)
  store i32 %172, i32* %17, align 4
  %173 = load i32, i32* %17, align 4
  %174 = sext i32 %173 to i64
  %175 = load i64, i64* %8, align 8
  %176 = load i32, i32* %13, align 4
  %177 = sext i32 %176 to i64
  %178 = sub i64 %175, %177
  %179 = icmp ult i64 %174, %178
  br i1 %179, label %180, label %201

180:                                              ; preds = %167
  %181 = load i32, i32* %16, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds [3 x i8*], [3 x i8*]* @parse_chunk.binhdr, i64 0, i64 %182
  %184 = load i8*, i8** %183, align 8
  %185 = load i8*, i8** %7, align 8
  %186 = load i32, i32* %13, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i8, i8* %185, i64 %187
  %189 = load i32, i32* %17, align 4
  %190 = call i32 @memcmp(i8* %184, i8* %188, i32 %189)
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %201, label %192

192:                                              ; preds = %180
  %193 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %194 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = load %struct.patch*, %struct.patch** %9, align 8
  %198 = getelementptr inbounds %struct.patch, %struct.patch* %197, i32 0, i32 0
  store i32 1, i32* %198, align 8
  %199 = load i64, i64* %14, align 8
  %200 = trunc i64 %199 to i32
  store i32 %200, i32* %11, align 4
  br label %205

201:                                              ; preds = %180, %167
  br label %202

202:                                              ; preds = %201
  %203 = load i32, i32* %16, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %16, align 4
  br label %161

205:                                              ; preds = %192, %161
  br label %206

206:                                              ; preds = %205, %150
  br label %207

207:                                              ; preds = %206, %149
  %208 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %209 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %217, label %212

212:                                              ; preds = %207
  %213 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %214 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %232

217:                                              ; preds = %212, %207
  %218 = load %struct.patch*, %struct.patch** %9, align 8
  %219 = getelementptr inbounds %struct.patch, %struct.patch* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %232, label %222

222:                                              ; preds = %217
  %223 = load %struct.patch*, %struct.patch** %9, align 8
  %224 = call i32 @metadata_changes(%struct.patch* %223)
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %222
  %227 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %228 = load %struct.apply_state*, %struct.apply_state** %6, align 8
  %229 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = call i32 @error(i32 %227, i32 %230)
  store i32 -128, i32* %5, align 4
  br label %239

232:                                              ; preds = %222, %217, %212
  br label %233

233:                                              ; preds = %232, %89
  %234 = load i32, i32* %12, align 4
  %235 = load i32, i32* %10, align 4
  %236 = add nsw i32 %234, %235
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %236, %237
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %233, %226, %138, %88, %25
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @find_header(%struct.apply_state*, i8*, i64, i32*, %struct.patch*) #1

declare dso_local i32 @prefix_patch(%struct.apply_state*, %struct.patch*) #1

declare dso_local i32 @use_patch(%struct.apply_state*, %struct.patch*) #1

declare dso_local i8* @whitespace_rule(i32, i64) #1

declare dso_local i32 @parse_single_patch(%struct.apply_state*, i8*, i64, %struct.patch*) #1

declare dso_local i64 @linelen(i8*, i64) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @parse_binary(%struct.apply_state*, i8*, i64, %struct.patch*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @metadata_changes(%struct.patch*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
