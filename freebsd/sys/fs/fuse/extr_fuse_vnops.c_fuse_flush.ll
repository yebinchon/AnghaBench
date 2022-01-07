; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i32 }
%struct.ucred = type { i32 }
%struct.fuse_flush_in = type { i32, i32 }
%struct.fuse_filehandle = type { i32 }
%struct.fuse_dispatcher = type { %struct.fuse_flush_in* }
%struct.mount = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@FUSE_FLUSH = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.ucred*, i32, i32)* @fuse_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_flush(%struct.vnode* %0, %struct.ucred* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.fuse_flush_in*, align 8
  %11 = alloca %struct.fuse_filehandle*, align 8
  %12 = alloca %struct.fuse_dispatcher, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.mount*, align 8
  %15 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.ucred* %1, %struct.ucred** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %16 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %16, %struct.thread** %13, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = call %struct.mount* @vnode_mount(%struct.vnode* %17)
  store %struct.mount* %18, %struct.mount** %14, align 8
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = call %struct.mount* @vnode_mount(%struct.vnode* %19)
  %21 = load i32, i32* @FUSE_FLUSH, align 4
  %22 = call i32 @fsess_isimpl(%struct.mount* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %67

25:                                               ; preds = %4
  %26 = load %struct.vnode*, %struct.vnode** %6, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.ucred*, %struct.ucred** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @fuse_filehandle_getrw(%struct.vnode* %26, i32 %27, %struct.fuse_filehandle** %11, %struct.ucred* %28, i32 %29)
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %15, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* %15, align 4
  store i32 %34, i32* %5, align 4
  br label %67

35:                                               ; preds = %25
  %36 = call i32 @fdisp_init(%struct.fuse_dispatcher* %12, i32 8)
  %37 = load i32, i32* @FUSE_FLUSH, align 4
  %38 = load %struct.vnode*, %struct.vnode** %6, align 8
  %39 = load %struct.thread*, %struct.thread** %13, align 8
  %40 = load %struct.ucred*, %struct.ucred** %7, align 8
  %41 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %12, i32 %37, %struct.vnode* %38, %struct.thread* %39, %struct.ucred* %40)
  %42 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %12, i32 0, i32 0
  %43 = load %struct.fuse_flush_in*, %struct.fuse_flush_in** %42, align 8
  store %struct.fuse_flush_in* %43, %struct.fuse_flush_in** %10, align 8
  %44 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %11, align 8
  %45 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fuse_flush_in*, %struct.fuse_flush_in** %10, align 8
  %48 = getelementptr inbounds %struct.fuse_flush_in, %struct.fuse_flush_in* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.thread*, %struct.thread** %13, align 8
  %50 = getelementptr inbounds %struct.thread, %struct.thread* %49, i32 0, i32 0
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.fuse_flush_in*, %struct.fuse_flush_in** %10, align 8
  %55 = getelementptr inbounds %struct.fuse_flush_in, %struct.fuse_flush_in* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %12)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = load i32, i32* @ENOSYS, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %35
  %61 = load %struct.mount*, %struct.mount** %14, align 8
  %62 = load i32, i32* @FUSE_FLUSH, align 4
  %63 = call i32 @fsess_set_notimpl(%struct.mount* %61, i32 %62)
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %60, %35
  %65 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %12)
  %66 = load i32, i32* %15, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %64, %33, %24
  %68 = load i32, i32* %5, align 4
  ret i32 %68
}

declare dso_local %struct.mount* @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @fsess_isimpl(%struct.mount*, i32) #1

declare dso_local i32 @fuse_filehandle_getrw(%struct.vnode*, i32, %struct.fuse_filehandle**, %struct.ucred*, i32) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fsess_set_notimpl(%struct.mount*, i32) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
