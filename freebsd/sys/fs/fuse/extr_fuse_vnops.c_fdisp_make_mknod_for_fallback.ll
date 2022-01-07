; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fdisp_make_mknod_for_fallback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_vnops.c_fdisp_make_mknod_for_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_dispatcher = type { %struct.fuse_mknod_in* }
%struct.fuse_mknod_in = type { i64, i32 }
%struct.componentname = type { i32, i32 }
%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }

@FUSE_MKNOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fuse_dispatcher*, %struct.componentname*, %struct.vnode*, i32, %struct.thread*, %struct.ucred*, i32, i32*)* @fdisp_make_mknod_for_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdisp_make_mknod_for_fallback(%struct.fuse_dispatcher* %0, %struct.componentname* %1, %struct.vnode* %2, i32 %3, %struct.thread* %4, %struct.ucred* %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.fuse_dispatcher*, align 8
  %10 = alloca %struct.componentname*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.thread*, align 8
  %14 = alloca %struct.ucred*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca %struct.fuse_mknod_in*, align 8
  store %struct.fuse_dispatcher* %0, %struct.fuse_dispatcher** %9, align 8
  store %struct.componentname* %1, %struct.componentname** %10, align 8
  store %struct.vnode* %2, %struct.vnode** %11, align 8
  store i32 %3, i32* %12, align 4
  store %struct.thread* %4, %struct.thread** %13, align 8
  store %struct.ucred* %5, %struct.ucred** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32* %7, i32** %16, align 8
  %18 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %9, align 8
  %19 = load %struct.componentname*, %struct.componentname** %10, align 8
  %20 = getelementptr inbounds %struct.componentname, %struct.componentname* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 16, %22
  %24 = add i64 %23, 1
  %25 = trunc i64 %24 to i32
  %26 = call i32 @fdisp_init(%struct.fuse_dispatcher* %18, i32 %25)
  %27 = load i32, i32* @FUSE_MKNOD, align 4
  %28 = load i32*, i32** %16, align 8
  store i32 %27, i32* %28, align 4
  %29 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %9, align 8
  %30 = load i32*, i32** %16, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vnode*, %struct.vnode** %11, align 8
  %33 = call i32 @vnode_mount(%struct.vnode* %32)
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.thread*, %struct.thread** %13, align 8
  %36 = load %struct.ucred*, %struct.ucred** %14, align 8
  %37 = call i32 @fdisp_make(%struct.fuse_dispatcher* %29, i32 %31, i32 %33, i32 %34, %struct.thread* %35, %struct.ucred* %36)
  %38 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %9, align 8
  %39 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %38, i32 0, i32 0
  %40 = load %struct.fuse_mknod_in*, %struct.fuse_mknod_in** %39, align 8
  store %struct.fuse_mknod_in* %40, %struct.fuse_mknod_in** %17, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.fuse_mknod_in*, %struct.fuse_mknod_in** %17, align 8
  %43 = getelementptr inbounds %struct.fuse_mknod_in, %struct.fuse_mknod_in* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.fuse_mknod_in*, %struct.fuse_mknod_in** %17, align 8
  %45 = getelementptr inbounds %struct.fuse_mknod_in, %struct.fuse_mknod_in* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  %46 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %9, align 8
  %47 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %46, i32 0, i32 0
  %48 = load %struct.fuse_mknod_in*, %struct.fuse_mknod_in** %47, align 8
  %49 = bitcast %struct.fuse_mknod_in* %48 to i8*
  %50 = getelementptr inbounds i8, i8* %49, i64 16
  %51 = load %struct.componentname*, %struct.componentname** %10, align 8
  %52 = getelementptr inbounds %struct.componentname, %struct.componentname* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.componentname*, %struct.componentname** %10, align 8
  %55 = getelementptr inbounds %struct.componentname, %struct.componentname* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @memcpy(i8* %50, i32 %53, i32 %56)
  %58 = load %struct.fuse_dispatcher*, %struct.fuse_dispatcher** %9, align 8
  %59 = getelementptr inbounds %struct.fuse_dispatcher, %struct.fuse_dispatcher* %58, i32 0, i32 0
  %60 = load %struct.fuse_mknod_in*, %struct.fuse_mknod_in** %59, align 8
  %61 = bitcast %struct.fuse_mknod_in* %60 to i8*
  %62 = load %struct.componentname*, %struct.componentname** %10, align 8
  %63 = getelementptr inbounds %struct.componentname, %struct.componentname* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = add i64 16, %65
  %67 = getelementptr inbounds i8, i8* %61, i64 %66
  store i8 0, i8* %67, align 1
  ret void
}

declare dso_local i32 @fdisp_init(%struct.fuse_dispatcher*, i32) #1

declare dso_local i32 @fdisp_make(%struct.fuse_dispatcher*, i32, i32, i32, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
