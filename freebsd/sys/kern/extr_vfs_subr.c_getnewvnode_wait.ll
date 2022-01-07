; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_getnewvnode_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_getnewvnode_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vnode_free_list_mtx = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@numvnodes = common dso_local global i64 0, align 8
@desiredvnodes = common dso_local global i64 0, align 8
@vnlruproc_sig = common dso_local global i32 0, align 4
@vnlruproc = common dso_local global i32 0, align 4
@PVFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vlruwk\00", align 1
@hz = common dso_local global i32 0, align 4
@freevnodes = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @getnewvnode_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnewvnode_wait(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @mtx_assert(i32* @vnode_free_list_mtx, i32 %4)
  %6 = load i64, i64* @numvnodes, align 8
  %7 = load i64, i64* @desiredvnodes, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %9
  %14 = load i32, i32* @vnlruproc_sig, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  store i32 1, i32* @vnlruproc_sig, align 4
  %17 = load i32, i32* @vnlruproc, align 4
  %18 = call i32 @wakeup(i32 %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load i32, i32* @PVFS, align 4
  %21 = load i32, i32* @hz, align 4
  %22 = call i32 @msleep(i32* @vnlruproc_sig, i32* @vnode_free_list_mtx, i32 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i64, i64* @numvnodes, align 8
  %25 = add nsw i64 %24, 1
  %26 = load i64, i64* @desiredvnodes, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @freevnodes, align 4
  %30 = icmp sgt i32 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @vnlru_free_locked(i32 1, i32* null)
  br label %33

33:                                               ; preds = %31, %28, %23
  %34 = load i64, i64* @numvnodes, align 8
  %35 = load i64, i64* @desiredvnodes, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENFILE, align 4
  br label %40

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39, %37
  %41 = phi i32 [ %38, %37 ], [ 0, %39 ]
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @vnlru_free_locked(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
