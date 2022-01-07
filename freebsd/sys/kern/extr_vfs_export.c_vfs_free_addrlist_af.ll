; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_free_addrlist_af.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_free_addrlist_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32, i32 (i32*, i32, %struct.radix_node_head*)* }

@vfs_free_netcred = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radix_node_head**)* @vfs_free_addrlist_af to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_free_addrlist_af(%struct.radix_node_head** %0) #0 {
  %2 = alloca %struct.radix_node_head**, align 8
  %3 = alloca %struct.radix_node_head*, align 8
  store %struct.radix_node_head** %0, %struct.radix_node_head*** %2, align 8
  %4 = load %struct.radix_node_head**, %struct.radix_node_head*** %2, align 8
  %5 = load %struct.radix_node_head*, %struct.radix_node_head** %4, align 8
  store %struct.radix_node_head* %5, %struct.radix_node_head** %3, align 8
  %6 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %7 = call i32 @RADIX_NODE_HEAD_LOCK(%struct.radix_node_head* %6)
  %8 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %9 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %8, i32 0, i32 1
  %10 = load i32 (i32*, i32, %struct.radix_node_head*)*, i32 (i32*, i32, %struct.radix_node_head*)** %9, align 8
  %11 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %12 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %11, i32 0, i32 0
  %13 = load i32, i32* @vfs_free_netcred, align 4
  %14 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %15 = call i32 %10(i32* %12, i32 %13, %struct.radix_node_head* %14)
  %16 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %17 = call i32 @RADIX_NODE_HEAD_UNLOCK(%struct.radix_node_head* %16)
  %18 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %19 = call i32 @RADIX_NODE_HEAD_DESTROY(%struct.radix_node_head* %18)
  %20 = load %struct.radix_node_head**, %struct.radix_node_head*** %2, align 8
  %21 = bitcast %struct.radix_node_head** %20 to i8**
  %22 = call i32 @rn_detachhead(i8** %21)
  store %struct.radix_node_head** null, %struct.radix_node_head*** %2, align 8
  ret void
}

declare dso_local i32 @RADIX_NODE_HEAD_LOCK(%struct.radix_node_head*) #1

declare dso_local i32 @RADIX_NODE_HEAD_UNLOCK(%struct.radix_node_head*) #1

declare dso_local i32 @RADIX_NODE_HEAD_DESTROY(%struct.radix_node_head*) #1

declare dso_local i32 @rn_detachhead(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
