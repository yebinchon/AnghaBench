; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_clone_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_clone_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clonedevs = type { i32 }
%struct.cdev = type { i32, i32 }
%struct.cdev_priv = type { i32 }

@si_clone = common dso_local global i32 0, align 4
@SI_CLONELIST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Dev %p(%s) should be on clonelist\00", align 1
@CDP_SCHED_DTR = common dso_local global i32 0, align 4
@SI_NAMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Driver has goofed in cloning underways udev %jx unit %x\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clone_cleanup(%struct.clonedevs** %0) #0 {
  %2 = alloca %struct.clonedevs**, align 8
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca %struct.cdev_priv*, align 8
  %5 = alloca %struct.clonedevs*, align 8
  store %struct.clonedevs** %0, %struct.clonedevs*** %2, align 8
  %6 = load %struct.clonedevs**, %struct.clonedevs*** %2, align 8
  %7 = load %struct.clonedevs*, %struct.clonedevs** %6, align 8
  store %struct.clonedevs* %7, %struct.clonedevs** %5, align 8
  %8 = load %struct.clonedevs*, %struct.clonedevs** %5, align 8
  %9 = icmp eq %struct.clonedevs* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %80

11:                                               ; preds = %1
  %12 = call i32 (...) @dev_lock()
  br label %13

13:                                               ; preds = %73, %11
  %14 = load %struct.clonedevs*, %struct.clonedevs** %5, align 8
  %15 = getelementptr inbounds %struct.clonedevs, %struct.clonedevs* %14, i32 0, i32 0
  %16 = call i32 @LIST_EMPTY(i32* %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br i1 %18, label %19, label %74

19:                                               ; preds = %13
  %20 = load %struct.clonedevs*, %struct.clonedevs** %5, align 8
  %21 = getelementptr inbounds %struct.clonedevs, %struct.clonedevs* %20, i32 0, i32 0
  %22 = call %struct.cdev* @LIST_FIRST(i32* %21)
  store %struct.cdev* %22, %struct.cdev** %3, align 8
  %23 = load %struct.cdev*, %struct.cdev** %3, align 8
  %24 = load i32, i32* @si_clone, align 4
  %25 = call i32 @LIST_REMOVE(%struct.cdev* %23, i32 %24)
  %26 = load %struct.cdev*, %struct.cdev** %3, align 8
  %27 = getelementptr inbounds %struct.cdev, %struct.cdev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @SI_CLONELIST, align 4
  %30 = and i32 %28, %29
  %31 = load %struct.cdev*, %struct.cdev** %3, align 8
  %32 = load %struct.cdev*, %struct.cdev** %3, align 8
  %33 = getelementptr inbounds %struct.cdev, %struct.cdev* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @KASSERT(i32 %30, i8* %36)
  %38 = load i32, i32* @SI_CLONELIST, align 4
  %39 = xor i32 %38, -1
  %40 = load %struct.cdev*, %struct.cdev** %3, align 8
  %41 = getelementptr inbounds %struct.cdev, %struct.cdev* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.cdev*, %struct.cdev** %3, align 8
  %45 = call %struct.cdev_priv* @cdev2priv(%struct.cdev* %44)
  store %struct.cdev_priv* %45, %struct.cdev_priv** %4, align 8
  %46 = load %struct.cdev_priv*, %struct.cdev_priv** %4, align 8
  %47 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CDP_SCHED_DTR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %73, label %52

52:                                               ; preds = %19
  %53 = load i32, i32* @CDP_SCHED_DTR, align 4
  %54 = load %struct.cdev_priv*, %struct.cdev_priv** %4, align 8
  %55 = getelementptr inbounds %struct.cdev_priv, %struct.cdev_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.cdev*, %struct.cdev** %3, align 8
  %59 = getelementptr inbounds %struct.cdev, %struct.cdev* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SI_NAMED, align 4
  %62 = and i32 %60, %61
  %63 = load %struct.cdev*, %struct.cdev** %3, align 8
  %64 = call i64 @dev2udev(%struct.cdev* %63)
  %65 = trunc i64 %64 to i32
  %66 = load %struct.cdev*, %struct.cdev** %3, align 8
  %67 = call i32 @dev2unit(%struct.cdev* %66)
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = call i32 @KASSERT(i32 %62, i8* %69)
  %71 = load %struct.cdev*, %struct.cdev** %3, align 8
  %72 = call i32 @destroy_devl(%struct.cdev* %71)
  br label %73

73:                                               ; preds = %52, %19
  br label %13

74:                                               ; preds = %13
  %75 = call i32 (...) @dev_unlock_and_free()
  %76 = load %struct.clonedevs*, %struct.clonedevs** %5, align 8
  %77 = load i32, i32* @M_DEVBUF, align 4
  %78 = call i32 @free(%struct.clonedevs* %76, i32 %77)
  %79 = load %struct.clonedevs**, %struct.clonedevs*** %2, align 8
  store %struct.clonedevs* null, %struct.clonedevs** %79, align 8
  br label %80

80:                                               ; preds = %74, %10
  ret void
}

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local %struct.cdev* @LIST_FIRST(i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.cdev*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.cdev_priv* @cdev2priv(%struct.cdev*) #1

declare dso_local i64 @dev2udev(%struct.cdev*) #1

declare dso_local i32 @dev2unit(%struct.cdev*) #1

declare dso_local i32 @destroy_devl(%struct.cdev*) #1

declare dso_local i32 @dev_unlock_and_free(...) #1

declare dso_local i32 @free(%struct.clonedevs*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
