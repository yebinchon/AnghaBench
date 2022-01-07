; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_file.c_fuse_filehandle_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_file.c_fuse_filehandle_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.fuse_filehandle = type { i32, i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ucred = type { i32 }
%struct.fuse_dispatcher = type { %struct.fuse_release_in* }
%struct.fuse_release_in = type { i32, i32, i32 }

@FUSE_RELEASE = common dso_local global i32 0, align 4
@FUSE_RELEASEDIR = common dso_local global i32 0, align 4
@fuse_fh_count = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@M_FUSE_FILEHANDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_filehandle_close(%struct.vnode* %0, %struct.fuse_filehandle* %1, %struct.thread* %2, %struct.ucred* %3) #0 {
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.fuse_filehandle*, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.fuse_dispatcher, align 8
  %10 = alloca %struct.fuse_release_in*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.fuse_filehandle* %1, %struct.fuse_filehandle** %6, align 8
  store %struct.thread* %2, %struct.thread** %7, align 8
  store %struct.ucred* %3, %struct.ucred** %8, align 8
  store i32 0, i32* %11, align 4
  %13 = load i32, i32* @FUSE_RELEASE, align 4
  store i32 %13, i32* %12, align 4
  %14 = load %struct.vnode*, %struct.vnode** %5, align 8
  %15 = call i64 @fuse_isdeadfs(%struct.vnode* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  br label %53

18:                                               ; preds = %4
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = call i64 @vnode_isdir(%struct.vnode* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = load i32, i32* @FUSE_RELEASEDIR, align 4
  store i32 %23, i32* %12, align 4
  br label %24

24:                                               ; preds = %22, %18
  %25 = call i32 @fdisp_init(%struct.fuse_dispatcher* %9, i32 12)
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.vnode*, %struct.vnode** %5, align 8
  %28 = load %struct.thread*, %struct.thread** %7, align 8
  %29 = load %struct.ucred*, %struct.ucred** %8, align 8
  %30 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %9, i32 %26, %struct.vnode* %27, %struct.thread* %28, %struct.ucred* %29)
  %31 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %9, i32 0, i32 0
  %32 = load %struct.fuse_release_in*, %struct.fuse_release_in** %31, align 8
  store %struct.fuse_release_in* %32, %struct.fuse_release_in** %10, align 8
  %33 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %6, align 8
  %34 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fuse_release_in*, %struct.fuse_release_in** %10, align 8
  %37 = getelementptr inbounds %struct.fuse_release_in, %struct.fuse_release_in* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %6, align 8
  %39 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @fufh_type_2_fflags(i32 %40)
  %42 = load %struct.fuse_release_in*, %struct.fuse_release_in** %10, align 8
  %43 = getelementptr inbounds %struct.fuse_release_in, %struct.fuse_release_in* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.thread*, %struct.thread** %7, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.fuse_release_in*, %struct.fuse_release_in** %10, align 8
  %50 = getelementptr inbounds %struct.fuse_release_in, %struct.fuse_release_in* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %9)
  store i32 %51, i32* %11, align 4
  %52 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %9)
  br label %53

53:                                               ; preds = %24, %17
  %54 = load i32, i32* @fuse_fh_count, align 4
  %55 = call i32 @counter_u64_add(i32 %54, i32 -1)
  %56 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %6, align 8
  %57 = load i32, i32* @next, align 4
  %58 = call i32 @LIST_REMOVE(%struct.fuse_filehandle* %56, i32 %57)
  %59 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %6, align 8
  %60 = load i32, i32* @M_FUSE_FILEHANDLE, align 4
  %61 = call i32 @free(%struct.fuse_filehandle* %59, i32 %60)
  %62 = load i32, i32* %11, align 4
  ret i32 %62
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local i64 @vnode_isdir(%struct.vnode*) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @fufh_type_2_fflags(i32) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

declare dso_local i32 @counter_u64_add(i32, i32) #1

declare dso_local i32 @LIST_REMOVE(%struct.fuse_filehandle*, i32) #1

declare dso_local i32 @free(%struct.fuse_filehandle*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
