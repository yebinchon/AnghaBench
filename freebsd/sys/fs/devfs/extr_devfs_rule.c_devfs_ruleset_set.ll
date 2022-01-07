; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_ruleset_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_ruleset_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@sx_rules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfs_ruleset_set(i32 %0, %struct.devfs_mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devfs_mount*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.devfs_mount* %1, %struct.devfs_mount** %4, align 8
  %5 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %6 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %5, i32 0, i32 0
  %7 = load i32, i32* @SX_XLOCKED, align 4
  %8 = call i32 @sx_assert(i32* %6, i32 %7)
  %9 = call i32 @sx_xlock(i32* @sx_rules)
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.devfs_mount*, %struct.devfs_mount** %4, align 8
  %12 = call i32 @devfs_ruleset_use(i32 %10, %struct.devfs_mount* %11)
  %13 = call i32 @sx_xunlock(i32* @sx_rules)
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @devfs_ruleset_use(i32, %struct.devfs_mount*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
