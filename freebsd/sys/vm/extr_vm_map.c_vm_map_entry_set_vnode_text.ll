; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_set_vnode_text.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_entry_set_vnode_text.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_11__, %struct.vnode*, %struct.TYPE_12__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.vnode* }
%struct.vnode = type { i32 }

@MAP_ENTRY_VN_EXEC = common dso_local global i32 0, align 4
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Submap with execs\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"No object for text, entry %p\00", align 1
@OBJT_DEAD = common dso_local global i64 0, align 8
@OBJT_VNODE = common dso_local global i64 0, align 8
@OBJT_SWAP = common dso_local global i64 0, align 8
@OBJ_TMPFS_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [73 x i8] c"vm_map_entry_set_vnode_text: swap and !TMPFS entry %p, object %p, add %d\00", align 1
@OBJ_TMPFS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [76 x i8] c"vm_map_entry_set_vnode_text: wrong object type, entry %p, object %p, add %d\00", align 1
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_entry_set_vnode_text(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.vnode*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MAP_ENTRY_VN_EXEC, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %137

15:                                               ; preds = %2
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  store %struct.TYPE_12__* %27, %struct.TYPE_12__** %5, align 8
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %29 = icmp ne %struct.TYPE_12__* %28, null
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %32 = bitcast %struct.TYPE_13__* %31 to i8*
  %33 = call i32 @KASSERT(i32 %30, i8* %32)
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_12__* %34)
  br label %36

36:                                               ; preds = %41, %15
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  store %struct.TYPE_12__* %39, %struct.TYPE_12__** %6, align 8
  %40 = icmp ne %struct.TYPE_12__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %43 = call i32 @VM_OBJECT_RLOCK(%struct.TYPE_12__* %42)
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %45 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_12__* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_12__* %46, %struct.TYPE_12__** %5, align 8
  br label %36

47:                                               ; preds = %36
  store %struct.vnode* null, %struct.vnode** %7, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @OBJT_DEAD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %106

54:                                               ; preds = %47
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @OBJT_VNODE, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 3
  %63 = load %struct.vnode*, %struct.vnode** %62, align 8
  store %struct.vnode* %63, %struct.vnode** %7, align 8
  br label %105

64:                                               ; preds = %54
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @OBJT_SWAP, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %97

70:                                               ; preds = %64
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @OBJ_TMPFS_NODE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = inttoptr i64 %81 to i8*
  %83 = call i32 @KASSERT(i32 %77, i8* %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @OBJ_TMPFS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %70
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = load %struct.vnode*, %struct.vnode** %94, align 8
  store %struct.vnode* %95, %struct.vnode** %7, align 8
  br label %96

96:                                               ; preds = %90, %70
  br label %104

97:                                               ; preds = %64
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @KASSERT(i32 0, i8* %102)
  br label %104

104:                                              ; preds = %97, %96
  br label %105

105:                                              ; preds = %104, %60
  br label %106

106:                                              ; preds = %105, %53
  %107 = load %struct.vnode*, %struct.vnode** %7, align 8
  %108 = icmp ne %struct.vnode* %107, null
  br i1 %108, label %109, label %134

109:                                              ; preds = %106
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %109
  %113 = load %struct.vnode*, %struct.vnode** %7, align 8
  %114 = call i32 @VOP_SET_TEXT_CHECKED(%struct.vnode* %113)
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_12__* %115)
  br label %133

117:                                              ; preds = %109
  %118 = load %struct.vnode*, %struct.vnode** %7, align 8
  %119 = call i32 @vhold(%struct.vnode* %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_12__* %120)
  %122 = load %struct.vnode*, %struct.vnode** %7, align 8
  %123 = load i32, i32* @LK_SHARED, align 4
  %124 = load i32, i32* @LK_RETRY, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @vn_lock(%struct.vnode* %122, i32 %125)
  %127 = load %struct.vnode*, %struct.vnode** %7, align 8
  %128 = call i32 @VOP_UNSET_TEXT_CHECKED(%struct.vnode* %127)
  %129 = load %struct.vnode*, %struct.vnode** %7, align 8
  %130 = call i32 @VOP_UNLOCK(%struct.vnode* %129, i32 0)
  %131 = load %struct.vnode*, %struct.vnode** %7, align 8
  %132 = call i32 @vdrop(%struct.vnode* %131)
  br label %133

133:                                              ; preds = %117, %112
  br label %137

134:                                              ; preds = %106
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = call i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_12__* %135)
  br label %137

137:                                              ; preds = %14, %134, %133
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @VM_OBJECT_RLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @VM_OBJECT_RUNLOCK(%struct.TYPE_12__*) #1

declare dso_local i32 @VOP_SET_TEXT_CHECKED(%struct.vnode*) #1

declare dso_local i32 @vhold(%struct.vnode*) #1

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i32 @VOP_UNSET_TEXT_CHECKED(%struct.vnode*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vdrop(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
