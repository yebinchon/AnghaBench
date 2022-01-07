; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_populate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/devfs/extr_devfs_devs.c_devfs_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devfs_mount = type { i32, i32 }

@SX_XLOCKED = common dso_local global i32 0, align 4
@devfs_generation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devfs_populate(%struct.devfs_mount* %0) #0 {
  %2 = alloca %struct.devfs_mount*, align 8
  %3 = alloca i32, align 4
  store %struct.devfs_mount* %0, %struct.devfs_mount** %2, align 8
  %4 = load %struct.devfs_mount*, %struct.devfs_mount** %2, align 8
  %5 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %4, i32 0, i32 1
  %6 = load i32, i32* @SX_XLOCKED, align 4
  %7 = call i32 @sx_assert(i32* %5, i32 %6)
  %8 = load i32, i32* @devfs_generation, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.devfs_mount*, %struct.devfs_mount** %2, align 8
  %10 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %25

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %20, %15
  %17 = load %struct.devfs_mount*, %struct.devfs_mount** %2, align 8
  %18 = call i64 @devfs_populate_loop(%struct.devfs_mount* %17, i32 0)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %16

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.devfs_mount*, %struct.devfs_mount** %2, align 8
  %24 = getelementptr inbounds %struct.devfs_mount, %struct.devfs_mount* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %14
  ret void
}

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @devfs_populate_loop(%struct.devfs_mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
