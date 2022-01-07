; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_freeopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_vfs_freeopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsoptlist = type { i32 }
%struct.vfsopt = type { %struct.vfsopt*, %struct.vfsopt* }

@link = common dso_local global i32 0, align 4
@M_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vfsoptlist*, %struct.vfsopt*)* @vfs_freeopt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vfs_freeopt(%struct.vfsoptlist* %0, %struct.vfsopt* %1) #0 {
  %3 = alloca %struct.vfsoptlist*, align 8
  %4 = alloca %struct.vfsopt*, align 8
  store %struct.vfsoptlist* %0, %struct.vfsoptlist** %3, align 8
  store %struct.vfsopt* %1, %struct.vfsopt** %4, align 8
  %5 = load %struct.vfsoptlist*, %struct.vfsoptlist** %3, align 8
  %6 = load %struct.vfsopt*, %struct.vfsopt** %4, align 8
  %7 = load i32, i32* @link, align 4
  %8 = call i32 @TAILQ_REMOVE(%struct.vfsoptlist* %5, %struct.vfsopt* %6, i32 %7)
  %9 = load %struct.vfsopt*, %struct.vfsopt** %4, align 8
  %10 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %9, i32 0, i32 1
  %11 = load %struct.vfsopt*, %struct.vfsopt** %10, align 8
  %12 = load i32, i32* @M_MOUNT, align 4
  %13 = call i32 @free(%struct.vfsopt* %11, i32 %12)
  %14 = load %struct.vfsopt*, %struct.vfsopt** %4, align 8
  %15 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %14, i32 0, i32 0
  %16 = load %struct.vfsopt*, %struct.vfsopt** %15, align 8
  %17 = icmp ne %struct.vfsopt* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.vfsopt*, %struct.vfsopt** %4, align 8
  %20 = getelementptr inbounds %struct.vfsopt, %struct.vfsopt* %19, i32 0, i32 0
  %21 = load %struct.vfsopt*, %struct.vfsopt** %20, align 8
  %22 = load i32, i32* @M_MOUNT, align 4
  %23 = call i32 @free(%struct.vfsopt* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.vfsopt*, %struct.vfsopt** %4, align 8
  %26 = load i32, i32* @M_MOUNT, align 4
  %27 = call i32 @free(%struct.vfsopt* %25, i32 %26)
  ret void
}

declare dso_local i32 @TAILQ_REMOVE(%struct.vfsoptlist*, %struct.vfsopt*, i32) #1

declare dso_local i32 @free(%struct.vfsopt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
