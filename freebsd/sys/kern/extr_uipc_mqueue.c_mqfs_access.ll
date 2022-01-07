; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_access.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqfs_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_access_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.vattr = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_access_args*)* @mqfs_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mqfs_access(%struct.vop_access_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_access_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr, align 4
  %6 = alloca i32, align 4
  store %struct.vop_access_args* %0, %struct.vop_access_args** %3, align 8
  %7 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %8 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %7, i32 0, i32 2
  %9 = load %struct.vnode*, %struct.vnode** %8, align 8
  store %struct.vnode* %9, %struct.vnode** %4, align 8
  %10 = load %struct.vnode*, %struct.vnode** %4, align 8
  %11 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @VOP_GETATTR(%struct.vnode* %10, %struct.vattr* %5, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %2, align 4
  br label %37

19:                                               ; preds = %1
  %20 = load %struct.vnode*, %struct.vnode** %4, align 8
  %21 = getelementptr inbounds %struct.vnode, %struct.vnode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.vattr, %struct.vattr* %5, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %30 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vop_access_args*, %struct.vop_access_args** %3, align 8
  %33 = getelementptr inbounds %struct.vop_access_args, %struct.vop_access_args* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @vaccess(i32 %22, i32 %24, i32 %26, i32 %28, i32 %31, i32 %34, i32* null)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %19, %17
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @vaccess(i32, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
