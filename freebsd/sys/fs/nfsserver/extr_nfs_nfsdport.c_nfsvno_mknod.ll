; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_mknod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i64, i32, i32, i64 }
%struct.nfsvattr = type { i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@VCHR = common dso_local global i32 0, align 4
@VBLK = common dso_local global i32 0, align 4
@VSOCK = common dso_local global i32 0, align 4
@VFIFO = common dso_local global i32 0, align 4
@NFSERR_BADTYPE = common dso_local global i32 0, align 4
@PRIV_VFS_MKNOD_DEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_mknod(%struct.nameidata* %0, %struct.nfsvattr* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.nfsvattr*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.nfsvattr*, %struct.nfsvattr** %6, align 8
  %12 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %4
  %19 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @vrele(i64 %21)
  %23 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %24 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %23)
  %25 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vput(i32 %27)
  %29 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @vrele(i64 %31)
  %33 = load i32, i32* @EEXIST, align 4
  store i32 %33, i32* %9, align 4
  br label %131

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @VCHR, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %34
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @VBLK, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @VSOCK, align 4
  %45 = icmp ne i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @VFIFO, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @vrele(i64 %53)
  %55 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %56 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %55)
  %57 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %58 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @vput(i32 %59)
  %61 = load i32, i32* @NFSERR_BADTYPE, align 4
  store i32 %61, i32* %9, align 4
  br label %131

62:                                               ; preds = %46, %42, %38, %34
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* @VSOCK, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %87

66:                                               ; preds = %62
  %67 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @vrele(i64 %69)
  %71 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %75 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %74, i32 0, i32 3
  %76 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %77 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %76, i32 0, i32 2
  %78 = load %struct.nfsvattr*, %struct.nfsvattr** %6, align 8
  %79 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %78, i32 0, i32 1
  %80 = call i32 @VOP_CREATE(i32 %73, i64* %75, i32* %77, i32* %79)
  store i32 %80, i32* %9, align 4
  %81 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %82 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @vput(i32 %83)
  %85 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %86 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %85)
  br label %130

87:                                               ; preds = %62
  %88 = load %struct.nfsvattr*, %struct.nfsvattr** %6, align 8
  %89 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @VFIFO, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %87
  %94 = load %struct.ucred*, %struct.ucred** %7, align 8
  %95 = load i32, i32* @PRIV_VFS_MKNOD_DEV, align 4
  %96 = call i32 @priv_check_cred(%struct.ucred* %94, i32 %95)
  store i32 %96, i32* %9, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %100 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @vrele(i64 %101)
  %103 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %104 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %103)
  %105 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %106 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @vput(i32 %107)
  br label %131

109:                                              ; preds = %93, %87
  %110 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %111 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %114 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %113, i32 0, i32 3
  %115 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %116 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %115, i32 0, i32 2
  %117 = load %struct.nfsvattr*, %struct.nfsvattr** %6, align 8
  %118 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %117, i32 0, i32 1
  %119 = call i32 @VOP_MKNOD(i32 %112, i64* %114, i32* %116, i32* %118)
  store i32 %119, i32* %9, align 4
  %120 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %121 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @vput(i32 %122)
  %124 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %125 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %124)
  %126 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %127 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @vrele(i64 %128)
  br label %130

130:                                              ; preds = %109, %66
  br label %131

131:                                              ; preds = %130, %98, %50, %18
  %132 = load i32, i32* %9, align 4
  %133 = call i32 @NFSEXITCODE(i32 %132)
  %134 = load i32, i32* %9, align 4
  ret i32 %134
}

declare dso_local i32 @vrele(i64) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @vput(i32) #1

declare dso_local i32 @VOP_CREATE(i32, i64*, i32*, i32*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

declare dso_local i32 @VOP_MKNOD(i32, i64*, i32*, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
