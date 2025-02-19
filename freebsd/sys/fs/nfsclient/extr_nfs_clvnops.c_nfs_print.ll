; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clvnops.c_nfs_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_print_args = type { %struct.vnode* }
%struct.vnode = type { i64 }
%struct.nfsnode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c"\09fileid %jd fsid 0x%jx\00", align 1
@VFIFO = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_print_args*)* @nfs_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_print(%struct.vop_print_args* %0) #0 {
  %2 = alloca %struct.vop_print_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.nfsnode*, align 8
  store %struct.vop_print_args* %0, %struct.vop_print_args** %2, align 8
  %5 = load %struct.vop_print_args*, %struct.vop_print_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_print_args, %struct.vop_print_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call %struct.nfsnode* @VTONFS(%struct.vnode* %8)
  store %struct.nfsnode* %9, %struct.nfsnode** %4, align 8
  %10 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %11 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = trunc i64 %13 to i32
  %15 = load %struct.nfsnode*, %struct.nfsnode** %4, align 8
  %16 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19)
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = getelementptr inbounds %struct.vnode, %struct.vnode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VFIFO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.vnode*, %struct.vnode** %3, align 8
  %28 = call i32 @fifo_printinfo(%struct.vnode* %27)
  br label %29

29:                                               ; preds = %26, %1
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fifo_printinfo(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
