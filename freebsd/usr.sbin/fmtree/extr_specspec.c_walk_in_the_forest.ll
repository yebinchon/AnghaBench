; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_specspec.c_walk_in_the_forest.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/fmtree/extr_specspec.c_walk_in_the_forest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@F_DIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s%s/\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, i8*)* @walk_in_the_forest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_in_the_forest(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %15 = icmp ne %struct.TYPE_6__* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  br label %21

20:                                               ; preds = %3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %21

21:                                               ; preds = %20, %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  store %struct.TYPE_6__* %27, %struct.TYPE_6__** %10, align 8
  br label %29

28:                                               ; preds = %21
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  br label %29

29:                                               ; preds = %28, %24
  br label %30

30:                                               ; preds = %210, %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %32 = icmp ne %struct.TYPE_6__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %35 = icmp ne %struct.TYPE_6__* %34, null
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i1 [ true, %30 ], [ %35, %33 ]
  br i1 %37, label %38, label %216

38:                                               ; preds = %36
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %11, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %40 = icmp ne %struct.TYPE_6__* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  store %struct.TYPE_6__* %44, %struct.TYPE_6__** %11, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = icmp ne %struct.TYPE_6__* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %12, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %54 = icmp ne %struct.TYPE_6__* %53, null
  br i1 %54, label %55, label %107

55:                                               ; preds = %52
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %57 = icmp ne %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %107

58:                                               ; preds = %55
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @F_DIR, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @F_DIR, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %71, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  br label %106

72:                                               ; preds = %64, %58
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @F_DIR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %86

78:                                               ; preds = %72
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @F_DIR, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %85, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %105

86:                                               ; preds = %78, %72
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @strcmp(i32 %89, i32 %92)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  store %struct.TYPE_6__* %97, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %9, align 8
  br label %104

98:                                               ; preds = %86
  %99 = load i32, i32* %8, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %102, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %10, align 8
  br label %103

103:                                              ; preds = %101, %98
  br label %104

104:                                              ; preds = %103, %96
  br label %105

105:                                              ; preds = %104, %84
  br label %106

106:                                              ; preds = %105, %70
  br label %107

107:                                              ; preds = %106, %55, %52
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %109 = icmp eq %struct.TYPE_6__* %108, null
  br i1 %109, label %110, label %134

110:                                              ; preds = %107
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @F_DIR, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %110
  %117 = load i8*, i8** %6, align 8
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %117, i32 %120)
  %122 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %124 = load i8*, i8** %13, align 8
  %125 = call i32 @walk_in_the_forest(%struct.TYPE_6__* %122, %struct.TYPE_6__* %123, i8* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i8*, i8** %13, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = call i32 @compare_nodes(%struct.TYPE_6__* %128, %struct.TYPE_6__* %129, i8* %130)
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, %131
  store i32 %133, i32* %8, align 4
  br label %210

134:                                              ; preds = %110, %107
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %136 = icmp eq %struct.TYPE_6__* %135, null
  br i1 %136, label %137, label %161

137:                                              ; preds = %134
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @F_DIR, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %143, label %161

143:                                              ; preds = %137
  %144 = load i8*, i8** %6, align 8
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %144, i32 %147)
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %151 = load i8*, i8** %13, align 8
  %152 = call i32 @walk_in_the_forest(%struct.TYPE_6__* %149, %struct.TYPE_6__* %150, i8* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i8*, i8** %13, align 8
  %154 = call i32 @free(i8* %153)
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %157 = load i8*, i8** %6, align 8
  %158 = call i32 @compare_nodes(%struct.TYPE_6__* %155, %struct.TYPE_6__* %156, i8* %157)
  %159 = load i32, i32* %8, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %209

161:                                              ; preds = %137, %134
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %163 = icmp eq %struct.TYPE_6__* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %161
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %166 = icmp eq %struct.TYPE_6__* %165, null
  br i1 %166, label %167, label %172

167:                                              ; preds = %164, %161
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %170 = load i8*, i8** %6, align 8
  %171 = call i32 @compare_nodes(%struct.TYPE_6__* %168, %struct.TYPE_6__* %169, i8* %170)
  store i32 %171, i32* %8, align 4
  br label %208

172:                                              ; preds = %164
  %173 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i64, i64* @F_DIR, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %202

178:                                              ; preds = %172
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @F_DIR, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %202

184:                                              ; preds = %178
  %185 = load i8*, i8** %6, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @asprintf(i8** %13, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %185, i32 %188)
  %190 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %192 = load i8*, i8** %13, align 8
  %193 = call i32 @walk_in_the_forest(%struct.TYPE_6__* %190, %struct.TYPE_6__* %191, i8* %192)
  store i32 %193, i32* %8, align 4
  %194 = load i8*, i8** %13, align 8
  %195 = call i32 @free(i8* %194)
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %197 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %198 = load i8*, i8** %6, align 8
  %199 = call i32 @compare_nodes(%struct.TYPE_6__* %196, %struct.TYPE_6__* %197, i8* %198)
  %200 = load i32, i32* %8, align 4
  %201 = add nsw i32 %200, %199
  store i32 %201, i32* %8, align 4
  br label %207

202:                                              ; preds = %178, %172
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %205 = load i8*, i8** %6, align 8
  %206 = call i32 @compare_nodes(%struct.TYPE_6__* %203, %struct.TYPE_6__* %204, i8* %205)
  store i32 %206, i32* %8, align 4
  br label %207

207:                                              ; preds = %202, %184
  br label %208

208:                                              ; preds = %207, %167
  br label %209

209:                                              ; preds = %208, %143
  br label %210

210:                                              ; preds = %209, %116
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %7, align 4
  %213 = add nsw i32 %212, %211
  store i32 %213, i32* %7, align 4
  %214 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  store %struct.TYPE_6__* %214, %struct.TYPE_6__** %9, align 8
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  store %struct.TYPE_6__* %215, %struct.TYPE_6__** %10, align 8
  br label %30

216:                                              ; preds = %36
  %217 = load i32, i32* %7, align 4
  ret i32 %217
}

declare dso_local i32 @strcmp(i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @compare_nodes(%struct.TYPE_6__*, %struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
