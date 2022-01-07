; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_match.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_rule.c_devfs_rule_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_krule = type { %struct.devfs_rule }
%struct.devfs_rule = type { i32, i32 }
%struct.devfs_mount = type { i32 }
%struct.devfs_dirent = type { i32 }
%struct.cdev = type { i32 }
%struct.cdevsw = type { i32 }

@DRC_DSWFLAGS = common dso_local global i32 0, align 4
@DRC_PATHPTRN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.devfs_krule*, %struct.devfs_mount*, %struct.devfs_dirent*)* @devfs_rule_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devfs_rule_match(%struct.devfs_krule* %0, %struct.devfs_mount* %1, %struct.devfs_dirent* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.devfs_krule*, align 8
  %6 = alloca %struct.devfs_mount*, align 8
  %7 = alloca %struct.devfs_dirent*, align 8
  %8 = alloca %struct.devfs_rule*, align 8
  %9 = alloca %struct.cdev*, align 8
  %10 = alloca %struct.cdevsw*, align 8
  %11 = alloca i32, align 4
  store %struct.devfs_krule* %0, %struct.devfs_krule** %5, align 8
  store %struct.devfs_mount* %1, %struct.devfs_mount** %6, align 8
  store %struct.devfs_dirent* %2, %struct.devfs_dirent** %7, align 8
  %12 = load %struct.devfs_krule*, %struct.devfs_krule** %5, align 8
  %13 = getelementptr inbounds %struct.devfs_krule, %struct.devfs_krule* %12, i32 0, i32 0
  store %struct.devfs_rule* %13, %struct.devfs_rule** %8, align 8
  %14 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %15 = call %struct.cdev* @devfs_rule_getdev(%struct.devfs_dirent* %14)
  store %struct.cdev* %15, %struct.cdev** %9, align 8
  %16 = load %struct.devfs_rule*, %struct.devfs_rule** %8, align 8
  %17 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DRC_DSWFLAGS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %3
  %23 = load %struct.cdev*, %struct.cdev** %9, align 8
  %24 = icmp eq %struct.cdev* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %65

26:                                               ; preds = %22
  %27 = load %struct.cdev*, %struct.cdev** %9, align 8
  %28 = call %struct.cdevsw* @dev_refthread(%struct.cdev* %27, i32* %11)
  store %struct.cdevsw* %28, %struct.cdevsw** %10, align 8
  %29 = load %struct.cdevsw*, %struct.cdevsw** %10, align 8
  %30 = icmp eq %struct.cdevsw* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store i32 0, i32* %4, align 4
  br label %65

32:                                               ; preds = %26
  %33 = load %struct.cdevsw*, %struct.cdevsw** %10, align 8
  %34 = getelementptr inbounds %struct.cdevsw, %struct.cdevsw* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.devfs_rule*, %struct.devfs_rule** %8, align 8
  %37 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %35, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.cdev*, %struct.cdev** %9, align 8
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @dev_relthread(%struct.cdev* %42, i32 %43)
  store i32 0, i32* %4, align 4
  br label %65

45:                                               ; preds = %32
  %46 = load %struct.cdev*, %struct.cdev** %9, align 8
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @dev_relthread(%struct.cdev* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %3
  %50 = load %struct.devfs_rule*, %struct.devfs_rule** %8, align 8
  %51 = getelementptr inbounds %struct.devfs_rule, %struct.devfs_rule* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DRC_PATHPTRN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %49
  %57 = load %struct.devfs_krule*, %struct.devfs_krule** %5, align 8
  %58 = load %struct.devfs_mount*, %struct.devfs_mount** %6, align 8
  %59 = load %struct.devfs_dirent*, %struct.devfs_dirent** %7, align 8
  %60 = call i32 @devfs_rule_matchpath(%struct.devfs_krule* %57, %struct.devfs_mount* %58, %struct.devfs_dirent* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  store i32 0, i32* %4, align 4
  br label %65

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %49
  store i32 1, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %62, %41, %31, %25
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.cdev* @devfs_rule_getdev(%struct.devfs_dirent*) #1

declare dso_local %struct.cdevsw* @dev_refthread(%struct.cdev*, i32*) #1

declare dso_local i32 @dev_relthread(%struct.cdev*, i32) #1

declare dso_local i32 @devfs_rule_matchpath(%struct.devfs_krule*, %struct.devfs_mount*, %struct.devfs_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
