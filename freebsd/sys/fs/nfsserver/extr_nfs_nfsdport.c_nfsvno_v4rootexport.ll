; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_v4rootexport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_v4rootexport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32, i32 }
%struct.ucred = type { i32 }

@nfsv4root_mnt = common dso_local global i32 0, align 4
@NFSERR_PROGUNAVAIL = common dso_local global i32 0, align 4
@AUTH_SYS = common dso_local global i32 0, align 4
@ND_EXAUTHSYS = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5 = common dso_local global i32 0, align 4
@ND_EXGSS = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5I = common dso_local global i32 0, align 4
@ND_EXGSSINTEGRITY = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5P = common dso_local global i32 0, align 4
@ND_EXGSSPRIVACY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_v4rootexport(%struct.nfsrv_descript* %0) #0 {
  %2 = alloca %struct.nfsrv_descript*, align 8
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %2, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %2, align 8
  %10 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vfs_stdcheckexp(i32* @nfsv4root_mnt, i32 %11, i32* %4, %struct.ucred** %3, i32* %6, i32** %7)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @NFSERR_PROGUNAVAIL, align 4
  store i32 %16, i32* %5, align 4
  br label %92

17:                                               ; preds = %1
  %18 = load %struct.ucred*, %struct.ucred** %3, align 8
  %19 = icmp ne %struct.ucred* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load %struct.ucred*, %struct.ucred** %3, align 8
  %22 = call i32 @crfree(%struct.ucred* %21)
  br label %23

23:                                               ; preds = %20, %17
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %88, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %91

28:                                               ; preds = %24
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AUTH_SYS, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %28
  %37 = load i32, i32* @ND_EXAUTHSYS, align 4
  %38 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %2, align 8
  %39 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %87

42:                                               ; preds = %28
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @RPCSEC_GSS_KRB5, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* @ND_EXGSS, align 4
  %52 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %2, align 8
  %53 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %86

56:                                               ; preds = %42
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @RPCSEC_GSS_KRB5I, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load i32, i32* @ND_EXGSSINTEGRITY, align 4
  %66 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %2, align 8
  %67 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %85

70:                                               ; preds = %56
  %71 = load i32*, i32** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @RPCSEC_GSS_KRB5P, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load i32, i32* @ND_EXGSSPRIVACY, align 4
  %80 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %2, align 8
  %81 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %70
  br label %85

85:                                               ; preds = %84, %64
  br label %86

86:                                               ; preds = %85, %50
  br label %87

87:                                               ; preds = %86, %36
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %24

91:                                               ; preds = %24
  br label %92

92:                                               ; preds = %91, %15
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @NFSEXITCODE(i32 %93)
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @vfs_stdcheckexp(i32*, i32, i32*, %struct.ucred**, i32*, i32**) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
