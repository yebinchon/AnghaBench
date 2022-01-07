; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_vfsop_unmount.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vfsops.c_fuse_vfsop_unmount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.mount = type { i32* }
%struct.cdev = type { i32 }
%struct.fuse_data = type { %struct.cdev*, i32*, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.fuse_dispatcher = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MNT_FORCE = common dso_local global i32 0, align 4
@FORCECLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"no private data for mount point?\00", align 1
@FUSE_DESTROY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, i32)* @fuse_vfsop_unmount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vfsop_unmount(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cdev*, align 8
  %9 = alloca %struct.fuse_data*, align 8
  %10 = alloca %struct.fuse_dispatcher, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.vnode*, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %13 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %13, %struct.thread** %11, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MNT_FORCE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @FORCECLOSE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %18, %2
  %23 = load %struct.mount*, %struct.mount** %4, align 8
  %24 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %23)
  store %struct.fuse_data* %24, %struct.fuse_data** %9, align 8
  %25 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %26 = icmp ne %struct.fuse_data* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22
  %28 = call i32 @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %22
  %30 = call i32 (...) @FUSE_LOCK()
  %31 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %32 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %31, i32 0, i32 2
  %33 = load %struct.vnode*, %struct.vnode** %32, align 8
  %34 = icmp ne %struct.vnode* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %37 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %36, i32 0, i32 2
  %38 = load %struct.vnode*, %struct.vnode** %37, align 8
  store %struct.vnode* %38, %struct.vnode** %12, align 8
  %39 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %40 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %39, i32 0, i32 2
  store %struct.vnode* null, %struct.vnode** %40, align 8
  %41 = call i32 (...) @FUSE_UNLOCK()
  %42 = load %struct.vnode*, %struct.vnode** %12, align 8
  %43 = call i32 @vrele(%struct.vnode* %42)
  br label %46

44:                                               ; preds = %29
  %45 = call i32 (...) @FUSE_UNLOCK()
  br label %46

46:                                               ; preds = %44, %35
  %47 = load %struct.mount*, %struct.mount** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.thread*, %struct.thread** %11, align 8
  %50 = call i32 @vflush(%struct.mount* %47, i32 0, i32 %48, %struct.thread* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %94

55:                                               ; preds = %46
  %56 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %57 = call i64 @fdata_get_dead(%struct.fuse_data* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  br label %76

60:                                               ; preds = %55
  %61 = load %struct.mount*, %struct.mount** %4, align 8
  %62 = load i32, i32* @FUSE_DESTROY, align 4
  %63 = call i64 @fsess_isimpl(%struct.mount* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %60
  %66 = call i32 @fdisp_init(%struct.fuse_dispatcher* %10, i32 0)
  %67 = load i32, i32* @FUSE_DESTROY, align 4
  %68 = load %struct.mount*, %struct.mount** %4, align 8
  %69 = load %struct.thread*, %struct.thread** %11, align 8
  %70 = call i32 @fdisp_make(%struct.fuse_dispatcher* %10, i32 %67, %struct.mount* %68, i32 0, %struct.thread* %69, i32* null)
  %71 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %10)
  %72 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %10)
  br label %73

73:                                               ; preds = %65, %60
  %74 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %75 = call i32 @fdata_set_dead(%struct.fuse_data* %74)
  br label %76

76:                                               ; preds = %73, %59
  %77 = call i32 (...) @FUSE_LOCK()
  %78 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %79 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %78, i32 0, i32 1
  store i32* null, i32** %79, align 8
  %80 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %81 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %80, i32 0, i32 0
  %82 = load %struct.cdev*, %struct.cdev** %81, align 8
  store %struct.cdev* %82, %struct.cdev** %8, align 8
  %83 = load %struct.fuse_data*, %struct.fuse_data** %9, align 8
  %84 = call i32 @fdata_trydestroy(%struct.fuse_data* %83)
  %85 = call i32 (...) @FUSE_UNLOCK()
  %86 = load %struct.mount*, %struct.mount** %4, align 8
  %87 = call i32 @MNT_ILOCK(%struct.mount* %86)
  %88 = load %struct.mount*, %struct.mount** %4, align 8
  %89 = getelementptr inbounds %struct.mount, %struct.mount* %88, i32 0, i32 0
  store i32* null, i32** %89, align 8
  %90 = load %struct.mount*, %struct.mount** %4, align 8
  %91 = call i32 @MNT_IUNLOCK(%struct.mount* %90)
  %92 = load %struct.cdev*, %struct.cdev** %8, align 8
  %93 = call i32 @dev_rel(%struct.cdev* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %76, %53
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @FUSE_LOCK(...) #1

declare dso_local i32 @FUSE_UNLOCK(...) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vflush(%struct.mount*, i32, i32, %struct.thread*) #1

declare dso_local i64 @fdata_get_dead(%struct.fuse_data*) #1

declare dso_local i64 @fsess_isimpl(%struct.mount*, i32) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make(%struct.fuse_dispatcher*, i32, %struct.mount*, i32, %struct.thread*, i32*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdata_set_dead(%struct.fuse_data*) #1

declare dso_local i32 @fdata_trydestroy(%struct.fuse_data*) #1

declare dso_local i32 @MNT_ILOCK(%struct.mount*) #1

declare dso_local i32 @MNT_IUNLOCK(%struct.mount*) #1

declare dso_local i32 @dev_rel(%struct.cdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
