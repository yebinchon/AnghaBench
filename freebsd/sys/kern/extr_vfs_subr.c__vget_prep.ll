; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c__vget_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c__vget_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i64 }

@VCHR = common dso_local global i64 0, align 8
@VGET_USECOUNT = common dso_local global i32 0, align 4
@VGET_HOLDCNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32)* @_vget_prep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_vget_prep(%struct.vnode* %0, i32 %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vnode*, %struct.vnode** %3, align 8
  %7 = getelementptr inbounds %struct.vnode, %struct.vnode* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @VCHR, align 8
  %10 = icmp ne i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i64 @__predict_true(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.vnode*, %struct.vnode** %3, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 1
  %17 = call i64 @refcount_acquire_if_not_zero(i64* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @VGET_USECOUNT, align 4
  store i32 %20, i32* %5, align 4
  br label %26

21:                                               ; preds = %14
  %22 = load %struct.vnode*, %struct.vnode** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @_vhold(%struct.vnode* %22, i32 %23)
  %25 = load i32, i32* @VGET_HOLDCNT, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %19
  br label %56

27:                                               ; preds = %2
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load %struct.vnode*, %struct.vnode** %3, align 8
  %32 = call i32 @VI_LOCK(%struct.vnode* %31)
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.vnode*, %struct.vnode** %3, align 8
  %35 = getelementptr inbounds %struct.vnode, %struct.vnode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.vnode*, %struct.vnode** %3, align 8
  %40 = call i32 @vholdl(%struct.vnode* %39)
  %41 = load i32, i32* @VGET_HOLDCNT, align 4
  store i32 %41, i32* %5, align 4
  br label %49

42:                                               ; preds = %33
  %43 = load %struct.vnode*, %struct.vnode** %3, align 8
  %44 = call i32 @v_incr_devcount(%struct.vnode* %43)
  %45 = load %struct.vnode*, %struct.vnode** %3, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 1
  %47 = call i32 @refcount_acquire(i64* %46)
  %48 = load i32, i32* @VGET_USECOUNT, align 4
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %42, %38
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.vnode*, %struct.vnode** %3, align 8
  %54 = call i32 @VI_UNLOCK(%struct.vnode* %53)
  br label %55

55:                                               ; preds = %52, %49
  br label %56

56:                                               ; preds = %55, %26
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i64 @refcount_acquire_if_not_zero(i64*) #1

declare dso_local i32 @_vhold(%struct.vnode*, i32) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @vholdl(%struct.vnode*) #1

declare dso_local i32 @v_incr_devcount(%struct.vnode*) #1

declare dso_local i32 @refcount_acquire(i64*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
