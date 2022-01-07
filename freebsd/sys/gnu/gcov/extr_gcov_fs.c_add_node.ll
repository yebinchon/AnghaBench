; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_add_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gnu/gcov/extr_gcov_fs.c_add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gcov_node = type { %struct.gcov_node* }
%struct.gcov_info = type { i32 }

@M_GCOV = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@root_node = common dso_local global %struct.gcov_node zeroinitializer, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gcov_info*)* @add_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_node(%struct.gcov_info* %0) #0 {
  %2 = alloca %struct.gcov_info*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gcov_node*, align 8
  %7 = alloca %struct.gcov_node*, align 8
  store %struct.gcov_info* %0, %struct.gcov_info** %2, align 8
  %8 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %9 = call i32 @gcov_info_filename(%struct.gcov_info* %8)
  %10 = load i32, i32* @M_GCOV, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = call i8* @strdup_flags(i32 %9, i32 %10, i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %82

16:                                               ; preds = %1
  store %struct.gcov_node* @root_node, %struct.gcov_node** %6, align 8
  %17 = load i8*, i8** %3, align 8
  store i8* %17, i8** %4, align 8
  br label %18

18:                                               ; preds = %63, %16
  %19 = load i8*, i8** %4, align 8
  %20 = call i8* @strchr(i8* %19, i8 signext 47)
  store i8* %20, i8** %5, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %66

22:                                               ; preds = %18
  %23 = load i8*, i8** %4, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = icmp eq i8* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %63

27:                                               ; preds = %22
  %28 = load i8*, i8** %5, align 8
  store i8 0, i8* %28, align 1
  %29 = load i8*, i8** %4, align 8
  %30 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %63

33:                                               ; preds = %27
  %34 = load i8*, i8** %4, align 8
  %35 = call i64 @strcmp(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %39 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %38, i32 0, i32 0
  %40 = load %struct.gcov_node*, %struct.gcov_node** %39, align 8
  %41 = icmp ne %struct.gcov_node* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %79

43:                                               ; preds = %37
  %44 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %45 = getelementptr inbounds %struct.gcov_node, %struct.gcov_node* %44, i32 0, i32 0
  %46 = load %struct.gcov_node*, %struct.gcov_node** %45, align 8
  store %struct.gcov_node* %46, %struct.gcov_node** %6, align 8
  br label %63

47:                                               ; preds = %33
  %48 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %49 = load i8*, i8** %4, align 8
  %50 = call %struct.gcov_node* @get_child_by_name(%struct.gcov_node* %48, i8* %49)
  store %struct.gcov_node* %50, %struct.gcov_node** %7, align 8
  %51 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  %52 = icmp ne %struct.gcov_node* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %47
  %54 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %55 = load i8*, i8** %4, align 8
  %56 = call %struct.gcov_node* @new_node(%struct.gcov_node* %54, %struct.gcov_info* null, i8* %55)
  store %struct.gcov_node* %56, %struct.gcov_node** %7, align 8
  %57 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  %58 = icmp ne %struct.gcov_node* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %53
  br label %79

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %47
  %62 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  store %struct.gcov_node* %62, %struct.gcov_node** %6, align 8
  br label %63

63:                                               ; preds = %61, %43, %32, %26
  %64 = load i8*, i8** %5, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 1
  store i8* %65, i8** %4, align 8
  br label %18

66:                                               ; preds = %18
  %67 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %68 = load %struct.gcov_info*, %struct.gcov_info** %2, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = call %struct.gcov_node* @new_node(%struct.gcov_node* %67, %struct.gcov_info* %68, i8* %69)
  store %struct.gcov_node* %70, %struct.gcov_node** %7, align 8
  %71 = load %struct.gcov_node*, %struct.gcov_node** %7, align 8
  %72 = icmp ne %struct.gcov_node* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %66
  br label %79

74:                                               ; preds = %66
  br label %75

75:                                               ; preds = %79, %74
  %76 = load i8*, i8** %3, align 8
  %77 = load i32, i32* @M_GCOV, align 4
  %78 = call i32 @free(i8* %76, i32 %77)
  br label %82

79:                                               ; preds = %73, %59, %42
  %80 = load %struct.gcov_node*, %struct.gcov_node** %6, align 8
  %81 = call i32 @remove_node(%struct.gcov_node* %80)
  br label %75

82:                                               ; preds = %75, %15
  ret void
}

declare dso_local i8* @strdup_flags(i32, i32, i32) #1

declare dso_local i32 @gcov_info_filename(%struct.gcov_info*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.gcov_node* @get_child_by_name(%struct.gcov_node*, i8*) #1

declare dso_local %struct.gcov_node* @new_node(%struct.gcov_node*, %struct.gcov_info*, i8*) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @remove_node(%struct.gcov_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
