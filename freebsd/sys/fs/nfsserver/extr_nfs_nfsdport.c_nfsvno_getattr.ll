; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsserver/extr_nfs_nfsdport.c_nfsvno_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.nfsvattr = type { i64, i32, i32, i32, i32 }
%struct.nfsrv_descript = type { i32, i32 }
%struct.thread = type { i32 }

@LK_EXCLUSIVE = common dso_local global i64 0, align 8
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@nfsrv_devidcnt = common dso_local global i64 0, align 8
@ND_NFSV4 = common dso_local global i32 0, align 4
@NFSATTRBIT_CHANGE = common dso_local global i32 0, align 4
@NFSATTRBIT_SIZE = common dso_local global i32 0, align 4
@NFSATTRBIT_TIMEACCESS = common dso_local global i32 0, align 4
@NFSATTRBIT_TIMEMODIFY = common dso_local global i32 0, align 4
@NFSPROC_GETATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"nfsvno_getattr: gotattr=%d err=%d chg=%ju\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsvno_getattr(%struct.vnode* %0, %struct.nfsvattr* %1, %struct.nfsrv_descript* %2, %struct.thread* %3, i32 %4, i32* %5) #0 {
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.nfsvattr*, align 8
  %9 = alloca %struct.nfsrv_descript*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.nfsvattr, align 8
  store %struct.vnode* %0, %struct.vnode** %7, align 8
  store %struct.nfsvattr* %1, %struct.nfsvattr** %8, align 8
  store %struct.nfsrv_descript* %2, %struct.nfsrv_descript** %9, align 8
  store %struct.thread* %3, %struct.thread** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %6
  %20 = load %struct.vnode*, %struct.vnode** %7, align 8
  %21 = call i64 @NFSVOPISLOCKED(%struct.vnode* %20)
  %22 = load i64, i64* @LK_EXCLUSIVE, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  store i32 1, i32* %15, align 4
  %25 = load %struct.vnode*, %struct.vnode** %7, align 8
  %26 = load i32, i32* @LK_SHARED, align 4
  %27 = load i32, i32* @LK_RETRY, align 4
  %28 = or i32 %26, %27
  %29 = call i32 @NFSVOPLOCK(%struct.vnode* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  br label %31

31:                                               ; preds = %30, %6
  store i32 0, i32* %14, align 4
  %32 = load %struct.vnode*, %struct.vnode** %7, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VREG, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %82

37:                                               ; preds = %31
  %38 = load i64, i64* @nfsrv_devidcnt, align 8
  %39 = icmp sgt i64 %38, 0
  br i1 %39, label %40, label %82

40:                                               ; preds = %37
  %41 = load i32*, i32** %12, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %45 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ND_NFSV4, align 4
  %48 = and i32 %46, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %70, label %50

50:                                               ; preds = %43
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @NFSATTRBIT_CHANGE, align 4
  %53 = call i64 @NFSISSET_ATTRBIT(i32* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %50
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* @NFSATTRBIT_SIZE, align 4
  %58 = call i64 @NFSISSET_ATTRBIT(i32* %56, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %55
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* @NFSATTRBIT_TIMEACCESS, align 4
  %63 = call i64 @NFSISSET_ATTRBIT(i32* %61, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @NFSATTRBIT_TIMEMODIFY, align 4
  %68 = call i64 @NFSISSET_ATTRBIT(i32* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %82

70:                                               ; preds = %65, %60, %55, %50, %43, %40
  %71 = load %struct.vnode*, %struct.vnode** %7, align 8
  %72 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %73 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.thread*, %struct.thread** %10, align 8
  %76 = load i32, i32* @NFSPROC_GETATTR, align 4
  %77 = call i32 @nfsrv_proxyds(%struct.vnode* %71, i32 0, i32 0, i32 %74, %struct.thread* %75, i32 %76, i32* null, i32* null, i32* null, %struct.nfsvattr* %16, i32* null)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %81, %65, %37, %31
  %83 = load %struct.vnode*, %struct.vnode** %7, align 8
  %84 = load %struct.nfsvattr*, %struct.nfsvattr** %8, align 8
  %85 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %84, i32 0, i32 4
  %86 = load %struct.nfsrv_descript*, %struct.nfsrv_descript** %9, align 8
  %87 = getelementptr inbounds %struct.nfsrv_descript, %struct.nfsrv_descript* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @VOP_GETATTR(%struct.vnode* %83, i32* %85, i32 %88)
  store i32 %89, i32* %13, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load %struct.vnode*, %struct.vnode** %7, align 8
  %94 = call i32 @NFSVOPUNLOCK(%struct.vnode* %93, i32 0)
  br label %95

95:                                               ; preds = %92, %82
  %96 = load i32, i32* %14, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %95
  %99 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %16, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.nfsvattr*, %struct.nfsvattr** %8, align 8
  %102 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %101, i32 0, i32 3
  store i32 %100, i32* %102, align 8
  %103 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %16, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.nfsvattr*, %struct.nfsvattr** %8, align 8
  %106 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %16, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.nfsvattr*, %struct.nfsvattr** %8, align 8
  %110 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %16, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.nfsvattr*, %struct.nfsvattr** %8, align 8
  %114 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  br label %115

115:                                              ; preds = %98, %95
  %116 = load i32, i32* %14, align 4
  %117 = load i32, i32* %13, align 4
  %118 = getelementptr inbounds %struct.nfsvattr, %struct.nfsvattr* %16, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = call i32 @NFSD_DEBUG(i32 4, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %116, i32 %117, i32 %120)
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @NFSEXITCODE(i32 %122)
  %124 = load i32, i32* %13, align 4
  ret i32 %124
}

declare dso_local i64 @NFSVOPISLOCKED(%struct.vnode*) #1

declare dso_local i32 @NFSVOPLOCK(%struct.vnode*, i32) #1

declare dso_local i64 @NFSISSET_ATTRBIT(i32*, i32) #1

declare dso_local i32 @nfsrv_proxyds(%struct.vnode*, i32, i32, i32, %struct.thread*, i32, i32*, i32*, i32*, %struct.nfsvattr*, i32*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, i32*, i32) #1

declare dso_local i32 @NFSVOPUNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @NFSD_DEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @NFSEXITCODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
