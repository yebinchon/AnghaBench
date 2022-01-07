; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_finished_secondary_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_finished_secondary_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i64, i32 }

@.str = private unnamed_addr constant [37 x i8] c"vn_finished_secondary_write: neg cnt\00", align 1
@MNTK_SUSPEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vn_finished_secondary_write(%struct.mount* %0) #0 {
  %2 = alloca %struct.mount*, align 8
  store %struct.mount* %0, %struct.mount** %2, align 8
  %3 = load %struct.mount*, %struct.mount** %2, align 8
  %4 = icmp eq %struct.mount* %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load %struct.mount*, %struct.mount** %2, align 8
  %7 = call i32 @vn_suspendable(%struct.mount* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %5, %1
  br label %44

10:                                               ; preds = %5
  %11 = load %struct.mount*, %struct.mount** %2, align 8
  %12 = call i32 @MNT_ILOCK(%struct.mount* %11)
  %13 = load %struct.mount*, %struct.mount** %2, align 8
  %14 = call i32 @MNT_REL(%struct.mount* %13)
  %15 = load %struct.mount*, %struct.mount** %2, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.mount*, %struct.mount** %2, align 8
  %20 = getelementptr inbounds %struct.mount, %struct.mount* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %10
  %24 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %10
  %26 = load %struct.mount*, %struct.mount** %2, align 8
  %27 = getelementptr inbounds %struct.mount, %struct.mount* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @MNTK_SUSPEND, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.mount*, %struct.mount** %2, align 8
  %34 = getelementptr inbounds %struct.mount, %struct.mount* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sle i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load %struct.mount*, %struct.mount** %2, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 0
  %40 = call i32 @wakeup(i64* %39)
  br label %41

41:                                               ; preds = %37, %32, %25
  %42 = load %struct.mount*, %struct.mount** %2, align 8
  %43 = call i32 @MNT_IUNLOCK(%struct.mount* %42)
  br label %44

44:                                               ; preds = %41, %9
  ret void
}

declare dso_local i32 @vn_suspendable(%struct.mount*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_REL(%struct.mount*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @wakeup(i64*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
