; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rules_apply.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rules_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i64, i32 }
%struct.devfs_dirent = type { i32 }
%struct.devfs_ruleset = type { i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@sx_rules = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"mount-point has NULL ruleset\00", align 1
@devfs_rule_depth = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfs_rules_apply(%struct.devfs_mount* %0, %struct.devfs_dirent* %1) #0 {
  %3 = alloca %struct.devfs_mount*, align 8
  %4 = alloca %struct.devfs_dirent*, align 8
  %5 = alloca %struct.devfs_ruleset*, align 8
  store %struct.devfs_mount* %0, %struct.devfs_mount** %3, align 8
  store %struct.devfs_dirent* %1, %struct.devfs_dirent** %4, align 8
  %6 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %7 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %6, i32 0, i32 1
  %8 = load i32, i32* @SX_XLOCKED, align 4
  %9 = call i32 @sx_assert(i32* %7, i32 %8)
  %10 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %11 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %31

15:                                               ; preds = %2
  %16 = call i32 @sx_slock(i32* @sx_rules)
  %17 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %18 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call %struct.devfs_ruleset* @devfs_ruleset_bynum(i64 %19)
  store %struct.devfs_ruleset* %20, %struct.devfs_ruleset** %5, align 8
  %21 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %5, align 8
  %22 = icmp ne %struct.devfs_ruleset* %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %5, align 8
  %26 = load %struct.devfs_mount*, %struct.devfs_mount** %3, align 8
  %27 = load %struct.devfs_dirent*, %struct.devfs_dirent** %4, align 8
  %28 = load i32, i32* @devfs_rule_depth, align 4
  %29 = call i32 @devfs_ruleset_applyde(%struct.devfs_ruleset* %25, %struct.devfs_mount* %26, %struct.devfs_dirent* %27, i32 %28)
  %30 = call i32 @sx_sunlock(i32* @sx_rules)
  br label %31

31:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @sx_slock(i32*) #1

declare dso_local %struct.devfs_ruleset* @devfs_ruleset_bynum(i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @devfs_ruleset_applyde(%struct.devfs_ruleset*, %struct.devfs_mount*, %struct.devfs_dirent*, i32) #1

declare dso_local i32 @sx_sunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
