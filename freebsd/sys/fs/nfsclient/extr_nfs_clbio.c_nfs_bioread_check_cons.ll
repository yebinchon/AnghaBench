; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_nfs_bioread_check_cons.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_nfs_bioread_check_cons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.vattr = type { i32 }
%struct.nfsnode = type { i32, i32, i64 }

@NMODIFIED = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"nfs: bioread, not dir\00", align 1
@V_SAVE = common dso_local global i32 0, align 4
@V_ALLOWCLEAN = common dso_local global i32 0, align 4
@NSIZECHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.thread*, %struct.ucred*)* @nfs_bioread_check_cons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_bioread_check_cons(%struct.vnode* %0, %struct.thread* %1, %struct.ucred* %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.ucred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vattr, align 4
  %9 = alloca %struct.nfsnode*, align 8
  %10 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store %struct.thread* %1, %struct.thread** %5, align 8
  store %struct.ucred* %2, %struct.ucred** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load %struct.vnode*, %struct.vnode** %4, align 8
  %12 = call %struct.nfsnode* @VTONFS(%struct.vnode* %11)
  store %struct.nfsnode* %12, %struct.nfsnode** %9, align 8
  %13 = load %struct.vnode*, %struct.vnode** %4, align 8
  %14 = call i32 @ncl_excl_start(%struct.vnode* %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %16 = call i32 @NFSLOCKNODE(%struct.nfsnode* %15)
  %17 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %18 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @NMODIFIED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %72

23:                                               ; preds = %3
  %24 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %25 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %24)
  %26 = load %struct.vnode*, %struct.vnode** %4, align 8
  %27 = getelementptr inbounds %struct.vnode, %struct.vnode* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VREG, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %52

31:                                               ; preds = %23
  %32 = load %struct.vnode*, %struct.vnode** %4, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VDIR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %31
  %40 = load %struct.vnode*, %struct.vnode** %4, align 8
  %41 = call i32 @ncl_invaldir(%struct.vnode* %40)
  %42 = load %struct.vnode*, %struct.vnode** %4, align 8
  %43 = load i32, i32* @V_SAVE, align 4
  %44 = load i32, i32* @V_ALLOWCLEAN, align 4
  %45 = or i32 %43, %44
  %46 = load %struct.thread*, %struct.thread** %5, align 8
  %47 = call i32 @ncl_vinvalbuf(%struct.vnode* %42, i32 %45, %struct.thread* %46, i32 1)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %134

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %23
  %53 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %54 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.vnode*, %struct.vnode** %4, align 8
  %56 = call i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode* %55)
  %57 = load %struct.vnode*, %struct.vnode** %4, align 8
  %58 = load %struct.ucred*, %struct.ucred** %6, align 8
  %59 = call i32 @VOP_GETATTR(%struct.vnode* %57, %struct.vattr* %8, %struct.ucred* %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  br label %134

63:                                               ; preds = %52
  %64 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %65 = call i32 @NFSLOCKNODE(%struct.nfsnode* %64)
  %66 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %69 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %71 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %70)
  br label %133

72:                                               ; preds = %3
  %73 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %74 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %73)
  %75 = load %struct.vnode*, %struct.vnode** %4, align 8
  %76 = load %struct.ucred*, %struct.ucred** %6, align 8
  %77 = call i32 @VOP_GETATTR(%struct.vnode* %75, %struct.vattr* %8, %struct.ucred* %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %134

81:                                               ; preds = %72
  %82 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %83 = call i32 @NFSLOCKNODE(%struct.nfsnode* %82)
  %84 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %85 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @NSIZECHANGED, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %81
  %91 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %92 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %94 = call i64 @NFS_TIMESPEC_COMPARE(i32* %92, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %130

96:                                               ; preds = %90, %81
  %97 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %98 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %97)
  %99 = load %struct.vnode*, %struct.vnode** %4, align 8
  %100 = getelementptr inbounds %struct.vnode, %struct.vnode* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VDIR, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %96
  %105 = load %struct.vnode*, %struct.vnode** %4, align 8
  %106 = call i32 @ncl_invaldir(%struct.vnode* %105)
  br label %107

107:                                              ; preds = %104, %96
  %108 = load %struct.vnode*, %struct.vnode** %4, align 8
  %109 = load i32, i32* @V_SAVE, align 4
  %110 = load i32, i32* @V_ALLOWCLEAN, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.thread*, %struct.thread** %5, align 8
  %113 = call i32 @ncl_vinvalbuf(%struct.vnode* %108, i32 %111, %struct.thread* %112, i32 1)
  store i32 %113, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %134

117:                                              ; preds = %107
  %118 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %119 = call i32 @NFSLOCKNODE(%struct.nfsnode* %118)
  %120 = getelementptr inbounds %struct.vattr, %struct.vattr* %8, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %123 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @NSIZECHANGED, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %127 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = and i32 %128, %125
  store i32 %129, i32* %127, align 8
  br label %130

130:                                              ; preds = %117, %90
  %131 = load %struct.nfsnode*, %struct.nfsnode** %9, align 8
  %132 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %131)
  br label %133

133:                                              ; preds = %130, %63
  br label %134

134:                                              ; preds = %133, %116, %80, %62, %50
  %135 = load %struct.vnode*, %struct.vnode** %4, align 8
  %136 = load i32, i32* %10, align 4
  %137 = call i32 @ncl_excl_finish(%struct.vnode* %135, i32 %136)
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local i32 @ncl_excl_start(%struct.vnode*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ncl_invaldir(%struct.vnode*) #1

declare dso_local i32 @ncl_vinvalbuf(%struct.vnode*, i32, %struct.thread*, i32) #1

declare dso_local i32 @KDTRACE_NFS_ATTRCACHE_FLUSH_DONE(%struct.vnode*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i64 @NFS_TIMESPEC_COMPARE(i32*, i32*) #1

declare dso_local i32 @ncl_excl_finish(%struct.vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
