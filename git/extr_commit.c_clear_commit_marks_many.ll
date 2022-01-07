; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_clear_commit_marks_many.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_clear_commit_marks_many.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit = type { i32 }
%struct.commit_list = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_commit_marks_many(i32 %0, %struct.commit** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.commit**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.commit_list*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.commit** %1, %struct.commit*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.commit_list* null, %struct.commit_list** %7, align 8
  br label %8

8:                                                ; preds = %12, %3
  %9 = load i32, i32* %4, align 4
  %10 = add nsw i32 %9, -1
  store i32 %10, i32* %4, align 4
  %11 = icmp ne i32 %9, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load %struct.commit**, %struct.commit*** %5, align 8
  %14 = load %struct.commit*, %struct.commit** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @clear_commit_marks_1(%struct.commit_list** %7, %struct.commit* %14, i32 %15)
  %17 = load %struct.commit**, %struct.commit*** %5, align 8
  %18 = getelementptr inbounds %struct.commit*, %struct.commit** %17, i32 1
  store %struct.commit** %18, %struct.commit*** %5, align 8
  br label %8

19:                                               ; preds = %8
  br label %20

20:                                               ; preds = %23, %19
  %21 = load %struct.commit_list*, %struct.commit_list** %7, align 8
  %22 = icmp ne %struct.commit_list* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = call %struct.commit* @pop_commit(%struct.commit_list** %7)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @clear_commit_marks_1(%struct.commit_list** %7, %struct.commit* %24, i32 %25)
  br label %20

27:                                               ; preds = %20
  ret void
}

declare dso_local i32 @clear_commit_marks_1(%struct.commit_list**, %struct.commit*, i32) #1

declare dso_local %struct.commit* @pop_commit(%struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
