; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_putpages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/nfsclient/extr_nfs_clbio.c_ncl_putpages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32* }
%struct.vop_putpages_args = type { i32, i32*, i32, %struct.TYPE_3__**, %struct.vnode* }
%struct.TYPE_3__ = type { i32 }
%struct.vnode = type { i64, i32 }
%struct.uio = type { i32, i32, %struct.thread*, i32, i32, i64, %struct.iovec* }
%struct.iovec = type { i32, i32 }
%struct.ucred = type { i32 }
%struct.nfsmount = type { i32, i32, i32 }
%struct.nfsnode = type { i32, i64, i32* }

@curthread = common dso_local global %struct.thread* null, align 8
@NFSMNT_NFSV3 = common dso_local global i32 0, align 4
@NFSSTA_GOTFSINFO = common dso_local global i32 0, align 4
@newnfs_directio_enable = common dso_local global i64 0, align 8
@newnfs_directio_allow_mmap = common dso_local global i32 0, align 4
@NNONCACHE = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"ncl_putpages: called on noncache-able vnode\0A\00", align 1
@VM_PAGER_ERROR = common dso_local global i32 0, align 4
@v_vnodeout = common dso_local global i32 0, align 4
@v_vnodepgsout = common dso_local global i32 0, align 4
@unmapped_buf = common dso_local global i32 0, align 4
@UIO_NOCOPY = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@nfs_keep_dirty_on_error = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncl_putpages(%struct.vop_putpages_args* %0) #0 {
  %2 = alloca %struct.vop_putpages_args*, align 8
  %3 = alloca %struct.uio, align 8
  %4 = alloca %struct.iovec, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.thread*, align 8
  %13 = alloca %struct.ucred*, align 8
  %14 = alloca %struct.nfsmount*, align 8
  %15 = alloca %struct.nfsnode*, align 8
  %16 = alloca %struct.TYPE_3__**, align 8
  store %struct.vop_putpages_args* %0, %struct.vop_putpages_args** %2, align 8
  %17 = load %struct.vop_putpages_args*, %struct.vop_putpages_args** %2, align 8
  %18 = getelementptr inbounds %struct.vop_putpages_args, %struct.vop_putpages_args* %17, i32 0, i32 4
  %19 = load %struct.vnode*, %struct.vnode** %18, align 8
  store %struct.vnode* %19, %struct.vnode** %11, align 8
  %20 = load %struct.vnode*, %struct.vnode** %11, align 8
  %21 = call %struct.nfsnode* @VTONFS(%struct.vnode* %20)
  store %struct.nfsnode* %21, %struct.nfsnode** %15, align 8
  %22 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %22, %struct.thread** %12, align 8
  %23 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %24 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %29 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call %struct.ucred* @crhold(i32* %30)
  store %struct.ucred* %31, %struct.ucred** %13, align 8
  br label %37

32:                                               ; preds = %1
  %33 = load %struct.thread*, %struct.thread** @curthread, align 8
  %34 = getelementptr inbounds %struct.thread, %struct.thread* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call %struct.ucred* @crhold(i32* %35)
  store %struct.ucred* %36, %struct.ucred** %13, align 8
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.vnode*, %struct.vnode** %11, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call %struct.nfsmount* @VFSTONFS(i32 %40)
  store %struct.nfsmount* %41, %struct.nfsmount** %14, align 8
  %42 = load %struct.vop_putpages_args*, %struct.vop_putpages_args** %2, align 8
  %43 = getelementptr inbounds %struct.vop_putpages_args, %struct.vop_putpages_args* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %43, align 8
  store %struct.TYPE_3__** %44, %struct.TYPE_3__*** %16, align 8
  %45 = load %struct.vop_putpages_args*, %struct.vop_putpages_args** %2, align 8
  %46 = getelementptr inbounds %struct.vop_putpages_args, %struct.vop_putpages_args* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %8, align 4
  %48 = load %struct.vop_putpages_args*, %struct.vop_putpages_args** %2, align 8
  %49 = getelementptr inbounds %struct.vop_putpages_args, %struct.vop_putpages_args* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %10, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @btoc(i32 %51)
  store i32 %52, i32* %7, align 4
  %53 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %53, i64 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IDX_TO_OFF(i32 %57)
  store i64 %58, i64* %9, align 8
  %59 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %60 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %59, i32 0, i32 2
  %61 = call i32 @mtx_lock(i32* %60)
  %62 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %63 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NFSMNT_NFSV3, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %84

68:                                               ; preds = %37
  %69 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %70 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @NFSSTA_GOTFSINFO, align 4
  %73 = and i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %77 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %76, i32 0, i32 2
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %80 = load %struct.vnode*, %struct.vnode** %11, align 8
  %81 = load %struct.ucred*, %struct.ucred** %13, align 8
  %82 = load %struct.thread*, %struct.thread** %12, align 8
  %83 = call i32 @ncl_fsinfo(%struct.nfsmount* %79, %struct.vnode* %80, %struct.ucred* %81, %struct.thread* %82)
  br label %88

84:                                               ; preds = %68, %37
  %85 = load %struct.nfsmount*, %struct.nfsmount** %14, align 8
  %86 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %85, i32 0, i32 2
  %87 = call i32 @mtx_unlock(i32* %86)
  br label %88

88:                                               ; preds = %84, %75
  %89 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %90 = call i32 @NFSLOCKNODE(%struct.nfsnode* %89)
  %91 = load i64, i64* @newnfs_directio_enable, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %115

93:                                               ; preds = %88
  %94 = load i32, i32* @newnfs_directio_allow_mmap, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %115, label %96

