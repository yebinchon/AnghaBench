; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_ruleset_reap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_ruleset_reap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_ruleset = type { i64, i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"reaping ruleset zero \00", align 1
@devfs_rulesets = common dso_local global i32 0, align 4
@ds_list = common dso_local global i32 0, align 4
@M_DEVFSRULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devfs_ruleset*)* @devfs_ruleset_reap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @devfs_ruleset_reap(%struct.devfs_ruleset* %0) #0 {
  %2 = alloca %struct.devfs_ruleset*, align 8
  store %struct.devfs_ruleset* %0, %struct.devfs_ruleset** %2, align 8
  %3 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %2, align 8
  %4 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = zext i1 %6 to i32
  %8 = call i32 @KASSERT(i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %2, align 8
  %10 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %9, i32 0, i32 2
  %11 = call i32 @TAILQ_EMPTY(i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %2, align 8
  %15 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %1
  br label %26

19:                                               ; preds = %13
  %20 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %2, align 8
  %21 = load i32, i32* @ds_list, align 4
  %22 = call i32 @TAILQ_REMOVE(i32* @devfs_rulesets, %struct.devfs_ruleset* %20, i32 %21)
  %23 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %2, align 8
  %24 = load i32, i32* @M_DEVFSRULE, align 4
  %25 = call i32 @free(%struct.devfs_ruleset* %23, i32 %24)
  br label %26

26:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.devfs_ruleset*, i32) #1

declare dso_local i32 @free(%struct.devfs_ruleset*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
