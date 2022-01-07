; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_parent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_name = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.commit*, %struct.commit*)* @name_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @name_parent(%struct.commit* %0, %struct.commit* %1) #0 {
  %3 = alloca %struct.commit*, align 8
  %4 = alloca %struct.commit*, align 8
  %5 = alloca %struct.commit_name*, align 8
  %6 = alloca %struct.commit_name*, align 8
  store %struct.commit* %0, %struct.commit** %3, align 8
  store %struct.commit* %1, %struct.commit** %4, align 8
  %7 = load %struct.commit*, %struct.commit** %3, align 8
  %8 = call %struct.commit_name* @commit_to_name(%struct.commit* %7)
  store %struct.commit_name* %8, %struct.commit_name** %5, align 8
  %9 = load %struct.commit*, %struct.commit** %4, align 8
  %10 = call %struct.commit_name* @commit_to_name(%struct.commit* %9)
  store %struct.commit_name* %10, %struct.commit_name** %6, align 8
  %11 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %12 = icmp ne %struct.commit_name* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %16 = icmp ne %struct.commit_name* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %19 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = add nsw i64 %20, 1
  %22 = load %struct.commit_name*, %struct.commit_name** %6, align 8
  %23 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %36

26:                                               ; preds = %17, %14
  %27 = load %struct.commit*, %struct.commit** %4, align 8
  %28 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %29 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.commit_name*, %struct.commit_name** %5, align 8
  %32 = getelementptr inbounds %struct.commit_name, %struct.commit_name* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 @name_commit(%struct.commit* %27, i32 %30, i64 %34)
  br label %36

36:                                               ; preds = %13, %26, %17
  ret void
}

declare dso_local %struct.commit_name* @commit_to_name(%struct.commit*) #1

declare dso_local i32 @name_commit(%struct.commit*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
