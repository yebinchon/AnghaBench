; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_visible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_visible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pfs_node = type { i32 }
%struct.proc = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s (pid: %d, req: %d)\00", align 1
@NO_PID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.pfs_node*, i64, %struct.proc**)* @pfs_visible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_visible(%struct.thread* %0, %struct.pfs_node* %1, i64 %2, %struct.proc** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.pfs_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.proc**, align 8
  %10 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.pfs_node* %1, %struct.pfs_node** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.proc** %3, %struct.proc*** %9, align 8
  %11 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %12 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.thread*, %struct.thread** %6, align 8
  %16 = getelementptr inbounds %struct.thread, %struct.thread* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @PFS_TRACE(i8* %21)
  %23 = load %struct.proc**, %struct.proc*** %9, align 8
  %24 = icmp ne %struct.proc** %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load %struct.proc**, %struct.proc*** %9, align 8
  store %struct.proc* null, %struct.proc** %26, align 8
  br label %27

27:                                               ; preds = %25, %4
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @NO_PID, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = call i32 @PFS_RETURN(i32 1)
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i64, i64* %8, align 8
  %35 = call %struct.proc* @pfind(i64 %34)
  store %struct.proc* %35, %struct.proc** %10, align 8
  %36 = load %struct.proc*, %struct.proc** %10, align 8
  %37 = icmp eq %struct.proc* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = call i32 @PFS_RETURN(i32 0)
  br label %40

40:                                               ; preds = %38, %33
  %41 = load %struct.thread*, %struct.thread** %6, align 8
  %42 = load %struct.pfs_node*, %struct.pfs_node** %7, align 8
  %43 = load %struct.proc*, %struct.proc** %10, align 8
  %44 = call i64 @pfs_visible_proc(%struct.thread* %41, %struct.pfs_node* %42, %struct.proc* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %40
  %47 = load %struct.proc**, %struct.proc*** %9, align 8
  %48 = icmp ne %struct.proc** %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.proc*, %struct.proc** %10, align 8
  %51 = load %struct.proc**, %struct.proc*** %9, align 8
  store %struct.proc* %50, %struct.proc** %51, align 8
  br label %55

52:                                               ; preds = %46
  %53 = load %struct.proc*, %struct.proc** %10, align 8
  %54 = call i32 @PROC_UNLOCK(%struct.proc* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = call i32 @PFS_RETURN(i32 1)
  br label %57

57:                                               ; preds = %55, %40
  %58 = load %struct.proc*, %struct.proc** %10, align 8
  %59 = call i32 @PROC_UNLOCK(%struct.proc* %58)
  %60 = call i32 @PFS_RETURN(i32 0)
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local %struct.proc* @pfind(i64) #1

declare dso_local i64 @pfs_visible_proc(%struct.thread*, %struct.pfs_node*, %struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
