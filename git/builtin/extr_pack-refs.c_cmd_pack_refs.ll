; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-refs.c_cmd_pack_refs.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-refs.c_cmd_pack_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }

@PACK_REFS_PRUNE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"all\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"pack everything\00", align 1
@PACK_REFS_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"prune\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"prune loose refs (default)\00", align 1
@git_default_config = common dso_local global i32 0, align 4
@pack_refs_usage = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_pack_refs(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x %struct.option], align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @PACK_REFS_PRUNE, align 4
  store i32 %9, i32* %7, align 4
  %10 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %8, i64 0, i64 0
  %11 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @PACK_REFS_ALL, align 4
  %13 = call i32 @OPT_BIT(i32 0, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %11, i32 %12)
  %14 = getelementptr inbounds %struct.option, %struct.option* %10, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = getelementptr inbounds %struct.option, %struct.option* %10, i64 1
  %16 = call i32 @N_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %17 = load i32, i32* @PACK_REFS_PRUNE, align 4
  %18 = call i32 @OPT_BIT(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32* %7, i32 %16, i32 %17)
  %19 = getelementptr inbounds %struct.option, %struct.option* %15, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = getelementptr inbounds %struct.option, %struct.option* %15, i64 1
  %21 = call i32 (...) @OPT_END()
  %22 = getelementptr inbounds %struct.option, %struct.option* %20, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @git_default_config, align 4
  %24 = call i32 @git_config(i32 %23, i32* null)
  %25 = load i32, i32* %4, align 4
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %8, i64 0, i64 0
  %29 = load i32, i32* @pack_refs_usage, align 4
  %30 = call i64 @parse_options(i32 %25, i8** %26, i8* %27, %struct.option* %28, i32 %29, i32 0)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = load i32, i32* @pack_refs_usage, align 4
  %34 = getelementptr inbounds [3 x %struct.option], [3 x %struct.option]* %8, i64 0, i64 0
  %35 = call i32 @usage_with_options(i32 %33, %struct.option* %34)
  br label %36

36:                                               ; preds = %32, %3
  %37 = load i32, i32* @the_repository, align 4
  %38 = call i32 @get_main_ref_store(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @refs_pack_refs(i32 %38, i32 %39)
  ret i32 %40
}

declare dso_local i32 @OPT_BIT(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i64 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i32 @refs_pack_refs(i32, i32) #1

declare dso_local i32 @get_main_ref_store(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
