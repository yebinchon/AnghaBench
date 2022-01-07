; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_free_prep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_page.c_vm_page_free_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i64, i64, i64, i32* }

@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"vm_page_free_prep: freeing mapped page %p\00", align 1
@PGA_EXECUTABLE = common dso_local global i32 0, align 4
@PGA_WRITEABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"vm_page_free_prep: mapping flags set in page %p\00", align 1
@PQ_NONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [47 x i8] c"vm_page_free_prep: unmanaged page %p is queued\00", align 1
@v_tfree = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"vm_page_free_prep: freeing shared busy page %p\00", align 1
@PG_FICTITIOUS = common dso_local global i32 0, align 4
@VPRC_OBJREF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [55 x i8] c"vm_page_free_prep: page %p has unexpected ref_count %u\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"fictitious page %p is referenced\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"fictitious page %p is queued\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"vm_page_free_prep: page %p has references\00", align 1
@VM_MEMATTR_DEFAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PG_PCPU_CACHE = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@PMAP_HAS_DMAP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_page_free_prep(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %4 = call i32 (...) @atomic_thread_fence_acq()
  %5 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @VPO_UNMANAGED, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = call i32 @pmap_page_is_mapped(%struct.TYPE_15__* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = bitcast %struct.TYPE_15__* %17 to i8*
  %19 = call i32 @KASSERT(i32 %16, i8* %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @PGA_EXECUTABLE, align 4
  %24 = load i32, i32* @PGA_WRITEABLE, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = bitcast %struct.TYPE_15__* %29 to i8*
  %31 = call i32 @KASSERT(i32 %28, i8* %30)
  br label %42

32:                                               ; preds = %1
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PQ_NONE, align 8
  %37 = icmp eq i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = bitcast %struct.TYPE_15__* %39 to i8*
  %41 = call i32 @KASSERT(i32 %38, i8* %40)
  br label %42

42:                                               ; preds = %32, %11
  %43 = load i32, i32* @v_tfree, align 4
  %44 = call i32 @VM_CNT_INC(i32 %43)
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = call i64 @vm_page_sbusied(%struct.TYPE_15__* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %50 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_15__* %49)
  br label %51

51:                                               ; preds = %48, %42
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 6
  %54 = load i32*, i32** %53, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %87

56:                                               ; preds = %51
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %58 = call i32 @vm_page_object_remove(%struct.TYPE_15__* %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PG_FICTITIOUS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %56
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @VPRC_OBJREF, align 8
  %70 = icmp eq i64 %68, %69
  br label %71

71:                                               ; preds = %65, %56
  %72 = phi i1 [ true, %56 ], [ %70, %65 ]
  %73 = zext i1 %72 to i32
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @KASSERT(i32 %73, i8* %78)
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 6
  store i32* null, i32** %81, align 8
  %82 = load i64, i64* @VPRC_OBJREF, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 4
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %85, %82
  store i64 %86, i64* %84, align 8
  br label %87

87:                                               ; preds = %71, %51
  %88 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %89 = call i64 @vm_page_xbusied(%struct.TYPE_15__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = call i32 @vm_page_xunbusy(%struct.TYPE_15__* %92)
  br label %94

94:                                               ; preds = %91, %87
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @PG_FICTITIOUS, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %119

101:                                              ; preds = %94
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 1
  %106 = zext i1 %105 to i32
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %108 = bitcast %struct.TYPE_15__* %107 to i8*
  %109 = call i32 @KASSERT(i32 %106, i8* %108)
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 3
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @PQ_NONE, align 8
  %114 = icmp eq i64 %112, %113
  %115 = zext i1 %114 to i32
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %117 = bitcast %struct.TYPE_15__* %116 to i8*
  %118 = call i32 @KASSERT(i32 %115, i8* %117)
  store i32 0, i32* %2, align 4
  br label %151

119:                                              ; preds = %94
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @VPO_UNMANAGED, align 4
  %124 = and i32 %122, %123
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %119
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = call i32 @vm_page_dequeue_deferred_free(%struct.TYPE_15__* %127)
  br label %129

129:                                              ; preds = %126, %119
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 5
  store i64 0, i64* %131, align 8
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %133 = call i32 @vm_page_undirty(%struct.TYPE_15__* %132)
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %129
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_15__* %139)
  br label %141

141:                                              ; preds = %138, %129
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = call i64 @pmap_page_get_memattr(%struct.TYPE_15__* %142)
  %144 = load i64, i64* @VM_MEMATTR_DEFAULT, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = load i64, i64* @VM_MEMATTR_DEFAULT, align 8
  %149 = call i32 @pmap_page_set_memattr(%struct.TYPE_15__* %147, i64 %148)
  br label %150

150:                                              ; preds = %146, %141
  store i32 1, i32* %2, align 4
  br label %151

151:                                              ; preds = %150, %101
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i32 @atomic_thread_fence_acq(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_page_is_mapped(%struct.TYPE_15__*) #1

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i64 @vm_page_sbusied(%struct.TYPE_15__*) #1

declare dso_local i32 @panic(i8*, %struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_object_remove(%struct.TYPE_15__*) #1

declare dso_local i64 @vm_page_xbusied(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_xunbusy(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_dequeue_deferred_free(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_page_undirty(%struct.TYPE_15__*) #1

declare dso_local i64 @pmap_page_get_memattr(%struct.TYPE_15__*) #1

declare dso_local i32 @pmap_page_set_memattr(%struct.TYPE_15__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
