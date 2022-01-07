; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_vnops.c_tmpfs_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_print_args = type { %struct.vnode* }
%struct.vnode = type { i64 }
%struct.tmpfs_node = type { i32, i32, i32, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [53 x i8] c"tag VT_TMPFS, tmpfs_node %p, flags 0x%lx, links %jd\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"\09mode 0%o, owner %d, group %d, size %jd, status 0x%x\0A\00", align 1
@VFIFO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_print(%struct.vop_print_args* %0) #0 {
  %2 = alloca %struct.vop_print_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_print_args* %0, %struct.vop_print_args** %2, align 8
  %5 = load %struct.vop_print_args*, %struct.vop_print_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_print_args, %struct.vop_print_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %8)
  store %struct.tmpfs_node* %9, %struct.tmpfs_node** %4, align 8
  %10 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %11 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %12 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %15 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %14, i32 0, i32 5
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), %struct.tmpfs_node* %10, i32 %13, i32 %17)
  %19 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %20 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %23 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %26 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %29 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.tmpfs_node*, %struct.tmpfs_node** %4, align 8
  %33 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %21, i32 %24, i32 %27, i32 %31, i32 %34)
  %36 = load %struct.vnode*, %struct.vnode** %3, align 8
  %37 = getelementptr inbounds %struct.vnode, %struct.vnode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @VFIFO, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %1
  %42 = load %struct.vnode*, %struct.vnode** %3, align 8
  %43 = call i32 @fifo_printinfo(%struct.vnode* %42)
  br label %44

44:                                               ; preds = %41, %1
  %45 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @fifo_printinfo(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
