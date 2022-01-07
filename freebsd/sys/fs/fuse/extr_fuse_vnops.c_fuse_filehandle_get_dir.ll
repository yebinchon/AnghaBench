; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_filehandle_get_dir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fuse_filehandle_get_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.fuse_filehandle = type { i32 }
%struct.ucred = type { i32 }

@FREAD = common dso_local global i32 0, align 4
@FEXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.fuse_filehandle**, %struct.ucred*, i32)* @fuse_filehandle_get_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_filehandle_get_dir(%struct.vnode* %0, %struct.fuse_filehandle** %1, %struct.ucred* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.fuse_filehandle**, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.fuse_filehandle** %1, %struct.fuse_filehandle*** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load %struct.vnode*, %struct.vnode** %6, align 8
  %11 = load i32, i32* @FREAD, align 4
  %12 = load %struct.fuse_filehandle**, %struct.fuse_filehandle*** %7, align 8
  %13 = load %struct.ucred*, %struct.ucred** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = call i32 @fuse_filehandle_get(%struct.vnode* %10, i32 %11, %struct.fuse_filehandle** %12, %struct.ucred* %13, i32 %14)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %25

18:                                               ; preds = %4
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = load i32, i32* @FEXEC, align 4
  %21 = load %struct.fuse_filehandle**, %struct.fuse_filehandle*** %7, align 8
  %22 = load %struct.ucred*, %struct.ucred** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @fuse_filehandle_get(%struct.vnode* %19, i32 %20, %struct.fuse_filehandle** %21, %struct.ucred* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %18, %17
  %26 = load i32, i32* %5, align 4
  ret i32 %26
}

declare dso_local i32 @fuse_filehandle_get(%struct.vnode*, i32, %struct.fuse_filehandle**, %struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
