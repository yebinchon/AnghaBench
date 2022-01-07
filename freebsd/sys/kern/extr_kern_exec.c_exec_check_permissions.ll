; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_check_permissions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_check_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.image_params = type { i32, i32, %struct.vnode*, %struct.vattr* }
%struct.vnode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vattr = type { i32, i64, i64 }

@curthread = common dso_local global %struct.thread* null, align 8
@MNT_NOEXEC = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@EACCES = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_check_permissions(%struct.image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vattr*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  %8 = load %struct.image_params*, %struct.image_params** %3, align 8
  %9 = getelementptr inbounds %struct.image_params, %struct.image_params* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %4, align 8
  %11 = load %struct.image_params*, %struct.image_params** %3, align 8
  %12 = getelementptr inbounds %struct.image_params, %struct.image_params* %11, i32 0, i32 3
  %13 = load %struct.vattr*, %struct.vattr** %12, align 8
  store %struct.vattr* %13, %struct.vattr** %5, align 8
  %14 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %14, %struct.thread** %6, align 8
  %15 = load %struct.vnode*, %struct.vnode** %4, align 8
  %16 = load %struct.vattr*, %struct.vattr** %5, align 8
  %17 = load %struct.thread*, %struct.thread** %6, align 8
  %18 = getelementptr inbounds %struct.thread, %struct.thread* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @VOP_GETATTR(%struct.vnode* %15, %struct.vattr* %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %96

25:                                               ; preds = %1
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MNT_NOEXEC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %51, label %34

34:                                               ; preds = %25
  %35 = load %struct.vattr*, %struct.vattr** %5, align 8
  %36 = getelementptr inbounds %struct.vattr, %struct.vattr* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @S_IXUSR, align 4
  %39 = load i32, i32* @S_IXGRP, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @S_IXOTH, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %34
  %46 = load %struct.vattr*, %struct.vattr** %5, align 8
  %47 = getelementptr inbounds %struct.vattr, %struct.vattr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VREG, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %45, %34, %25
  %52 = load i32, i32* @EACCES, align 4
  store i32 %52, i32* %2, align 4
  br label %96

53:                                               ; preds = %45
  %54 = load %struct.vattr*, %struct.vattr** %5, align 8
  %55 = getelementptr inbounds %struct.vattr, %struct.vattr* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOEXEC, align 4
  store i32 %59, i32* %2, align 4
  br label %96

60:                                               ; preds = %53
  %61 = load %struct.vnode*, %struct.vnode** %4, align 8
  %62 = load i32, i32* @VEXEC, align 4
  %63 = load %struct.thread*, %struct.thread** %6, align 8
  %64 = getelementptr inbounds %struct.thread, %struct.thread* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.thread*, %struct.thread** %6, align 8
  %67 = call i32 @VOP_ACCESS(%struct.vnode* %61, i32 %62, i32 %65, %struct.thread* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %60
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %2, align 4
  br label %96

72:                                               ; preds = %60
  %73 = load %struct.vnode*, %struct.vnode** %4, align 8
  %74 = call i32 @VOP_SET_TEXT(%struct.vnode* %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i32, i32* %7, align 4
  store i32 %78, i32* %2, align 4
  br label %96

79:                                               ; preds = %72
  %80 = load %struct.image_params*, %struct.image_params** %3, align 8
  %81 = getelementptr inbounds %struct.image_params, %struct.image_params* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %struct.vnode*, %struct.vnode** %4, align 8
  %83 = load i32, i32* @FREAD, align 4
  %84 = load %struct.thread*, %struct.thread** %6, align 8
  %85 = getelementptr inbounds %struct.thread, %struct.thread* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.thread*, %struct.thread** %6, align 8
  %88 = call i32 @VOP_OPEN(%struct.vnode* %82, i32 %83, i32 %86, %struct.thread* %87, i32* null)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %79
  %92 = load %struct.image_params*, %struct.image_params** %3, align 8
  %93 = getelementptr inbounds %struct.image_params, %struct.image_params* %92, i32 0, i32 1
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %79
  %95 = load i32, i32* %7, align 4
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %94, %77, %70, %58, %51, %23
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, i32) #1

declare dso_local i32 @VOP_ACCESS(%struct.vnode*, i32, i32, %struct.thread*) #1

declare dso_local i32 @VOP_SET_TEXT(%struct.vnode*) #1

declare dso_local i32 @VOP_OPEN(%struct.vnode*, i32, i32, %struct.thread*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
