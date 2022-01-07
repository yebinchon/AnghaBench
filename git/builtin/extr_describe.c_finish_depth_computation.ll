; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_describe.c_finish_depth_computation.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_describe.c_finish_depth_computation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, %struct.commit* }
%struct.commit = type { %struct.TYPE_2__, %struct.commit_list* }
%struct.TYPE_2__ = type { i32 }
%struct.possible_tag = type { i32, i32 }

@SEEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.commit_list**, %struct.possible_tag*)* @finish_depth_computation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @finish_depth_computation(%struct.commit_list** %0, %struct.possible_tag* %1) #0 {
  %3 = alloca %struct.commit_list**, align 8
  %4 = alloca %struct.possible_tag*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.commit*, align 8
  %7 = alloca %struct.commit_list*, align 8
  %8 = alloca %struct.commit_list*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca %struct.commit*, align 8
  store %struct.commit_list** %0, %struct.commit_list*** %3, align 8
  store %struct.possible_tag* %1, %struct.possible_tag** %4, align 8
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %100, %2
  %12 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %13 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %14 = icmp ne %struct.commit_list* %13, null
  br i1 %14, label %15, label %101

15:                                               ; preds = %11
  %16 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %17 = call %struct.commit* @pop_commit(%struct.commit_list** %16)
  store %struct.commit* %17, %struct.commit** %6, align 8
  %18 = load %struct.commit*, %struct.commit** %6, align 8
  %19 = getelementptr inbounds %struct.commit, %struct.commit* %18, i32 0, i32 1
  %20 = load %struct.commit_list*, %struct.commit_list** %19, align 8
  store %struct.commit_list* %20, %struct.commit_list** %7, align 8
  %21 = load i64, i64* %5, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %5, align 8
  %23 = load %struct.commit*, %struct.commit** %6, align 8
  %24 = getelementptr inbounds %struct.commit, %struct.commit* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.possible_tag*, %struct.possible_tag** %4, align 8
  %28 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %15
  %33 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %34 = load %struct.commit_list*, %struct.commit_list** %33, align 8
  store %struct.commit_list* %34, %struct.commit_list** %8, align 8
  br label %35

35:                                               ; preds = %52, %32
  %36 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %37 = icmp ne %struct.commit_list* %36, null
  br i1 %37, label %38, label %56

38:                                               ; preds = %35
  %39 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %40 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %39, i32 0, i32 1
  %41 = load %struct.commit*, %struct.commit** %40, align 8
  store %struct.commit* %41, %struct.commit** %9, align 8
  %42 = load %struct.commit*, %struct.commit** %9, align 8
  %43 = getelementptr inbounds %struct.commit, %struct.commit* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.possible_tag*, %struct.possible_tag** %4, align 8
  %47 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %45, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %38
  br label %56

52:                                               ; preds = %38
  %53 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %54 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %53, i32 0, i32 0
  %55 = load %struct.commit_list*, %struct.commit_list** %54, align 8
  store %struct.commit_list* %55, %struct.commit_list** %8, align 8
  br label %35

56:                                               ; preds = %51, %35
  %57 = load %struct.commit_list*, %struct.commit_list** %8, align 8
  %58 = icmp ne %struct.commit_list* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %56
  br label %101

60:                                               ; preds = %56
  br label %66

61:                                               ; preds = %15
  %62 = load %struct.possible_tag*, %struct.possible_tag** %4, align 8
  %63 = getelementptr inbounds %struct.possible_tag, %struct.possible_tag* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %61, %60
  br label %67

67:                                               ; preds = %87, %66
  %68 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %69 = icmp ne %struct.commit_list* %68, null
  br i1 %69, label %70, label %100

70:                                               ; preds = %67
  %71 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %72 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %71, i32 0, i32 1
  %73 = load %struct.commit*, %struct.commit** %72, align 8
  store %struct.commit* %73, %struct.commit** %10, align 8
  %74 = load %struct.commit*, %struct.commit** %10, align 8
  %75 = call i32 @parse_commit(%struct.commit* %74)
  %76 = load %struct.commit*, %struct.commit** %10, align 8
  %77 = getelementptr inbounds %struct.commit, %struct.commit* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @SEEN, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %87, label %83

83:                                               ; preds = %70
  %84 = load %struct.commit*, %struct.commit** %10, align 8
  %85 = load %struct.commit_list**, %struct.commit_list*** %3, align 8
  %86 = call i32 @commit_list_insert_by_date(%struct.commit* %84, %struct.commit_list** %85)
  br label %87

87:                                               ; preds = %83, %70
  %88 = load %struct.commit*, %struct.commit** %6, align 8
  %89 = getelementptr inbounds %struct.commit, %struct.commit* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.commit*, %struct.commit** %10, align 8
  %93 = getelementptr inbounds %struct.commit, %struct.commit* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %91
  store i32 %96, i32* %94, align 8
  %97 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %98 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %97, i32 0, i32 0
  %99 = load %struct.commit_list*, %struct.commit_list** %98, align 8
  store %struct.commit_list* %99, %struct.commit_list** %7, align 8
  br label %67

100:                                              ; preds = %67
  br label %11

101:                                              ; preds = %59, %11
  %102 = load i64, i64* %5, align 8
  ret i64 %102
}

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

declare dso_local i32 @parse_commit(%struct.commit*) #1

declare dso_local i32 @commit_list_insert_by_date(%struct.commit*, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
