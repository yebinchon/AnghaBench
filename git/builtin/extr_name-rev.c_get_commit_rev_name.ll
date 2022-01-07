; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_name-rev.c_get_commit_rev_name.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_name-rev.c_get_commit_rev_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_name = type { i32 }
%struct.commit = type { i32 }

@rev_names = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rev_name* (%struct.commit*)* @get_commit_rev_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rev_name* @get_commit_rev_name(%struct.commit* %0) #0 {
  %2 = alloca %struct.commit*, align 8
  %3 = alloca %struct.rev_name**, align 8
  store %struct.commit* %0, %struct.commit** %2, align 8
  %4 = load %struct.commit*, %struct.commit** %2, align 8
  %5 = call %struct.rev_name** @commit_rev_name_peek(i32* @rev_names, %struct.commit* %4)
  store %struct.rev_name** %5, %struct.rev_name*** %3, align 8
  %6 = load %struct.rev_name**, %struct.rev_name*** %3, align 8
  %7 = icmp ne %struct.rev_name** %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.rev_name**, %struct.rev_name*** %3, align 8
  %10 = load %struct.rev_name*, %struct.rev_name** %9, align 8
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %8
  %13 = phi %struct.rev_name* [ %10, %8 ], [ null, %11 ]
  ret %struct.rev_name* %13
}

declare dso_local %struct.rev_name** @commit_rev_name_peek(i32*, %struct.commit*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
