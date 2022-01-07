; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fetch.c_truncate_fetch_head.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fetch.c_truncate_fetch_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"cannot open %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @truncate_fetch_head to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @truncate_fetch_head() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @the_repository, align 4
  %5 = call i8* @git_path_fetch_head(i32 %4)
  store i8* %5, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32* @fopen_for_writing(i8* %6)
  store i32* %7, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %0
  %11 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @error_errno(i32 %11, i8* %12)
  store i32 %13, i32* %1, align 4
  br label %17

14:                                               ; preds = %0
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @fclose(i32* %15)
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %14, %10
  %18 = load i32, i32* %1, align 4
  ret i32 %18
}

declare dso_local i8* @git_path_fetch_head(i32) #1

declare dso_local i32* @fopen_for_writing(i8*) #1

declare dso_local i32 @error_errno(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
