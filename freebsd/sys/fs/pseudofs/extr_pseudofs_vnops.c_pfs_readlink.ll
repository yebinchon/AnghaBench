; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_readlink.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_readlink_args = type { %struct.uio*, %struct.vnode* }
%struct.uio = type { i32 }
%struct.vnode = type { i64, %struct.pfs_vdata* }
%struct.pfs_vdata = type { i64, %struct.pfs_node* }
%struct.pfs_node = type { i32*, i32 }
%struct.proc = type { i32 }
%struct.sbuf = type { i32 }

@PATH_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VLNK = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NO_PID = common dso_local global i64 0, align 8
@P_WEXIT = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_readlink_args*)* @pfs_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_readlink(%struct.vop_readlink_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_readlink_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.sbuf, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vop_readlink_args* %0, %struct.vop_readlink_args** %3, align 8
  %14 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %15 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %14, i32 0, i32 1
  %16 = load %struct.vnode*, %struct.vnode** %15, align 8
  store %struct.vnode* %16, %struct.vnode** %4, align 8
  %17 = load %struct.vnode*, %struct.vnode** %4, align 8
  %18 = getelementptr inbounds %struct.vnode, %struct.vnode* %17, i32 0, i32 1
  %19 = load %struct.pfs_vdata*, %struct.pfs_vdata** %18, align 8
  store %struct.pfs_vdata* %19, %struct.pfs_vdata** %5, align 8
  %20 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %21 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %20, i32 0, i32 1
  %22 = load %struct.pfs_node*, %struct.pfs_node** %21, align 8
  store %struct.pfs_node* %22, %struct.pfs_node** %6, align 8
  %23 = load %struct.vop_readlink_args*, %struct.vop_readlink_args** %3, align 8
  %24 = getelementptr inbounds %struct.vop_readlink_args, %struct.vop_readlink_args* %23, i32 0, i32 0
  %25 = load %struct.uio*, %struct.uio** %24, align 8
  store %struct.uio* %25, %struct.uio** %7, align 8
  store %struct.proc* null, %struct.proc** %8, align 8
  %26 = load i32, i32* @PATH_MAX, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %9, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %10, align 8
  %30 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %31 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @PFS_TRACE(i8* %34)
  %36 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %37 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %36)
  %38 = load %struct.vnode*, %struct.vnode** %4, align 8
  %39 = getelementptr inbounds %struct.vnode, %struct.vnode* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @VLNK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %1
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @PFS_RETURN(i32 %44)
  br label %46

46:                                               ; preds = %43, %1
  %47 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %48 = call i32 @KASSERT_PN_IS_LINK(%struct.pfs_node* %47)
  %49 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %50 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %46
  %54 = load i32, i32* @EIO, align 4
  %55 = call i32 @PFS_RETURN(i32 %54)
  br label %56

56:                                               ; preds = %53, %46
  %57 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %58 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NO_PID, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %56
  %63 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %64 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call %struct.proc* @pfind(i64 %65)
  store %struct.proc* %66, %struct.proc** %8, align 8
  %67 = icmp eq %struct.proc* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %62
  %69 = load i32, i32* @EIO, align 4
  %70 = call i32 @PFS_RETURN(i32 %69)
  br label %71

71:                                               ; preds = %68, %62
  %72 = load %struct.proc*, %struct.proc** %8, align 8
  %73 = getelementptr inbounds %struct.proc, %struct.proc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @P_WEXIT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %71
  %79 = load %struct.proc*, %struct.proc** %8, align 8
  %80 = call i32 @PROC_UNLOCK(%struct.proc* %79)
  %81 = load i32, i32* @EIO, align 4
  %82 = call i32 @PFS_RETURN(i32 %81)
  br label %83

83:                                               ; preds = %78, %71
  %84 = load %struct.proc*, %struct.proc** %8, align 8
  %85 = call i32 @_PHOLD(%struct.proc* %84)
  %86 = load %struct.proc*, %struct.proc** %8, align 8
  %87 = call i32 @PROC_UNLOCK(%struct.proc* %86)
  br label %88

