; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_determine_submodule_update_strategy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_determine_submodule_update_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.submodule_update_strategy = type { i64, i32 }
%struct.submodule = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }

@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"submodule.%s.update\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"Invalid update mode '%s' for submodule path '%s'\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"Invalid update mode '%s' configured for submodule path '%s'\00", align 1
@SM_UPDATE_UNSPECIFIED = common dso_local global i64 0, align 8
@SM_UPDATE_CHECKOUT = common dso_local global i8* null, align 8
@SM_UPDATE_MERGE = common dso_local global i64 0, align 8
@SM_UPDATE_REBASE = common dso_local global i64 0, align 8
@SM_UPDATE_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, i32, i8*, i8*, %struct.submodule_update_strategy*)* @determine_submodule_update_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @determine_submodule_update_strategy(%struct.repository* %0, i32 %1, i8* %2, i8* %3, %struct.submodule_update_strategy* %4) #0 {
  %6 = alloca %struct.repository*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.submodule_update_strategy*, align 8
  %11 = alloca %struct.submodule*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.repository* %0, %struct.repository** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.submodule_update_strategy* %4, %struct.submodule_update_strategy** %10, align 8
  %14 = load %struct.repository*, %struct.repository** %6, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call %struct.submodule* @submodule_from_path(%struct.repository* %14, i32* @null_oid, i8* %15)
  store %struct.submodule* %16, %struct.submodule** %11, align 8
  %17 = load %struct.submodule*, %struct.submodule** %11, align 8
  %18 = getelementptr inbounds %struct.submodule, %struct.submodule* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i8* @xstrfmt(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %26 = call i64 @parse_submodule_update_strategy(i8* %24, %struct.submodule_update_strategy* %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = call i32 @_(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i8*, i8** %9, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @die(i32 %29, i8* %30, i8* %31)
  br label %33

33:                                               ; preds = %28, %23
  br label %77

34:                                               ; preds = %5
  %35 = load %struct.repository*, %struct.repository** %6, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @repo_config_get_string_const(%struct.repository* %35, i8* %36, i8** %13)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load i8*, i8** %13, align 8
  %41 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %42 = call i64 @parse_submodule_update_strategy(i8* %40, %struct.submodule_update_strategy* %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = call i32 @_(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i8*, i8** %13, align 8
  %47 = load i8*, i8** %8, align 8
  %48 = call i32 @die(i32 %45, i8* %46, i8* %47)
  br label %49

49:                                               ; preds = %44, %39
  br label %76

50:                                               ; preds = %34
  %51 = load %struct.submodule*, %struct.submodule** %11, align 8
  %52 = getelementptr inbounds %struct.submodule, %struct.submodule* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SM_UPDATE_UNSPECIFIED, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %70

57:                                               ; preds = %50
  %58 = load %struct.submodule*, %struct.submodule** %11, align 8
  %59 = getelementptr inbounds %struct.submodule, %struct.submodule* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %63 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.submodule*, %struct.submodule** %11, align 8
  %65 = getelementptr inbounds %struct.submodule, %struct.submodule* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %69 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  br label %75

70:                                               ; preds = %50
  %71 = load i8*, i8** @SM_UPDATE_CHECKOUT, align 8
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %74 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %70, %57
  br label %76

76:                                               ; preds = %75, %49
  br label %77

77:                                               ; preds = %76, %33
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  %81 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %82 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SM_UPDATE_MERGE, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %98, label %86

86:                                               ; preds = %80
  %87 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %88 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @SM_UPDATE_REBASE, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %98, label %92

92:                                               ; preds = %86
  %93 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %94 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @SM_UPDATE_NONE, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %103

98:                                               ; preds = %92, %86, %80
  %99 = load i8*, i8** @SM_UPDATE_CHECKOUT, align 8
  %100 = ptrtoint i8* %99 to i64
  %101 = load %struct.submodule_update_strategy*, %struct.submodule_update_strategy** %10, align 8
  %102 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %101, i32 0, i32 0
  store i64 %100, i64* %102, align 8
  br label %103

103:                                              ; preds = %98, %92, %77
  %104 = load i8*, i8** %12, align 8
  %105 = call i32 @free(i8* %104)
  ret void
}

declare dso_local %struct.submodule* @submodule_from_path(%struct.repository*, i32*, i8*) #1

declare dso_local i8* @xstrfmt(i8*, i32) #1

declare dso_local i64 @parse_submodule_update_strategy(i8*, %struct.submodule_update_strategy*) #1

declare dso_local i32 @die(i32, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @repo_config_get_string_const(%struct.repository*, i8*, i8**) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
