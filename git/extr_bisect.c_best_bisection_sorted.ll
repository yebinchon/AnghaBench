; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_best_bisection_sorted.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_best_bisection_sorted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.object }
%struct.object = type { i32 }
%struct.commit_dist = type { i32, %struct.TYPE_2__* }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@TREESAME = common dso_local global i32 0, align 4
@compare_commit_dist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"dist=%d\00", align 1
@DECORATION_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.commit_list*, i32)* @best_bisection_sorted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @best_bisection_sorted(%struct.commit_list* %0, i32 %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_dist*, align 8
  %7 = alloca %struct.strbuf, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.object*, align 8
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.commit_dist* @xcalloc(i32 %13, i32 16)
  store %struct.commit_dist* %14, %struct.commit_dist** %6, align 8
  %15 = bitcast %struct.strbuf* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 4, i1 false)
  %16 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %16, %struct.commit_list** %5, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %61, %2
  %18 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %19 = icmp ne %struct.commit_list* %18, null
  br i1 %19, label %20, label %65

20:                                               ; preds = %17
  %21 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %22 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.object, %struct.object* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @TREESAME, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %61

32:                                               ; preds = %20
  %33 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %34 = call i32 @weight(%struct.commit_list* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %35, %36
  %38 = load i32, i32* %10, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %10, align 4
  br label %44

44:                                               ; preds = %40, %32
  %45 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %46 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load %struct.commit_dist*, %struct.commit_dist** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %48, i64 %50
  %52 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %51, i32 0, i32 1
  store %struct.TYPE_2__* %47, %struct.TYPE_2__** %52, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.commit_dist*, %struct.commit_dist** %6, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %54, i64 %56
  %58 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 8
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %44, %31
  %62 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %63 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %62, i32 0, i32 0
  %64 = load %struct.commit_list*, %struct.commit_list** %63, align 8
  store %struct.commit_list* %64, %struct.commit_list** %5, align 8
  br label %17

65:                                               ; preds = %17
  %66 = load %struct.commit_dist*, %struct.commit_dist** %6, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* @compare_commit_dist, align 4
  %69 = call i32 @QSORT(%struct.commit_dist* %66, i32 %67, i32 %68)
  %70 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %70, %struct.commit_list** %5, align 8
  store i32 0, i32* %9, align 4
  br label %71

71:                                               ; preds = %113, %65
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %116

75:                                               ; preds = %71
  %76 = load %struct.commit_dist*, %struct.commit_dist** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %76, i64 %78
  %80 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store %struct.object* %82, %struct.object** %12, align 8
  %83 = call i32 @strbuf_reset(%struct.strbuf* %7)
  %84 = load %struct.commit_dist*, %struct.commit_dist** %6, align 8
  %85 = load i32, i32* %9, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %84, i64 %86
  %88 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @strbuf_addf(%struct.strbuf* %7, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @DECORATION_NONE, align 4
  %92 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %7, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.object*, %struct.object** %12, align 8
  %95 = call i32 @add_name_decoration(i32 %91, i32 %93, %struct.object* %94)
  %96 = load %struct.commit_dist*, %struct.commit_dist** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %96, i64 %98
  %100 = getelementptr inbounds %struct.commit_dist, %struct.commit_dist* %99, i32 0, i32 1
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %103 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %102, i32 0, i32 1
  store %struct.TYPE_2__* %101, %struct.TYPE_2__** %103, align 8
  %104 = load i32, i32* %9, align 4
  %105 = load i32, i32* %8, align 4
  %106 = sub nsw i32 %105, 1
  %107 = icmp slt i32 %104, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %75
  %109 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %110 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %109, i32 0, i32 0
  %111 = load %struct.commit_list*, %struct.commit_list** %110, align 8
  store %struct.commit_list* %111, %struct.commit_list** %5, align 8
  br label %112

112:                                              ; preds = %108, %75
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %71

116:                                              ; preds = %71
  %117 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %118 = icmp ne %struct.commit_list* %117, null
  br i1 %118, label %119, label %126

119:                                              ; preds = %116
  %120 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %121 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %120, i32 0, i32 0
  %122 = load %struct.commit_list*, %struct.commit_list** %121, align 8
  %123 = call i32 @free_commit_list(%struct.commit_list* %122)
  %124 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  %125 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %124, i32 0, i32 0
  store %struct.commit_list* null, %struct.commit_list** %125, align 8
  br label %126

126:                                              ; preds = %119, %116
  %127 = call i32 @strbuf_release(%struct.strbuf* %7)
  %128 = load %struct.commit_dist*, %struct.commit_dist** %6, align 8
  %129 = call i32 @free(%struct.commit_dist* %128)
  %130 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  ret %struct.commit_list* %130
}

declare dso_local %struct.commit_dist* @xcalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @weight(%struct.commit_list*) #1

declare dso_local i32 @QSORT(%struct.commit_dist*, i32, i32) #1

declare dso_local i32 @strbuf_reset(%struct.strbuf*) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32) #1

declare dso_local i32 @add_name_decoration(i32, i32, %struct.object*) #1

declare dso_local i32 @free_commit_list(%struct.commit_list*) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @free(%struct.commit_dist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
