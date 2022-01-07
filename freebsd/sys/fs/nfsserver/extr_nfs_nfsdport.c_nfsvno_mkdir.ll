; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_mkdir.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i64, i64, i32 }
%struct.nfsvattr = type { i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.nfsexstuff = type { i32 }

@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_mkdir(%struct.nameidata* %0, %struct.nfsvattr* %1, i32 %2, %struct.ucred* %3, %struct.thread* %4, %struct.nfsexstuff* %5) #0 {
  %7 = alloca %struct.nameidata*, align 8
  %8 = alloca %struct.nfsvattr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ucred*, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.nfsexstuff*, align 8
  %13 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %7, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.ucred* %3, %struct.ucred** %10, align 8
  store %struct.thread* %4, %struct.thread** %11, align 8
  store %struct.nfsexstuff* %5, %struct.nfsexstuff** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %15 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %45

19:                                               ; preds = %6
  %20 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %24 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %29 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @vrele(i64 %30)
  br label %37

32:                                               ; preds = %19
  %33 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @vput(i64 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @vrele(i64 %40)
  %42 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %43 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %42)
  %44 = load i32, i32* @EEXIST, align 4
  store i32 %44, i32* %13, align 4
  br label %62

45:                                               ; preds = %6
  %46 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %47 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %49, i32 0, i32 1
  %51 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %52 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %51, i32 0, i32 2
  %53 = load %struct.nfsvattr*, %struct.nfsvattr** %8, align 8
  %54 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %53, i32 0, i32 0
  %55 = call i32 @VOP_MKDIR(i64 %48, i64* %50, i32* %52, i32* %54)
  store i32 %55, i32* %13, align 4
  %56 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @vput(i64 %58)
  %60 = load %struct.nameidata*, %struct.nameidata** %7, align 8
  %61 = call i32 @nfsvno_relpathbuf(%struct.nameidata* %60)
  br label %62

62:                                               ; preds = %45, %37
  %63 = load i32, i32* %13, align 4
  %64 = call i32 @NFSEXITCODE(i32 %63)
  %65 = load i32, i32* %13, align 4
  ret i32 %65
}

declare dso_local i32 @vrele(i64) #1

declare dso_local i32 @vput(i64) #1

declare dso_local i32 @nfsvno_relpathbuf(%struct.nameidata*) #1

declare dso_local i32 @VOP_MKDIR(i64, i64*, i32*, i32*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
