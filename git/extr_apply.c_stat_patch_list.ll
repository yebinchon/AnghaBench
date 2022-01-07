; ModuleID = '/home/carl/AnghaBench/git/extr_apply.c_stat_patch_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_apply.c_stat_patch_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apply_state = type { i32 }
%struct.patch = type { i64, i64, %struct.patch* }

@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.apply_state*, %struct.patch*)* @stat_patch_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stat_patch_list(%struct.apply_state* %0, %struct.patch* %1) #0 {
  %3 = alloca %struct.apply_state*, align 8
  %4 = alloca %struct.patch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.apply_state* %0, %struct.apply_state** %3, align 8
  store %struct.patch* %1, %struct.patch** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %31, %2
  %9 = load %struct.patch*, %struct.patch** %4, align 8
  %10 = icmp ne %struct.patch* %9, null
  br i1 %10, label %11, label %35

11:                                               ; preds = %8
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %5, align 4
  %14 = load %struct.patch*, %struct.patch** %4, align 8
  %15 = getelementptr inbounds %struct.patch, %struct.patch* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.patch*, %struct.patch** %4, align 8
  %22 = getelementptr inbounds %struct.patch, %struct.patch* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %25, %23
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %7, align 4
  %28 = load %struct.apply_state*, %struct.apply_state** %3, align 8
  %29 = load %struct.patch*, %struct.patch** %4, align 8
  %30 = call i32 @show_stats(%struct.apply_state* %28, %struct.patch* %29)
  br label %31

31:                                               ; preds = %11
  %32 = load %struct.patch*, %struct.patch** %4, align 8
  %33 = getelementptr inbounds %struct.patch, %struct.patch* %32, i32 0, i32 2
  %34 = load %struct.patch*, %struct.patch** %33, align 8
  store %struct.patch* %34, %struct.patch** %4, align 8
  br label %8

35:                                               ; preds = %8
  %36 = load i32, i32* @stdout, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @print_stat_summary(i32 %36, i32 %37, i32 %38, i32 %39)
  ret void
}

declare dso_local i32 @show_stats(%struct.apply_state*, %struct.patch*) #1

declare dso_local i32 @print_stat_summary(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
