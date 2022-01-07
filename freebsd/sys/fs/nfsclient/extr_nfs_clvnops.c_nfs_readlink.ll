; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readlink_args = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i64 }

@VLNK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readlink_args*)* @nfs_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_readlink(%struct.vop_readlink_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readlink_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.vop_readlink_args* %0, %struct.vop_readlink_args** %3, align 8
  %5 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %6 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %5, i32 0, i32 2
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %4, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VLNK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %18 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @ncl_bioread(%struct.vnode* %16, i32 %19, i32 0, i32 %22)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %15, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ncl_bioread(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
