; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_retoncloselayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_retoncloselayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.nfsclclient = type { i32 }
%struct.nfsclrecalllayout = type { i32 }
%struct.nfscllayout = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@VREG = common dso_local global i64 0, align 8
@nfscl_enablecallb = common dso_local global i64 0, align 8
@nfs_numnfscbd = common dso_local global i64 0, align 8
@NNOLAYOUT = common dso_local global i32 0, align 4
@NFSLY_RETONCLOSE = common dso_local global i32 0, align 4
@NFSLY_RECALL = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_READ = common dso_local global i32 0, align 4
@NFSLAYOUTIOMODE_RW = common dso_local global i32 0, align 4
@NFSLAYOUTRETURN_FILE = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"retoncls recall iomode=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.nfsclclient*, i32*, i32, %struct.nfsclrecalllayout**)* @nfscl_retoncloselayout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfscl_retoncloselayout(%struct.TYPE_8__* %0, %struct.nfsclclient* %1, i32* %2, i32 %3, %struct.nfsclrecalllayout** %4) #0 {
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.nfsclclient*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsclrecalllayout**, align 8
  %11 = alloca %struct.nfscllayout*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.nfsclclient* %1, %struct.nfsclclient** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.nfsclrecalllayout** %4, %struct.nfsclrecalllayout*** %10, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VREG, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %38, label %18

18:                                               ; preds = %5
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %20 = call i32 @vnode_mount(%struct.TYPE_8__* %19)
  %21 = call i32 @VFSTONFS(i32 %20)
  %22 = call i32 @NFSHASPNFS(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i64, i64* @nfscl_enablecallb, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* @nfs_numnfscbd, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %32 = call %struct.TYPE_9__* @VTONFS(%struct.TYPE_8__* %31)
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @NNOLAYOUT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %27, %24, %18, %5
  br label %89

39:                                               ; preds = %30
  %40 = load %struct.nfsclclient*, %struct.nfsclclient** %7, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call %struct.nfscllayout* @nfscl_findlayout(%struct.nfsclclient* %40, i32* %41, i32 %42)
  store %struct.nfscllayout* %43, %struct.nfscllayout** %11, align 8
  %44 = load %struct.nfscllayout*, %struct.nfscllayout** %11, align 8
  %45 = icmp ne %struct.nfscllayout* %44, null
  br i1 %45, label %46, label %89

46:                                               ; preds = %39
  %47 = load %struct.nfscllayout*, %struct.nfscllayout** %11, align 8
  %48 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @NFSLY_RETONCLOSE, align 4
  %51 = load i32, i32* @NFSLY_RECALL, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = load i32, i32* @NFSLY_RETONCLOSE, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %89

56:                                               ; preds = %46
  store i32 0, i32* %12, align 4
  %57 = load %struct.nfscllayout*, %struct.nfscllayout** %11, align 8
  %58 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %57, i32 0, i32 3
  %59 = call i32 @LIST_EMPTY(i32* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* @NFSLAYOUTIOMODE_READ, align 4
  %63 = load i32, i32* %12, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %61, %56
  %66 = load %struct.nfscllayout*, %struct.nfscllayout** %11, align 8
  %67 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %66, i32 0, i32 2
  %68 = call i32 @LIST_EMPTY(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @NFSLAYOUTIOMODE_RW, align 4
  %72 = load i32, i32* %12, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %70, %65
  %75 = load i32, i32* @NFSLAYOUTRETURN_FILE, align 4
  %76 = load %struct.nfscllayout*, %struct.nfscllayout** %11, align 8
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @UINT64_MAX, align 4
  %79 = load %struct.nfscllayout*, %struct.nfscllayout** %11, align 8
  %80 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.nfsclrecalllayout**, %struct.nfsclrecalllayout*** %10, align 8
  %84 = load %struct.nfsclrecalllayout*, %struct.nfsclrecalllayout** %83, align 8
  %85 = call i32 @nfscl_layoutrecall(i32 %75, %struct.nfscllayout* %76, i32 %77, i32 0, i32 %78, i32 %82, i32 0, i32 0, i32* null, %struct.nfsclrecalllayout* %84)
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @NFSCL_DEBUG(i32 4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %86)
  %88 = load %struct.nfsclrecalllayout**, %struct.nfsclrecalllayout*** %10, align 8
  store %struct.nfsclrecalllayout* null, %struct.nfsclrecalllayout** %88, align 8
  br label %89

89:                                               ; preds = %38, %74, %46, %39
  ret void
}

declare dso_local i32 @NFSHASPNFS(i32) #1

declare dso_local i32 @VFSTONFS(i32) #1

declare dso_local i32 @vnode_mount(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_9__* @VTONFS(%struct.TYPE_8__*) #1

declare dso_local %struct.nfscllayout* @nfscl_findlayout(%struct.nfsclclient*, i32*, i32) #1

declare dso_local i32 @LIST_EMPTY(i32*) #1

declare dso_local i32 @nfscl_layoutrecall(i32, %struct.nfscllayout*, i32, i32, i32, i32, i32, i32, i32*, %struct.nfsclrecalllayout*) #1

declare dso_local i32 @NFSCL_DEBUG(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
