; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fgetvp_rights.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_descrip.c_fgetvp_rights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.filecaps = type { i32 }
%struct.vnode = type { i32 }
%struct.file = type { %struct.vnode*, i32* }

@badfileops = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetvp_rights(%struct.thread* %0, i32 %1, i32* %2, %struct.filecaps* %3, %struct.vnode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.filecaps*, align 8
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.filedesc*, align 8
  %13 = alloca %struct.filecaps, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store %struct.filecaps* %3, %struct.filecaps** %10, align 8
  store %struct.vnode** %4, %struct.vnode*** %11, align 8
  %16 = load %struct.thread*, %struct.thread** %7, align 8
  %17 = getelementptr inbounds %struct.thread, %struct.thread* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.filedesc*, %struct.filedesc** %19, align 8
  store %struct.filedesc* %20, %struct.filedesc** %12, align 8
  %21 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32*, i32** %9, align 8
  %24 = call i32 @fget_cap_locked(%struct.filedesc* %21, i32 %22, i32* %23, %struct.file** %14, %struct.filecaps* %13)
  store i32 %24, i32* %15, align 4
  %25 = load i32, i32* %15, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i32, i32* %15, align 4
  store i32 %28, i32* %6, align 4
  br label %57

29:                                               ; preds = %5
  %30 = load %struct.file*, %struct.file** %14, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, @badfileops
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EBADF, align 4
  store i32 %35, i32* %15, align 4
  br label %54

36:                                               ; preds = %29
  %37 = load %struct.file*, %struct.file** %14, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  %40 = icmp eq %struct.vnode* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %15, align 4
  br label %54

43:                                               ; preds = %36
  %44 = load %struct.filecaps*, %struct.filecaps** %10, align 8
  %45 = bitcast %struct.filecaps* %44 to i8*
  %46 = bitcast %struct.filecaps* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 4, i1 false)
  %47 = load %struct.file*, %struct.file** %14, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load %struct.vnode*, %struct.vnode** %48, align 8
  %50 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* %49, %struct.vnode** %50, align 8
  %51 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %52 = load %struct.vnode*, %struct.vnode** %51, align 8
  %53 = call i32 @vrefact(%struct.vnode* %52)
  store i32 0, i32* %6, align 4
  br label %57

54:                                               ; preds = %41, %34
  %55 = call i32 @filecaps_free(%struct.filecaps* %13)
  %56 = load i32, i32* %15, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %54, %43, %27
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @fget_cap_locked(%struct.filedesc*, i32, i32*, %struct.file**, %struct.filecaps*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vrefact(%struct.vnode*) #1

declare dso_local i32 @filecaps_free(%struct.filecaps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
