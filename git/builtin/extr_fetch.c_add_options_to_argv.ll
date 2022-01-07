; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_options_to_argv.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_add_options_to_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.argv_array = type { i32 }

@dry_run = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"--dry-run\00", align 1
@prune = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"--prune\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"--no-prune\00", align 1
@prune_tags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"--prune-tags\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"--no-prune-tags\00", align 1
@update_head_ok = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [17 x i8] c"--update-head-ok\00", align 1
@force = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [8 x i8] c"--force\00", align 1
@keep = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [7 x i8] c"--keep\00", align 1
@recurse_submodules = common dso_local global i64 0, align 8
@RECURSE_SUBMODULES_ON = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [21 x i8] c"--recurse-submodules\00", align 1
@RECURSE_SUBMODULES_ON_DEMAND = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [31 x i8] c"--recurse-submodules=on-demand\00", align 1
@tags = common dso_local global i64 0, align 8
@TAGS_SET = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [7 x i8] c"--tags\00", align 1
@TAGS_UNSET = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [10 x i8] c"--no-tags\00", align 1
@verbosity = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"-q\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.argv_array*)* @add_options_to_argv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_options_to_argv(%struct.argv_array* %0) #0 {
  %2 = alloca %struct.argv_array*, align 8
  store %struct.argv_array* %0, %struct.argv_array** %2, align 8
  %3 = load i64, i64* @dry_run, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %7 = call i32 @argv_array_push(%struct.argv_array* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %5, %1
  %9 = load i32, i32* @prune, align 4
  %10 = icmp ne i32 %9, -1
  br i1 %10, label %11, label %18

11:                                               ; preds = %8
  %12 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %13 = load i32, i32* @prune, align 4
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i32 @argv_array_push(%struct.argv_array* %12, i8* %16)
  br label %18

18:                                               ; preds = %11, %8
  %19 = load i32, i32* @prune_tags, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %28

21:                                               ; preds = %18
  %22 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %23 = load i32, i32* @prune_tags, align 4
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)
  %27 = call i32 @argv_array_push(%struct.argv_array* %22, i8* %26)
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i64, i64* @update_head_ok, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %33 = call i32 @argv_array_push(%struct.argv_array* %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i64, i64* @force, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %39 = call i32 @argv_array_push(%struct.argv_array* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i64, i64* @keep, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %45 = call i32 @argv_array_push(%struct.argv_array* %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @recurse_submodules, align 8
  %48 = load i64, i64* @RECURSE_SUBMODULES_ON, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %52 = call i32 @argv_array_push(%struct.argv_array* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0))
  br label %61

53:                                               ; preds = %46
  %54 = load i64, i64* @recurse_submodules, align 8
  %55 = load i64, i64* @RECURSE_SUBMODULES_ON_DEMAND, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %59 = call i32 @argv_array_push(%struct.argv_array* %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %53
  br label %61

61:                                               ; preds = %60, %50
  %62 = load i64, i64* @tags, align 8
  %63 = load i64, i64* @TAGS_SET, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %67 = call i32 @argv_array_push(%struct.argv_array* %66, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  br label %76

68:                                               ; preds = %61
  %69 = load i64, i64* @tags, align 8
  %70 = load i64, i64* @TAGS_UNSET, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %74 = call i32 @argv_array_push(%struct.argv_array* %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %68
  br label %76

76:                                               ; preds = %75, %65
  %77 = load i32, i32* @verbosity, align 4
  %78 = icmp sge i32 %77, 2
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %81 = call i32 @argv_array_push(%struct.argv_array* %80, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* @verbosity, align 4
  %84 = icmp sge i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %87 = call i32 @argv_array_push(%struct.argv_array* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0))
  br label %95

88:                                               ; preds = %82
  %89 = load i32, i32* @verbosity, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.argv_array*, %struct.argv_array** %2, align 8
  %93 = call i32 @argv_array_push(%struct.argv_array* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %88
  br label %95

95:                                               ; preds = %94, %85
  ret void
}

declare dso_local i32 @argv_array_push(%struct.argv_array*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
