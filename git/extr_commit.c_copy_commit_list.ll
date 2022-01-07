; ModuleID = '/home/carl/AnghaBench/git/extr_commit.c_copy_commit_list.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit.c_copy_commit_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.commit_list = type { %struct.commit_list*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.commit_list* @copy_commit_list(%struct.commit_list* %0) #0 {
  %2 = alloca %struct.commit_list*, align 8
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit_list**, align 8
  store %struct.commit_list* %0, %struct.commit_list** %2, align 8
  store %struct.commit_list* null, %struct.commit_list** %3, align 8
  store %struct.commit_list** %3, %struct.commit_list*** %4, align 8
  br label %5

5:                                                ; preds = %8, %1
  %6 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %7 = icmp ne %struct.commit_list* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %5
  %9 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %10 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.commit_list**, %struct.commit_list*** %4, align 8
  %13 = call %struct.commit_list** @commit_list_append(i32 %11, %struct.commit_list** %12)
  store %struct.commit_list** %13, %struct.commit_list*** %4, align 8
  %14 = load %struct.commit_list*, %struct.commit_list** %2, align 8
  %15 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %14, i32 0, i32 0
  %16 = load %struct.commit_list*, %struct.commit_list** %15, align 8
  store %struct.commit_list* %16, %struct.commit_list** %2, align 8
  br label %5

17:                                               ; preds = %5
  %18 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  ret %struct.commit_list* %18
}

declare dso_local %struct.commit_list** @commit_list_append(i32, %struct.commit_list**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
