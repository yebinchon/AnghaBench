; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_ruleset_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_ruleset_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i64 }
%struct.devfs_ruleset = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.devfs_mount*)* @devfs_ruleset_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_ruleset_use(i64 %0, %struct.devfs_mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.devfs_mount*, align 8
  %6 = alloca %struct.devfs_ruleset*, align 8
  %7 = alloca %struct.devfs_ruleset*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.devfs_mount* %1, %struct.devfs_mount** %5, align 8
  %8 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %9 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %2
  %13 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %14 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.devfs_ruleset* @devfs_ruleset_bynum(i64 %15)
  store %struct.devfs_ruleset* %16, %struct.devfs_ruleset** %6, align 8
  %17 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %6, align 8
  %18 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %6, align 8
  %22 = call i32 @devfs_ruleset_reap(%struct.devfs_ruleset* %21)
  br label %23

23:                                               ; preds = %12, %2
  %24 = load i64, i64* %4, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %28 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  store i32 0, i32* %3, align 4
  br label %45

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = call %struct.devfs_ruleset* @devfs_ruleset_bynum(i64 %30)
  store %struct.devfs_ruleset* %31, %struct.devfs_ruleset** %7, align 8
  %32 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %7, align 8
  %33 = icmp eq %struct.devfs_ruleset* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64, i64* %4, align 8
  %36 = call %struct.devfs_ruleset* @devfs_ruleset_create(i64 %35)
  store %struct.devfs_ruleset* %36, %struct.devfs_ruleset** %7, align 8
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.devfs_ruleset*, %struct.devfs_ruleset** %7, align 8
  %39 = getelementptr inbounds %struct.devfs_ruleset, %struct.devfs_ruleset* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.devfs_mount*, %struct.devfs_mount** %5, align 8
  %44 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %37, %26
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.devfs_ruleset* @devfs_ruleset_bynum(i64) #1

declare dso_local i32 @devfs_ruleset_reap(%struct.devfs_ruleset*) #1

declare dso_local %struct.devfs_ruleset* @devfs_ruleset_create(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
