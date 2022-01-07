; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_do_find_bisection.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_do_find_bisection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }

@commit_weight = common dso_local global i32 0, align 4
@TREESAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"bisection 2 count one\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"bisection 2 initialize\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"bisection 2 count_distance\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"bisection 2 counted all\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.commit_list*, i32, i32*, i32)* @do_find_bisection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @do_find_bisection(%struct.commit_list* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.commit_list*, align 8
  %13 = alloca %struct.commit*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.commit_list*, align 8
  %16 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %17 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %17, %struct.commit_list** %12, align 8
  br label %18

18:                                               ; preds = %62, %4
  %19 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %20 = icmp ne %struct.commit_list* %19, null
  br i1 %20, label %21, label %66

21:                                               ; preds = %18
  %22 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %23 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %22, i32 0, i32 0
  %24 = load %struct.commit*, %struct.commit** %23, align 8
  store %struct.commit* %24, %struct.commit** %13, align 8
  %25 = load %struct.commit*, %struct.commit** %13, align 8
  %26 = getelementptr inbounds %struct.commit, %struct.commit* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %10, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %35 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %34, i32 0, i32 0
  %36 = load %struct.commit*, %struct.commit** %35, align 8
  %37 = call i32** @commit_weight_at(i32* @commit_weight, %struct.commit* %36)
  store i32* %33, i32** %37, align 8
  %38 = load %struct.commit*, %struct.commit** %13, align 8
  %39 = call i32 @count_interesting_parents(%struct.commit* %38)
  switch i32 %39, label %58 [
    i32 0, label %40
    i32 1, label %55
  ]

40:                                               ; preds = %21
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @TREESAME, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %40
  %46 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %47 = call i32 @weight_set(%struct.commit_list* %46, i64 1)
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %53 = call i32 @show_list(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, %struct.commit_list* %52)
  br label %54

54:                                               ; preds = %45, %40
  br label %61

55:                                               ; preds = %21
  %56 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %57 = call i32 @weight_set(%struct.commit_list* %56, i64 -1)
  br label %61

58:                                               ; preds = %21
  %59 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %60 = call i32 @weight_set(%struct.commit_list* %59, i64 -2)
  br label %61

61:                                               ; preds = %58, %55, %54
  br label %62

62:                                               ; preds = %61
  %63 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %64 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %63, i32 0, i32 1
  %65 = load %struct.commit_list*, %struct.commit_list** %64, align 8
  store %struct.commit_list* %65, %struct.commit_list** %12, align 8
  br label %18

66:                                               ; preds = %18
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %70 = call i32 @show_list(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %68, %struct.commit_list* %69)
  %71 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %71, %struct.commit_list** %12, align 8
  br label %72

72:                                               ; preds = %110, %66
  %73 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %74 = icmp ne %struct.commit_list* %73, null
  br i1 %74, label %75, label %114

75:                                               ; preds = %72
  %76 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %77 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %76, i32 0, i32 0
  %78 = load %struct.commit*, %struct.commit** %77, align 8
  %79 = getelementptr inbounds %struct.commit, %struct.commit* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @UNINTERESTING, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  br label %110

86:                                               ; preds = %75
  %87 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %88 = call i64 @weight(%struct.commit_list* %87)
  %89 = icmp ne i64 %88, -2
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %110

91:                                               ; preds = %86
  %92 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %93 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %94 = call i64 @count_distance(%struct.commit_list* %93)
  %95 = call i32 @weight_set(%struct.commit_list* %92, i64 %94)
  %96 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %97 = call i32 @clear_distance(%struct.commit_list* %96)
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %91
  %101 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %102 = load i32, i32* %7, align 4
  %103 = call i64 @halfway(%struct.commit_list* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  store %struct.commit_list* %106, %struct.commit_list** %5, align 8
  br label %226

107:                                              ; preds = %100, %91
  %108 = load i32, i32* %11, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %107, %90, %85
  %111 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %112 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %111, i32 0, i32 1
  %113 = load %struct.commit_list*, %struct.commit_list** %112, align 8
  store %struct.commit_list* %113, %struct.commit_list** %12, align 8
  br label %72

114:                                              ; preds = %72
  %115 = load i32, i32* %11, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %118 = call i32 @show_list(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %115, i32 %116, %struct.commit_list* %117)
  br label %119

119:                                              ; preds = %210, %114
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %7, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %211

123:                                              ; preds = %119
  %124 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  store %struct.commit_list* %124, %struct.commit_list** %12, align 8
  br label %125

125:                                              ; preds = %206, %123
  %126 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %127 = icmp ne %struct.commit_list* %126, null
  br i1 %127, label %128, label %210

128:                                              ; preds = %125
  %129 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %130 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %129, i32 0, i32 0
  %131 = load %struct.commit*, %struct.commit** %130, align 8
  %132 = getelementptr inbounds %struct.commit, %struct.commit* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  store i32 %134, i32* %16, align 4
  %135 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %136 = call i64 @weight(%struct.commit_list* %135)
  %137 = icmp sle i64 0, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %128
  br label %206

139:                                              ; preds = %128
  %140 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %141 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %140, i32 0, i32 0
  %142 = load %struct.commit*, %struct.commit** %141, align 8
  %143 = getelementptr inbounds %struct.commit, %struct.commit* %142, i32 0, i32 1
  %144 = load %struct.commit_list*, %struct.commit_list** %143, align 8
  store %struct.commit_list* %144, %struct.commit_list** %15, align 8
  br label %145

145:                                              ; preds = %165, %139
  %146 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %147 = icmp ne %struct.commit_list* %146, null
  br i1 %147, label %148, label %169

148:                                              ; preds = %145
  %149 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %150 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %149, i32 0, i32 0
  %151 = load %struct.commit*, %struct.commit** %150, align 8
  %152 = getelementptr inbounds %struct.commit, %struct.commit* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @UNINTERESTING, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %148
  br label %165

159:                                              ; preds = %148
  %160 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %161 = call i64 @weight(%struct.commit_list* %160)
  %162 = icmp sle i64 0, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  br label %169

164:                                              ; preds = %159
  br label %165

165:                                              ; preds = %164, %158
  %166 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %167 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %166, i32 0, i32 1
  %168 = load %struct.commit_list*, %struct.commit_list** %167, align 8
  store %struct.commit_list* %168, %struct.commit_list** %15, align 8
  br label %145

169:                                              ; preds = %163, %145
  %170 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %171 = icmp ne %struct.commit_list* %170, null
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  br label %206

173:                                              ; preds = %169
  %174 = load i32, i32* %16, align 4
  %175 = load i32, i32* @TREESAME, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %190, label %178

178:                                              ; preds = %173
  %179 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %180 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %181 = call i64 @weight(%struct.commit_list* %180)
  %182 = add nsw i64 %181, 1
  %183 = call i32 @weight_set(%struct.commit_list* %179, i64 %182)
  %184 = load i32, i32* %11, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %11, align 4
  %186 = load i32, i32* %11, align 4
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %189 = call i32 @show_list(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %186, i32 %187, %struct.commit_list* %188)
  br label %195

190:                                              ; preds = %173
  %191 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %192 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  %193 = call i64 @weight(%struct.commit_list* %192)
  %194 = call i32 @weight_set(%struct.commit_list* %191, i64 %193)
  br label %195

195:                                              ; preds = %190, %178
  %196 = load i32, i32* %9, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %205, label %198

198:                                              ; preds = %195
  %199 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %200 = load i32, i32* %7, align 4
  %201 = call i64 @halfway(%struct.commit_list* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  store %struct.commit_list* %204, %struct.commit_list** %5, align 8
  br label %226

205:                                              ; preds = %198, %195
  br label %206

206:                                              ; preds = %205, %172, %138
  %207 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %208 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %207, i32 0, i32 1
  %209 = load %struct.commit_list*, %struct.commit_list** %208, align 8
  store %struct.commit_list* %209, %struct.commit_list** %12, align 8
  br label %125

210:                                              ; preds = %125
  br label %119

211:                                              ; preds = %119
  %212 = load i32, i32* %11, align 4
  %213 = load i32, i32* %7, align 4
  %214 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %215 = call i32 @show_list(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i32 %212, i32 %213, %struct.commit_list* %214)
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %222, label %218

218:                                              ; preds = %211
  %219 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %220 = load i32, i32* %7, align 4
  %221 = call %struct.commit_list* @best_bisection(%struct.commit_list* %219, i32 %220)
  store %struct.commit_list* %221, %struct.commit_list** %5, align 8
  br label %226

222:                                              ; preds = %211
  %223 = load %struct.commit_list*, %struct.commit_list** %6, align 8
  %224 = load i32, i32* %7, align 4
  %225 = call %struct.commit_list* @best_bisection_sorted(%struct.commit_list* %223, i32 %224)
  store %struct.commit_list* %225, %struct.commit_list** %5, align 8
  br label %226

226:                                              ; preds = %222, %218, %203, %105
  %227 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  ret %struct.commit_list* %227
}

declare dso_local i32** @commit_weight_at(i32*, %struct.commit*) #1

declare dso_local i32 @count_interesting_parents(%struct.commit*) #1

declare dso_local i32 @weight_set(%struct.commit_list*, i64) #1

declare dso_local i32 @show_list(i8*, i32, i32, %struct.commit_list*) #1

declare dso_local i64 @weight(%struct.commit_list*) #1

declare dso_local i64 @count_distance(%struct.commit_list*) #1

declare dso_local i32 @clear_distance(%struct.commit_list*) #1

declare dso_local i64 @halfway(%struct.commit_list*, i32) #1

declare dso_local %struct.commit_list* @best_bisection(%struct.commit_list*, i32) #1

declare dso_local %struct.commit_list* @best_bisection_sorted(%struct.commit_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
