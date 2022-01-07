; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_symlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i64, i64, i64, i32 }
%struct.nfsvattr = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsexstuff = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_symlink(%struct.nameidata* %0, %struct.nfsvattr* %1, i8* %2, i32 %3, i32 %4, i32 %5, %struct.ucred* %6, %struct.thread* %7, %struct.nfsexstuff* %8) #0 {
  %10 = alloca %struct.nameidata*, align 8
  %11 = alloca %struct.nfsvattr*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ucred*, align 8
  %17 = alloca %struct.thread*, align 8
  %18 = alloca %struct.nfsexstuff*, align 8
  %19 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %10, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store %struct.ucred* %6, %struct.ucred** %16, align 8
  store %struct.thread* %7, %struct.thread** %17, align 8
  store %struct.nfsexstuff* %8, %struct.nfsexstuff** %18, align 8
  store i32 0, i32* %19, align 4
  %20 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %9
  %25 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @vrele(i64 %27)
  %29 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %30 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %29)
  %31 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %32 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %35 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %33, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %24
  %39 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @vrele(i64 %41)
  br label %48

43:                                               ; preds = %24
  %44 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %45 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @vput(i64 %46)
  br label %48

48:                                               ; preds = %43, %38
  %49 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @vrele(i64 %51)
  %53 = load i32, i32* @EEXIST, align 4
  store i32 %53, i32* %19, align 4
  br label %87

54:                                               ; preds = %9
  %55 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %58, i32 0, i32 0
  %60 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %60, i32 0, i32 3
  %62 = load %struct.nfsvattr*, %struct.nfsvattr** %11, align 8
  %63 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %62, i32 0, i32 0
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @VOP_SYMLINK(i64 %57, i64* %59, i32* %61, i32* %63, i8* %64)
  store i32 %65, i32* %19, align 4
  %66 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %67 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @vput(i64 %68)
  %70 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %71 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @vrele(i64 %72)
  %74 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %75 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %74)
  %76 = load i32, i32* %14, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %54
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load %struct.nameidata*, %struct.nameidata** %10, align 8
  %83 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @vput(i64 %84)
  br label %86

86:                                               ; preds = %81, %78, %54
  br label %87

87:                                               ; preds = %86, %48
  %88 = load i32, i32* %19, align 4
  %89 = call i32 @NFSEXITCODE(i32 %88)
  %90 = load i32, i32* %19, align 4
  ret i32 %90
}

declare dso_local i32 @vrele(i64) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @vput(i64) #1

declare dso_local i32 @VOP_SYMLINK(i64, i64*, i32*, i32*, i8*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
