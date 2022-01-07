; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_pageout.c_vm_pageout_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, %struct.vnode* }
%struct.vnode = type { i64, %struct.TYPE_19__*, i32 }
%struct.mount = type { i32 }

@OBJT_VNODE = common dso_local global i64 0, align 8
@VREG = common dso_local global i64 0, align 8
@V_NOWAIT = common dso_local global i32 0, align 4
@EDEADLK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vp %p with NULL v_mount\00", align 1
@LK_SHARED = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@LK_TIMELOCK = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32*)* @vm_pageout_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_pageout_clean(%struct.TYPE_18__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %12 = call i32 @vm_page_assert_locked(%struct.TYPE_18__* %11)
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_19__* %15, %struct.TYPE_19__** %7, align 8
  %16 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %17 = call i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_19__* %16)
  store i32 0, i32* %9, align 4
  store %struct.vnode* null, %struct.vnode** %5, align 8
  store %struct.mount* null, %struct.mount** %6, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @OBJT_VNODE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %123

23:                                               ; preds = %2
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %25 = call i32 @vm_page_unlock(%struct.TYPE_18__* %24)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %27 = call i32 @vm_page_xunbusy(%struct.TYPE_18__* %26)
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 1
  %30 = load %struct.vnode*, %struct.vnode** %29, align 8
  store %struct.vnode* %30, %struct.vnode** %5, align 8
  %31 = load %struct.vnode*, %struct.vnode** %5, align 8
  %32 = getelementptr inbounds %struct.vnode, %struct.vnode* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @VREG, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %23
  %37 = load %struct.vnode*, %struct.vnode** %5, align 8
  %38 = load i32, i32* @V_NOWAIT, align 4
  %39 = call i64 @vn_start_write(%struct.vnode* %37, %struct.mount** %6, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  store %struct.mount* null, %struct.mount** %6, align 8
  %42 = load i32, i32* @EDEADLK, align 4
  store i32 %42, i32* %9, align 4
  br label %143

43:                                               ; preds = %36, %23
  %44 = load %struct.mount*, %struct.mount** %6, align 8
  %45 = icmp ne %struct.mount* %44, null
  %46 = zext i1 %45 to i32
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = bitcast %struct.vnode* %47 to i8*
  %49 = call i32 @KASSERT(i32 %46, i8* %48)
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %51 = call i32 @vm_object_reference_locked(%struct.TYPE_19__* %50)
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %8, align 8
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %56 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__* %55)
  %57 = load %struct.vnode*, %struct.vnode** %5, align 8
  %58 = getelementptr inbounds %struct.vnode, %struct.vnode* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @MNT_SHARED_WRITES(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %43
  %63 = load i32, i32* @LK_SHARED, align 4
  br label %66

64:                                               ; preds = %43
  %65 = load i32, i32* @LK_EXCLUSIVE, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = phi i32 [ %63, %62 ], [ %65, %64 ]
  store i32 %67, i32* %10, align 4
  %68 = load %struct.vnode*, %struct.vnode** %5, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @LK_TIMELOCK, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @curthread, align 4
  %73 = call i64 @vget(%struct.vnode* %68, i32 %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %66
  store %struct.vnode* null, %struct.vnode** %5, align 8
  %76 = load i32, i32* @EDEADLK, align 4
  store i32 %76, i32* %9, align 4
  br label %146

77:                                               ; preds = %66
  %78 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %79 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__* %78)
  %80 = load %struct.vnode*, %struct.vnode** %5, align 8
  %81 = getelementptr inbounds %struct.vnode, %struct.vnode* %80, i32 0, i32 1
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %81, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %84 = icmp ne %struct.TYPE_19__* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %77
  %86 = load i32, i32* @ENOENT, align 4
  store i32 %86, i32* %9, align 4
  br label %143

87:                                               ; preds = %77
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %89 = call i32 @vm_page_lock(%struct.TYPE_18__* %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %91 = call i32 @vm_page_in_laundry(%struct.TYPE_18__* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %87
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 2
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %95, align 8
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %98 = icmp ne %struct.TYPE_19__* %96, %97
  br i1 %98, label %110, label %99

99:                                               ; preds = %93
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* %8, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %110, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105, %99, %93, %87
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %112 = call i32 @vm_page_unlock(%struct.TYPE_18__* %111)
  %113 = load i32, i32* @ENXIO, align 4
  store i32 %113, i32* %9, align 4
  br label %143

114:                                              ; preds = %105
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %116 = call i64 @vm_page_tryxbusy(%struct.TYPE_18__* %115)
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %114
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %120 = call i32 @vm_page_unlock(%struct.TYPE_18__* %119)
  %121 = load i32, i32* @EBUSY, align 4
  store i32 %121, i32* %9, align 4
  br label %143

122:                                              ; preds = %114
  br label %123

123:                                              ; preds = %122, %2
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %125 = call i32 @vm_page_try_remove_write(%struct.TYPE_18__* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %133, label %127

127:                                              ; preds = %123
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %129 = call i32 @vm_page_xunbusy(%struct.TYPE_18__* %128)
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %131 = call i32 @vm_page_unlock(%struct.TYPE_18__* %130)
  %132 = load i32, i32* @EBUSY, align 4
  store i32 %132, i32* %9, align 4
  br label %143

133:                                              ; preds = %123
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %135 = call i32 @vm_page_unlock(%struct.TYPE_18__* %134)
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %137 = call i32 @vm_pageout_cluster(%struct.TYPE_18__* %136)
  %138 = load i32*, i32** %4, align 8
  store i32 %137, i32* %138, align 4
  %139 = icmp eq i32 %137, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %133
  %141 = load i32, i32* @EIO, align 4
  store i32 %141, i32* %9, align 4
  br label %142

142:                                              ; preds = %140, %133
  br label %143

143:                                              ; preds = %142, %127, %118, %110, %85, %41
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %145 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__* %144)
  br label %146

146:                                              ; preds = %143, %75
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %148 = load i32, i32* @MA_NOTOWNED, align 4
  %149 = call i32 @vm_page_lock_assert(%struct.TYPE_18__* %147, i32 %148)
  %150 = load %struct.mount*, %struct.mount** %6, align 8
  %151 = icmp ne %struct.mount* %150, null
  br i1 %151, label %152, label %163

152:                                              ; preds = %146
  %153 = load %struct.vnode*, %struct.vnode** %5, align 8
  %154 = icmp ne %struct.vnode* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %152
  %156 = load %struct.vnode*, %struct.vnode** %5, align 8
  %157 = call i32 @vput(%struct.vnode* %156)
  br label %158

158:                                              ; preds = %155, %152
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %160 = call i32 @vm_object_deallocate(%struct.TYPE_19__* %159)
  %161 = load %struct.mount*, %struct.mount** %6, align 8
  %162 = call i32 @vn_finished_write(%struct.mount* %161)
  br label %163

163:                                              ; preds = %158, %146
  %164 = load i32, i32* %9, align 4
  ret i32 %164
}

declare dso_local i32 @vm_page_assert_locked(%struct.TYPE_18__*) #1

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_unlock(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_18__*) #1

declare dso_local i64 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_object_reference_locked(%struct.TYPE_19__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_19__*) #1

declare dso_local i64 @MNT_SHARED_WRITES(i32) #1

declare dso_local i64 @vget(%struct.vnode*, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_19__*) #1

declare dso_local i32 @vm_page_lock(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_page_in_laundry(%struct.TYPE_18__*) #1

declare dso_local i64 @vm_page_tryxbusy(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_page_try_remove_write(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_pageout_cluster(%struct.TYPE_18__*) #1

declare dso_local i32 @vm_page_lock_assert(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @vput(%struct.vnode*) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_19__*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
