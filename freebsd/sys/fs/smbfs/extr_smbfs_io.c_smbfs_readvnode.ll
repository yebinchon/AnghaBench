; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_readvnode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/smbfs/extr_smbfs_io.c_smbfs_readvnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32 }
%struct.uio = type { i64, i64, i64, %struct.thread* }
%struct.thread = type { i32 }
%struct.ucred = type { i32 }
%struct.smbmount = type { i32 }
%struct.smbnode = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.vattr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.smb_cred = type { i32 }

@UIO_NOCOPY = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"vn types other than VREG or VDIR are unsupported !\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_UPGRADE = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@LK_DOWNGRADE = common dso_local global i32 0, align 4
@NMODIFIED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smbfs_readvnode(%struct.vnode* %0, %struct.uio* %1, %struct.ucred* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.smbmount*, align 8
  %9 = alloca %struct.smbnode*, align 8
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.vattr, align 8
  %12 = alloca %struct.smb_cred*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  %15 = load %struct.vnode*, %struct.vnode** %5, align 8
  %16 = getelementptr inbounds %struct.vnode, %struct.vnode* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.smbmount* @VFSTOSMBFS(i32 %17)
  store %struct.smbmount* %18, %struct.smbmount** %8, align 8
  %19 = load %struct.vnode*, %struct.vnode** %5, align 8
  %20 = call %struct.smbnode* @VTOSMB(%struct.vnode* %19)
  store %struct.smbnode* %20, %struct.smbnode** %9, align 8
  %21 = load %struct.uio*, %struct.uio** %6, align 8
  %22 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @UIO_NOCOPY, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %27, i32* %4, align 4
  br label %167

28:                                               ; preds = %3
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = getelementptr inbounds %struct.vnode, %struct.vnode* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @VREG, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.vnode*, %struct.vnode** %5, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @VDIR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = call i32 @SMBFSERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EIO, align 4
  store i32 %42, i32* %4, align 4
  br label %167

43:                                               ; preds = %34, %28
  %44 = load %struct.uio*, %struct.uio** %6, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %167

49:                                               ; preds = %43
  %50 = load %struct.uio*, %struct.uio** %6, align 8
  %51 = getelementptr inbounds %struct.uio, %struct.uio* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  br label %167

56:                                               ; preds = %49
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %57, i32 0, i32 3
  %59 = load %struct.thread*, %struct.thread** %58, align 8
  store %struct.thread* %59, %struct.thread** %10, align 8
  %60 = load %struct.vnode*, %struct.vnode** %5, align 8
  %61 = getelementptr inbounds %struct.vnode, %struct.vnode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @VDIR, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %56
  %66 = load i32, i32* @LK_EXCLUSIVE, align 4
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @LK_SHARED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %65
  %71 = load %struct.vnode*, %struct.vnode** %5, align 8
  %72 = load i32, i32* @LK_UPGRADE, align 4
  %73 = load i32, i32* @LK_RETRY, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @vn_lock(%struct.vnode* %71, i32 %74)
  br label %76

76:                                               ; preds = %70, %65
  %77 = load %struct.vnode*, %struct.vnode** %5, align 8
  %78 = load %struct.uio*, %struct.uio** %6, align 8
  %79 = load %struct.ucred*, %struct.ucred** %7, align 8
  %80 = call i32 @smbfs_readvdir(%struct.vnode* %77, %struct.uio* %78, %struct.ucred* %79)
  store i32 %80, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @LK_SHARED, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %76
  %85 = load %struct.vnode*, %struct.vnode** %5, align 8
  %86 = load i32, i32* @LK_DOWNGRADE, align 4
  %87 = load i32, i32* @LK_RETRY, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @vn_lock(%struct.vnode* %85, i32 %88)
  br label %90

90:                                               ; preds = %84, %76
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %4, align 4
  br label %167

92:                                               ; preds = %56
  %93 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %94 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @NMODIFIED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = load %struct.vnode*, %struct.vnode** %5, align 8
  %101 = call i32 @smbfs_attr_cacheremove(%struct.vnode* %100)
  %102 = load %struct.vnode*, %struct.vnode** %5, align 8
  %103 = load %struct.ucred*, %struct.ucred** %7, align 8
  %104 = call i32 @VOP_GETATTR(%struct.vnode* %102, %struct.vattr* %11, %struct.ucred* %103)
  store i32 %104, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %99
  %108 = load i32, i32* %13, align 4
  store i32 %108, i32* %4, align 4
  br label %167

109:                                              ; preds = %99
  %110 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %114 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  store i64 %112, i64* %115, align 8
  br label %149

116:                                              ; preds = %92
  %117 = load %struct.vnode*, %struct.vnode** %5, align 8
  %118 = load %struct.ucred*, %struct.ucred** %7, align 8
  %119 = call i32 @VOP_GETATTR(%struct.vnode* %117, %struct.vattr* %11, %struct.ucred* %118)
  store i32 %119, i32* %13, align 4
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %116
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %4, align 4
  br label %167

124:                                              ; preds = %116
  %125 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %126 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %128, %131
  br i1 %132, label %133, label %148

133:                                              ; preds = %124
  %134 = load %struct.vnode*, %struct.vnode** %5, align 8
  %135 = load %struct.thread*, %struct.thread** %10, align 8
  %136 = call i32 @smbfs_vinvalbuf(%struct.vnode* %134, %struct.thread* %135)
  store i32 %136, i32* %13, align 4
  %137 = load i32, i32* %13, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %133
  %140 = load i32, i32* %13, align 4
  store i32 %140, i32* %4, align 4
  br label %167

141:                                              ; preds = %133
  %142 = getelementptr inbounds %struct.vattr, %struct.vattr* %11, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %146 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %145, i32 0, i32 2
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 0
  store i64 %144, i64* %147, align 8
  br label %148

148:                                              ; preds = %141, %124
  br label %149

149:                                              ; preds = %148, %109
  %150 = call %struct.smb_cred* (...) @smbfs_malloc_scred()
  store %struct.smb_cred* %150, %struct.smb_cred** %12, align 8
  %151 = load %struct.smb_cred*, %struct.smb_cred** %12, align 8
  %152 = load %struct.thread*, %struct.thread** %10, align 8
  %153 = load %struct.ucred*, %struct.ucred** %7, align 8
  %154 = call i32 @smb_makescred(%struct.smb_cred* %151, %struct.thread* %152, %struct.ucred* %153)
  %155 = load %struct.smbmount*, %struct.smbmount** %8, align 8
  %156 = getelementptr inbounds %struct.smbmount, %struct.smbmount* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.smbnode*, %struct.smbnode** %9, align 8
  %159 = getelementptr inbounds %struct.smbnode, %struct.smbnode* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.uio*, %struct.uio** %6, align 8
  %162 = load %struct.smb_cred*, %struct.smb_cred** %12, align 8
  %163 = call i32 @smb_read(i32 %157, i32 %160, %struct.uio* %161, %struct.smb_cred* %162)
  store i32 %163, i32* %13, align 4
  %164 = load %struct.smb_cred*, %struct.smb_cred** %12, align 8
  %165 = call i32 @smbfs_free_scred(%struct.smb_cred* %164)
  %166 = load i32, i32* %13, align 4
  store i32 %166, i32* %4, align 4
  br label %167

167:                                              ; preds = %149, %139, %122, %107, %90, %54, %48, %40, %26
  %168 = load i32, i32* %4, align 4
  ret i32 %168
}

declare dso_local %struct.smbmount* @VFSTOSMBFS(i32) #1

declare dso_local %struct.smbnode* @VTOSMB(%struct.vnode*) #1

declare dso_local i32 @SMBFSERR(i8*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @smbfs_readvdir(%struct.vnode*, %struct.uio*, %struct.ucred*) #1

declare dso_local i32 @smbfs_attr_cacheremove(%struct.vnode*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @smbfs_vinvalbuf(%struct.vnode*, %struct.thread*) #1

declare dso_local %struct.smb_cred* @smbfs_malloc_scred(...) #1

declare dso_local i32 @smb_makescred(%struct.smb_cred*, %struct.thread*, %struct.ucred*) #1

declare dso_local i32 @smb_read(i32, i32, %struct.uio*, %struct.smb_cred*) #1

declare dso_local i32 @smbfs_free_scred(%struct.smb_cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
