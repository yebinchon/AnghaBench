; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pbase_tree_get.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_pbase_tree_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbase_tree_cache = type { i32, i32, i8*, i64, i32 }
%struct.object_id = type { i32 }

@pbase_tree_cache = common dso_local global %struct.pbase_tree_cache** null, align 8
@OBJ_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pbase_tree_cache* (%struct.object_id*)* @pbase_tree_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pbase_tree_cache* @pbase_tree_get(%struct.object_id* %0) #0 {
  %2 = alloca %struct.pbase_tree_cache*, align 8
  %3 = alloca %struct.object_id*, align 8
  %4 = alloca %struct.pbase_tree_cache*, align 8
  %5 = alloca %struct.pbase_tree_cache*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %3, align 8
  %12 = load %struct.object_id*, %struct.object_id** %3, align 8
  %13 = call i32 @pbase_tree_cache_ix(%struct.object_id* %12)
  store i32 %13, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %71, %1
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 8
  br i1 %16, label %17, label %74

17:                                               ; preds = %14
  %18 = load %struct.pbase_tree_cache**, %struct.pbase_tree_cache*** @pbase_tree_cache, align 8
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %18, i64 %20
  %22 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %21, align 8
  store %struct.pbase_tree_cache* %22, %struct.pbase_tree_cache** %4, align 8
  %23 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %24 = icmp ne %struct.pbase_tree_cache* %23, null
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %27 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %26, i32 0, i32 4
  %28 = load %struct.object_id*, %struct.object_id** %3, align 8
  %29 = call i64 @oideq(i32* %27, %struct.object_id* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %33 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 8
  %36 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  store %struct.pbase_tree_cache* %36, %struct.pbase_tree_cache** %2, align 8
  br label %139

37:                                               ; preds = %25, %17
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %37
  %41 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %42 = icmp ne %struct.pbase_tree_cache* %41, null
  br i1 %42, label %43, label %61

43:                                               ; preds = %40
  %44 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %45 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43, %37
  %49 = load i32, i32* %11, align 4
  %50 = icmp sle i32 0, %49
  br i1 %50, label %51, label %63

51:                                               ; preds = %48
  %52 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %53 = icmp ne %struct.pbase_tree_cache* %52, null
  br i1 %53, label %63, label %54

54:                                               ; preds = %51
  %55 = load %struct.pbase_tree_cache**, %struct.pbase_tree_cache*** @pbase_tree_cache, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %55, i64 %57
  %59 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %58, align 8
  %60 = icmp ne %struct.pbase_tree_cache* %59, null
  br i1 %60, label %61, label %63

61:                                               ; preds = %54, %43, %40
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %11, align 4
  br label %63

63:                                               ; preds = %61, %54, %51, %48
  br label %64

64:                                               ; preds = %63
  %65 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %66 = icmp ne %struct.pbase_tree_cache* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %74

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @pbase_tree_cache_ix_incr(i32 %69)
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %14

74:                                               ; preds = %67, %14
  %75 = load %struct.object_id*, %struct.object_id** %3, align 8
  %76 = call i8* @read_object_file(%struct.object_id* %75, i32* %8, i64* %7)
  store i8* %76, i8** %6, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  store %struct.pbase_tree_cache* null, %struct.pbase_tree_cache** %2, align 8
  br label %139

80:                                               ; preds = %74
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @OBJ_TREE, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8*, i8** %6, align 8
  %86 = call i32 @free(i8* %85)
  store %struct.pbase_tree_cache* null, %struct.pbase_tree_cache** %2, align 8
  br label %139

87:                                               ; preds = %80
  %88 = load i32, i32* %11, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store %struct.pbase_tree_cache* null, %struct.pbase_tree_cache** %4, align 8
  br label %98

91:                                               ; preds = %87
  %92 = load %struct.pbase_tree_cache**, %struct.pbase_tree_cache*** @pbase_tree_cache, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %92, i64 %94
  %96 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %95, align 8
  store %struct.pbase_tree_cache* %96, %struct.pbase_tree_cache** %4, align 8
  %97 = load i32, i32* %11, align 4
  store i32 %97, i32* %10, align 4
  br label %98

98:                                               ; preds = %91, %90
  %99 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %100 = icmp ne %struct.pbase_tree_cache* %99, null
  br i1 %100, label %108, label %101

101:                                              ; preds = %98
  %102 = call %struct.pbase_tree_cache* @xmalloc(i32 32)
  store %struct.pbase_tree_cache* %102, %struct.pbase_tree_cache** %5, align 8
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  %105 = zext i1 %104 to i32
  %106 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  %107 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %106, i32 0, i32 1
  store i32 %105, i32* %107, align 4
  br label %114

108:                                              ; preds = %98
  %109 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  %110 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %109, i32 0, i32 2
  %111 = load i8*, i8** %110, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %4, align 8
  store %struct.pbase_tree_cache* %113, %struct.pbase_tree_cache** %5, align 8
  br label %114

114:                                              ; preds = %108, %101
  %115 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  %116 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %115, i32 0, i32 4
  %117 = load %struct.object_id*, %struct.object_id** %3, align 8
  %118 = call i32 @oidcpy(i32* %116, %struct.object_id* %117)
  %119 = load i8*, i8** %6, align 8
  %120 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  %121 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  %124 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  %125 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  %126 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %125, i32 0, i32 0
  store i32 1, i32* %126, align 8
  %127 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  %128 = getelementptr inbounds %struct.pbase_tree_cache, %struct.pbase_tree_cache* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %114
  %132 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  %133 = load %struct.pbase_tree_cache**, %struct.pbase_tree_cache*** @pbase_tree_cache, align 8
  %134 = load i32, i32* %10, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %133, i64 %135
  store %struct.pbase_tree_cache* %132, %struct.pbase_tree_cache** %136, align 8
  br label %137

137:                                              ; preds = %131, %114
  %138 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %5, align 8
  store %struct.pbase_tree_cache* %138, %struct.pbase_tree_cache** %2, align 8
  br label %139

139:                                              ; preds = %137, %84, %79, %31
  %140 = load %struct.pbase_tree_cache*, %struct.pbase_tree_cache** %2, align 8
  ret %struct.pbase_tree_cache* %140
}

declare dso_local i32 @pbase_tree_cache_ix(%struct.object_id*) #1

declare dso_local i64 @oideq(i32*, %struct.object_id*) #1

declare dso_local i32 @pbase_tree_cache_ix_incr(i32) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.pbase_tree_cache* @xmalloc(i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
