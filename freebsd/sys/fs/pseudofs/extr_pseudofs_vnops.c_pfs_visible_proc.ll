; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_visible_proc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_visible_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.pfs_node = type { i32* }
%struct.proc = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@P_WEXIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.pfs_node*, %struct.proc*)* @pfs_visible_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_visible_proc(%struct.thread* %0, %struct.pfs_node* %1, %struct.proc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.pfs_node* %1, %struct.pfs_node** %6, align 8
  store %struct.proc* %2, %struct.proc** %7, align 8
  %9 = load %struct.proc*, %struct.proc** %7, align 8
  %10 = icmp eq %struct.proc* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %49

12:                                               ; preds = %3
  %13 = load %struct.proc*, %struct.proc** %7, align 8
  %14 = load i32, i32* @MA_OWNED, align 4
  %15 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %13, i32 %14)
  %16 = load %struct.proc*, %struct.proc** %7, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @P_WEXIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %12
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = load %struct.proc*, %struct.proc** %7, align 8
  %28 = call i64 @p_cansee(%struct.thread* %26, %struct.proc* %27)
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %25, %12
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %36 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.thread*, %struct.thread** %5, align 8
  %41 = load %struct.proc*, %struct.proc** %7, align 8
  %42 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %43 = call i32 @pn_vis(%struct.thread* %40, %struct.proc* %41, %struct.pfs_node* %42)
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %39, %34, %31
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %49

48:                                               ; preds = %44
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %47, %11
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i64 @p_cansee(%struct.thread*, %struct.proc*) #1

declare dso_local i32 @pn_vis(%struct.thread*, %struct.proc*, %struct.pfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
