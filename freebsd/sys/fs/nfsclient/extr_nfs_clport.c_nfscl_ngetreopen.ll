; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_ngetreopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clport.c_nfscl_ngetreopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.thread = type { i32 }
%struct.nfsnode = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsfh = type { i32, i32* }

@EINTR = common dso_local global i32 0, align 4
@M_NFSFH = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@FNV1_32_INIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@newnfs_vncmpf = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfscl_ngetreopen(%struct.mount* %0, i32* %1, i32 %2, %struct.thread* %3, %struct.nfsnode** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.nfsnode**, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.nfsfh*, align 8
  %15 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.thread* %3, %struct.thread** %10, align 8
  store %struct.nfsnode** %4, %struct.nfsnode*** %11, align 8
  %16 = load %struct.nfsnode**, %struct.nfsnode*** %11, align 8
  store %struct.nfsnode* null, %struct.nfsnode** %16, align 8
  %17 = load %struct.mount*, %struct.mount** %7, align 8
  %18 = call i64 @NFSCL_FORCEDISM(%struct.mount* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* @EINTR, align 4
  store i32 %21, i32* %6, align 4
  br label %115

22:                                               ; preds = %5
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 16, %24
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* @M_NFSFH, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call %struct.nfsfh* @malloc(i32 %26, i32 %27, i32 %28)
  store %struct.nfsfh* %29, %struct.nfsfh** %14, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %32 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @bcopy(i32* %30, i32* %34, i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %39 = getelementptr inbounds %struct.nfsfh, %struct.nfsfh* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @FNV1_32_INIT, align 4
  %43 = call i32 @fnv_32_buf(i32* %40, i32 %41, i32 %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.mount*, %struct.mount** %7, align 8
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @LK_EXCLUSIVE, align 4
  %47 = load i32, i32* @LK_NOWAIT, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.thread*, %struct.thread** %10, align 8
  %50 = load i32, i32* @newnfs_vncmpf, align 4
  %51 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %52 = call i32 @vfs_hash_get(%struct.mount* %44, i32 %45, i32 %48, %struct.thread* %49, %struct.vnode** %12, i32 %50, %struct.nfsfh* %51)
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %22
  %56 = load %struct.vnode*, %struct.vnode** %12, align 8
  %57 = icmp ne %struct.vnode* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load %struct.vnode*, %struct.vnode** %12, align 8
  %60 = call i32 @NFSVOPUNLOCK(%struct.vnode* %59, i32 0)
  br label %98

61:                                               ; preds = %55, %22
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* @EBUSY, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %97

65:                                               ; preds = %61
  %66 = load %struct.mount*, %struct.mount** %7, align 8
  %67 = call i64 @NFSCL_FORCEDISM(%struct.mount* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @EINTR, align 4
  store i32 %70, i32* %15, align 4
  br label %96

71:                                               ; preds = %65
  %72 = load %struct.mount*, %struct.mount** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.thread*, %struct.thread** %10, align 8
  %75 = load i32, i32* @newnfs_vncmpf, align 4
  %76 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %77 = call i32 @vfs_hash_ref(%struct.mount* %72, i32 %73, %struct.thread* %74, %struct.vnode** %12, i32 %75, %struct.nfsfh* %76)
  %78 = load %struct.vnode*, %struct.vnode** %12, align 8
  %79 = icmp eq %struct.vnode* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @ENOENT, align 4
  store i32 %81, i32* %15, align 4
  br label %95

82:                                               ; preds = %71
  %83 = load %struct.vnode*, %struct.vnode** %12, align 8
  %84 = getelementptr inbounds %struct.vnode, %struct.vnode* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @VI_DOOMED, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = load i32, i32* @ENOENT, align 4
  store i32 %90, i32* %15, align 4
  %91 = load %struct.vnode*, %struct.vnode** %12, align 8
  %92 = call i32 @vrele(%struct.vnode* %91)
  br label %94

93:                                               ; preds = %82
  store i32 0, i32* %15, align 4
  br label %94

94:                                               ; preds = %93, %89
  br label %95

95:                                               ; preds = %94, %80
  br label %96

96:                                               ; preds = %95, %69
  br label %97

97:                                               ; preds = %96, %61
  br label %98

98:                                               ; preds = %97, %58
  %99 = load %struct.nfsfh*, %struct.nfsfh** %14, align 8
  %100 = load i32, i32* @M_NFSFH, align 4
  %101 = call i32 @free(%struct.nfsfh* %99, i32 %100)
  %102 = load i32, i32* %15, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %6, align 4
  br label %115

106:                                              ; preds = %98
  %107 = load %struct.vnode*, %struct.vnode** %12, align 8
  %108 = icmp ne %struct.vnode* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load %struct.vnode*, %struct.vnode** %12, align 8
  %111 = call %struct.nfsnode* @VTONFS(%struct.vnode* %110)
  %112 = load %struct.nfsnode**, %struct.nfsnode*** %11, align 8
  store %struct.nfsnode* %111, %struct.nfsnode** %112, align 8
  store i32 0, i32* %6, align 4
  br label %115

113:                                              ; preds = %106
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %113, %109, %104, %20
  %116 = load i32, i32* %6, align 4
  ret i32 %116
}

declare dso_local i64 @NFSCL_FORCEDISM(%struct.mount*) #1

declare dso_local %struct.nfsfh* @malloc(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @fnv_32_buf(i32*, i32, i32) #1

declare dso_local i32 @vfs_hash_get(%struct.mount*, i32, i32, %struct.thread*, %struct.vnode**, i32, %struct.nfsfh*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vfs_hash_ref(%struct.mount*, i32, %struct.thread*, %struct.vnode**, i32, %struct.nfsfh*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @free(%struct.nfsfh*, i32) #1

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
