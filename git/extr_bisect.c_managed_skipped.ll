; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_managed_skipped.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_managed_skipped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.commit_list = type { i32 }

@skipped_revs = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.commit_list* (%struct.commit_list*, %struct.commit_list**)* @managed_skipped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.commit_list* @managed_skipped(%struct.commit_list* %0, %struct.commit_list** %1) #0 {
  %3 = alloca %struct.commit_list*, align 8
  %4 = alloca %struct.commit_list*, align 8
  %5 = alloca %struct.commit_list**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.commit_list* %0, %struct.commit_list** %4, align 8
  store %struct.commit_list** %1, %struct.commit_list*** %5, align 8
  %8 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  store %struct.commit_list* null, %struct.commit_list** %8, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @skipped_revs, i32 0, i32 0), align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %12, %struct.commit_list** %3, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %15 = load %struct.commit_list**, %struct.commit_list*** %5, align 8
  %16 = call %struct.commit_list* @filter_skipped(%struct.commit_list* %14, %struct.commit_list** %15, i32 0, i32* %6, i32* %7)
  store %struct.commit_list* %16, %struct.commit_list** %4, align 8
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %13
  %20 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  store %struct.commit_list* %20, %struct.commit_list** %3, align 8
  br label %25

21:                                               ; preds = %13
  %22 = load %struct.commit_list*, %struct.commit_list** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.commit_list* @skip_away(%struct.commit_list* %22, i32 %23)
  store %struct.commit_list* %24, %struct.commit_list** %3, align 8
  br label %25

25:                                               ; preds = %21, %19, %11
  %26 = load %struct.commit_list*, %struct.commit_list** %3, align 8
  ret %struct.commit_list* %26
}

declare dso_local %struct.commit_list* @filter_skipped(%struct.commit_list*, %struct.commit_list**, i32, i32*, i32*) #1

declare dso_local %struct.commit_list* @skip_away(%struct.commit_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
