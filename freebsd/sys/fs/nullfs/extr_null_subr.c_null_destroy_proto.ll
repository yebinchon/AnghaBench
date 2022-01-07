; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_subr.c_null_destroy_proto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nullfs/extr_null_subr.c_null_destroy_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32*, i32, i32*, i32* }

@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@dead_vnodeops = common dso_local global i32 0, align 4
@M_NULLFSNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnode*, i8*)* @null_destroy_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @null_destroy_proto(%struct.vnode* %0, i8* %1) #0 {
  %3 = alloca %struct.vnode*, align 8
  %4 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.vnode*, %struct.vnode** %3, align 8
  %6 = getelementptr inbounds %struct.vnode, %struct.vnode* %5, i32 0, i32 1
  %7 = load i32, i32* @LK_EXCLUSIVE, align 4
  %8 = call i32 @lockmgr(i32* %6, i32 %7, i32* null)
  %9 = load %struct.vnode*, %struct.vnode** %3, align 8
  %10 = call i32 @VI_LOCK(%struct.vnode* %9)
  %11 = load %struct.vnode*, %struct.vnode** %3, align 8
  %12 = getelementptr inbounds %struct.vnode, %struct.vnode* %11, i32 0, i32 3
  store i32* null, i32** %12, align 8
  %13 = load %struct.vnode*, %struct.vnode** %3, align 8
  %14 = getelementptr inbounds %struct.vnode, %struct.vnode* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %3, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.vnode*, %struct.vnode** %3, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 0
  store i32* @dead_vnodeops, i32** %18, align 8
  %19 = load %struct.vnode*, %struct.vnode** %3, align 8
  %20 = call i32 @VI_UNLOCK(%struct.vnode* %19)
  %21 = load %struct.vnode*, %struct.vnode** %3, align 8
  %22 = call i32 @vgone(%struct.vnode* %21)
  %23 = load %struct.vnode*, %struct.vnode** %3, align 8
  %24 = call i32 @vput(%struct.vnode* %23)
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @M_NULLFSNODE, align 4
  %27 = call i32 @free(i8* %25, i32 %26)
  ret void
}

declare dso_local i32 @lockmgr(i32*, i32, i32*) #1

declare dso_local i32 @VI_LOCK(%struct.vnode*) #1

declare dso_local i32 @VI_UNLOCK(%struct.vnode*) #1

declare dso_local i32 @vgone(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
