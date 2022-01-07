; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_check_pbase_path.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_check_pbase_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@done_pbase_paths = common dso_local global i32* null, align 8
@done_pbase_paths_num = common dso_local global i32 0, align 4
@done_pbase_paths_alloc = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @check_pbase_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_pbase_path(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @done_pbase_path_pos(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp sle i32 0, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 1, i32* %2, align 4
  br label %45

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  %12 = sub nsw i32 0, %11
  %13 = sub nsw i32 %12, 1
  store i32 %13, i32* %4, align 4
  %14 = load i32*, i32** @done_pbase_paths, align 8
  %15 = load i32, i32* @done_pbase_paths_num, align 4
  %16 = add nsw i32 %15, 1
  %17 = load i32, i32* @done_pbase_paths_alloc, align 4
  %18 = call i32 @ALLOC_GROW(i32* %14, i32 %16, i32 %17)
  %19 = load i32, i32* @done_pbase_paths_num, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* @done_pbase_paths_num, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @done_pbase_paths_num, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %39

24:                                               ; preds = %10
  %25 = load i32*, i32** @done_pbase_paths, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32*, i32** @done_pbase_paths, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* @done_pbase_paths_num, align 4
  %35 = load i32, i32* %4, align 4
  %36 = sub nsw i32 %34, %35
  %37 = sub nsw i32 %36, 1
  %38 = call i32 @MOVE_ARRAY(i32* %29, i32* %33, i32 %37)
  br label %39

39:                                               ; preds = %24, %10
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** @done_pbase_paths, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32 %40, i32* %44, align 4
  store i32 0, i32* %2, align 4
  br label %45

45:                                               ; preds = %39, %9
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @done_pbase_path_pos(i32) #1

declare dso_local i32 @ALLOC_GROW(i32*, i32, i32) #1

declare dso_local i32 @MOVE_ARRAY(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
