; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_free_mntarg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_mount.c_free_mntarg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mntarg = type { %struct.mntarg*, i32 }
%struct.mntaarg = type { %struct.mntaarg*, i32 }

@next = common dso_local global i32 0, align 4
@M_MOUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mntarg*)* @free_mntarg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_mntarg(%struct.mntarg* %0) #0 {
  %2 = alloca %struct.mntarg*, align 8
  %3 = alloca %struct.mntaarg*, align 8
  store %struct.mntarg* %0, %struct.mntarg** %2, align 8
  br label %4

4:                                                ; preds = %10, %1
  %5 = load %struct.mntarg*, %struct.mntarg** %2, align 8
  %6 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %5, i32 0, i32 1
  %7 = call i32 @SLIST_EMPTY(i32* %6)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %23

10:                                               ; preds = %4
  %11 = load %struct.mntarg*, %struct.mntarg** %2, align 8
  %12 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %11, i32 0, i32 1
  %13 = call %struct.mntarg* @SLIST_FIRST(i32* %12)
  %14 = bitcast %struct.mntarg* %13 to %struct.mntaarg*
  store %struct.mntaarg* %14, %struct.mntaarg** %3, align 8
  %15 = load %struct.mntarg*, %struct.mntarg** %2, align 8
  %16 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %15, i32 0, i32 1
  %17 = load i32, i32* @next, align 4
  %18 = call i32 @SLIST_REMOVE_HEAD(i32* %16, i32 %17)
  %19 = load %struct.mntaarg*, %struct.mntaarg** %3, align 8
  %20 = bitcast %struct.mntaarg* %19 to %struct.mntarg*
  %21 = load i32, i32* @M_MOUNT, align 4
  %22 = call i32 @free(%struct.mntarg* %20, i32 %21)
  br label %4

23:                                               ; preds = %4
  %24 = load %struct.mntarg*, %struct.mntarg** %2, align 8
  %25 = getelementptr inbounds %struct.mntarg, %struct.mntarg* %24, i32 0, i32 0
  %26 = load %struct.mntarg*, %struct.mntarg** %25, align 8
  %27 = load i32, i32* @M_MOUNT, align 4
  %28 = call i32 @free(%struct.mntarg* %26, i32 %27)
  %29 = load %struct.mntarg*, %struct.mntarg** %2, align 8
  %30 = load i32, i32* @M_MOUNT, align 4
  %31 = call i32 @free(%struct.mntarg* %29, i32 %30)
  ret void
}

declare dso_local i32 @SLIST_EMPTY(i32*) #1

declare dso_local %struct.mntarg* @SLIST_FIRST(i32*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @free(%struct.mntarg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
