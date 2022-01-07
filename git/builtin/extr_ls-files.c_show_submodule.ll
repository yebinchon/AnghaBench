; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_submodule.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_ls-files.c_show_submodule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.dir_struct = type { i32 }
%struct.submodule = type { i32 }

@null_oid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.dir_struct*, i8*)* @show_submodule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_submodule(%struct.repository* %0, %struct.dir_struct* %1, i8* %2) #0 {
  %4 = alloca %struct.repository*, align 8
  %5 = alloca %struct.dir_struct*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.repository, align 4
  %8 = alloca %struct.submodule*, align 8
  store %struct.repository* %0, %struct.repository** %4, align 8
  store %struct.dir_struct* %1, %struct.dir_struct** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.repository*, %struct.repository** %4, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.submodule* @submodule_from_path(%struct.repository* %9, i32* @null_oid, i8* %10)
  store %struct.submodule* %11, %struct.submodule** %8, align 8
  %12 = load %struct.repository*, %struct.repository** %4, align 8
  %13 = load %struct.submodule*, %struct.submodule** %8, align 8
  %14 = call i64 @repo_submodule_init(%struct.repository* %7, %struct.repository* %12, %struct.submodule* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %26

17:                                               ; preds = %3
  %18 = call i64 @repo_read_index(%struct.repository* %7)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 @die(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %20, %17
  %23 = load %struct.dir_struct*, %struct.dir_struct** %5, align 8
  %24 = call i32 @show_files(%struct.repository* %7, %struct.dir_struct* %23)
  %25 = call i32 @repo_clear(%struct.repository* %7)
  br label %26

26:                                               ; preds = %22, %16
  ret void
}

declare dso_local %struct.submodule* @submodule_from_path(%struct.repository*, i32*, i8*) #1

declare dso_local i64 @repo_submodule_init(%struct.repository*, %struct.repository*, %struct.submodule*) #1

declare dso_local i64 @repo_read_index(%struct.repository*) #1

declare dso_local i32 @die(i8*) #1

declare dso_local i32 @show_files(%struct.repository*, %struct.dir_struct*) #1

declare dso_local i32 @repo_clear(%struct.repository*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
