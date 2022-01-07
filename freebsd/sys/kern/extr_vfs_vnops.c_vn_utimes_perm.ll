; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_utimes_perm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_utimes_perm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vattr = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@VWRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_utimes_perm(%struct.vnode* %0, %struct.vattr* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.vattr*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.vattr* %1, %struct.vattr** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load %struct.vnode*, %struct.vnode** %5, align 8
  %11 = load i32, i32* @VWRITE_ATTRIBUTES, align 4
  %12 = load %struct.ucred*, %struct.ucred** %7, align 8
  %13 = load %struct.thread*, %struct.thread** %8, align 8
  %14 = call i32 @VOP_ACCESSX(%struct.vnode* %10, i32 %11, %struct.ucred* %12, %struct.thread* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %4
  %18 = load %struct.vattr*, %struct.vattr** %6, align 8
  %19 = getelementptr inbounds %struct.vattr, %struct.vattr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VA_UTIMES_NULL, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.vnode*, %struct.vnode** %5, align 8
  %26 = load i32, i32* @VWRITE, align 4
  %27 = load %struct.ucred*, %struct.ucred** %7, align 8
  %28 = load %struct.thread*, %struct.thread** %8, align 8
  %29 = call i32 @VOP_ACCESS(%struct.vnode* %25, i32 %26, %struct.ucred* %27, %struct.thread* %28)
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %24, %17, %4
  %31 = load i32, i32* %9, align 4
  ret i32 %31
}

declare dso_local i32 @VOP_ACCESSX(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, %struct.ucred*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
