; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_vnop_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_open_args = type { i32, %struct.ucred*, %struct.thread*, %struct.vnode* }
%struct.ucred = type { i32 }
%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vnode = type { i64 }
%struct.fuse_vnode_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@VBLK = common dso_local global i64 0, align 8
@VFIFO = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@FEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_open_args*)* @fuse_vnop_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_vnop_open(%struct.vop_open_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_open_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fuse_vnode_data*, align 8
  store %struct.vop_open_args* %0, %struct.vop_open_args** %3, align 8
  %10 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %11 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %10, i32 0, i32 3
  %12 = load %struct.vnode*, %struct.vnode** %11, align 8
  store %struct.vnode* %12, %struct.vnode** %4, align 8
  %13 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %5, align 4
  %16 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %17 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %16, i32 0, i32 2
  %18 = load %struct.thread*, %struct.thread** %17, align 8
  store %struct.thread* %18, %struct.thread** %6, align 8
  %19 = load %struct.vop_open_args*, %struct.vop_open_args** %3, align 8
  %20 = getelementptr inbounds %struct.vop_open_args, %struct.vop_open_args* %19, i32 0, i32 1
  %21 = load %struct.ucred*, %struct.ucred** %20, align 8
  store %struct.ucred* %21, %struct.ucred** %7, align 8
  %22 = load %struct.thread*, %struct.thread** %6, align 8
  %23 = getelementptr inbounds %struct.thread, %struct.thread* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.vnode*, %struct.vnode** %4, align 8
  %28 = call i64 @fuse_isdeadfs(%struct.vnode* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %1
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %82

32:                                               ; preds = %1
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VCHR, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %50, label %38

38:                                               ; preds = %32
  %39 = load %struct.vnode*, %struct.vnode** %4, align 8
  %40 = getelementptr inbounds %struct.vnode, %struct.vnode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VBLK, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.vnode*, %struct.vnode** %4, align 8
  %46 = getelementptr inbounds %struct.vnode, %struct.vnode* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @VFIFO, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %44, %38, %32
  %51 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %51, i32* %2, align 4
  br label %82

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @FREAD, align 4
  %55 = load i32, i32* @FWRITE, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @FEXEC, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %53, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %52
  %62 = load i32, i32* @EINVAL, align 4
  store i32 %62, i32* %2, align 4
  br label %82

63:                                               ; preds = %52
  %64 = load %struct.vnode*, %struct.vnode** %4, align 8
  %65 = call %struct.fuse_vnode_data* @VTOFUD(%struct.vnode* %64)
  store %struct.fuse_vnode_data* %65, %struct.fuse_vnode_data** %9, align 8
  %66 = load %struct.vnode*, %struct.vnode** %4, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.ucred*, %struct.ucred** %7, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @fuse_filehandle_validrw(%struct.vnode* %66, i32 %67, %struct.ucred* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.vnode*, %struct.vnode** %4, align 8
  %74 = load %struct.thread*, %struct.thread** %6, align 8
  %75 = call i32 @fuse_vnode_open(%struct.vnode* %73, i32 0, %struct.thread* %74)
  store i32 0, i32* %2, align 4
  br label %82

76:                                               ; preds = %63
  %77 = load %struct.vnode*, %struct.vnode** %4, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.thread*, %struct.thread** %6, align 8
  %80 = load %struct.ucred*, %struct.ucred** %7, align 8
  %81 = call i32 @fuse_filehandle_open(%struct.vnode* %77, i32 %78, i32* null, %struct.thread* %79, %struct.ucred* %80)
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %76, %72, %61, %50, %30
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i64 @fuse_isdeadfs(%struct.vnode*) #1

declare dso_local %struct.fuse_vnode_data* @VTOFUD(%struct.vnode*) #1

declare dso_local i64 @fuse_filehandle_validrw(%struct.vnode*, i32, %struct.ucred*, i32) #1

declare dso_local i32 @fuse_vnode_open(%struct.vnode*, i32, %struct.thread*) #1

declare dso_local i32 @fuse_filehandle_open(%struct.vnode*, i32, i32*, %struct.thread*, %struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
