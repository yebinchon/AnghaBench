; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_reg_resize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/tmpfs/extr_tmpfs_subr.c_tmpfs_reg_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i64, i32 }
%struct.tmpfs_mount = type { i32 }
%struct.tmpfs_node = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }

@VREG = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@VM_ALLOC_NOCREAT = common dso_local global i32 0, align 4
@VM_ALLOC_NORMAL = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@VM_PAGER_OK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tmpfs_reg_resize(%struct.vnode* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.tmpfs_mount*, align 8
  %9 = alloca %struct.tmpfs_node*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %18 = load %struct.vnode*, %struct.vnode** %5, align 8
  %19 = getelementptr inbounds %struct.vnode, %struct.vnode* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VREG, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @MPASS(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = icmp sge i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @MPASS(i32 %27)
  %29 = load %struct.vnode*, %struct.vnode** %5, align 8
  %30 = call %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode* %29)
  store %struct.tmpfs_node* %30, %struct.tmpfs_node** %9, align 8
  %31 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %32 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %33, align 8
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %10, align 8
  %35 = load %struct.vnode*, %struct.vnode** %5, align 8
  %36 = getelementptr inbounds %struct.vnode, %struct.vnode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call %struct.tmpfs_mount* @VFS_TO_TMPFS(i32 %37)
  store %struct.tmpfs_mount* %38, %struct.tmpfs_mount** %8, align 8
  %39 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %40 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i64 @OFF_TO_IDX(i32 %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %46, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @MPASS(i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @PAGE_MASK, align 4
  %55 = add nsw i32 %53, %54
  %56 = call i64 @OFF_TO_IDX(i32 %55)
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %14, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %3
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %15, align 4
  %63 = icmp sge i32 %61, %62
  br label %64

64:                                               ; preds = %60, %3
  %65 = phi i1 [ false, %3 ], [ %63, %60 ]
  %66 = zext i1 %65 to i32
  %67 = call i64 @__predict_true(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %6, align 4
  %71 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %72 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  store i32 0, i32* %4, align 4
  br label %201

73:                                               ; preds = %64
  %74 = load i64, i64* %13, align 8
  %75 = load i64, i64* %14, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %73
  %78 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %8, align 8
  %79 = load i64, i64* %13, align 8
  %80 = load i64, i64* %14, align 8
  %81 = sub nsw i64 %79, %80
  %82 = call i64 @tmpfs_pages_check_avail(%struct.tmpfs_mount* %78, i64 %81)
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @ENOSPC, align 4
  store i32 %85, i32* %4, align 4
  br label %201

86:                                               ; preds = %77, %73
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_12__* %87)
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* %15, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %186

92:                                               ; preds = %86
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @PAGE_MASK, align 4
  %95 = and i32 %93, %94
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %171

98:                                               ; preds = %92
  %99 = load i32, i32* %6, align 4
  %100 = call i64 @OFF_TO_IDX(i32 %99)
  store i64 %100, i64* %12, align 8
  br label %101

101:                                              ; preds = %126, %98
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i32, i32* @VM_ALLOC_NOCREAT, align 4
  %105 = call i32* @vm_page_grab(%struct.TYPE_12__* %102, i64 %103, i32 %104)
  store i32* %105, i32** %11, align 8
  %106 = load i32*, i32** %11, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %101
  %109 = load i32*, i32** %11, align 8
  %110 = call i32 @vm_page_all_valid(i32* %109)
  %111 = call i32 @MPASS(i32 %110)
  br label %153

112:                                              ; preds = %101
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @vm_pager_has_page(%struct.TYPE_12__* %113, i64 %114, i32* null, i32* null)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %152

117:                                              ; preds = %112
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i32, i32* @VM_ALLOC_NORMAL, align 4
  %121 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %122 = or i32 %120, %121
  %123 = call i32* @vm_page_alloc(%struct.TYPE_12__* %118, i64 %119, i32 %122)
  store i32* %123, i32** %11, align 8
  %124 = load i32*, i32** %11, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %101

127:                                              ; preds = %117
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = call i32 @vm_pager_get_pages(%struct.TYPE_12__* %128, i32** %11, i32 1, i32* null, i32* null)
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = load i32, i32* @VM_PAGER_OK, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %127
  %134 = load i32*, i32** %11, align 8
  %135 = call i32 @vm_page_lock(i32* %134)
  %136 = load i32*, i32** %11, align 8
  %137 = call i32 @vm_page_launder(i32* %136)
  %138 = load i32*, i32** %11, align 8
  %139 = call i32 @vm_page_unlock(i32* %138)
  br label %151

140:                                              ; preds = %127
  %141 = load i32*, i32** %11, align 8
  %142 = call i32 @vm_page_free(i32* %141)
  %143 = load i64, i64* %7, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %140
  store i32* null, i32** %11, align 8
  br label %150

146:                                              ; preds = %140
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %148 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_12__* %147)
  %149 = load i32, i32* @EIO, align 4
  store i32 %149, i32* %4, align 4
  br label %201

150:                                              ; preds = %145
  br label %151

151:                                              ; preds = %150, %133
  br label %152

152:                                              ; preds = %151, %112
  br label %153

153:                                              ; preds = %152, %108
  %154 = load i32*, i32** %11, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load i32*, i32** %11, align 8
  %158 = load i32, i32* %16, align 4
  %159 = load i64, i64* @PAGE_SIZE, align 8
  %160 = load i32, i32* %16, align 4
  %161 = sext i32 %160 to i64
  %162 = sub nsw i64 %159, %161
  %163 = call i32 @pmap_zero_page_area(i32* %157, i32 %158, i64 %162)
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @vm_page_dirty(i32* %164)
  %166 = load i32*, i32** %11, align 8
  %167 = call i32 @vm_page_xunbusy(i32* %166)
  %168 = load i32*, i32** %11, align 8
  %169 = call i32 @vm_pager_page_unswapped(i32* %168)
  br label %170

170:                                              ; preds = %156, %153
  br label %171

171:                                              ; preds = %170, %92
  %172 = load i64, i64* %13, align 8
  %173 = load i64, i64* %14, align 8
  %174 = icmp slt i64 %172, %173
  br i1 %174, label %175, label %185

175:                                              ; preds = %171
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %177 = load i64, i64* %13, align 8
  %178 = load i64, i64* %14, align 8
  %179 = load i64, i64* %13, align 8
  %180 = sub nsw i64 %178, %179
  %181 = call i32 @swap_pager_freespace(%struct.TYPE_12__* %176, i64 %177, i64 %180)
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %183 = load i64, i64* %13, align 8
  %184 = call i32 @vm_object_page_remove(%struct.TYPE_12__* %182, i64 %183, i32 0, i32 0)
  br label %185

185:                                              ; preds = %175, %171
  br label %186

186:                                              ; preds = %185, %86
  %187 = load i64, i64* %13, align 8
  %188 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 0
  store i64 %187, i64* %189, align 8
  %190 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %191 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_12__* %190)
  %192 = load %struct.tmpfs_mount*, %struct.tmpfs_mount** %8, align 8
  %193 = getelementptr inbounds %struct.tmpfs_mount, %struct.tmpfs_mount* %192, i32 0, i32 0
  %194 = load i64, i64* %13, align 8
  %195 = load i64, i64* %14, align 8
  %196 = sub nsw i64 %194, %195
  %197 = call i32 @atomic_add_long(i32* %193, i64 %196)
  %198 = load i32, i32* %6, align 4
  %199 = load %struct.tmpfs_node*, %struct.tmpfs_node** %9, align 8
  %200 = getelementptr inbounds %struct.tmpfs_node, %struct.tmpfs_node* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 8
  store i32 0, i32* %4, align 4
  br label %201

201:                                              ; preds = %186, %146, %84, %69
  %202 = load i32, i32* %4, align 4
  ret i32 %202
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local %struct.tmpfs_node* @VP_TO_TMPFS_NODE(%struct.vnode*) #1

declare dso_local %struct.tmpfs_mount* @VFS_TO_TMPFS(i32) #1

declare dso_local i64 @OFF_TO_IDX(i32) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i64 @tmpfs_pages_check_avail(%struct.tmpfs_mount*, i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_12__*) #1

declare dso_local i32* @vm_page_grab(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @vm_page_all_valid(i32*) #1

declare dso_local i64 @vm_pager_has_page(%struct.TYPE_12__*, i64, i32*, i32*) #1

declare dso_local i32* @vm_page_alloc(%struct.TYPE_12__*, i64, i32) #1

declare dso_local i32 @vm_pager_get_pages(%struct.TYPE_12__*, i32**, i32, i32*, i32*) #1

declare dso_local i32 @vm_page_lock(i32*) #1

declare dso_local i32 @vm_page_launder(i32*) #1

declare dso_local i32 @vm_page_unlock(i32*) #1

declare dso_local i32 @vm_page_free(i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @pmap_zero_page_area(i32*, i32, i64) #1

declare dso_local i32 @vm_page_dirty(i32*) #1

declare dso_local i32 @vm_page_xunbusy(i32*) #1

declare dso_local i32 @vm_pager_page_unswapped(i32*) #1

declare dso_local i32 @swap_pager_freespace(%struct.TYPE_12__*, i64, i64) #1

declare dso_local i32 @vm_object_page_remove(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i32 @atomic_add_long(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