88:                                               ; preds = %83, %56
  %89 = load %struct.vnode*, %struct.vnode** %4, align 8
  %90 = call i32 @vhold(%struct.vnode* %89)
  %91 = load %struct.vnode*, %struct.vnode** %4, align 8
  %92 = call i32 @VOP_ISLOCKED(%struct.vnode* %91)
  store i32 %92, i32* %13, align 4
  %93 = load %struct.vnode*, %struct.vnode** %4, align 8
  %94 = call i32 @VOP_UNLOCK(%struct.vnode* %93, i32 0)
  %95 = trunc i64 %27 to i32
  %96 = call i32 @sbuf_new(%struct.sbuf* %11, i8* %29, i32 %95, i32 0)
  %97 = load i32, i32* @curthread, align 4
  %98 = load %struct.proc*, %struct.proc** %8, align 8
  %99 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %100 = call i32 @pn_fill(i32 %97, %struct.proc* %98, %struct.pfs_node* %99, %struct.sbuf* %11, i32* null)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.proc*, %struct.proc** %8, align 8
  %102 = icmp ne %struct.proc* %101, null
  br i1 %102, label %103, label %106

103:                                              ; preds = %88
  %104 = load %struct.proc*, %struct.proc** %8, align 8
  %105 = call i32 @PRELE(%struct.proc* %104)
  br label %106

106:                                              ; preds = %103, %88
  %107 = load %struct.vnode*, %struct.vnode** %4, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* @LK_RETRY, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @vn_lock(%struct.vnode* %107, i32 %110)
  %112 = load %struct.vnode*, %struct.vnode** %4, align 8
  %113 = call i32 @vdrop(%struct.vnode* %112)
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %106
  %117 = call i32 @sbuf_delete(%struct.sbuf* %11)
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @PFS_RETURN(i32 %118)
  br label %120

120:                                              ; preds = %116, %106
  %121 = call i64 @sbuf_finish(%struct.sbuf* %11)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = call i32 @sbuf_delete(%struct.sbuf* %11)
  %125 = load i32, i32* @ENAMETOOLONG, align 4
  %126 = call i32 @PFS_RETURN(i32 %125)
  br label %127

127:                                              ; preds = %123, %120
  %128 = call i32 @sbuf_data(%struct.sbuf* %11)
  %129 = call i32 @sbuf_len(%struct.sbuf* %11)
  %130 = load %struct.uio*, %struct.uio** %7, align 8
  %131 = call i32 @uiomove_frombuf(i32 %128, i32 %129, %struct.uio* %130)
  store i32 %131, i32* %12, align 4
  %132 = call i32 @sbuf_delete(%struct.sbuf* %11)
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @PFS_RETURN(i32 %133)
  %135 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %135)
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @PFS_TRACE(i8*) #2

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #2

declare dso_local i32 @PFS_RETURN(i32) #2

declare dso_local i32 @KASSERT_PN_IS_LINK(%struct.pfs_node*) #2

declare dso_local %struct.proc* @pfind(i64) #2

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #2

declare dso_local i32 @_PHOLD(%struct.proc*) #2

declare dso_local i32 @vhold(%struct.vnode*) #2

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #2

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #2

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #2

declare dso_local i32 @pn_fill(i32, %struct.proc*, %struct.pfs_node*, %struct.sbuf*, i32*) #2

declare dso_local i32 @PRELE(%struct.proc*) #2

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #2

declare dso_local i32 @vdrop(%struct.vnode*) #2

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #2

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #2

declare dso_local i32 @uiomove_frombuf(i32, i32, %struct.uio*) #2

declare dso_local i32 @sbuf_data(%struct.sbuf*) #2

declare dso_local i32 @sbuf_len(%struct.sbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
