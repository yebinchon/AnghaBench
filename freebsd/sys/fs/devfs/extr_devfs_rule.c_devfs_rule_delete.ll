; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_krule = type { %struct.devfs_ruleset*, %struct.TYPE_2__ }
%struct.devfs_ruleset = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@DRA_INCSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"DRA_INCSET but bad dr_incset\00", align 1
@dk_list = common dso_local global i32 0, align 4
@M_DEVFSRULE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfs_krule*)* @devfs_rule_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_rule_delete(%struct.devfs_krule* %0) #0 {
  %2 = alloca %struct.devfs_krule*, align 8
  %3 = alloca %struct.devfs_ruleset*, align 8
  store %struct.devfs_krule* %0, %struct.devfs_krule** %2, align 8
  %4 = load %struct.devfs_krule*, %struct.devfs_krule** %2, align 8
  %5 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @DRA_INCSET, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %1
  %12 = load %struct.devfs_krule*, %struct.devfs_krule** %2, align 8
  %13 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.devfs_ruleset* @devfs_ruleset_bynum(i32 %15)
  store %struct.devfs_ruleset* %16, %struct.devfs_ruleset** %3, align 8
  %17 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %3, align 8
  %18 = icmp ne %struct.devfs_ruleset* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %3, align 8
  %22 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %22, align 4
  %25 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %3, align 8
  %26 = call i32 @devfs_ruleset_reap(%struct.devfs_ruleset* %25)
  br label %27

27:                                               ; preds = %11, %1
  %28 = load %struct.devfs_krule*, %struct.devfs_krule** %2, align 8
  %29 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %28, i32 0, i32 0
  %30 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %29, align 8
  store %struct.devfs_ruleset* %30, %struct.devfs_ruleset** %3, align 8
  %31 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %3, align 8
  %32 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %31, i32 0, i32 0
  %33 = load %struct.devfs_krule*, %struct.devfs_krule** %2, align 8
  %34 = load i32, i32* @dk_list, align 4
  %35 = call i32 @TAILQ_REMOVE(i32* %32, %struct.devfs_krule* %33, i32 %34)
  %36 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %3, align 8
  %37 = call i32 @devfs_ruleset_reap(%struct.devfs_ruleset* %36)
  %38 = load %struct.devfs_krule*, %struct.devfs_krule** %2, align 8
  %39 = load i32, i32* @M_DEVFSRULE, align 4
  %40 = call i32 @free(%struct.devfs_krule* %38, i32 %39)
  ret i32 0
}

declare dso_local %struct.devfs_ruleset* @devfs_ruleset_bynum(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @devfs_ruleset_reap(%struct.devfs_ruleset*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.devfs_krule*, i32) #1

declare dso_local i32 @free(%struct.devfs_krule*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
