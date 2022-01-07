; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsv4_sequencelookup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfs/extr_nfs_commonsubs.c_nfsv4_sequencelookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.nfsclsession = type { i64, i32, i32, i32, i32, i64* }

@NFSX_V4SESSIONID = common dso_local global i32 0, align 4
@NFSERR_BADSESSION = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"nfsclseq\00", align 1
@hz = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsv4_sequencelookup(%struct.nfsmount* %0, %struct.nfsclsession* %1, i32* %2, i32* %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsmount*, align 8
  %9 = alloca %struct.nfsclsession*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %8, align 8
  store %struct.nfsclsession* %1, %struct.nfsclsession** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %15, align 4
  %18 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %19 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %18, i32 0, i32 3
  %20 = call i32 @mtx_lock(i32* %19)
  br label %21

21:                                               ; preds = %109, %6
  %22 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %23 = icmp ne %struct.nfsmount* %22, null
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  %25 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %26 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %31 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %13, align 8
  %34 = load i32, i32* @NFSX_V4SESSIONID, align 4
  %35 = call i32 @bcopy(i32 %32, i32* %33, i32 %34)
  %36 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %37 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %36, i32 0, i32 3
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load i32, i32* @NFSERR_BADSESSION, align 4
  store i32 %39, i32* %7, align 4
  br label %145

40:                                               ; preds = %24, %21
  store i32 1, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %41

41:                                               ; preds = %80, %40
  %42 = load i32, i32* %14, align 4
  %43 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %44 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load i32, i32* %17, align 4
  %49 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %50 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %48, %51
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %77

54:                                               ; preds = %47
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %17, align 4
  %57 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %58 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %62 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %61, i32 0, i32 5
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %14, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %66, align 8
  %69 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %70 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %69, i32 0, i32 5
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %12, align 8
  store i64 %75, i64* %76, align 8
  br label %83

77:                                               ; preds = %47
  %78 = load i32, i32* %17, align 4
  %79 = shl i32 %78, 1
  store i32 %79, i32* %17, align 4
  br label %80

80:                                               ; preds = %77
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %41

83:                                               ; preds = %54, %41
  %84 = load i32, i32* %16, align 4
  %85 = icmp eq i32 %84, -1
  br i1 %85, label %86, label %108

86:                                               ; preds = %83
  %87 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %88 = icmp ne %struct.nfsmount* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  %90 = load %struct.nfsmount*, %struct.nfsmount** %8, align 8
  %91 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @NFSCL_FORCEDISM(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %97 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %96, i32 0, i32 3
  %98 = call i32 @mtx_unlock(i32* %97)
  %99 = load i32, i32* @ESTALE, align 4
  store i32 %99, i32* %7, align 4
  br label %145

100:                                              ; preds = %89, %86
  %101 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %102 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %101, i32 0, i32 2
  %103 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %104 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %103, i32 0, i32 3
  %105 = load i32, i32* @PZERO, align 4
  %106 = load i32, i32* @hz, align 4
  %107 = call i32 @mtx_sleep(i32* %102, i32* %104, i32 %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %100, %83
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %16, align 4
  %111 = icmp eq i32 %110, -1
  br i1 %111, label %21, label %112

112:                                              ; preds = %109
  store i32 1, i32* %17, align 4
  store i32 0, i32* %14, align 4
  br label %113

113:                                              ; preds = %128, %112
  %114 = load i32, i32* %14, align 4
  %115 = icmp slt i32 %114, 64
  br i1 %115, label %116, label %131

116:                                              ; preds = %113
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %119 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %116
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %15, align 4
  br label %125

125:                                              ; preds = %123, %116
  %126 = load i32, i32* %17, align 4
  %127 = shl i32 %126, 1
  store i32 %127, i32* %17, align 4
  br label %128

128:                                              ; preds = %125
  %129 = load i32, i32* %14, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %14, align 4
  br label %113

131:                                              ; preds = %113
  %132 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %133 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %132, i32 0, i32 4
  %134 = load i32, i32* %133, align 4
  %135 = load i32*, i32** %13, align 8
  %136 = load i32, i32* @NFSX_V4SESSIONID, align 4
  %137 = call i32 @bcopy(i32 %134, i32* %135, i32 %136)
  %138 = load %struct.nfsclsession*, %struct.nfsclsession** %9, align 8
  %139 = getelementptr inbounds %struct.nfsclsession, %struct.nfsclsession* %138, i32 0, i32 3
  %140 = call i32 @mtx_unlock(i32* %139)
  %141 = load i32, i32* %16, align 4
  %142 = load i32*, i32** %10, align 8
  store i32 %141, i32* %142, align 4
  %143 = load i32, i32* %15, align 4
  %144 = load i32*, i32** %11, align 8
  store i32 %143, i32* %144, align 4
  store i32 0, i32* %7, align 4
  br label %145

145:                                              ; preds = %131, %95, %29
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bcopy(i32, i32*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @NFSCL_FORCEDISM(i32) #1

declare dso_local i32 @mtx_sleep(i32*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
