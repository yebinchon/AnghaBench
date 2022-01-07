; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_previous_patch.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_previous_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.patch = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.patch* (%struct.apply_state*, %struct.patch*, i32*)* @previous_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.patch* @previous_patch(%struct.apply_state* %0, %struct.patch* %1, i32* %2) #0 {
  %4 = alloca %struct.patch*, align 8
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.patch*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.patch*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.patch* %1, %struct.patch** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.patch*, %struct.patch** %6, align 8
  %11 = getelementptr inbounds %struct.patch, %struct.patch* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.patch*, %struct.patch** %6, align 8
  %16 = getelementptr inbounds %struct.patch, %struct.patch* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14, %3
  store %struct.patch* null, %struct.patch** %4, align 8
  br label %42

20:                                               ; preds = %14
  %21 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %22 = load %struct.patch*, %struct.patch** %6, align 8
  %23 = getelementptr inbounds %struct.patch, %struct.patch* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.patch* @in_fn_table(%struct.apply_state* %21, i32 %24)
  store %struct.patch* %25, %struct.patch** %8, align 8
  %26 = load %struct.patch*, %struct.patch** %8, align 8
  %27 = icmp ne %struct.patch* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  store %struct.patch* null, %struct.patch** %4, align 8
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.patch*, %struct.patch** %8, align 8
  %31 = call i64 @to_be_deleted(%struct.patch* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.patch* null, %struct.patch** %4, align 8
  br label %42

34:                                               ; preds = %29
  %35 = load %struct.patch*, %struct.patch** %8, align 8
  %36 = call i64 @was_deleted(%struct.patch* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32*, i32** %7, align 8
  store i32 1, i32* %39, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load %struct.patch*, %struct.patch** %8, align 8
  store %struct.patch* %41, %struct.patch** %4, align 8
  br label %42

42:                                               ; preds = %40, %33, %28, %19
  %43 = load %struct.patch*, %struct.patch** %4, align 8
  ret %struct.patch* %43
}

declare dso_local %struct.patch* @in_fn_table(%struct.apply_state*, i32) #1

declare dso_local i64 @to_be_deleted(%struct.patch*) #1

declare dso_local i64 @was_deleted(%struct.patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
