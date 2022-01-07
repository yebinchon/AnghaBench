; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_fifoops.c_tmpfs_fifo_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_fifoops.c_tmpfs_fifo_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.vop_close_args*)* }
%struct.vop_close_args = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.tmpfs_node = type { i32 }

@TMPFS_NODE_ACCESSED = common dso_local global i32 0, align 4
@fifo_specops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_close_args*)* @tmpfs_fifo_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmpfs_fifo_close(%struct.vop_close_args* %0) #0 {
  %2 = alloca %struct.vop_close_args*, align 8
  %3 = alloca %struct.tmpfs_node*, align 8
  store %struct.vop_close_args* %0, %struct.vop_close_args** %2, align 8
  %4 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %5 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.TYPE_4__* %6)
  store %struct.tmpfs_node* %7, %struct.tmpfs_node** %3, align 8
  %8 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %9 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @VFS_TO_TMPFS(i32 %12)
  %14 = load %struct.tmpfs_node*, %struct.tmpfs_node** %3, align 8
  %15 = load i32, i32* @TMPFS_NODE_ACCESSED, align 4
  %16 = call i32 @tmpfs_set_status(i32 %13, %struct.tmpfs_node* %14, i32 %15)
  %17 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %18 = getelementptr inbounds %struct.vop_close_args, %struct.vop_close_args* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = call i32 @tmpfs_update(%struct.TYPE_4__* %19)
  %21 = load i32 (%struct.vop_close_args*)*, i32 (%struct.vop_close_args*)** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @fifo_specops, i32 0, i32 0), align 8
  %22 = load %struct.vop_close_args*, %struct.vop_close_args** %2, align 8
  %23 = call i32 %21(%struct.vop_close_args* %22)
  ret i32 %23
}

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.TYPE_4__*) #1

declare dso_local i32 @tmpfs_set_status(i32, %struct.tmpfs_node*, i32) #1

declare dso_local i32 @VFS_TO_TMPFS(i32) #1

declare dso_local i32 @tmpfs_update(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
