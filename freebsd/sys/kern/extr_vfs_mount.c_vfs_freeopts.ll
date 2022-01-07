; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_freeopts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_freeopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsoptlist = type { i32 }
%struct.vfsopt = type { i32 }

@M_MOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vfs_freeopts(%struct.vfsoptlist* %0) #0 {
  %2 = alloca %struct.vfsoptlist*, align 8
  %3 = alloca %struct.vfsopt*, align 8
  store %struct.vfsoptlist* %0, %struct.vfsoptlist** %2, align 8
  br label %4

4:                                                ; preds = %9, %1
  %5 = load %struct.vfsoptlist*, %struct.vfsoptlist** %2, align 8
  %6 = call i32 @TAILQ_EMPTY(%struct.vfsoptlist* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = load %struct.vfsoptlist*, %struct.vfsoptlist** %2, align 8
  %11 = call %struct.vfsopt* @TAILQ_FIRST(%struct.vfsoptlist* %10)
  store %struct.vfsopt* %11, %struct.vfsopt** %3, align 8
  %12 = load %struct.vfsoptlist*, %struct.vfsoptlist** %2, align 8
  %13 = load %struct.vfsopt*, %struct.vfsopt** %3, align 8
  %14 = call i32 @vfs_freeopt(%struct.vfsoptlist* %12, %struct.vfsopt* %13)
  br label %4

15:                                               ; preds = %4
  %16 = load %struct.vfsoptlist*, %struct.vfsoptlist** %2, align 8
  %17 = load i32, i32* @M_MOUNT, align 4
  %18 = call i32 @free(%struct.vfsoptlist* %16, i32 %17)
  ret void
}

declare dso_local i32 @TAILQ_EMPTY(%struct.vfsoptlist*) #1

declare dso_local %struct.vfsopt* @TAILQ_FIRST(%struct.vfsoptlist*) #1

declare dso_local i32 @vfs_freeopt(%struct.vfsoptlist*, %struct.vfsopt*) #1

declare dso_local i32 @free(%struct.vfsoptlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
