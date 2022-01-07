; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_guess_p_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_guess_p_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apply_state*, i8*)* @guess_p_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @guess_p_value(%struct.apply_state* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.apply_state*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %8, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @is_dev_null(i8* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  %14 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %15 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %14, i32 0, i32 1
  %16 = load i8*, i8** %5, align 8
  %17 = call i8* @find_name_traditional(i32* %15, i8* %16, i32* null, i32 0)
  store i8* %17, i8** %6, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  store i32 -1, i32* %3, align 4
  br label %66

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8
  %23 = call i8* @strchr(i8* %22, i8 signext 47)
  store i8* %23, i8** %7, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %62

27:                                               ; preds = %21
  %28 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %29 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %27
  %33 = load i8*, i8** %6, align 8
  %34 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %35 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @starts_with(i8* %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %41 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @count_slashes(i32 %42)
  store i32 %43, i32* %8, align 4
  br label %60

44:                                               ; preds = %32
  %45 = load i8*, i8** %7, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %7, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %49 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @starts_with(i8* %47, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %44
  %54 = load %struct.apply_state*, %struct.apply_state** %4, align 8
  %55 = getelementptr inbounds %struct.apply_state, %struct.apply_state* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @count_slashes(i32 %56)
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %59

59:                                               ; preds = %53, %44
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %27
  br label %62

62:                                               ; preds = %61, %26
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @free(i8* %63)
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %20, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i64 @is_dev_null(i8*) #1

declare dso_local i8* @find_name_traditional(i32*, i8*, i32*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @starts_with(i8*, i32) #1

declare dso_local i32 @count_slashes(i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
