; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdadd_writecount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_default.c_vop_stdadd_writecount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_add_writecount_args = type { i64, %struct.vnode* }
%struct.vnode = type { i64 }

@MTX_DUPOK = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"neg writecount increment %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_add_writecount_args*)* @vop_stdadd_writecount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vop_stdadd_writecount(%struct.vop_add_writecount_args* %0) #0 {
  %2 = alloca %struct.vop_add_writecount_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i32, align 4
  store %struct.vop_add_writecount_args* %0, %struct.vop_add_writecount_args** %2, align 8
  %5 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %5, i32 0, i32 1
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = load i32, i32* @MTX_DUPOK, align 4
  %10 = call i32 @VI_LOCK_FLAGS(%struct.vnode* %8, i32 %9)
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @ETXTBSY, align 4
  store i32 %16, i32* %4, align 4
  br label %40

17:                                               ; preds = %1
  %18 = load %struct.vnode*, %struct.vnode** %3, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %22 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = icmp sge i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %29 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @VNASSERT(i32 %26, %struct.vnode* %27, i8* %31)
  %33 = load %struct.vop_add_writecount_args*, %struct.vop_add_writecount_args** %2, align 8
  %34 = getelementptr inbounds %struct.vop_add_writecount_args, %struct.vop_add_writecount_args* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.vnode*, %struct.vnode** %3, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, %35
  store i64 %39, i64* %37, align 8
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %17, %15
  %41 = load %struct.vnode*, %struct.vnode** %3, align 8
  %42 = call i32 @VI_UNLOCK(%struct.vnode* %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @VI_LOCK_FLAGS(%struct.vnode*, i32) #1

declare dso_local i32 @VNASSERT(i32, %struct.vnode*, i8*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
