; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_mount_sigdefer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_init.c_vfs_mount_sigdefer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@curthread = common dso_local global i32 0, align 4
@TS_ENTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"VFS_MOUNT\00", align 1
@SIGDEFERSTOP_SILENT = common dso_local global i32 0, align 4
@TS_EXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*)* @vfs_mount_sigdefer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vfs_mount_sigdefer(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %2, align 8
  %5 = load i32, i32* @curthread, align 4
  %6 = load i32, i32* @TS_ENTER, align 4
  %7 = load %struct.mount*, %struct.mount** %2, align 8
  %8 = getelementptr inbounds %struct.mount, %struct.mount* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @TSRAW(i32 %5, i32 %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* @SIGDEFERSTOP_SILENT, align 4
  %14 = call i32 @sigdeferstop(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.mount*, %struct.mount** %2, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = bitcast {}** %20 to i32 (%struct.mount*)**
  %22 = load i32 (%struct.mount*)*, i32 (%struct.mount*)** %21, align 8
  %23 = load %struct.mount*, %struct.mount** %2, align 8
  %24 = call i32 %22(%struct.mount* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @sigallowstop(i32 %25)
  %27 = load i32, i32* @curthread, align 4
  %28 = load i32, i32* @TS_EXIT, align 4
  %29 = load %struct.mount*, %struct.mount** %2, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @TSRAW(i32 %27, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i32 @TSRAW(i32, i32, i8*, i32) #1

declare dso_local i32 @sigdeferstop(i32) #1

declare dso_local i32 @sigallowstop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
