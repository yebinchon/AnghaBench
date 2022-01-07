; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_dev_rel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_conf.c_dev_rel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64, i32* }

@devmtx = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"dev_rel(%s) gave negative count\00", align 1
@si_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dev_rel(%struct.cdev* %0) #0 {
  %2 = alloca %struct.cdev*, align 8
  %3 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @MA_NOTOWNED, align 4
  %5 = call i32 @mtx_assert(i32* @devmtx, i32 %4)
  %6 = call i32 (...) @dev_lock()
  %7 = load %struct.cdev*, %struct.cdev** %2, align 8
  %8 = getelementptr inbounds %struct.cdev, %struct.cdev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, -1
  store i64 %10, i64* %8, align 8
  %11 = load %struct.cdev*, %struct.cdev** %2, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = load %struct.cdev*, %struct.cdev** %2, align 8
  %17 = call i32 @devtoname(%struct.cdev* %16)
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %15, i8* %19)
  %21 = load %struct.cdev*, %struct.cdev** %2, align 8
  %22 = getelementptr inbounds %struct.cdev, %struct.cdev* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %1
  %26 = load %struct.cdev*, %struct.cdev** %2, align 8
  %27 = getelementptr inbounds %struct.cdev, %struct.cdev* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.cdev*, %struct.cdev** %2, align 8
  %32 = load i32, i32* @si_list, align 4
  %33 = call i32 @LIST_REMOVE(%struct.cdev* %31, i32 %32)
  store i32 1, i32* %3, align 4
  br label %34

34:                                               ; preds = %30, %25, %1
  %35 = call i32 (...) @dev_unlock()
  %36 = load i32, i32* %3, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load %struct.cdev*, %struct.cdev** %2, align 8
  %40 = call i32 @devfs_free(%struct.cdev* %39)
  br label %41

41:                                               ; preds = %38, %34
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @dev_lock(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @devtoname(%struct.cdev*) #1

declare dso_local i32 @LIST_REMOVE(%struct.cdev*, i32) #1

declare dso_local i32 @dev_unlock(...) #1

declare dso_local i32 @devfs_free(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
