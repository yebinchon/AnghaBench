; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_stdcheckexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_export.c_vfs_stdcheckexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.sockaddr = type { i32 }
%struct.ucred = type { i32 }
%struct.netcred = type { i32, i32, i32*, %struct.ucred* }

@LK_SHARED = common dso_local global i32 0, align 4
@LK_RELEASE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_stdcheckexp(%struct.mount* %0, %struct.sockaddr* %1, i32* %2, %struct.ucred** %3, i32* %4, i32** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ucred**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca %struct.netcred*, align 8
  store %struct.mount* %0, %struct.mount** %8, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %9, align 8
  store i32* %2, i32** %10, align 8
  store %struct.ucred** %3, %struct.ucred*** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32** %5, i32*** %13, align 8
  %15 = load %struct.mount*, %struct.mount** %8, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 0
  %17 = load i32, i32* @LK_SHARED, align 4
  %18 = call i32 @lockmgr(i32* %16, i32 %17, i32* null)
  %19 = load %struct.mount*, %struct.mount** %8, align 8
  %20 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %21 = call %struct.netcred* @vfs_export_lookup(%struct.mount* %19, %struct.sockaddr* %20)
  store %struct.netcred* %21, %struct.netcred** %14, align 8
  %22 = load %struct.netcred*, %struct.netcred** %14, align 8
  %23 = icmp eq %struct.netcred* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = load %struct.mount*, %struct.mount** %8, align 8
  %26 = getelementptr inbounds %struct.mount, %struct.mount* %25, i32 0, i32 0
  %27 = load i32, i32* @LK_RELEASE, align 4
  %28 = call i32 @lockmgr(i32* %26, i32 %27, i32* null)
  %29 = load %struct.ucred**, %struct.ucred*** %11, align 8
  store %struct.ucred* null, %struct.ucred** %29, align 8
  %30 = load i32, i32* @EACCES, align 4
  store i32 %30, i32* %7, align 4
  br label %66

31:                                               ; preds = %6
  %32 = load %struct.netcred*, %struct.netcred** %14, align 8
  %33 = getelementptr inbounds %struct.netcred, %struct.netcred* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32*, i32** %10, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.netcred*, %struct.netcred** %14, align 8
  %37 = getelementptr inbounds %struct.netcred, %struct.netcred* %36, i32 0, i32 3
  %38 = load %struct.ucred*, %struct.ucred** %37, align 8
  %39 = load %struct.ucred**, %struct.ucred*** %11, align 8
  store %struct.ucred* %38, %struct.ucred** %39, align 8
  %40 = icmp ne %struct.ucred* %38, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %31
  %42 = load %struct.ucred**, %struct.ucred*** %11, align 8
  %43 = load %struct.ucred*, %struct.ucred** %42, align 8
  %44 = call i32 @crhold(%struct.ucred* %43)
  br label %45

45:                                               ; preds = %41, %31
  %46 = load i32*, i32** %12, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %45
  %49 = load %struct.netcred*, %struct.netcred** %14, align 8
  %50 = getelementptr inbounds %struct.netcred, %struct.netcred* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %12, align 8
  store i32 %51, i32* %52, align 4
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32**, i32*** %13, align 8
  %55 = icmp ne i32** %54, null
  br i1 %55, label %56, label %61

56:                                               ; preds = %53
  %57 = load %struct.netcred*, %struct.netcred** %14, align 8
  %58 = getelementptr inbounds %struct.netcred, %struct.netcred* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32**, i32*** %13, align 8
  store i32* %59, i32** %60, align 8
  br label %61

61:                                               ; preds = %56, %53
  %62 = load %struct.mount*, %struct.mount** %8, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 0
  %64 = load i32, i32* @LK_RELEASE, align 4
  %65 = call i32 @lockmgr(i32* %63, i32 %64, i32* null)
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %61, %24
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @lockmgr(i32*, i32, i32*) #1

declare dso_local %struct.netcred* @vfs_export_lookup(%struct.mount*, %struct.sockaddr*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
