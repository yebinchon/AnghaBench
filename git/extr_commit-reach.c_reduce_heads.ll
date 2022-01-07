; ModuleID = '/home/carl/AnghaBench/git/extr_commit-reach.c_reduce_heads.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-reach.c_reduce_heads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit*, %struct.commit_list* }
%struct.commit = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.commit_list* }

@STALE = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @reduce_heads(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit_list*, align 8
  %6 = alloca %struct.commit_list**, align 8
  %7 = alloca %struct.commit**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %3, align 8
  store %struct.commit_list* null, %struct.commit_list** %5, align 8
  store %struct.commit_list** %5, %struct.commit_list*** %6, align 8
  %10 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  %11 = icmp ne %struct.commit_list* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.commit_list* null, %struct.commit_list** %2, align 8
  br label %128

13:                                               ; preds = %1
  %14 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %14, %struct.commit_list** %4, align 8
  br label %15

15:                                               ; preds = %28, %13
  %16 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %17 = icmp ne %struct.commit_list* %16, null
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load i32, i32* @STALE, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %22 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %21, i32 0, i32 0
  %23 = load %struct.commit*, %struct.commit** %22, align 8
  %24 = getelementptr inbounds %struct.commit, %struct.commit* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %20
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %18
  %29 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %30 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %29, i32 0, i32 1
  %31 = load %struct.commit_list*, %struct.commit_list** %30, align 8
  store %struct.commit_list* %31, %struct.commit_list** %4, align 8
  br label %15

32:                                               ; preds = %15
  %33 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %33, %struct.commit_list** %4, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %59, %32
  %35 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %36 = icmp ne %struct.commit_list* %35, null
  br i1 %36, label %37, label %63

37:                                               ; preds = %34
  %38 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %39 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %38, i32 0, i32 0
  %40 = load %struct.commit*, %struct.commit** %39, align 8
  %41 = getelementptr inbounds %struct.commit, %struct.commit* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @STALE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %59

48:                                               ; preds = %37
  %49 = load i32, i32* @STALE, align 4
  %50 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %51 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %50, i32 0, i32 0
  %52 = load %struct.commit*, %struct.commit** %51, align 8
  %53 = getelementptr inbounds %struct.commit, %struct.commit* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %49
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %48, %47
  %60 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %61 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %60, i32 0, i32 1
  %62 = load %struct.commit_list*, %struct.commit_list** %61, align 8
  store %struct.commit_list* %62, %struct.commit_list** %4, align 8
  br label %34

63:                                               ; preds = %34
  %64 = load i32, i32* %8, align 4
  %65 = call %struct.commit** @xcalloc(i32 %64, i32 8)
  store %struct.commit** %65, %struct.commit*** %7, align 8
  %66 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  store %struct.commit_list* %66, %struct.commit_list** %4, align 8
  store i32 0, i32* %9, align 4
  br label %67

67:                                               ; preds = %99, %63
  %68 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %69 = icmp ne %struct.commit_list* %68, null
  br i1 %69, label %70, label %103

70:                                               ; preds = %67
  %71 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %72 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %71, i32 0, i32 0
  %73 = load %struct.commit*, %struct.commit** %72, align 8
  %74 = getelementptr inbounds %struct.commit, %struct.commit* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @STALE, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %70
  %81 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %82 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %81, i32 0, i32 0
  %83 = load %struct.commit*, %struct.commit** %82, align 8
  %84 = load %struct.commit**, %struct.commit*** %7, align 8
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  %87 = sext i32 %85 to i64
  %88 = getelementptr inbounds %struct.commit*, %struct.commit** %84, i64 %87
  store %struct.commit* %83, %struct.commit** %88, align 8
  %89 = load i32, i32* @STALE, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %92 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %91, i32 0, i32 0
  %93 = load %struct.commit*, %struct.commit** %92, align 8
  %94 = getelementptr inbounds %struct.commit, %struct.commit* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, %90
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %80, %70
  br label %99

99:                                               ; preds = %98
  %100 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %101 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %100, i32 0, i32 1
  %102 = load %struct.commit_list*, %struct.commit_list** %101, align 8
  store %struct.commit_list* %102, %struct.commit_list** %4, align 8
  br label %67

103:                                              ; preds = %67
  %104 = load i32, i32* @the_repository, align 4
  %105 = load %struct.commit**, %struct.commit*** %7, align 8
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @remove_redundant(i32 %104, %struct.commit** %105, i32 %106)
  store i32 %107, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %121, %103
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %8, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %124

112:                                              ; preds = %108
  %113 = load %struct.commit**, %struct.commit*** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.commit*, %struct.commit** %113, i64 %115
  %117 = load %struct.commit*, %struct.commit** %116, align 8
  %118 = load %struct.commit_list**, %struct.commit_list*** %6, align 8
  %119 = call %struct.TYPE_4__* @commit_list_insert(%struct.commit* %117, %struct.commit_list** %118)
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  store %struct.commit_list** %120, %struct.commit_list*** %6, align 8
  br label %121

121:                                              ; preds = %112
  %122 = load i32, i32* %9, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %9, align 4
  br label %108

124:                                              ; preds = %108
  %125 = load %struct.commit**, %struct.commit*** %7, align 8
  %126 = call i32 @free(%struct.commit** %125)
  %127 = load %struct.commit_list*, %struct.commit_list** %5, align 8
  store %struct.commit_list* %127, %struct.commit_list** %2, align 8
  br label %128

128:                                              ; preds = %124, %12
  %129 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  ret %struct.commit_list* %129
}

declare dso_local %struct.commit** @xcalloc(i32, i32) #1

declare dso_local i32 @remove_redundant(i32, %struct.commit**, i32) #1

declare dso_local %struct.TYPE_4__* @commit_list_insert(%struct.commit*, %struct.commit_list**) #1

declare dso_local i32 @free(%struct.commit**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
