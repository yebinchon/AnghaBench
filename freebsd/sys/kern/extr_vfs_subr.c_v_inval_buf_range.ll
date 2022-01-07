; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_v_inval_buf_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_v_inval_buf_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.bufobj }
%struct.bufobj = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"v_inval_buf_range\00", align 1
@EAGAIN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v_inval_buf_range(%struct.vnode* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.bufobj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.vnode*, %struct.vnode** %5, align 8
  %13 = call i32 @ASSERT_VOP_LOCKED(%struct.vnode* %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* %7, align 4
  %19 = mul nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.vnode*, %struct.vnode** %5, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  store %struct.bufobj* %21, %struct.bufobj** %9, align 8
  %22 = load %struct.bufobj*, %struct.bufobj** %9, align 8
  %23 = call i32 @BO_LOCK(%struct.bufobj* %22)
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.bufobj*, %struct.bufobj** %9, align 8
  %26 = getelementptr inbounds %struct.bufobj, %struct.bufobj* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  br label %31

31:                                               ; preds = %39, %4
  %32 = load %struct.vnode*, %struct.vnode** %5, align 8
  %33 = load %struct.bufobj*, %struct.bufobj** %9, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @v_inval_buf_range_locked(%struct.vnode* %32, %struct.bufobj* %33, i32 %34, i32 %35)
  %37 = load i64, i64* @EAGAIN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %31

40:                                               ; preds = %31
  %41 = load %struct.bufobj*, %struct.bufobj** %9, align 8
  %42 = call i32 @BO_UNLOCK(%struct.bufobj* %41)
  %43 = load %struct.vnode*, %struct.vnode** %5, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @OFF_TO_IDX(i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = add nsw i32 %46, %47
  %49 = sub nsw i32 %48, 1
  %50 = call i32 @OFF_TO_IDX(i32 %49)
  %51 = call i32 @vn_pages_remove(%struct.vnode* %43, i32 %45, i32 %50)
  ret void
}

declare dso_local i32 @ASSERT_VOP_LOCKED(%struct.vnode*, i8*) #1

declare dso_local i32 @BO_LOCK(%struct.bufobj*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @v_inval_buf_range_locked(%struct.vnode*, %struct.bufobj*, i32, i32) #1

declare dso_local i32 @BO_UNLOCK(%struct.bufobj*) #1

declare dso_local i32 @vn_pages_remove(%struct.vnode*, i32, i32) #1

declare dso_local i32 @OFF_TO_IDX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
