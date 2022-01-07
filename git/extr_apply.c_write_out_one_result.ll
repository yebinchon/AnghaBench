; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_write_out_one_result.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_write_out_one_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.patch = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, %struct.patch*, i32)* @write_out_one_result to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_out_one_result(%struct.apply_state* %0, %struct.patch* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.apply_state*, align 8
  %6 = alloca %struct.patch*, align 8
  %7 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %5, align 8
  store %struct.patch* %1, %struct.patch** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.patch*, %struct.patch** %6, align 8
  %9 = getelementptr inbounds %struct.patch, %struct.patch* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %17 = load %struct.patch*, %struct.patch** %6, align 8
  %18 = call i32 @remove_file(%struct.apply_state* %16, %struct.patch* %17, i32 1)
  store i32 %18, i32* %4, align 4
  br label %56

19:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %56

20:                                               ; preds = %3
  %21 = load %struct.patch*, %struct.patch** %6, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load %struct.patch*, %struct.patch** %6, align 8
  %27 = getelementptr inbounds %struct.patch, %struct.patch* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25, %20
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %35 = load %struct.patch*, %struct.patch** %6, align 8
  %36 = call i32 @create_file(%struct.apply_state* %34, %struct.patch* %35)
  store i32 %36, i32* %4, align 4
  br label %56

37:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %56

38:                                               ; preds = %25
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %43 = load %struct.patch*, %struct.patch** %6, align 8
  %44 = load %struct.patch*, %struct.patch** %6, align 8
  %45 = getelementptr inbounds %struct.patch, %struct.patch* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @remove_file(%struct.apply_state* %42, %struct.patch* %43, i32 %46)
  store i32 %47, i32* %4, align 4
  br label %56

48:                                               ; preds = %38
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %49, 1
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.apply_state*, %struct.apply_state** %5, align 8
  %53 = load %struct.patch*, %struct.patch** %6, align 8
  %54 = call i32 @create_file(%struct.apply_state* %52, %struct.patch* %53)
  store i32 %54, i32* %4, align 4
  br label %56

55:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %55, %51, %41, %37, %33, %19, %15
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @remove_file(%struct.apply_state*, %struct.patch*, i32) #1

declare dso_local i32 @create_file(%struct.apply_state*, %struct.patch*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
