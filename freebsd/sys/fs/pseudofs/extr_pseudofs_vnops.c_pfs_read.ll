; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/pseudofs/extr_pseudofs_vnops.c_pfs_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vop_read_args = type { %struct.uio*, %struct.vnode* }
%struct.uio = type { i64, i64 }
%struct.vnode = type { i64, %struct.pfs_vdata* }
%struct.pfs_vdata = type { i32, %struct.pfs_node* }
%struct.pfs_node = type { i32, i32*, i32 }
%struct.proc = type { i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VREG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@PFS_RD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@PFS_RAWRD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%zd resid\00", align 1
@OFF_MAX = common dso_local global i64 0, align 8
@MAXPHYS = common dso_local global i64 0, align 8
@LK_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vop_read_args*)* @pfs_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfs_read(%struct.vop_read_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vop_read_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.pfs_vdata*, align 8
  %6 = alloca %struct.pfs_node*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.proc*, align 8
  %9 = alloca %struct.sbuf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.vop_read_args* %0, %struct.vop_read_args** %3, align 8
  %13 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %14 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %13, i32 0, i32 1
  %15 = load %struct.vnode*, %struct.vnode** %14, align 8
  store %struct.vnode* %15, %struct.vnode** %4, align 8
  %16 = load %struct.vnode*, %struct.vnode** %4, align 8
  %17 = getelementptr inbounds %struct.vnode, %struct.vnode* %16, i32 0, i32 1
  %18 = load %struct.pfs_vdata*, %struct.pfs_vdata** %17, align 8
  store %struct.pfs_vdata* %18, %struct.pfs_vdata** %5, align 8
  %19 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %20 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %19, i32 0, i32 1
  %21 = load %struct.pfs_node*, %struct.pfs_node** %20, align 8
  store %struct.pfs_node* %21, %struct.pfs_node** %6, align 8
  %22 = load %struct.vop_read_args*, %struct.vop_read_args** %3, align 8
  %23 = getelementptr inbounds %struct.vop_read_args, %struct.vop_read_args* %22, i32 0, i32 0
  %24 = load %struct.uio*, %struct.uio** %23, align 8
  store %struct.uio* %24, %struct.uio** %7, align 8
  store %struct.sbuf* null, %struct.sbuf** %9, align 8
  %25 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %26 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @PFS_TRACE(i8* %29)
  %31 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %32 = call i32 @pfs_assert_not_owned(%struct.pfs_node* %31)
  %33 = load %struct.vnode*, %struct.vnode** %4, align 8
  %34 = getelementptr inbounds %struct.vnode, %struct.vnode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @VREG, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = load i32, i32* @EINVAL, align 4
  %40 = call i32 @PFS_RETURN(i32 %39)
  br label %41

41:                                               ; preds = %38, %1
  %42 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %43 = call i32 @KASSERT_PN_IS_FILE(%struct.pfs_node* %42)
  %44 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %45 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @PFS_RD, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %41
  %51 = load i32, i32* @EBADF, align 4
  %52 = call i32 @PFS_RETURN(i32 %51)
  br label %53

53:                                               ; preds = %50, %41
  %54 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %55 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  %60 = call i32 @PFS_RETURN(i32 %59)
  br label %61

61:                                               ; preds = %58, %53
  %62 = load i32, i32* @curthread, align 4
  %63 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %64 = load %struct.pfs_vdata*, %struct.pfs_vdata** %5, align 8
  %65 = getelementptr inbounds %struct.pfs_vdata, %struct.pfs_vdata* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @pfs_visible(i32 %62, %struct.pfs_node* %63, i32 %66, %struct.proc** %8)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %61
  %70 = load i32, i32* @EIO, align 4
  %71 = call i32 @PFS_RETURN(i32 %70)
  br label %72

72:                                               ; preds = %69, %61
  %73 = load %struct.proc*, %struct.proc** %8, align 8
  %74 = icmp ne %struct.proc* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %72
  %76 = load %struct.proc*, %struct.proc** %8, align 8
  %77 = call i32 @_PHOLD(%struct.proc* %76)
  %78 = load %struct.proc*, %struct.proc** %8, align 8
  %79 = call i32 @PROC_UNLOCK(%struct.proc* %78)
  br label %80

80:                                               ; preds = %75, %72
  %81 = load %struct.vnode*, %struct.vnode** %4, align 8
  %82 = call i32 @vhold(%struct.vnode* %81)
  %83 = load %struct.vnode*, %struct.vnode** %4, align 8
  %84 = call i32 @VOP_ISLOCKED(%struct.vnode* %83)
  store i32 %84, i32* %11, align 4
  %85 = load %struct.vnode*, %struct.vnode** %4, align 8
  %86 = call i32 @VOP_UNLOCK(%struct.vnode* %85, i32 0)
  %87 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %88 = getelementptr inbounds %struct.pfs_node, %struct.pfs_node* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PFS_RAWRD, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %109

93:                                               ; preds = %80
  %94 = load %struct.uio*, %struct.uio** %7, align 8
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = call i32 @PFS_TRACE(i8* %97)
  %99 = load i32, i32* @curthread, align 4
  %100 = load %struct.proc*, %struct.proc** %8, align 8
  %101 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %102 = load %struct.uio*, %struct.uio** %7, align 8
  %103 = call i32 @pn_fill(i32 %99, %struct.proc* %100, %struct.pfs_node* %101, %struct.sbuf* null, %struct.uio* %102)
  store i32 %103, i32* %10, align 4
  %104 = load %struct.uio*, %struct.uio** %7, align 8
  %105 = getelementptr inbounds %struct.uio, %struct.uio* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = inttoptr i64 %106 to i8*
  %108 = call i32 @PFS_TRACE(i8* %107)
  br label %180

109:                                              ; preds = %80
  %110 = load %struct.uio*, %struct.uio** %7, align 8
  %111 = getelementptr inbounds %struct.uio, %struct.uio* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %129, label %114

114:                                              ; preds = %109
  %115 = load %struct.uio*, %struct.uio** %7, align 8
  %116 = getelementptr inbounds %struct.uio, %struct.uio* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp slt i64 %117, 0
  br i1 %118, label %129, label %119

119:                                              ; preds = %114
  %120 = load %struct.uio*, %struct.uio** %7, align 8
  %121 = getelementptr inbounds %struct.uio, %struct.uio* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @OFF_MAX, align 8
  %124 = load %struct.uio*, %struct.uio** %7, align 8
  %125 = getelementptr inbounds %struct.uio, %struct.uio* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = icmp sgt i64 %122, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %119, %114, %109
  %130 = load i32, i32* @EINVAL, align 4
  store i32 %130, i32* %10, align 4
  br label %180

131:                                              ; preds = %119
  %132 = load %struct.uio*, %struct.uio** %7, align 8
  %133 = getelementptr inbounds %struct.uio, %struct.uio* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.uio*, %struct.uio** %7, align 8
  %136 = getelementptr inbounds %struct.uio, %struct.uio* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %134, %137
  store i64 %138, i64* %12, align 8
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* @MAXPHYS, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %131
  %143 = load i64, i64* @MAXPHYS, align 8
  store i64 %143, i64* %12, align 8
  br label %144

144:                                              ; preds = %142, %131
  %145 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %146 = load i64, i64* %12, align 8
  %147 = add nsw i64 %146, 1
  %148 = call %struct.sbuf* @sbuf_new(%struct.sbuf* %145, i32* null, i64 %147, i32 0)
  store %struct.sbuf* %148, %struct.sbuf** %9, align 8
  %149 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %150 = icmp eq %struct.sbuf* %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %144
  %152 = load i32, i32* @EIO, align 4
  store i32 %152, i32* %10, align 4
  br label %180

153:                                              ; preds = %144
  %154 = load i32, i32* @curthread, align 4
  %155 = load %struct.proc*, %struct.proc** %8, align 8
  %156 = load %struct.pfs_node*, %struct.pfs_node** %6, align 8
  %157 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %158 = load %struct.uio*, %struct.uio** %7, align 8
  %159 = call i32 @pn_fill(i32 %154, %struct.proc* %155, %struct.pfs_node* %156, %struct.sbuf* %157, %struct.uio* %158)
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* %10, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %153
  %163 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %164 = call i32 @sbuf_delete(%struct.sbuf* %163)
  br label %180

165:                                              ; preds = %153
  %166 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %167 = call i64 @sbuf_finish(%struct.sbuf* %166)
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %165
  %170 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %171 = call i64 @sbuf_len(%struct.sbuf* %170)
  store i64 %171, i64* %12, align 8
  br label %172

172:                                              ; preds = %169, %165
  %173 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %174 = call i32 @sbuf_data(%struct.sbuf* %173)
  %175 = load i64, i64* %12, align 8
  %176 = load %struct.uio*, %struct.uio** %7, align 8
  %177 = call i32 @uiomove_frombuf(i32 %174, i64 %175, %struct.uio* %176)
  store i32 %177, i32* %10, align 4
  %178 = load %struct.sbuf*, %struct.sbuf** %9, align 8
  %179 = call i32 @sbuf_delete(%struct.sbuf* %178)
  br label %180

180:                                              ; preds = %172, %162, %151, %129, %93
  %181 = load %struct.vnode*, %struct.vnode** %4, align 8
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* @LK_RETRY, align 4
  %184 = or i32 %182, %183
  %185 = call i32 @vn_lock(%struct.vnode* %181, i32 %184)
  %186 = load %struct.vnode*, %struct.vnode** %4, align 8
  %187 = call i32 @vdrop(%struct.vnode* %186)
  %188 = load %struct.proc*, %struct.proc** %8, align 8
  %189 = icmp ne %struct.proc* %188, null
  br i1 %189, label %190, label %193

190:                                              ; preds = %180
  %191 = load %struct.proc*, %struct.proc** %8, align 8
  %192 = call i32 @PRELE(%struct.proc* %191)
  br label %193

193:                                              ; preds = %190, %180
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @PFS_RETURN(i32 %194)
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @PFS_TRACE(i8*) #1

declare dso_local i32 @pfs_assert_not_owned(%struct.pfs_node*) #1

declare dso_local i32 @PFS_RETURN(i32) #1

declare dso_local i32 @KASSERT_PN_IS_FILE(%struct.pfs_node*) #1

declare dso_local i32 @pfs_visible(i32, %struct.pfs_node*, i32, %struct.proc**) #1

declare dso_local i32 @_PHOLD(%struct.proc*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @VOP_ISLOCKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @pn_fill(i32, %struct.proc*, %struct.pfs_node*, %struct.sbuf*, %struct.uio*) #1

declare dso_local %struct.sbuf* @sbuf_new(%struct.sbuf*, i32*, i64, i32) #1

declare dso_local i32 @sbuf_delete(%struct.sbuf*) #1

declare dso_local i64 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i64 @sbuf_len(%struct.sbuf*) #1

declare dso_local i32 @uiomove_frombuf(i32, i64, %struct.uio*) #1

declare dso_local i32 @sbuf_data(%struct.sbuf*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

declare dso_local i32 @PRELE(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
