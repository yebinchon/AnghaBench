; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_reflog.c_commit_is_complete.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_reflog.c_commit_is_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_6__, %struct.commit_list* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.object_array = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@SEEN = common dso_local global i32 0, align 4
@INCOMPLETE = common dso_local global i32 0, align 4
@STUDYING = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*)* @commit_is_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @commit_is_complete(%struct.commit* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.object_array, align 8
  %5 = alloca %struct.object_array, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.commit*, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit*, align 8
  %11 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.commit*, %struct.commit** %3, align 8
  %13 = getelementptr inbounds %struct.commit, %struct.commit* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @SEEN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %246

20:                                               ; preds = %1
  %21 = load %struct.commit*, %struct.commit** %3, align 8
  %22 = getelementptr inbounds %struct.commit, %struct.commit* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INCOMPLETE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %246

29:                                               ; preds = %20
  %30 = call i32 @memset(%struct.object_array* %4, i32 0, i32 16)
  %31 = call i32 @memset(%struct.object_array* %5, i32 0, i32 16)
  %32 = load %struct.commit*, %struct.commit** %3, align 8
  %33 = getelementptr inbounds %struct.commit, %struct.commit* %32, i32 0, i32 0
  %34 = call i32 @add_object_array(%struct.TYPE_6__* %33, i32* null, %struct.object_array* %4)
  %35 = load %struct.commit*, %struct.commit** %3, align 8
  %36 = getelementptr inbounds %struct.commit, %struct.commit* %35, i32 0, i32 0
  %37 = call i32 @add_object_array(%struct.TYPE_6__* %36, i32* null, %struct.object_array* %5)
  %38 = load i32, i32* @STUDYING, align 4
  %39 = load %struct.commit*, %struct.commit** %3, align 8
  %40 = getelementptr inbounds %struct.commit, %struct.commit* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %38
  store i32 %43, i32* %41, align 8
  br label %44

44:                                               ; preds = %125, %87, %29
  %45 = getelementptr inbounds %struct.object_array, %struct.object_array* %4, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %126

48:                                               ; preds = %44
  %49 = call i64 @object_array_pop(%struct.object_array* %4)
  %50 = inttoptr i64 %49 to %struct.commit*
  store %struct.commit* %50, %struct.commit** %8, align 8
  %51 = load %struct.commit*, %struct.commit** %8, align 8
  %52 = getelementptr inbounds %struct.commit, %struct.commit* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %70, label %56

56:                                               ; preds = %48
  %57 = load i32, i32* @the_repository, align 4
  %58 = load %struct.commit*, %struct.commit** %8, align 8
  %59 = getelementptr inbounds %struct.commit, %struct.commit* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = call i32 @parse_object(i32 %57, i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* @INCOMPLETE, align 4
  %65 = load %struct.commit*, %struct.commit** %8, align 8
  %66 = getelementptr inbounds %struct.commit, %struct.commit* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %64
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %63, %56, %48
  %71 = load %struct.commit*, %struct.commit** %8, align 8
  %72 = getelementptr inbounds %struct.commit, %struct.commit* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @INCOMPLETE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %70
  store i32 1, i32* %6, align 4
  br label %126

79:                                               ; preds = %70
  %80 = load %struct.commit*, %struct.commit** %8, align 8
  %81 = getelementptr inbounds %struct.commit, %struct.commit* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SEEN, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %79
  br label %44

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88
  %90 = load %struct.commit*, %struct.commit** %8, align 8
  %91 = getelementptr inbounds %struct.commit, %struct.commit* %90, i32 0, i32 1
  %92 = load %struct.commit_list*, %struct.commit_list** %91, align 8
  store %struct.commit_list* %92, %struct.commit_list** %9, align 8
  br label %93

93:                                               ; preds = %121, %89
  %94 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %95 = icmp ne %struct.commit_list* %94, null
  br i1 %95, label %96, label %125

96:                                               ; preds = %93
  %97 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %98 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %97, i32 0, i32 0
  %99 = load %struct.commit*, %struct.commit** %98, align 8
  store %struct.commit* %99, %struct.commit** %10, align 8
  %100 = load %struct.commit*, %struct.commit** %10, align 8
  %101 = getelementptr inbounds %struct.commit, %struct.commit* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @STUDYING, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %121

108:                                              ; preds = %96
  %109 = load i32, i32* @STUDYING, align 4
  %110 = load %struct.commit*, %struct.commit** %10, align 8
  %111 = getelementptr inbounds %struct.commit, %struct.commit* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %109
  store i32 %114, i32* %112, align 8
  %115 = load %struct.commit*, %struct.commit** %10, align 8
  %116 = getelementptr inbounds %struct.commit, %struct.commit* %115, i32 0, i32 0
  %117 = call i32 @add_object_array(%struct.TYPE_6__* %116, i32* null, %struct.object_array* %4)
  %118 = load %struct.commit*, %struct.commit** %10, align 8
  %119 = getelementptr inbounds %struct.commit, %struct.commit* %118, i32 0, i32 0
  %120 = call i32 @add_object_array(%struct.TYPE_6__* %119, i32* null, %struct.object_array* %5)
  br label %121

121:                                              ; preds = %108, %107
  %122 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %123 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %122, i32 0, i32 1
  %124 = load %struct.commit_list*, %struct.commit_list** %123, align 8
  store %struct.commit_list* %124, %struct.commit_list** %9, align 8
  br label %93

125:                                              ; preds = %93
  br label %44

126:                                              ; preds = %78, %44
  %127 = load i32, i32* %6, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %185, label %129

129:                                              ; preds = %126
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %156, %129
  %131 = load i32, i32* %7, align 4
  %132 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp slt i32 %131, %133
  br i1 %134, label %135, label %159

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 1
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %136, align 8
  %138 = load i32, i32* %7, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = bitcast %struct.TYPE_4__* %142 to %struct.commit*
  store %struct.commit* %143, %struct.commit** %11, align 8
  %144 = load %struct.commit*, %struct.commit** %11, align 8
  %145 = call i32 @get_commit_tree_oid(%struct.commit* %144)
  %146 = call i32 @tree_is_complete(i32 %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %155, label %148

148:                                              ; preds = %135
  store i32 1, i32* %6, align 4
  %149 = load i32, i32* @INCOMPLETE, align 4
  %150 = load %struct.commit*, %struct.commit** %11, align 8
  %151 = getelementptr inbounds %struct.commit, %struct.commit* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %149
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %148, %135
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %130

159:                                              ; preds = %130
  %160 = load i32, i32* %6, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %184, label %162

162:                                              ; preds = %159
  store i32 0, i32* %7, align 4
  br label %163

163:                                              ; preds = %180, %162
  %164 = load i32, i32* %7, align 4
  %165 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %164, %166
  br i1 %167, label %168, label %183

168:                                              ; preds = %163
  %169 = load i32, i32* @SEEN, align 4
  %170 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 1
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_4__*, %struct.TYPE_4__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %169
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %168
  %181 = load i32, i32* %7, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %7, align 4
  br label %163

183:                                              ; preds = %163
  br label %184

184:                                              ; preds = %183, %159
  br label %185

185:                                              ; preds = %184, %126
  store i32 0, i32* %7, align 4
  br label %186

186:                                              ; preds = %204, %185
  %187 = load i32, i32* %7, align 4
  %188 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = icmp slt i32 %187, %189
  br i1 %190, label %191, label %207

191:                                              ; preds = %186
  %192 = load i32, i32* @STUDYING, align 4
  %193 = xor i32 %192, -1
  %194 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 1
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_4__*, %struct.TYPE_4__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, %193
  store i32 %203, i32* %201, align 4
  br label %204

204:                                              ; preds = %191
  %205 = load i32, i32* %7, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %7, align 4
  br label %186

207:                                              ; preds = %186
  %208 = load i32, i32* %6, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i32, i32* @INCOMPLETE, align 4
  %212 = load %struct.commit*, %struct.commit** %3, align 8
  %213 = getelementptr inbounds %struct.commit, %struct.commit* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = or i32 %215, %211
  store i32 %216, i32* %214, align 8
  br label %239

217:                                              ; preds = %207
  store i32 0, i32* %7, align 4
  br label %218

218:                                              ; preds = %235, %217
  %219 = load i32, i32* %7, align 4
  %220 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = icmp slt i32 %219, %221
  br i1 %222, label %223, label %238

223:                                              ; preds = %218
  %224 = load i32, i32* @SEEN, align 4
  %225 = getelementptr inbounds %struct.object_array, %struct.object_array* %5, i32 0, i32 1
  %226 = load %struct.TYPE_5__*, %struct.TYPE_5__** %225, align 8
  %227 = load i32, i32* %7, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %229, i32 0, i32 0
  %231 = load %struct.TYPE_4__*, %struct.TYPE_4__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = or i32 %233, %224
  store i32 %234, i32* %232, align 4
  br label %235

235:                                              ; preds = %223
  %236 = load i32, i32* %7, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %7, align 4
  br label %218

238:                                              ; preds = %218
  br label %239

239:                                              ; preds = %238, %210
  %240 = call i32 @object_array_clear(%struct.object_array* %4)
  %241 = call i32 @object_array_clear(%struct.object_array* %5)
  %242 = load i32, i32* %6, align 4
  %243 = icmp ne i32 %242, 0
  %244 = xor i1 %243, true
  %245 = zext i1 %244 to i32
  store i32 %245, i32* %2, align 4
  br label %246

246:                                              ; preds = %239, %28, %19
  %247 = load i32, i32* %2, align 4
  ret i32 %247
}

declare dso_local i32 @memset(%struct.object_array*, i32, i32) #1

declare dso_local i32 @add_object_array(%struct.TYPE_6__*, i32*, %struct.object_array*) #1

declare dso_local i64 @object_array_pop(%struct.object_array*) #1

declare dso_local i32 @parse_object(i32, i32*) #1

declare dso_local i32 @tree_is_complete(i32) #1

declare dso_local i32 @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @object_array_clear(%struct.object_array*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
