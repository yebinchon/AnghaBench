; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_update_module_mode.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_submodule--helper.c_module_update_module_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.submodule_update_strategy = type { i32 }

@SM_UPDATE_CHECKOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"submodule--helper update-module-clone expects <just-cloned> <path> [<update>]\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"just_cloned\00", align 1
@the_repository = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @module_update_module_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @module_update_module_mode(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.submodule_update_strategy, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %8, align 8
  %11 = getelementptr inbounds %struct.submodule_update_strategy, %struct.submodule_update_strategy* %10, i32 0, i32 0
  %12 = load i32, i32* @SM_UPDATE_CHECKOUT, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %4, align 4
  %17 = icmp sgt i32 %16, 4
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %3
  %19 = call i32 @die(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %15
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @git_config_int(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 2
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %7, align 8
  %28 = load i32, i32* %4, align 4
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 3
  %33 = load i8*, i8** %32, align 8
  store i8* %33, i8** %8, align 8
  br label %34

34:                                               ; preds = %30, %20
  %35 = load i32, i32* @the_repository, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i8*, i8** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = call i32 @determine_submodule_update_strategy(i32 %35, i32 %36, i8* %37, i8* %38, %struct.submodule_update_strategy* %10)
  %40 = call i32 @submodule_strategy_to_string(%struct.submodule_update_strategy* %10)
  %41 = load i32, i32* @stdout, align 4
  %42 = call i32 @fputs(i32 %40, i32 %41)
  ret i32 0
}

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @git_config_int(i8*, i8*) #1

declare dso_local i32 @determine_submodule_update_strategy(i32, i32, i8*, i8*, %struct.submodule_update_strategy*) #1

declare dso_local i32 @fputs(i32, i32) #1

declare dso_local i32 @submodule_strategy_to_string(%struct.submodule_update_strategy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
