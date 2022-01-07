; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_consume_line.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_consume_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.combine_diff_state = type { i32, i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i64)* @consume_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @consume_line(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.combine_diff_state*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.combine_diff_state*
  store %struct.combine_diff_state* %9, %struct.combine_diff_state** %7, align 8
  %10 = load %struct.combine_diff_state*, %struct.combine_diff_state** %7, align 8
  %11 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %52

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  switch i32 %19, label %52 [
    i32 45, label %20
    i32 43, label %32
  ]

20:                                               ; preds = %15
  %21 = load %struct.combine_diff_state*, %struct.combine_diff_state** %7, align 8
  %22 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.combine_diff_state*, %struct.combine_diff_state** %7, align 8
  %25 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = getelementptr inbounds i8, i8* %27, i64 1
  %29 = load i64, i64* %6, align 8
  %30 = sub i64 %29, 1
  %31 = call i32 @append_lost(i32 %23, i32 %26, i8* %28, i64 %30)
  br label %52

32:                                               ; preds = %15
  %33 = load %struct.combine_diff_state*, %struct.combine_diff_state** %7, align 8
  %34 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.combine_diff_state*, %struct.combine_diff_state** %7, align 8
  %37 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.combine_diff_state*, %struct.combine_diff_state** %7, align 8
  %40 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %35
  store i32 %47, i32* %45, align 4
  %48 = load %struct.combine_diff_state*, %struct.combine_diff_state** %7, align 8
  %49 = getelementptr inbounds %struct.combine_diff_state, %struct.combine_diff_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %14, %15, %32, %20
  ret void
}

declare dso_local i32 @append_lost(i32, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
