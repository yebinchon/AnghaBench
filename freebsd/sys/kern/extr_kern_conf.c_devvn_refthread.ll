; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_devvn_refthread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_devvn_refthread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdevsw = type { i32 }
%struct.vnode = type { i32, %struct.cdev* }
%struct.cdev = type { i32, i32, %struct.cdevsw* }
%struct.cdev_priv = type { i32 }

@devmtx = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@VV_ETERNALDEV = common dso_local global i32 0, align 4
@SI_ETERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Not eternal cdev\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Eternal cdev is destroyed\00", align 1
@CDP_SCHED_DTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cdevsw* @devvn_refthread(%struct.vnode* %0, %struct.cdev** %1, i32* %2) #0 {
  %4 = alloca %struct.cdevsw*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.cdev**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cdevsw*, align 8
  %9 = alloca %struct.cdev_priv*, align 8
  %10 = alloca %struct.cdev*, align 8
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.cdev** %1, %struct.cdev*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* @MA_NOTOWNED, align 4
  %12 = call i32 @mtx_assert(i32* @devmtx, i32 %11)
  %13 = load %struct.vnode*, %struct.vnode** %5, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VV_ETERNALDEV, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %46

19:                                               ; preds = %3
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 1
  %22 = load %struct.cdev*, %struct.cdev** %21, align 8
  store %struct.cdev* %22, %struct.cdev** %10, align 8
  %23 = load %struct.cdev*, %struct.cdev** %10, align 8
  %24 = icmp eq %struct.cdev* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store %struct.cdevsw* null, %struct.cdevsw** %4, align 8
  br label %85

26:                                               ; preds = %19
  %27 = load %struct.cdev*, %struct.cdev** %10, align 8
  %28 = getelementptr inbounds %struct.cdev, %struct.cdev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SI_ETERNAL, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @KASSERT(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %35 = load i32*, i32** %7, align 8
  store i32 0, i32* %35, align 4
  %36 = load %struct.cdev*, %struct.cdev** %10, align 8
  %37 = getelementptr inbounds %struct.cdev, %struct.cdev* %36, i32 0, i32 2
  %38 = load %struct.cdevsw*, %struct.cdevsw** %37, align 8
  store %struct.cdevsw* %38, %struct.cdevsw** %8, align 8
  %39 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  %40 = icmp ne %struct.cdevsw* %39, null
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.cdev*, %struct.cdev** %10, align 8
  %44 = load %struct.cdev**, %struct.cdev*** %6, align 8
  store %struct.cdev* %43, %struct.cdev** %44, align 8
  %45 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  store %struct.cdevsw* %45, %struct.cdevsw** %4, align 8
  br label %85

46:                                               ; preds = %3
  store %struct.cdevsw* null, %struct.cdevsw** %8, align 8
  %47 = call i32 (...) @dev_lock()
  %48 = load %struct.vnode*, %struct.vnode** %5, align 8
  %49 = getelementptr inbounds %struct.vnode, %struct.vnode* %48, i32 0, i32 1
  %50 = load %struct.cdev*, %struct.cdev** %49, align 8
  store %struct.cdev* %50, %struct.cdev** %10, align 8
  %51 = load %struct.cdev*, %struct.cdev** %10, align 8
  %52 = icmp eq %struct.cdev* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = call i32 (...) @dev_unlock()
  store %struct.cdevsw* null, %struct.cdevsw** %4, align 8
  br label %85

55:                                               ; preds = %46
  %56 = load %struct.cdev*, %struct.cdev** %10, align 8
  %57 = call %struct.cdev_priv* @cdev2priv(%struct.cdev* %56)
  store %struct.cdev_priv* %57, %struct.cdev_priv** %9, align 8
  %58 = load %struct.cdev_priv*, %struct.cdev_priv** %9, align 8
  %59 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @CDP_SCHED_DTR, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %75

64:                                               ; preds = %55
  %65 = load %struct.cdev*, %struct.cdev** %10, align 8
  %66 = getelementptr inbounds %struct.cdev, %struct.cdev* %65, i32 0, i32 2
  %67 = load %struct.cdevsw*, %struct.cdevsw** %66, align 8
  store %struct.cdevsw* %67, %struct.cdevsw** %8, align 8
  %68 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  %69 = icmp ne %struct.cdevsw* %68, null
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = load %struct.cdev*, %struct.cdev** %10, align 8
  %72 = getelementptr inbounds %struct.cdev, %struct.cdev* %71, i32 0, i32 1
  %73 = call i32 @atomic_add_long(i32* %72, i32 1)
  br label %74

74:                                               ; preds = %70, %64
  br label %75

75:                                               ; preds = %74, %55
  %76 = call i32 (...) @dev_unlock()
  %77 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  %78 = icmp ne %struct.cdevsw* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load %struct.cdev*, %struct.cdev** %10, align 8
  %81 = load %struct.cdev**, %struct.cdev*** %6, align 8
  store %struct.cdev* %80, %struct.cdev** %81, align 8
  %82 = load i32*, i32** %7, align 8
  store i32 1, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %75
  %84 = load %struct.cdevsw*, %struct.cdevsw** %8, align 8
  store %struct.cdevsw* %84, %struct.cdevsw** %4, align 8
  br label %85

85:                                               ; preds = %83, %53, %26, %25
  %86 = load %struct.cdevsw*, %struct.cdevsw** %4, align 8
  ret %struct.cdevsw* %86
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local %struct.cdev_priv* @cdev2priv(%struct.cdev*) #1

declare dso_local i32 @atomic_add_long(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
