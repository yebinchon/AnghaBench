; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_trylock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clstate.c_nfscl_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32 }
%struct.nfscllockowner = type { i32 }
%struct.ucred = type { i32 }
%struct.nfsrv_descript = type { i32 }

@NFSERR_DELAY = common dso_local global i32 0, align 4
@PZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"nfstrylck\00", align 1
@EAUTH = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsmount*, i32, i32*, i32, %struct.nfscllockowner*, i32, i32, i32, i32, i16, %struct.ucred*, i32*)* @nfscl_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfscl_trylock(%struct.nfsmount* %0, i32 %1, i32* %2, i32 %3, %struct.nfscllockowner* %4, i32 %5, i32 %6, i32 %7, i32 %8, i16 signext %9, %struct.ucred* %10, i32* %11) #0 {
  %13 = alloca %struct.nfsmount*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfscllockowner*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i16, align 2
  %23 = alloca %struct.ucred*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.nfsrv_descript, align 4
  %26 = alloca %struct.nfsrv_descript*, align 8
  %27 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %13, align 8
  store i32 %1, i32* %14, align 4
  store i32* %2, i32** %15, align 8
  store i32 %3, i32* %16, align 4
  store %struct.nfscllockowner* %4, %struct.nfscllockowner** %17, align 8
  store i32 %5, i32* %18, align 4
  store i32 %6, i32* %19, align 4
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i16 %9, i16* %22, align 2
  store %struct.ucred* %10, %struct.ucred** %23, align 8
  store i32* %11, i32** %24, align 8
  store %struct.nfsrv_descript* %25, %struct.nfsrv_descript** %26, align 8
  br label %28

28:                                               ; preds = %67, %12
  %29 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %30 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %31 = load i32, i32* %14, align 4
  %32 = load i32*, i32** %15, align 8
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.nfscllockowner*, %struct.nfscllockowner** %17, align 8
  %35 = load i32, i32* %18, align 4
  %36 = load i32, i32* %19, align 4
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* %21, align 4
  %39 = load i16, i16* %22, align 2
  %40 = load %struct.ucred*, %struct.ucred** %23, align 8
  %41 = load i32*, i32** %24, align 8
  %42 = call i32 @nfsrpc_lock(%struct.nfsrv_descript* %29, %struct.nfsmount* %30, i32 %31, i32* %32, i32 %33, %struct.nfscllockowner* %34, i32 %35, i32 %36, i32 %37, i32 %38, i16 signext %39, %struct.ucred* %40, i32* %41, i32 0)
  store i32 %42, i32* %27, align 4
  %43 = load i32, i32* %27, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %28
  %46 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %47 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NFSERR_DELAY, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @PZERO, align 4
  %53 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %54 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @nfs_catnap(i32 %52, i32 %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %51, %45, %28
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %27, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %67, label %61

61:                                               ; preds = %58
  %62 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %63 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NFSERR_DELAY, align 4
  %66 = icmp eq i32 %64, %65
  br label %67

67:                                               ; preds = %61, %58
  %68 = phi i1 [ false, %58 ], [ %66, %61 ]
  br i1 %68, label %28, label %69

69:                                               ; preds = %67
  %70 = load i32, i32* %27, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %69
  %73 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %74 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %27, align 4
  br label %76

76:                                               ; preds = %72, %69
  %77 = load i32, i32* %27, align 4
  %78 = load i32, i32* @EAUTH, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %27, align 4
  %82 = load i32, i32* @EACCES, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %136

84:                                               ; preds = %80, %76
  %85 = load %struct.ucred*, %struct.ucred** %23, align 8
  %86 = call i32 @newnfs_setroot(%struct.ucred* %85)
  br label %87

87:                                               ; preds = %126, %84
  %88 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %89 = load %struct.nfsmount*, %struct.nfsmount** %13, align 8
  %90 = load i32, i32* %14, align 4
  %91 = load i32*, i32** %15, align 8
  %92 = load i32, i32* %16, align 4
  %93 = load %struct.nfscllockowner*, %struct.nfscllockowner** %17, align 8
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %19, align 4
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* %21, align 4
  %98 = load i16, i16* %22, align 2
  %99 = load %struct.ucred*, %struct.ucred** %23, align 8
  %100 = load i32*, i32** %24, align 8
  %101 = call i32 @nfsrpc_lock(%struct.nfsrv_descript* %88, %struct.nfsmount* %89, i32 %90, i32* %91, i32 %92, %struct.nfscllockowner* %93, i32 %94, i32 %95, i32 %96, i32 %97, i16 signext %98, %struct.ucred* %99, i32* %100, i32 1)
  store i32 %101, i32* %27, align 4
  %102 = load i32, i32* %27, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %116, label %104

104:                                              ; preds = %87
  %105 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %106 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @NFSERR_DELAY, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %104
  %111 = load i32, i32* @PZERO, align 4
  %112 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %113 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @nfs_catnap(i32 %111, i32 %114, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  br label %116

116:                                              ; preds = %110, %104, %87
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %27, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %117
  %121 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %122 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @NFSERR_DELAY, align 4
  %125 = icmp eq i32 %123, %124
  br label %126

126:                                              ; preds = %120, %117
  %127 = phi i1 [ false, %117 ], [ %125, %120 ]
  br i1 %127, label %87, label %128

128:                                              ; preds = %126
  %129 = load i32, i32* %27, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %128
  %132 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %26, align 8
  %133 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  store i32 %134, i32* %27, align 4
  br label %135

135:                                              ; preds = %131, %128
  br label %136

136:                                              ; preds = %135, %80
  %137 = load i32, i32* %27, align 4
  ret i32 %137
}

declare dso_local i32 @nfsrpc_lock(%struct.nfsrv_descript*, %struct.nfsmount*, i32, i32*, i32, %struct.nfscllockowner*, i32, i32, i32, i32, i16 signext, %struct.ucred*, i32*, i32) #1

declare dso_local i32 @nfs_catnap(i32, i32, i8*) #1

declare dso_local i32 @newnfs_setroot(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
