; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_prepare_symlink_changes.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_prepare_symlink_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.patch = type { i64, i32, i64, i64, i64, i32, %struct.patch* }

@APPLY_SYMLINK_GOES_AWAY = common dso_local global i32 0, align 4
@APPLY_SYMLINK_IN_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apply_state*, %struct.patch*)* @prepare_symlink_changes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepare_symlink_changes(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca %struct.apply_state*, align 8
  %4 = alloca %struct.patch*, align 8
  store %struct.apply_state* %0, %struct.apply_state** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  br label %5

5:                                                ; preds = %55, %2
  %6 = load %struct.patch*, %struct.patch** %4, align 8
  %7 = icmp ne %struct.patch* %6, null
  br i1 %7, label %8, label %59

8:                                                ; preds = %5
  %9 = load %struct.patch*, %struct.patch** %4, align 8
  %10 = getelementptr inbounds %struct.patch, %struct.patch* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %8
  %14 = load %struct.patch*, %struct.patch** %4, align 8
  %15 = getelementptr inbounds %struct.patch, %struct.patch* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @S_ISLNK(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %36

19:                                               ; preds = %13
  %20 = load %struct.patch*, %struct.patch** %4, align 8
  %21 = getelementptr inbounds %struct.patch, %struct.patch* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %19
  %25 = load %struct.patch*, %struct.patch** %4, align 8
  %26 = getelementptr inbounds %struct.patch, %struct.patch* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %24, %19
  %30 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %31 = load %struct.patch*, %struct.patch** %4, align 8
  %32 = getelementptr inbounds %struct.patch, %struct.patch* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @APPLY_SYMLINK_GOES_AWAY, align 4
  %35 = call i32 @register_symlink_changes(%struct.apply_state* %30, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %24, %13, %8
  %37 = load %struct.patch*, %struct.patch** %4, align 8
  %38 = getelementptr inbounds %struct.patch, %struct.patch* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load %struct.patch*, %struct.patch** %4, align 8
  %43 = getelementptr inbounds %struct.patch, %struct.patch* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @S_ISLNK(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %49 = load %struct.patch*, %struct.patch** %4, align 8
  %50 = getelementptr inbounds %struct.patch, %struct.patch* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* @APPLY_SYMLINK_IN_RESULT, align 4
  %53 = call i32 @register_symlink_changes(%struct.apply_state* %48, i64 %51, i32 %52)
  br label %54

54:                                               ; preds = %47, %41, %36
  br label %55

55:                                               ; preds = %54
  %56 = load %struct.patch*, %struct.patch** %4, align 8
  %57 = getelementptr inbounds %struct.patch, %struct.patch* %56, i32 0, i32 6
  %58 = load %struct.patch*, %struct.patch** %57, align 8
  store %struct.patch* %58, %struct.patch** %4, align 8
  br label %5

59:                                               ; preds = %5
  ret void
}

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @register_symlink_changes(%struct.apply_state*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
