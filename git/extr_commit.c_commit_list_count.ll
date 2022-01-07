; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_commit_list_count.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_commit_list_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @commit_list_count(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %6 = icmp ne %struct.commit_list* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = load i32, i32* %3, align 4
  %9 = add i32 %8, 1
  store i32 %9, i32* %3, align 4
  br label %10

10:                                               ; preds = %7
  %11 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %12 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %11, i32 0, i32 0
  %13 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  store %struct.commit_list* %13, %struct.commit_list** %2, align 8
  br label %4

14:                                               ; preds = %4
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
