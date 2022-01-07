; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vfsops.c_autofs_root.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/autofs/extr_autofs_vfsops.c_autofs_root.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.autofs_mount = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32, %struct.vnode**)* @autofs_root to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_root(%struct.mount* %0, i32 %1, %struct.vnode** %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode**, align 8
  %7 = alloca %struct.autofs_mount*, align 8
  %8 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vnode** %2, %struct.vnode*** %6, align 8
  %9 = load %struct.mount*, %struct.mount** %4, align 8
  %10 = call %struct.autofs_mount* @VFSTOAUTOFS(%struct.mount* %9)
  store %struct.autofs_mount* %10, %struct.autofs_mount** %7, align 8
  %11 = load %struct.autofs_mount*, %struct.autofs_mount** %7, align 8
  %12 = getelementptr inbounds %struct.autofs_mount, %struct.autofs_mount* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.mount*, %struct.mount** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.vnode**, %struct.vnode*** %6, align 8
  %17 = call i32 @autofs_node_vn(i32 %13, %struct.mount* %14, i32 %15, %struct.vnode** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  ret i32 %18
}

declare dso_local %struct.autofs_mount* @VFSTOAUTOFS(%struct.mount*) #1

declare dso_local i32 @autofs_node_vn(i32, %struct.mount*, i32, %struct.vnode**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
