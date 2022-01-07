; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.vnode*, %struct.vnode*, i32 }
%struct.vnode = type { i64, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsexstuff = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VI_DOOMED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_link(%struct.nameidata* %0, %struct.vnode* %1, %struct.ucred* %2, %struct.thread* %3, %struct.nfsexstuff* %4) #0 {
  %6 = alloca %struct.nameidata*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.nfsexstuff*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store %struct.thread* %3, %struct.thread** %9, align 8
  store %struct.nfsexstuff* %4, %struct.nfsexstuff** %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %14 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %11, align 8
  %16 = load %struct.vnode*, %struct.vnode** %11, align 8
  %17 = icmp ne %struct.vnode* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @EEXIST, align 4
  store i32 %19, i32* %12, align 4
  br label %34

20:                                               ; preds = %5
  %21 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 1
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  store %struct.vnode* %23, %struct.vnode** %11, align 8
  %24 = load %struct.vnode*, %struct.vnode** %7, align 8
  %25 = getelementptr inbounds %struct.vnode, %struct.vnode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.vnode*, %struct.vnode** %11, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* @EXDEV, align 4
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %20
  br label %34

34:                                               ; preds = %33, %18
  %35 = load i32, i32* %12, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %34
  %38 = load %struct.vnode*, %struct.vnode** %7, align 8
  %39 = load i32, i32* @LK_EXCLUSIVE, align 4
  %40 = load i32, i32* @LK_RETRY, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @NFSVOPLOCK(%struct.vnode* %38, i32 %41)
  %43 = load %struct.vnode*, %struct.vnode** %7, align 8
  %44 = getelementptr inbounds %struct.vnode, %struct.vnode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @VI_DOOMED, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %37
  %50 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %51 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %50, i32 0, i32 1
  %52 = load %struct.vnode*, %struct.vnode** %51, align 8
  %53 = load %struct.vnode*, %struct.vnode** %7, align 8
  %54 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %55 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %54, i32 0, i32 2
  %56 = call i32 @VOP_LINK(%struct.vnode* %52, %struct.vnode* %53, i32* %55)
  store i32 %56, i32* %12, align 4
  br label %59

57:                                               ; preds = %37
  %58 = load i32, i32* @EPERM, align 4
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %57, %49
  %60 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %60, i32 0, i32 1
  %62 = load %struct.vnode*, %struct.vnode** %61, align 8
  %63 = load %struct.vnode*, %struct.vnode** %7, align 8
  %64 = icmp eq %struct.vnode* %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %67 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %66, i32 0, i32 1
  %68 = load %struct.vnode*, %struct.vnode** %67, align 8
  %69 = call i32 @vrele(%struct.vnode* %68)
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %71, i32 0, i32 1
  %73 = load %struct.vnode*, %struct.vnode** %72, align 8
  %74 = call i32 @vput(%struct.vnode* %73)
  br label %75

75:                                               ; preds = %70, %65
  %76 = load %struct.vnode*, %struct.vnode** %7, align 8
  %77 = call i32 @NFSVOPUNLOCK(%struct.vnode* %76, i32 0)
  br label %107

78:                                               ; preds = %34
  %79 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %80 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %79, i32 0, i32 1
  %81 = load %struct.vnode*, %struct.vnode** %80, align 8
  %82 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %82, i32 0, i32 0
  %84 = load %struct.vnode*, %struct.vnode** %83, align 8
  %85 = icmp eq %struct.vnode* %81, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %78
  %87 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %88 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %87, i32 0, i32 1
  %89 = load %struct.vnode*, %struct.vnode** %88, align 8
  %90 = call i32 @vrele(%struct.vnode* %89)
  br label %96

91:                                               ; preds = %78
  %92 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %93 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %92, i32 0, i32 1
  %94 = load %struct.vnode*, %struct.vnode** %93, align 8
  %95 = call i32 @vput(%struct.vnode* %94)
  br label %96

96:                                               ; preds = %91, %86
  %97 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %98 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %97, i32 0, i32 0
  %99 = load %struct.vnode*, %struct.vnode** %98, align 8
  %100 = icmp ne %struct.vnode* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %103 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %102, i32 0, i32 0
  %104 = load %struct.vnode*, %struct.vnode** %103, align 8
  %105 = call i32 @vrele(%struct.vnode* %104)
  br label %106

106:                                              ; preds = %101, %96
  br label %107

107:                                              ; preds = %106, %75
  %108 = load %struct.nameidata*, %struct.nameidata** %6, align 8
  %109 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %108)
  %110 = load i32, i32* %12, align 4
  %111 = call i32 @NFSEXITCODE(i32 %110)
  %112 = load i32, i32* %12, align 4
  ret i32 %112
}

declare dso_local i32 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_LINK(%struct.vnode*, %struct.vnode*, i32*) #1

declare dso_local i32 @vrele(%struct.vnode*) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
