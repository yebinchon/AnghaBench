; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_delete_vp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_extattr.c_extattr_delete_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.thread = type { i32 }
%struct.mount = type { i32 }

@V_WAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, i32, i8*, %struct.thread*)* @extattr_delete_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extattr_delete_vp(%struct.vnode* %0, i32 %1, i8* %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.mount*, align 8
  %11 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  %12 = load %struct.vnode*, %struct.vnode** %6, align 8
  %13 = load i32, i32* @V_WAIT, align 4
  %14 = load i32, i32* @PCATCH, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @vn_start_write(%struct.vnode* %12, %struct.mount** %10, i32 %15)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %53

21:                                               ; preds = %4
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = load i32, i32* @LK_EXCLUSIVE, align 4
  %24 = load i32, i32* @LK_RETRY, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @vn_lock(%struct.vnode* %22, i32 %25)
  %27 = load %struct.vnode*, %struct.vnode** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.thread*, %struct.thread** %9, align 8
  %31 = getelementptr inbounds %struct.thread, %struct.thread* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.thread*, %struct.thread** %9, align 8
  %34 = call i32 @VOP_DELETEEXTATTR(%struct.vnode* %27, i32 %28, i8* %29, i32 %32, %struct.thread* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %21
  %39 = load %struct.vnode*, %struct.vnode** %6, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load %struct.thread*, %struct.thread** %9, align 8
  %43 = getelementptr inbounds %struct.thread, %struct.thread* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.thread*, %struct.thread** %9, align 8
  %46 = call i32 @VOP_SETEXTATTR(%struct.vnode* %39, i32 %40, i8* %41, i32* null, i32 %44, %struct.thread* %45)
  store i32 %46, i32* %11, align 4
  br label %47

47:                                               ; preds = %38, %21
  %48 = load %struct.vnode*, %struct.vnode** %6, align 8
  %49 = call i32 @VOP_UNLOCK(%struct.vnode* %48, i32 0)
  %50 = load %struct.mount*, %struct.mount** %10, align 8
  %51 = call i32 @vn_finished_write(%struct.mount* %50)
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %47, %19
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_DELETEEXTATTR(%struct.vnode*, i32, i8*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_SETEXTATTR(%struct.vnode*, i32, i8*, i32*, i32, %struct.thread*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
