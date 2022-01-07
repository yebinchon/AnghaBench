; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_fhtovp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_fhtovp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i32 }
%struct.vnode = type { i32 }
%struct.nfsexstuff = type { i32, i32*, i64 }
%struct.ucred = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@nfs_rootfhset = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_fhtovp(%struct.mount* %0, %struct.TYPE_3__* %1, %struct.sockaddr* %2, i32 %3, %struct.vnode** %4, %struct.nfsexstuff* %5, %struct.ucred** %6) #0 {
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca %struct.sockaddr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode**, align 8
  %13 = alloca %struct.nfsexstuff*, align 8
  %14 = alloca %struct.ucred**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  store %struct.mount* %0, %struct.mount** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.vnode** %4, %struct.vnode*** %12, align 8
  store %struct.nfsexstuff* %5, %struct.nfsexstuff** %13, align 8
  store %struct.ucred** %6, %struct.ucred*** %14, align 8
  %18 = load %struct.ucred**, %struct.ucred*** %14, align 8
  store %struct.ucred* null, %struct.ucred** %18, align 8
  %19 = load %struct.nfsexstuff*, %struct.nfsexstuff** %13, align 8
  %20 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.mount*, %struct.mount** %8, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %11, align 4
  %25 = load %struct.vnode**, %struct.vnode*** %12, align 8
  %26 = call i32 @VFS_FHTOVP(%struct.mount* %21, i32* %23, i32 %24, %struct.vnode** %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %16, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %7
  %30 = load i32, i32* @ESTALE, align 4
  store i32 %30, i32* %16, align 4
  br label %31

31:                                               ; preds = %29, %7
  %32 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %33 = icmp ne %struct.sockaddr* %32, null
  br i1 %33, label %34, label %85

34:                                               ; preds = %31
  %35 = load i32, i32* %16, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %85, label %37

37:                                               ; preds = %34
  %38 = load %struct.mount*, %struct.mount** %8, align 8
  %39 = load %struct.sockaddr*, %struct.sockaddr** %10, align 8
  %40 = load %struct.nfsexstuff*, %struct.nfsexstuff** %13, align 8
  %41 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %40, i32 0, i32 2
  %42 = load %struct.ucred**, %struct.ucred*** %14, align 8
  %43 = load %struct.nfsexstuff*, %struct.nfsexstuff** %13, align 8
  %44 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %43, i32 0, i32 0
  %45 = call i32 @VFS_CHECKEXP(%struct.mount* %38, %struct.sockaddr* %39, i64* %41, %struct.ucred** %42, i32* %44, i32** %17)
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %37
  %49 = load i64, i64* @nfs_rootfhset, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  %52 = load %struct.nfsexstuff*, %struct.nfsexstuff** %13, align 8
  %53 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %52, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = load %struct.nfsexstuff*, %struct.nfsexstuff** %13, align 8
  %55 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  store i32 0, i32* %16, align 4
  br label %60

56:                                               ; preds = %48
  %57 = load %struct.vnode**, %struct.vnode*** %12, align 8
  %58 = load %struct.vnode*, %struct.vnode** %57, align 8
  %59 = call i32 @vput(%struct.vnode* %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %84

61:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %80, %61
  %63 = load i32, i32* %15, align 4
  %64 = load %struct.nfsexstuff*, %struct.nfsexstuff** %13, align 8
  %65 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %83

68:                                               ; preds = %62
  %69 = load i32*, i32** %17, align 8
  %70 = load i32, i32* %15, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.nfsexstuff*, %struct.nfsexstuff** %13, align 8
  %75 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %15, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  store i32 %73, i32* %79, align 4
  br label %80

80:                                               ; preds = %68
  %81 = load i32, i32* %15, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  br label %62

83:                                               ; preds = %62
  br label %84

84:                                               ; preds = %83, %60
  br label %85

85:                                               ; preds = %84, %34, %31
  %86 = load i32, i32* %16, align 4
  %87 = call i32 @NFSEXITCODE(i32 %86)
  %88 = load i32, i32* %16, align 4
  ret i32 %88
}

declare dso_local i32 @VFS_FHTOVP(%struct.mount*, i32*, i32, %struct.vnode**) #1

declare dso_local i32 @VFS_CHECKEXP(%struct.mount*, %struct.sockaddr*, i64*, %struct.ucred**, i32*, i32**) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
