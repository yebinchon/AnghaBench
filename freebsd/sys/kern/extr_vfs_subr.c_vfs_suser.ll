; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_suser.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_subr.c_vfs_suser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.thread = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EPERM = common dso_local global i32 0, align 4
@VFCF_DELEGADMIN = common dso_local global i32 0, align 4
@PRIV_VFS_MOUNT_OWNER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_suser(%struct.mount* %0, %struct.thread* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  %7 = load %struct.thread*, %struct.thread** %5, align 8
  %8 = getelementptr inbounds %struct.thread, %struct.thread* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = call i64 @jailed(%struct.TYPE_7__* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %37

12:                                               ; preds = %2
  %13 = load %struct.thread*, %struct.thread** %5, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = load %struct.mount*, %struct.mount** %4, align 8
  %17 = getelementptr inbounds %struct.mount, %struct.mount* %16, i32 0, i32 1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @prison_allow(%struct.TYPE_7__* %15, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %12
  %24 = load i32, i32* @EPERM, align 4
  store i32 %24, i32* %3, align 4
  br label %67

25:                                               ; preds = %12
  %26 = load %struct.thread*, %struct.thread** %5, align 8
  %27 = getelementptr inbounds %struct.thread, %struct.thread* %26, i32 0, i32 0
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = load %struct.mount*, %struct.mount** %4, align 8
  %30 = getelementptr inbounds %struct.mount, %struct.mount* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = call i64 @prison_check(%struct.TYPE_7__* %28, %struct.TYPE_8__* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @EPERM, align 4
  store i32 %35, i32* %3, align 4
  br label %67

36:                                               ; preds = %25
  br label %37

37:                                               ; preds = %36, %2
  %38 = load %struct.mount*, %struct.mount** %4, align 8
  %39 = getelementptr inbounds %struct.mount, %struct.mount* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @VFCF_DELEGADMIN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %66, label %46

46:                                               ; preds = %37
  %47 = load %struct.mount*, %struct.mount** %4, align 8
  %48 = getelementptr inbounds %struct.mount, %struct.mount* %47, i32 0, i32 0
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.thread*, %struct.thread** %5, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %51, %56
  br i1 %57, label %58, label %66

58:                                               ; preds = %46
  %59 = load %struct.thread*, %struct.thread** %5, align 8
  %60 = load i32, i32* @PRIV_VFS_MOUNT_OWNER, align 4
  %61 = call i32 @priv_check(%struct.thread* %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %67

65:                                               ; preds = %58
  br label %66

66:                                               ; preds = %65, %46, %37
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %63, %34, %23
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i64 @jailed(%struct.TYPE_7__*) #1

declare dso_local i32 @prison_allow(%struct.TYPE_7__*, i32) #1

declare dso_local i64 @prison_check(%struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
