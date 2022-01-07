; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_readdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.uio = type { i64, i32 }
%struct.fuse_filehandle = type { i32 }
%struct.fuse_iov = type { i32 }
%struct.fuse_dispatcher = type { i32, i32, %struct.fuse_read_in* }
%struct.fuse_read_in = type { i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FUSE_READDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_readdir(%struct.vnode* %0, %struct.uio* %1, i64 %2, %struct.fuse_filehandle* %3, %struct.fuse_iov* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.uio*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fuse_filehandle*, align 8
  %13 = alloca %struct.fuse_iov*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.fuse_dispatcher, align 8
  %18 = alloca %struct.fuse_read_in*, align 8
  %19 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store %struct.uio* %1, %struct.uio** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.fuse_filehandle* %3, %struct.fuse_filehandle** %12, align 8
  store %struct.fuse_iov* %4, %struct.fuse_iov** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  store %struct.fuse_read_in* null, %struct.fuse_read_in** %18, align 8
  %20 = load %struct.uio*, %struct.uio** %10, align 8
  %21 = call i64 @uio_resid(%struct.uio* %20)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %101

24:                                               ; preds = %7
  %25 = call i32 @fdisp_init(%struct.fuse_dispatcher* %17, i32 0)
  store i32 0, i32* %19, align 4
  %26 = load %struct.uio*, %struct.uio** %10, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 1, i32* %19, align 4
  br label %32

32:                                               ; preds = %31, %24
  br label %33

33:                                               ; preds = %91, %32
  %34 = load %struct.uio*, %struct.uio** %10, align 8
  %35 = call i64 @uio_resid(%struct.uio* %34)
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %92

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %17, i32 0, i32 0
  store i32 12, i32* %38, align 8
  %39 = load %struct.fuse_read_in*, %struct.fuse_read_in** %18, align 8
  %40 = icmp eq %struct.fuse_read_in* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* @FUSE_READDIR, align 4
  %43 = load %struct.vnode*, %struct.vnode** %9, align 8
  %44 = call i32 @fdisp_make_vp(%struct.fuse_dispatcher* %17, i32 %42, %struct.vnode* %43, i32* null, i32* null)
  br label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @FUSE_READDIR, align 4
  %47 = load %struct.vnode*, %struct.vnode** %9, align 8
  %48 = call i32 @fdisp_refresh_vp(%struct.fuse_dispatcher* %17, i32 %46, %struct.vnode* %47, i32* null, i32* null)
  br label %49

49:                                               ; preds = %45, %41
  %50 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %17, i32 0, i32 2
  %51 = load %struct.fuse_read_in*, %struct.fuse_read_in** %50, align 8
  store %struct.fuse_read_in* %51, %struct.fuse_read_in** %18, align 8
  %52 = load %struct.fuse_filehandle*, %struct.fuse_filehandle** %12, align 8
  %53 = getelementptr inbounds %struct.fuse_filehandle, %struct.fuse_filehandle* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fuse_read_in*, %struct.fuse_read_in** %18, align 8
  %56 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.uio*, %struct.uio** %10, align 8
  %58 = call i32 @uio_offset(%struct.uio* %57)
  %59 = load %struct.fuse_read_in*, %struct.fuse_read_in** %18, align 8
  %60 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.uio*, %struct.uio** %10, align 8
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.vnode*, %struct.vnode** %9, align 8
  %65 = getelementptr inbounds %struct.vnode, %struct.vnode* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call %struct.TYPE_2__* @fuse_get_mpdata(i32 %66)
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @MIN(i32 %63, i32 %69)
  %71 = load %struct.fuse_read_in*, %struct.fuse_read_in** %18, align 8
  %72 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = call i32 @fdisp_wait_answ(%struct.fuse_dispatcher* %17)
  store i32 %73, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %49
  br label %92

76:                                               ; preds = %49
  %77 = load %struct.uio*, %struct.uio** %10, align 8
  %78 = load i64, i64* %11, align 8
  %79 = load %struct.fuse_read_in*, %struct.fuse_read_in** %18, align 8
  %80 = getelementptr inbounds %struct.fuse_read_in, %struct.fuse_read_in* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %17, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %17, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.fuse_iov*, %struct.fuse_iov** %13, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = call i32 @fuse_internal_readdir_processdata(%struct.uio* %77, i64 %78, i32* %19, i32 %81, i32 %83, i32 %85, %struct.fuse_iov* %86, i32* %87, i32** %15)
  store i32 %88, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %76
  br label %92

91:                                               ; preds = %76
  br label %33

92:                                               ; preds = %90, %75, %33
  %93 = call i32 @fdisp_destroy(%struct.fuse_dispatcher* %17)
  %94 = load i32, i32* %16, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %99

97:                                               ; preds = %92
  %98 = load i32, i32* %16, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = phi i32 [ 0, %96 ], [ %98, %97 ]
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %99, %23
  %102 = load i32, i32* %8, align 4
  ret i32 %102
}

declare dso_local i64 @uio_resid(%struct.uio*) #1

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, i32*, i32*) #1

declare dso_local i32 @fdisp_refresh_vp(%struct.fuse_dispatcher*, i32, %struct.vnode*, i32*, i32*) #1

declare dso_local i32 @uio_offset(%struct.uio*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local %struct.TYPE_2__* @fuse_get_mpdata(i32) #1

declare dso_local i32 @fdisp_wait_answ(%struct.fuse_dispatcher*) #1

declare dso_local i32 @fuse_internal_readdir_processdata(%struct.uio*, i64, i32*, i32, i32, i32, %struct.fuse_iov*, i32*, i32**) #1

declare dso_local i32 @fdisp_destroy(%struct.fuse_dispatcher*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
