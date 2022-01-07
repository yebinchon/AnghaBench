; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_unmount_sigdefer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_unmount_sigdefer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@SIGDEFERSTOP_SILENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @vfs_unmount_sigdefer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_unmount_sigdefer(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @SIGDEFERSTOP_SILENT, align 4
  %8 = call i32 @sigdeferstop(i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.mount*, %struct.mount** %3, align 8
  %10 = getelementptr inbounds %struct.mount, %struct.mount* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.mount*, i32)**
  %16 = load i32 (%struct.mount*, i32)*, i32 (%struct.mount*, i32)** %15, align 8
  %17 = load %struct.mount*, %struct.mount** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 %16(%struct.mount* %17, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @sigallowstop(i32 %20)
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @sigdeferstop(i32) #1

declare dso_local i32 @sigallowstop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
