; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_make_dev_alias_v.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_make_dev_alias_v.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"make_dev_alias_v: pdev is NULL\00", align 1
@MAKEDEV_WAITOK = common dso_local global i32 0, align 4
@MAKEDEV_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"make_dev_alias_v: both WAITOK and NOWAIT specified\00", align 1
@MAKEDEV_CHECKNAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"make_dev_alias_v: invalid flags specified (flags=%02x)\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SI_ALIAS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"make_dev_alias_v: bad si_name (error=%d, si_name=%s)\00", align 1
@SI_NAMED = common dso_local global i32 0, align 4
@devfs_inos = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cdev**, %struct.cdev*, i8*, i32)* @make_dev_alias_v to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_dev_alias_v(i32 %0, %struct.cdev** %1, %struct.cdev* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdev**, align 8
  %9 = alloca %struct.cdev*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cdev*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cdev** %1, %struct.cdev*** %8, align 8
  store %struct.cdev* %2, %struct.cdev** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.cdev*, %struct.cdev** %9, align 8
  %15 = icmp ne %struct.cdev* %14, null
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @MAKEDEV_NOWAIT, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br label %27

27:                                               ; preds = %22, %5
  %28 = phi i1 [ true, %5 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MAKEDEV_WAITOK, align 4
  %33 = load i32, i32* @MAKEDEV_NOWAIT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %31, %37
  %39 = icmp eq i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @KASSERT(i32 %40, i8* %43)
  %45 = load i32, i32* %7, align 4
  %46 = call %struct.cdev* @devfs_alloc(i32 %45)
  store %struct.cdev* %46, %struct.cdev** %12, align 8
  %47 = load %struct.cdev*, %struct.cdev** %12, align 8
  %48 = icmp eq %struct.cdev* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %27
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %6, align 4
  br label %99

51:                                               ; preds = %27
  %52 = call i32 (...) @dev_lock()
  %53 = load i32, i32* @SI_ALIAS, align 4
  %54 = load %struct.cdev*, %struct.cdev** %12, align 8
  %55 = getelementptr inbounds %struct.cdev, %struct.cdev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.cdev*, %struct.cdev** %12, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @prep_devname(%struct.cdev* %58, i8* %59, i32 %60)
  store i32 %61, i32* %13, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %80

64:                                               ; preds = %51
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @MAKEDEV_CHECKNAME, align 4
  %67 = and i32 %65, %66
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.cdev*, %struct.cdev** %12, align 8
  %72 = getelementptr inbounds %struct.cdev, %struct.cdev* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %70, i32 %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = call i32 (...) @dev_unlock()
  %77 = load %struct.cdev*, %struct.cdev** %12, align 8
  %78 = call i32 @devfs_free(%struct.cdev* %77)
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %6, align 4
  br label %99

80:                                               ; preds = %51
  %81 = load i32, i32* @SI_NAMED, align 4
  %82 = load %struct.cdev*, %struct.cdev** %12, align 8
  %83 = getelementptr inbounds %struct.cdev, %struct.cdev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load %struct.cdev*, %struct.cdev** %12, align 8
  %87 = call i32 @devfs_create(%struct.cdev* %86)
  %88 = load %struct.cdev*, %struct.cdev** %9, align 8
  %89 = load %struct.cdev*, %struct.cdev** %12, align 8
  %90 = call i32 @dev_dependsl(%struct.cdev* %88, %struct.cdev* %89)
  %91 = load i32, i32* @devfs_inos, align 4
  %92 = call i32 @clean_unrhdrl(i32 %91)
  %93 = call i32 (...) @dev_unlock()
  %94 = load %struct.cdev*, %struct.cdev** %12, align 8
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @notify_create(%struct.cdev* %94, i32 %95)
  %97 = load %struct.cdev*, %struct.cdev** %12, align 8
  %98 = load %struct.cdev**, %struct.cdev*** %8, align 8
  store %struct.cdev* %97, %struct.cdev** %98, align 8
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %80, %75, %49
  %100 = load i32, i32* %6, align 4
  ret i32 %100
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.cdev* @devfs_alloc(i32) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @prep_devname(%struct.cdev*, i8*, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local i32 @devfs_free(%struct.cdev*) #1

declare dso_local i32 @devfs_create(%struct.cdev*) #1

declare dso_local i32 @dev_dependsl(%struct.cdev*, %struct.cdev*) #1

declare dso_local i32 @clean_unrhdrl(i32) #1

declare dso_local i32 @notify_create(%struct.cdev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
