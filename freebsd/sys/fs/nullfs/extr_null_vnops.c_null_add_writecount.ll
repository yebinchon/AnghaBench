; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_add_writecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_vnops.c_null_add_writecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_add_writecount_args = type { i64, %struct.vnode* }
%struct.vnode = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"wrong null writecount\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"wrong writecount inc %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_add_writecount_args*)* @null_add_writecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @null_add_writecount(%struct.vop_add_writecount_args* %0) #0 {
  %2 = alloca %struct.vop_add_writecount_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  store %struct.vop_add_writecount_args* %0, %struct.vop_add_writecount_args** %2, align 8
  %6 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %7 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %6, i32 0, i32 1
  %8 = load %struct.vnode*, %struct.vnode** %7, align 8
  store %struct.vnode* %8, %struct.vnode** %4, align 8
  %9 = load %struct.vnode*, %struct.vnode** %4, align 8
  %10 = call %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode* %9)
  store %struct.vnode* %10, %struct.vnode** %3, align 8
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = call i32 @VI_LOCK(%struct.vnode* %11)
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call i32 @VNASSERT(i32 %17, %struct.vnode* %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %24 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = icmp sge i64 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.vnode*, %struct.vnode** %4, align 8
  %30 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %31 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @VNASSERT(i32 %28, %struct.vnode* %29, i8* %33)
  %35 = load %struct.vnode*, %struct.vnode** %3, align 8
  %36 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %37 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @VOP_ADD_WRITECOUNT(%struct.vnode* %35, i64 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %1
  %43 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %44 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.vnode*, %struct.vnode** %4, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, %45
  store i64 %49, i64* %47, align 8
  br label %50

50:                                               ; preds = %42, %1
  %51 = load %struct.vnode*, %struct.vnode** %4, align 8
  %52 = call i32 @VI_UNLOCK(%struct.vnode* %51)
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local %struct.vnode* @NULLVPTOLOWERVP(%struct.vnode*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @VOP_ADD_WRITECOUNT(%struct.vnode*, i64) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
