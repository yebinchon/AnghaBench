; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_first_parent_chain.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_show-branch.c_name_first_parent_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.commit* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.commit*)* @name_first_parent_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_first_parent_chain(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.commit*, align 8
  store %struct.commit* %0, %struct.commit** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %35, %1
  %6 = load %struct.commit*, %struct.commit** %2, align 8
  %7 = icmp ne %struct.commit* %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %5
  %9 = load %struct.commit*, %struct.commit** %2, align 8
  %10 = call i32 @commit_to_name(%struct.commit* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  br label %37

13:                                               ; preds = %8
  %14 = load %struct.commit*, %struct.commit** %2, align 8
  %15 = getelementptr inbounds %struct.commit, %struct.commit* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %37

19:                                               ; preds = %13
  %20 = load %struct.commit*, %struct.commit** %2, align 8
  %21 = getelementptr inbounds %struct.commit, %struct.commit* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.commit*, %struct.commit** %23, align 8
  store %struct.commit* %24, %struct.commit** %4, align 8
  %25 = load %struct.commit*, %struct.commit** %4, align 8
  %26 = call i32 @commit_to_name(%struct.commit* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %19
  %29 = load %struct.commit*, %struct.commit** %2, align 8
  %30 = load %struct.commit*, %struct.commit** %4, align 8
  %31 = call i32 @name_parent(%struct.commit* %29, %struct.commit* %30)
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %19
  br label %37

35:                                               ; preds = %28
  %36 = load %struct.commit*, %struct.commit** %4, align 8
  store %struct.commit* %36, %struct.commit** %2, align 8
  br label %5

37:                                               ; preds = %34, %18, %12, %5
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @commit_to_name(%struct.commit*) #1

declare dso_local i32 @name_parent(%struct.commit*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
