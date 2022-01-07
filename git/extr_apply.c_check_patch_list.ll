; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_check_patch_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_check_patch_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i64 }
%struct.patch = type { %struct.patch* }

@verbosity_normal = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Checking patch %s...\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*)* @check_patch_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_patch_list(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca %struct.patch*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store %struct.patch* %1, %struct.patch** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %9 = load %struct.patch*, %struct.patch** %5, align 8
  %10 = call i32 @prepare_symlink_changes(%struct.apply_state* %8, %struct.patch* %9)
  %11 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %12 = load %struct.patch*, %struct.patch** %5, align 8
  %13 = call i32 @prepare_fn_table(%struct.apply_state* %11, %struct.patch* %12)
  br label %14

14:                                               ; preds = %35, %2
  %15 = load %struct.patch*, %struct.patch** %5, align 8
  %16 = icmp ne %struct.patch* %15, null
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %19 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @verbosity_normal, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %17
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 @_(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.patch*, %struct.patch** %5, align 8
  %27 = call i32 @say_patch_name(i32 %24, i32 %25, %struct.patch* %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %30 = load %struct.patch*, %struct.patch** %5, align 8
  %31 = call i32 @check_patch(%struct.apply_state* %29, %struct.patch* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, -128
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  store i32 -128, i32* %3, align 4
  br label %44

35:                                               ; preds = %28
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  %39 = load %struct.patch*, %struct.patch** %5, align 8
  %40 = getelementptr inbounds %struct.patch, %struct.patch* %39, i32 0, i32 0
  %41 = load %struct.patch*, %struct.patch** %40, align 8
  store %struct.patch* %41, %struct.patch** %5, align 8
  br label %14

42:                                               ; preds = %14
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %42, %34
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @prepare_symlink_changes(%struct.apply_state*, %struct.patch*) #1

declare dso_local i32 @prepare_fn_table(%struct.apply_state*, %struct.patch*) #1

declare dso_local i32 @say_patch_name(i32, i32, %struct.patch*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @check_patch(%struct.apply_state*, %struct.patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
