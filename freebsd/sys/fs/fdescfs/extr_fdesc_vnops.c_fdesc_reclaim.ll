; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_reclaim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fdescfs/extr_fdesc_vnops.c_fdesc_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_reclaim_args = type { %struct.vnode* }
%struct.vnode = type { i32* }
%struct.fdescnode = type { i32 }

@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_reclaim_args*)* @fdesc_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdesc_reclaim(%struct.vop_reclaim_args* %0) #0 {
  %2 = alloca %struct.vop_reclaim_args*, align 8
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca %struct.fdescnode*, align 8
  store %struct.vop_reclaim_args* %0, %struct.vop_reclaim_args** %2, align 8
  %5 = load %struct.vop_reclaim_args*, %struct.vop_reclaim_args** %2, align 8
  %6 = getelementptr inbounds %struct.vop_reclaim_args, %struct.vop_reclaim_args* %5, i32 0, i32 0
  %7 = load %struct.vnode*, %struct.vnode** %6, align 8
  store %struct.vnode* %7, %struct.vnode** %3, align 8
  %8 = load %struct.vnode*, %struct.vnode** %3, align 8
  %9 = call %struct.fdescnode* @VTOFDESC(%struct.vnode* %8)
  store %struct.fdescnode* %9, %struct.fdescnode** %4, align 8
  %10 = load %struct.fdescnode*, %struct.fdescnode** %4, align 8
  %11 = call i32 @fdesc_remove_entry(%struct.fdescnode* %10)
  %12 = load %struct.vnode*, %struct.vnode** %3, align 8
  %13 = getelementptr inbounds %struct.vnode, %struct.vnode* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* @M_TEMP, align 4
  %16 = call i32 @free(i32* %14, i32 %15)
  %17 = load %struct.vnode*, %struct.vnode** %3, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  store i32* null, i32** %18, align 8
  ret i32 0
}

declare dso_local %struct.fdescnode* @VTOFDESC(%struct.vnode*) #1

declare dso_local i32 @fdesc_remove_entry(%struct.fdescnode*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
