; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_testexp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_testexp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32 }
%struct.nfsexstuff = type { i32, i64* }

@RPCSEC_GSS_KRB5P = common dso_local global i64 0, align 8
@ND_GSSPRIVACY = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5I = common dso_local global i64 0, align 8
@ND_GSSINTEGRITY = common dso_local global i32 0, align 4
@RPCSEC_GSS_KRB5 = common dso_local global i64 0, align 8
@ND_GSS = common dso_local global i32 0, align 4
@AUTH_SYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_testexp(%struct.nfsrv_descript* %0, %struct.nfsexstuff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca %struct.nfsexstuff*, align 8
  %6 = alloca i32, align 4
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store %struct.nfsexstuff* %1, %struct.nfsexstuff** %5, align 8
  %7 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %8 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %96

12:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %92, %12
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %16 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %95

19:                                               ; preds = %13
  %20 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %21 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %20, i32 0, i32 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RPCSEC_GSS_KRB5P, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %19
  %30 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %31 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ND_GSSPRIVACY, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %96

37:                                               ; preds = %29, %19
  %38 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %39 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %40, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @RPCSEC_GSS_KRB5I, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %49 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @ND_GSSINTEGRITY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %96

55:                                               ; preds = %47, %37
  %56 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %57 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @RPCSEC_GSS_KRB5, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %55
  %66 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %67 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @ND_GSS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %96

73:                                               ; preds = %65, %55
  %74 = load %struct.nfsexstuff*, %struct.nfsexstuff** %5, align 8
  %75 = getelementptr inbounds %struct.nfsexstuff, %struct.nfsexstuff* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @AUTH_SYS, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %85 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @ND_GSS, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  store i32 0, i32* %3, align 4
  br label %96

91:                                               ; preds = %83, %73
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %13

95:                                               ; preds = %13
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %90, %72, %54, %36, %11
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
