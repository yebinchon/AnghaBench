; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_truncate_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_truncate_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.vattr = type { i32, i32 }

@VA_SYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_truncate_locked(%struct.vnode* %0, i32 %1, i32 %2, %struct.ucred* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.vattr, align 4
  %10 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ucred* %3, %struct.ucred** %8, align 8
  %11 = load %struct.vnode*, %struct.vnode** %5, align 8
  %12 = call i32 @VOP_ADD_WRITECOUNT(%struct.vnode* %11, i32 1)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = call i32 @VATTR_NULL(%struct.vattr* %9)
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i32, i32* @VA_SYNC, align 4
  %23 = getelementptr inbounds %struct.vattr, %struct.vattr* %9, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = load %struct.ucred*, %struct.ucred** %8, align 8
  %29 = call i32 @VOP_SETATTR(%struct.vnode* %27, %struct.vattr* %9, %struct.ucred* %28)
  store i32 %29, i32* %10, align 4
  %30 = load %struct.vnode*, %struct.vnode** %5, align 8
  %31 = call i32 @VOP_ADD_WRITECOUNT_CHECKED(%struct.vnode* %30, i32 -1)
  br label %32

32:                                               ; preds = %26, %4
  %33 = load i32, i32* %10, align 4
  ret i32 %33
}

declare dso_local i32 @VOP_ADD_WRITECOUNT(%struct.vnode*, i32) #1

declare dso_local i32 @VATTR_NULL(%struct.vattr*) #1

declare dso_local i32 @VOP_SETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @VOP_ADD_WRITECOUNT_CHECKED(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
