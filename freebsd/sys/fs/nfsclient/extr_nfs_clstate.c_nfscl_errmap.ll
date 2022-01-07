; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_errmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_errmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsrv_descript = type { i32, i64 }

@NFSPROC_NOOP = common dso_local global i64 0, align 8
@EBADRPC = common dso_local global i32 0, align 4
@NFSERR_BADXDR = common dso_local global i16 0, align 2
@NFSERR_MINORVERMISMATCH = common dso_local global i32 0, align 4
@NFSERR_OPILLEGAL = common dso_local global i32 0, align 4
@NFSERR_BADIOMODE = common dso_local global i16 0, align 2
@NFSV4_MINORVERSION = common dso_local global i64 0, align 8
@NFSV4OP_CBNOPS = common dso_local global i64 0, align 8
@nfscl_cberrmap = common dso_local global i16** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsrv_descript*, i64)* @nfscl_errmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfscl_errmap(%struct.nfsrv_descript* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsrv_descript*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i16*, align 8
  %7 = alloca i16*, align 8
  store %struct.nfsrv_descript* %0, %struct.nfsrv_descript** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %9 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

13:                                               ; preds = %2
  %14 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %15 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NFSPROC_NOOP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %21 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, 65535
  %24 = trunc i32 %23 to i16
  %25 = call i32 @txdr_unsigned(i16 signext %24)
  store i32 %25, i32* %3, align 4
  br label %121

26:                                               ; preds = %13
  %27 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %28 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @EBADRPC, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i16, i16* @NFSERR_BADXDR, align 2
  %34 = call i32 @txdr_unsigned(i16 signext %33)
  store i32 %34, i32* %3, align 4
  br label %121

35:                                               ; preds = %26
  %36 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %37 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NFSERR_MINORVERMISMATCH, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %43 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @NFSERR_OPILLEGAL, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %53

47:                                               ; preds = %41, %35
  %48 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %49 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = trunc i32 %50 to i16
  %52 = call i32 @txdr_unsigned(i16 signext %51)
  store i32 %52, i32* %3, align 4
  br label %121

53:                                               ; preds = %41
  %54 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %55 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i16, i16* @NFSERR_BADIOMODE, align 2
  %58 = sext i16 %57 to i32
  %59 = icmp sge i32 %56, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %62 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %63, 20000
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @NFSV4_MINORVERSION, align 8
  %68 = icmp sgt i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %71 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = trunc i32 %72 to i16
  %74 = call i32 @txdr_unsigned(i16 signext %73)
  store i32 %74, i32* %3, align 4
  br label %121

75:                                               ; preds = %65, %60, %53
  %76 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %77 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @NFSV4OP_CBNOPS, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i16**, i16*** @nfscl_cberrmap, align 8
  %83 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %84 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds i16*, i16** %82, i64 %85
  %87 = load i16*, i16** %86, align 8
  store i16* %87, i16** %6, align 8
  store i16* %87, i16** %7, align 8
  br label %94

88:                                               ; preds = %75
  %89 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %90 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = trunc i32 %91 to i16
  %93 = call i32 @txdr_unsigned(i16 signext %92)
  store i32 %93, i32* %3, align 4
  br label %121

94:                                               ; preds = %81
  br label %95

95:                                               ; preds = %116, %94
  %96 = load i16*, i16** %7, align 8
  %97 = getelementptr inbounds i16, i16* %96, i32 1
  store i16* %97, i16** %7, align 8
  %98 = load i16, i16* %97, align 2
  %99 = icmp ne i16 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %95
  %101 = load i16*, i16** %7, align 8
  %102 = load i16, i16* %101, align 2
  %103 = sext i16 %102 to i32
  %104 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %105 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = trunc i32 %106 to i16
  %108 = sext i16 %107 to i32
  %109 = icmp eq i32 %103, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %100
  %111 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %4, align 8
  %112 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = trunc i32 %113 to i16
  %115 = call i32 @txdr_unsigned(i16 signext %114)
  store i32 %115, i32* %3, align 4
  br label %121

116:                                              ; preds = %100
  br label %95

117:                                              ; preds = %95
  %118 = load i16*, i16** %6, align 8
  %119 = load i16, i16* %118, align 2
  %120 = call i32 @txdr_unsigned(i16 signext %119)
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %117, %110, %88, %69, %47, %32, %19, %12
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @txdr_unsigned(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
