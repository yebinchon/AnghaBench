; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_can_all_from_reach.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_can_all_from_reach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_array = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@OBJECT_ARRAY_INIT = common dso_local global %struct.object_array zeroinitializer, align 4
@GENERATION_NUMBER_INFINITY = common dso_local global i64 0, align 8
@PARENT2 = common dso_local global i32 0, align 4
@PARENT1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_all_from_reach(%struct.commit_list* %0, %struct.commit_list* %1, i32 %2) #0 {
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.object_array, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.commit_list*, align 8
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.commit_list* %0, %struct.commit_list** %4, align 8
  store %struct.commit_list* %1, %struct.commit_list** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = bitcast %struct.object_array* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 bitcast (%struct.object_array* @OBJECT_ARRAY_INIT to i8*), i64 4, i1 false)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %18 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  br label %23

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %16
  %24 = phi i64 [ %21, %16 ], [ 0, %22 ]
  store i64 %24, i64* %8, align 8
  %25 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %25, %struct.commit_list** %9, align 8
  %26 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %26, %struct.commit_list** %10, align 8
  %27 = load i64, i64* @GENERATION_NUMBER_INFINITY, align 8
  store i64 %27, i64* %12, align 8
  br label %28

28:                                               ; preds = %71, %23
  %29 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %30 = icmp ne %struct.commit_list* %29, null
  br i1 %30, label %31, label %75

31:                                               ; preds = %28
  %32 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %33 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = call i32 @add_object_array(%struct.TYPE_5__* %35, i32* null, %struct.object_array* %7)
  %37 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %38 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = call i32 @parse_commit(%struct.TYPE_4__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %71, label %42

42:                                               ; preds = %31
  %43 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %44 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %52 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %50, %42
  %57 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %58 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp slt i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %66 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %64, %56
  br label %71

71:                                               ; preds = %70, %31
  %72 = load %struct.commit_list*, %struct.commit_list** %9, align 8
  %73 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %72, i32 0, i32 0
  %74 = load %struct.commit_list*, %struct.commit_list** %73, align 8
  store %struct.commit_list* %74, %struct.commit_list** %9, align 8
  br label %28

75:                                               ; preds = %28
  br label %76

76:                                               ; preds = %114, %75
  %77 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %78 = icmp ne %struct.commit_list* %77, null
  br i1 %78, label %79, label %126

79:                                               ; preds = %76
  %80 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %81 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %80, i32 0, i32 1
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = call i32 @parse_commit(%struct.TYPE_4__* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %114, label %85

85:                                               ; preds = %79
  %86 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %87 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* %8, align 8
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %85
  %94 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %95 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %8, align 8
  br label %99

99:                                               ; preds = %93, %85
  %100 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %101 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %100, i32 0, i32 1
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %113

107:                                              ; preds = %99
  %108 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %109 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %108, i32 0, i32 1
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  store i64 %112, i64* %12, align 8
  br label %113

113:                                              ; preds = %107, %99
  br label %114

114:                                              ; preds = %113, %79
  %115 = load i32, i32* @PARENT2, align 4
  %116 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %117 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %116, i32 0, i32 1
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = or i32 %121, %115
  store i32 %122, i32* %120, align 8
  %123 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %124 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %123, i32 0, i32 0
  %125 = load %struct.commit_list*, %struct.commit_list** %124, align 8
  store %struct.commit_list* %125, %struct.commit_list** %10, align 8
  br label %76

126:                                              ; preds = %76
  %127 = load i32, i32* @PARENT2, align 4
  %128 = load i32, i32* @PARENT1, align 4
  %129 = load i64, i64* %8, align 8
  %130 = load i64, i64* %12, align 8
  %131 = call i32 @can_all_from_reach_with_flag(%struct.object_array* %7, i32 %127, i32 %128, i64 %129, i64 %130)
  store i32 %131, i32* %11, align 4
  br label %132

132:                                              ; preds = %135, %126
  %133 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %134 = icmp ne %struct.commit_list* %133, null
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %137 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = load i32, i32* @PARENT1, align 4
  %140 = call i32 @clear_commit_marks(%struct.TYPE_4__* %138, i32 %139)
  %141 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %142 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %141, i32 0, i32 0
  %143 = load %struct.commit_list*, %struct.commit_list** %142, align 8
  store %struct.commit_list* %143, %struct.commit_list** %4, align 8
  br label %132

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %148, %144
  %146 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %147 = icmp ne %struct.commit_list* %146, null
  br i1 %147, label %148, label %157

148:                                              ; preds = %145
  %149 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %150 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = load i32, i32* @PARENT2, align 4
  %153 = call i32 @clear_commit_marks(%struct.TYPE_4__* %151, i32 %152)
  %154 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %155 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %154, i32 0, i32 0
  %156 = load %struct.commit_list*, %struct.commit_list** %155, align 8
  store %struct.commit_list* %156, %struct.commit_list** %5, align 8
  br label %145

157:                                              ; preds = %145
  %158 = call i32 @object_array_clear(%struct.object_array* %7)
  %159 = load i32, i32* %11, align 4
  ret i32 %159
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @add_object_array(%struct.TYPE_5__*, i32*, %struct.object_array*) #2

declare dso_local i32 @parse_commit(%struct.TYPE_4__*) #2

declare dso_local i32 @can_all_from_reach_with_flag(%struct.object_array*, i32, i32, i64, i64) #2

declare dso_local i32 @clear_commit_marks(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @object_array_clear(%struct.object_array*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
