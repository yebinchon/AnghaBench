; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_getlayout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_getlayout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfscllayout = type { i32, i32, i64 }
%struct.nfsclclient = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfsclflayout = type { i32 }

@NFSLY_RECALL = common dso_local global i32 0, align 4
@nfsly_list = common dso_local global i32 0, align 4
@NFSD_MONOSEC = common dso_local global i64 0, align 8
@NFSV4OPEN_ACCESSREAD = common dso_local global i32 0, align 4
@NFSCLSTATEMUTEXPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfscllayout* @nfscl_getlayout(%struct.nfsclclient* %0, i32* %1, i32 %2, i32 %3, %struct.nfsclflayout** %4, i32* %5) #0 {
  %7 = alloca %struct.nfsclclient*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfsclflayout**, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.nfscllayout*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nfsclclient* %0, %struct.nfsclclient** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nfsclflayout** %4, %struct.nfsclflayout*** %11, align 8
  store i32* %5, i32** %12, align 8
  %17 = load %struct.nfsclclient*, %struct.nfsclclient** %7, align 8
  %18 = getelementptr inbounds %struct.nfsclclient, %struct.nfsclclient* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32*, i32** %12, align 8
  store i32 0, i32* %22, align 4
  %23 = load %struct.nfsclflayout**, %struct.nfsclflayout*** %11, align 8
  store %struct.nfsclflayout* null, %struct.nfsclflayout** %23, align 8
  %24 = call i32 (...) @NFSLOCKCLSTATE()
  %25 = load %struct.nfsclclient*, %struct.nfsclclient** %7, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call %struct.nfscllayout* @nfscl_findlayout(%struct.nfsclclient* %25, i32* %26, i32 %27)
  store %struct.nfscllayout* %28, %struct.nfscllayout** %13, align 8
  %29 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %30 = icmp ne %struct.nfscllayout* %29, null
  br i1 %30, label %31, label %95

31:                                               ; preds = %6
  %32 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %33 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @NFSLY_RECALL, align 4
  %36 = and i32 %34, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %92

38:                                               ; preds = %31
  %39 = load %struct.nfsclclient*, %struct.nfsclclient** %7, align 8
  %40 = getelementptr inbounds %struct.nfsclclient, %struct.nfsclclient* %39, i32 0, i32 0
  %41 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %42 = load i32, i32* @nfsly_list, align 4
  %43 = call i32 @TAILQ_REMOVE(i32* %40, %struct.nfscllayout* %41, i32 %42)
  %44 = load %struct.nfsclclient*, %struct.nfsclclient** %7, align 8
  %45 = getelementptr inbounds %struct.nfsclclient, %struct.nfsclclient* %44, i32 0, i32 0
  %46 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %47 = load i32, i32* @nfsly_list, align 4
  %48 = call i32 @TAILQ_INSERT_HEAD(i32* %45, %struct.nfscllayout* %46, i32 %47)
  %49 = load i64, i64* @NFSD_MONOSEC, align 8
  %50 = add nsw i64 %49, 120
  %51 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %52 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %51, i32 0, i32 2
  store i64 %50, i64* %52, align 8
  %53 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @NFSV4OPEN_ACCESSREAD, align 4
  %56 = load %struct.nfsclflayout**, %struct.nfsclflayout*** %11, align 8
  %57 = call i32 @nfscl_findlayoutforio(%struct.nfscllayout* %53, i32 %54, i32 %55, %struct.nfsclflayout** %56)
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %38
  %61 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %62 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %61, i32 0, i32 1
  %63 = load i32, i32* @NFSCLSTATEMUTEXPTR, align 4
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @nfsv4_getref(i32* %62, i32* null, i32 %63, i32 %64)
  br label %85

66:                                               ; preds = %38
  br label %67

67:                                               ; preds = %81, %66
  %68 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  %69 = getelementptr inbounds %struct.nfscllayout, %struct.nfscllayout* %68, i32 0, i32 1
  %70 = load i32, i32* @NFSCLSTATEMUTEXPTR, align 4
  %71 = load i32, i32* %14, align 4
  %72 = call i32 @nfsv4_lock(i32* %69, i32 1, i32* null, i32 %70, i32 %71)
  store i32 %72, i32* %16, align 4
  br label %73

73:                                               ; preds = %67
  %74 = load i32, i32* %16, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load i32, i32* %14, align 4
  %78 = call i64 @NFSCL_FORCEDISM(i32 %77)
  %79 = icmp ne i64 %78, 0
  %80 = xor i1 %79, true
  br label %81

81:                                               ; preds = %76, %73
  %82 = phi i1 [ false, %73 ], [ %80, %76 ]
  br i1 %82, label %67, label %83

83:                                               ; preds = %81
  %84 = load %struct.nfsclflayout**, %struct.nfsclflayout*** %11, align 8
  store %struct.nfsclflayout* null, %struct.nfsclflayout** %84, align 8
  br label %85

85:                                               ; preds = %83, %60
  %86 = load i32, i32* %14, align 4
  %87 = call i64 @NFSCL_FORCEDISM(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  store %struct.nfscllayout* null, %struct.nfscllayout** %13, align 8
  %90 = load i32*, i32** %12, align 8
  store i32 1, i32* %90, align 4
  br label %91

91:                                               ; preds = %89, %85
  br label %94

92:                                               ; preds = %31
  store %struct.nfscllayout* null, %struct.nfscllayout** %13, align 8
  %93 = load i32*, i32** %12, align 8
  store i32 1, i32* %93, align 4
  br label %94

94:                                               ; preds = %92, %91
  br label %95

95:                                               ; preds = %94, %6
  %96 = call i32 (...) @NFSUNLOCKCLSTATE()
  %97 = load %struct.nfscllayout*, %struct.nfscllayout** %13, align 8
  ret %struct.nfscllayout* %97
}

declare dso_local i32 @NFSLOCKCLSTATE(...) #1

declare dso_local %struct.nfscllayout* @nfscl_findlayout(%struct.nfsclclient*, i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nfscllayout*, i32) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.nfscllayout*, i32) #1

declare dso_local i32 @nfscl_findlayoutforio(%struct.nfscllayout*, i32, i32, %struct.nfsclflayout**) #1

declare dso_local i32 @nfsv4_getref(i32*, i32*, i32, i32) #1

declare dso_local i32 @nfsv4_lock(i32*, i32, i32*, i32, i32) #1

declare dso_local i64 @NFSCL_FORCEDISM(i32) #1

declare dso_local i32 @NFSUNLOCKCLSTATE(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
