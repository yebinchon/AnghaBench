; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_read_args = type { i32, i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }

@EISDIR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @nfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  %5 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %6 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %5, i32 0, i32 3
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %4, align 8
  %8 = load %struct.vnode*, %struct.vnode** %4, align 8
  %9 = getelementptr inbounds %struct.vnode, %struct.vnode* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %25 [
    i32 128, label %11
    i32 129, label %23
  ]

11:                                               ; preds = %1
  %12 = load %struct.vnode*, %struct.vnode** %4, align 8
  %13 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @ncl_bioread(%struct.vnode* %12, i32 %15, i32 %18, i32 %21)
  store i32 %22, i32* %2, align 4
  br label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @EISDIR, align 4
  store i32 %24, i32* %2, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %25, %23, %11
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @ncl_bioread(%struct.vnode*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
