; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_write_args = type { %struct.uio*, %struct.vnode* }
%struct.uio = type { i32 }
%struct.vnode = type { i64, %struct.pfs_vdata* }
%struct.pfs_vdata = type { i32, %struct.pfs_node* }
%struct.pfs_node = type { i32, i32*, i32 }
%struct.proc = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PFS_WR = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PFS_RAWWR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_write_args*)* @pfs_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_write(%struct.vop_write_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_write_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.sbuf, align 4
  %10 = alloca i32, align 4
  store %struct.vop_write_args* %0, %struct.vop_write_args** %3, align 8
  %11 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %12 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %11, i32 0, i32 1
  %13 = load %struct.vnode*, %struct.vnode** %12, align 8
  store %struct.vnode* %13, %struct.vnode** %4, align 8
  %14 = load %struct.vnode*, %struct.vnode** %4, align 8
  %15 = getelementptr inbounds %struct.vnode, %struct.vnode* %14, i32 0, i32 1
  %16 = load %struct.pfs_vdata*, %struct.pfs_vdata** %15, align 8
  store %struct.pfs_vdata* %16, %struct.pfs_vdata** %5, align 8
  %17 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %18 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %17, i32 0, i32 1
  %19 = load %struct.pfs_node*, %struct.pfs_node** %18, align 8
  store %struct.pfs_node* %19, %struct.pfs_node** %6, align 8
  %20 = load %struct.vop_write_args*, %struct.vop_write_args** %3, align 8
  %21 = getelementptr inbounds %struct.vop_write_args, %struct.vop_write_args* %20, i32 0, i32 0
  %22 = load %struct.uio*, %struct.uio** %21, align 8
  store %struct.uio* %22, %struct.uio** %7, align 8
  %23 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %24 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @PFS_TRACE(i8* %27)
  %29 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %30 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %29)
  %31 = load %struct.vnode*, %struct.vnode** %4, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VREG, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  %38 = call i32 @PFS_RETURN(i32 %37)
  br label %39

39:                                               ; preds = %36, %1
  %40 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %41 = call i32 @KASSERT_PN_IS_FILE(%struct.pfs_node* %40)
  %42 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %43 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PFS_WR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* @EBADF, align 4
  %50 = call i32 @PFS_RETURN(i32 %49)
  br label %51

51:                                               ; preds = %48, %39
  %52 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %53 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EIO, align 4
  %58 = call i32 @PFS_RETURN(i32 %57)
  br label %59

59:                                               ; preds = %56, %51
  %60 = load i32, i32* @curthread, align 4
  %61 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %62 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %63 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @pfs_visible(i32 %60, %struct.pfs_node* %61, i32 %64, %struct.proc** %8)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %59
  %68 = load i32, i32* @EIO, align 4
  %69 = call i32 @PFS_RETURN(i32 %68)
  br label %70

70:                                               ; preds = %67, %59
  %71 = load %struct.proc*, %struct.proc** %8, align 8
  %72 = icmp ne %struct.proc* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %70
  %74 = load %struct.proc*, %struct.proc** %8, align 8
  %75 = call i32 @_PHOLD(%struct.proc* %74)
  %76 = load %struct.proc*, %struct.proc** %8, align 8
  %77 = call i32 @PROC_UNLOCK(%struct.proc* %76)
  br label %78

78:                                               ; preds = %73, %70
  %79 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %80 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @PFS_RAWWR, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %78
  %86 = load i32, i32* @curthread, align 4
  %87 = load %struct.proc*, %struct.proc** %8, align 8
  %88 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %89 = load %struct.uio*, %struct.uio** %7, align 8
  %90 = call i32 @pn_fill(i32 %86, %struct.proc* %87, %struct.pfs_node* %88, %struct.sbuf* null, %struct.uio* %89)
  store i32 %90, i32* %10, align 4
  %91 = load %struct.proc*, %struct.proc** %8, align 8
  %92 = icmp ne %struct.proc* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %85
  %94 = load %struct.proc*, %struct.proc** %8, align 8
  %95 = call i32 @PRELE(%struct.proc* %94)
  br label %96

96:                                               ; preds = %93, %85
  %97 = load i32, i32* %10, align 4
  %98 = call i32 @PFS_RETURN(i32 %97)
  br label %99

99:                                               ; preds = %96, %78
  %100 = load %struct.uio*, %struct.uio** %7, align 8
  %101 = call i32 @sbuf_uionew(%struct.sbuf* %9, %struct.uio* %100, i32* %10)
  %102 = load i32, i32* %10, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.proc*, %struct.proc** %8, align 8
  %106 = icmp ne %struct.proc* %105, null
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.proc*, %struct.proc** %8, align 8
  %109 = call i32 @PRELE(%struct.proc* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @PFS_RETURN(i32 %111)
  br label %113

113:                                              ; preds = %110, %99
  %114 = load i32, i32* @curthread, align 4
  %115 = load %struct.proc*, %struct.proc** %8, align 8
  %116 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %117 = load %struct.uio*, %struct.uio** %7, align 8
  %118 = call i32 @pn_fill(i32 %114, %struct.proc* %115, %struct.pfs_node* %116, %struct.sbuf* %9, %struct.uio* %117)
  store i32 %118, i32* %10, align 4
  %119 = call i32 @sbuf_delete(%struct.sbuf* %9)
  %120 = load %struct.proc*, %struct.proc** %8, align 8
  %121 = icmp ne %struct.proc* %120, null
  br i1 %121, label %122, label %125

122:                                              ; preds = %113
  %123 = load %struct.proc*, %struct.proc** %8, align 8
  %124 = call i32 @PRELE(%struct.proc* %123)
  br label %125

125:                                              ; preds = %122, %113
  %126 = load i32, i32* %10, align 4
  %127 = call i32 @PFS_RETURN(i32 %126)
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local i32 @KASSERT_PN_IS_FILE(%struct.pfs_node*) #1

declare dso_local i32 @pfs_visible(i32, %struct.pfs_node*, i32, %struct.proc**) #1

declare dso_local i32 @_PHOLD(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @pn_fill(i32, %struct.proc*, %struct.pfs_node*, %struct.sbuf*, %struct.uio*) #1

declare dso_local i32 @PRELE(%struct.proc*) #1

declare dso_local i32 @sbuf_uionew(%struct.sbuf*, %struct.uio*, i32*) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
