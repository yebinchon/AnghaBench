; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pull.c_config_get_rebase.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pull.c_config_get_rebase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"branch.%s.rebase\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"pull.rebase\00", align 1
@REBASE_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @config_get_rebase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_get_rebase() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.branch*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = call %struct.branch* @branch_get(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store %struct.branch* %6, %struct.branch** %2, align 8
  %7 = load %struct.branch*, %struct.branch** %2, align 8
  %8 = icmp ne %struct.branch* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %0
  %10 = load %struct.branch*, %struct.branch** %2, align 8
  %11 = getelementptr inbounds %struct.branch, %struct.branch* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i8* @xstrfmt(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %12)
  store i8* %13, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = call i32 @git_config_get_value(i8* %14, i8** %3)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %9
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = call i32 @parse_config_rebase(i8* %18, i8* %19, i32 1)
  store i32 %20, i32* %5, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @free(i8* %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %1, align 4
  br label %35

24:                                               ; preds = %9
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 @free(i8* %25)
  br label %27

27:                                               ; preds = %24, %0
  %28 = call i32 @git_config_get_value(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8** %3)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load i8*, i8** %3, align 8
  %32 = call i32 @parse_config_rebase(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %31, i32 1)
  store i32 %32, i32* %1, align 4
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @REBASE_FALSE, align 4
  store i32 %34, i32* %1, align 4
  br label %35

35:                                               ; preds = %33, %30, %17
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local %struct.branch* @branch_get(i8*) #1

declare dso_local i8* @xstrfmt(i8*, i32) #1

declare dso_local i32 @git_config_get_value(i8*, i8**) #1

declare dso_local i32 @parse_config_rebase(i8*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
