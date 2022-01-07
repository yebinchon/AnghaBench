; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_writevnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_writevnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64 }
%struct.uio = type { i64, i64, %struct.thread* }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.smbmount = type { i32 }
%struct.smbnode = type { i32, i64, i32 }
%struct.smb_cred = type { i32 }

@VREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"vn types other than VREG unsupported !\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"ofs=%jd,resid=%zd\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@IO_SYNC = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"after: ofs=%jd,resid=%zd\0A\00", align 1
@vattr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_writevnode(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.smbmount*, align 8
  %11 = alloca %struct.smbnode*, align 8
  %12 = alloca %struct.smb_cred*, align 8
  %13 = alloca %struct.thread*, align 8
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.vnode*, %struct.vnode** %6, align 8
  %16 = call %struct.smbmount* @VTOSMBFS(%struct.vnode* %15)
  store %struct.smbmount* %16, %struct.smbmount** %10, align 8
  %17 = load %struct.vnode*, %struct.vnode** %6, align 8
  %18 = call %struct.smbnode* @VTOSMB(%struct.vnode* %17)
  store %struct.smbnode* %18, %struct.smbnode** %11, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.vnode*, %struct.vnode** %6, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @VREG, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = call i32 @SMBERROR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EIO, align 4
  store i32 %26, i32* %5, align 4
  br label %145

27:                                               ; preds = %4
  %28 = load %struct.uio*, %struct.uio** %7, align 8
  %29 = getelementptr inbounds %struct.uio, %struct.uio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = load %struct.uio*, %struct.uio** %7, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @SMBVDEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %31, i64 %34)
  %36 = load %struct.uio*, %struct.uio** %7, align 8
  %37 = getelementptr inbounds %struct.uio, %struct.uio* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp slt i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %27
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %5, align 4
  br label %145

42:                                               ; preds = %27
  %43 = load %struct.uio*, %struct.uio** %7, align 8
  %44 = getelementptr inbounds %struct.uio, %struct.uio* %43, i32 0, i32 2
  %45 = load %struct.thread*, %struct.thread** %44, align 8
  store %struct.thread* %45, %struct.thread** %13, align 8
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @IO_APPEND, align 4
  %48 = load i32, i32* @IO_SYNC, align 4
  %49 = or i32 %47, %48
  %50 = and i32 %46, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %82

52:                                               ; preds = %42
  %53 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %54 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @NMODIFIED, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %52
  %60 = load %struct.vnode*, %struct.vnode** %6, align 8
  %61 = call i32 @smbfs_attr_cacheremove(%struct.vnode* %60)
  %62 = load %struct.vnode*, %struct.vnode** %6, align 8
  %63 = load %struct.thread*, %struct.thread** %13, align 8
  %64 = call i32 @smbfs_vinvalbuf(%struct.vnode* %62, %struct.thread* %63)
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* %14, align 4
  store i32 %68, i32* %5, align 4
  br label %145

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %52
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @IO_APPEND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %77 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.uio*, %struct.uio** %7, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %79, i32 0, i32 0
  store i64 %78, i64* %80, align 8
  br label %81

81:                                               ; preds = %75, %70
  br label %82

82:                                               ; preds = %81, %42
  %83 = load %struct.uio*, %struct.uio** %7, align 8
  %84 = getelementptr inbounds %struct.uio, %struct.uio* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 0, i32* %5, align 4
  br label %145

88:                                               ; preds = %82
  %89 = load %struct.vnode*, %struct.vnode** %6, align 8
  %90 = load %struct.uio*, %struct.uio** %7, align 8
  %91 = load %struct.thread*, %struct.thread** %13, align 8
  %92 = call i64 @vn_rlimit_fsize(%struct.vnode* %89, %struct.uio* %90, %struct.thread* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32, i32* @EFBIG, align 4
  store i32 %95, i32* %5, align 4
  br label %145

96:                                               ; preds = %88
  %97 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %97, %struct.smb_cred** %12, align 8
  %98 = load %struct.smb_cred*, %struct.smb_cred** %12, align 8
  %99 = load %struct.thread*, %struct.thread** %13, align 8
  %100 = load %struct.ucred*, %struct.ucred** %8, align 8
  %101 = call i32 @smb_makescred(%struct.smb_cred* %98, %struct.thread* %99, %struct.ucred* %100)
  %102 = load %struct.smbmount*, %struct.smbmount** %10, align 8
  %103 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %106 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.uio*, %struct.uio** %7, align 8
  %109 = load %struct.smb_cred*, %struct.smb_cred** %12, align 8
  %110 = call i32 @smb_write(i32 %104, i32 %107, %struct.uio* %108, %struct.smb_cred* %109)
  store i32 %110, i32* %14, align 4
  %111 = load %struct.smb_cred*, %struct.smb_cred** %12, align 8
  %112 = call i32 @smbfs_free_scred(%struct.smb_cred* %111)
  %113 = load %struct.uio*, %struct.uio** %7, align 8
  %114 = getelementptr inbounds %struct.uio, %struct.uio* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i32
  %117 = load %struct.uio*, %struct.uio** %7, align 8
  %118 = getelementptr inbounds %struct.uio, %struct.uio* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @SMBVDEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %116, i64 %119)
  %121 = load i32, i32* %14, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %143, label %123

123:                                              ; preds = %96
  %124 = load %struct.uio*, %struct.uio** %7, align 8
  %125 = getelementptr inbounds %struct.uio, %struct.uio* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %128 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp sgt i64 %126, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %123
  %132 = load %struct.uio*, %struct.uio** %7, align 8
  %133 = getelementptr inbounds %struct.uio, %struct.uio* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %136 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.vnode*, %struct.vnode** %6, align 8
  %138 = load %struct.smbnode*, %struct.smbnode** %11, align 8
  %139 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = call i32 @vnode_pager_setsize(%struct.vnode* %137, i64 %140)
  br label %142

142:                                              ; preds = %131, %123
  br label %143

143:                                              ; preds = %142, %96
  %144 = load i32, i32* %14, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %94, %87, %67, %40, %24
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local %struct.smbmount* @VTOSMBFS(%struct.vnode*) #1

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @SMBERROR(i8*) #1

declare dso_local i32 @SMBVDEBUG(i8*, i32, i64) #1

declare dso_local i32 @smbfs_attr_cacheremove(%struct.vnode*) #1

declare dso_local i32 @smbfs_vinvalbuf(%struct.vnode*, %struct.thread*) #1

declare dso_local i64 @vn_rlimit_fsize(%struct.vnode*, %struct.uio*, %struct.thread*) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @smb_write(i32, i32, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

declare dso_local i32 @vnode_pager_setsize(%struct.vnode*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