96:                                               ; preds = %93
  %97 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %98 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @NNONCACHE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %115

103:                                              ; preds = %96
  %104 = load %struct.vnode*, %struct.vnode** %11, align 8
  %105 = getelementptr inbounds %struct.vnode, %struct.vnode* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @VREG, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %103
  %110 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %111 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %110)
  %112 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %113 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %114 = call i32 @NFSLOCKNODE(%struct.nfsnode* %113)
  br label %115

115:                                              ; preds = %109, %103, %96, %93, %88
  %116 = load i64, i64* %9, align 8
  %117 = load i32, i32* %8, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %116, %118
  %120 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %121 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %119, %122
  br i1 %123, label %124, label %135

124:                                              ; preds = %115
  %125 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %126 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* %9, align 8
  %129 = sub nsw i64 %127, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %8, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 0, i32* %8, align 4
  br label %134

134:                                              ; preds = %133, %124
  br label %135

135:                                              ; preds = %134, %115
  %136 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %137 = call i32 @NFSUNLOCKNODE(%struct.nfsnode* %136)
  store i32 0, i32* %5, align 4
  br label %138

138:                                              ; preds = %148, %135
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp slt i32 %139, %140
  br i1 %141, label %142, label %151

142:                                              ; preds = %138
  %143 = load i32, i32* @VM_PAGER_ERROR, align 4
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  store i32 %143, i32* %147, align 4
  br label %148

148:                                              ; preds = %142
  %149 = load i32, i32* %5, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %5, align 4
  br label %138

151:                                              ; preds = %138
  %152 = load i32, i32* @v_vnodeout, align 4
  %153 = call i32 @VM_CNT_INC(i32 %152)
  %154 = load i32, i32* @v_vnodepgsout, align 4
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @VM_CNT_ADD(i32 %154, i32 %155)
  %157 = load i32, i32* @unmapped_buf, align 4
  %158 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i32 0, i32 1
  store i32 %157, i32* %158, align 4
  %159 = load i32, i32* %8, align 4
  %160 = getelementptr inbounds %struct.iovec, %struct.iovec* %4, i32 0, i32 0
  store i32 %159, i32* %160, align 4
  %161 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 6
  store %struct.iovec* %4, %struct.iovec** %161, align 8
  %162 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 0
  store i32 1, i32* %162, align 8
  %163 = load i64, i64* %9, align 8
  %164 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 5
  store i64 %163, i64* %164, align 8
  %165 = load i32, i32* %8, align 4
  %166 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 1
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* @UIO_NOCOPY, align 4
  %168 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 4
  store i32 %167, i32* %168, align 4
  %169 = load i32, i32* @UIO_WRITE, align 4
  %170 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 3
  store i32 %169, i32* %170, align 8
  %171 = load %struct.thread*, %struct.thread** %12, align 8
  %172 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 2
  store %struct.thread* %171, %struct.thread** %172, align 8
  %173 = load %struct.vnode*, %struct.vnode** %11, align 8
  %174 = load %struct.vop_putpages_args*, %struct.vop_putpages_args** %2, align 8
  %175 = getelementptr inbounds %struct.vop_putpages_args, %struct.vop_putpages_args* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @vnode_pager_putpages_ioflags(i32 %176)
  %178 = load %struct.ucred*, %struct.ucred** %13, align 8
  %179 = call i32 @VOP_WRITE(%struct.vnode* %173, %struct.uio* %3, i32 %177, %struct.ucred* %178)
  store i32 %179, i32* %6, align 4
  %180 = load %struct.ucred*, %struct.ucred** %13, align 8
  %181 = call i32 @crfree(%struct.ucred* %180)
  %182 = load i32, i32* %6, align 4
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %187, label %184

184:                                              ; preds = %151
  %185 = load i32, i32* @nfs_keep_dirty_on_error, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %203, label %187

187:                                              ; preds = %184, %151
  %188 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %16, align 8
  %189 = load i32*, i32** %10, align 8
  %190 = load i32, i32* %8, align 4
  %191 = getelementptr inbounds %struct.uio, %struct.uio* %3, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %190, %192
  %194 = load %struct.nfsnode*, %struct.nfsnode** %15, align 8
  %195 = getelementptr inbounds %struct.nfsnode, %struct.nfsnode* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* %9, align 8
  %198 = sub nsw i64 %196, %197
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @PAGE_SIZE, align 4
  %201 = mul nsw i32 %199, %200
  %202 = call i32 @vnode_pager_undirty_pages(%struct.TYPE_3__** %188, i32* %189, i32 %193, i64 %198, i32 %201)
  br label %203

203:                                              ; preds = %187, %184
  %204 = load i32*, i32** %10, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  ret i32 %206
}

declare dso_local %struct.nfsnode* @VTONFS(%struct.vnode*) #1

declare dso_local %struct.ucred* @crhold(i32*) #1

declare dso_local %struct.nfsmount* @VFSTONFS(i32) #1

declare dso_local i32 @btoc(i32) #1

declare dso_local i64 @IDX_TO_OFF(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ncl_fsinfo(%struct.nfsmount*, %struct.vnode*, %struct.ucred*, %struct.thread*) #1

declare dso_local i32 @NFSLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @NFSUNLOCKNODE(%struct.nfsnode*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i32 @VM_CNT_ADD(i32, i32) #1

declare dso_local i32 @VOP_WRITE(%struct.vnode*, %struct.uio*, i32, %struct.ucred*) #1

declare dso_local i32 @vnode_pager_putpages_ioflags(i32) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

declare dso_local i32 @vnode_pager_undirty_pages(%struct.TYPE_3__**, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
