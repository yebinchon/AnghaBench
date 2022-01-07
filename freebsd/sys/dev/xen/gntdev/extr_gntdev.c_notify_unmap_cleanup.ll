; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_notify_unmap_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_notify_unmap_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gntdev_gmap = type { i32, %struct.gnttab_unmap_grant_ref*, %struct.TYPE_3__*, %struct.TYPE_4__*, i64 }
%struct.gnttab_unmap_grant_ref = type { i32, i32, i32, i32, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i64 }
%struct.TYPE_4__ = type { i64 }

@M_GNTDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@GNTTABOP_unmap_grant_ref = common dso_local global i32 0, align 4
@gntdev_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unable to release memory resource: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gntdev_gmap*)* @notify_unmap_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @notify_unmap_cleanup(%struct.gntdev_gmap* %0) #0 {
  %2 = alloca %struct.gntdev_gmap*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.gnttab_unmap_grant_ref*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.gntdev_gmap* %0, %struct.gntdev_gmap** %2, align 8
  %10 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %11 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 40, %13
  %15 = trunc i64 %14 to i32
  %16 = load i32, i32* @M_GNTDEV, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call %struct.gnttab_unmap_grant_ref* @malloc(i32 %15, i32 %16, i32 %17)
  store %struct.gnttab_unmap_grant_ref* %18, %struct.gnttab_unmap_grant_ref** %7, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %68, %1
  %20 = load i64, i64* %3, align 8
  %21 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %22 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %20, %24
  br i1 %25, label %26, label %71

26:                                               ; preds = %19
  %27 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %28 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load i64, i64* %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %67

35:                                               ; preds = %26
  %36 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %37 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %36, i32 0, i32 2
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = load i64, i64* %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %43, i64 %45
  %47 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %46, i32 0, i32 0
  store i32 %42, i32* %47, align 8
  %48 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %49 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i64, i64* %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %55, i64 %57
  %59 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %58, i32 0, i32 6
  store i64 %54, i64* %59, align 8
  %60 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %61 = load i32, i32* %5, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %60, i64 %62
  %64 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %63, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %35, %26
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %3, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %3, align 8
  br label %19

71:                                               ; preds = %19
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %71
  %75 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %76 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = icmp ne %struct.TYPE_4__* %77, null
  br i1 %78, label %79, label %102

79:                                               ; preds = %74
  %80 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %81 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %86 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = sub nsw i64 %84, %87
  store i64 %88, i64* %9, align 8
  %89 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %90 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %89, i32 0, i32 1
  %91 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %90, align 8
  %92 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* %9, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32* @PHYS_TO_VM_PAGE(i64 %95)
  store i32* %96, i32** %8, align 8
  %97 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %98 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %97, i32 0, i32 3
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = call i32 @notify(%struct.TYPE_4__* %99, i32* %100)
  br label %102

102:                                              ; preds = %79, %74, %71
  %103 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %104 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %103, i32 0, i32 1
  %105 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %104, align 8
  %106 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @VM_OBJECT_WLOCK(i32 %107)
  br label %109

109:                                              ; preds = %133, %102
  store i64 0, i64* %3, align 8
  br label %110

110:                                              ; preds = %142, %109
  %111 = load i64, i64* %3, align 8
  %112 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %113 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = icmp ult i64 %111, %115
  br i1 %116, label %117, label %145

117:                                              ; preds = %110
  %118 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %119 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %118, i32 0, i32 1
  %120 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %119, align 8
  %121 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %3, align 8
  %124 = call i32* @vm_page_lookup(i32 %122, i64 %123)
  store i32* %124, i32** %6, align 8
  %125 = load i32*, i32** %6, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %142

128:                                              ; preds = %117
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %131 = call i64 @vm_page_busy_acquire(i32* %129, i32 %130)
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  br label %109

134:                                              ; preds = %128
  %135 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %136 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %135, i32 0, i32 1
  %137 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %136, align 8
  %138 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = load i32*, i32** %6, align 8
  %141 = call i32 @cdev_pager_free_page(i32 %139, i32* %140)
  br label %142

142:                                              ; preds = %134, %127
  %143 = load i64, i64* %3, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %3, align 8
  br label %110

145:                                              ; preds = %110
  %146 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %147 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %146, i32 0, i32 1
  %148 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %147, align 8
  %149 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @VM_OBJECT_WUNLOCK(i32 %150)
  %152 = load i32, i32* @GNTTABOP_unmap_grant_ref, align 4
  %153 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %154 = load i32, i32* %5, align 4
  %155 = call i32 @HYPERVISOR_grant_table_op(i32 %152, %struct.gnttab_unmap_grant_ref* %153, i32 %154)
  store i32 %155, i32* %4, align 4
  store i64 0, i64* %3, align 8
  br label %156

156:                                              ; preds = %176, %145
  %157 = load i64, i64* %3, align 8
  %158 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %159 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = icmp ult i64 %157, %161
  br i1 %162, label %163, label %179

163:                                              ; preds = %156
  %164 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %165 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %164, i32 0, i32 2
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i64, i64* %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %168, i32 0, i32 0
  store i32 -1, i32* %169, align 8
  %170 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %171 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %170, i32 0, i32 2
  %172 = load %struct.TYPE_3__*, %struct.TYPE_3__** %171, align 8
  %173 = load i64, i64* %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %172, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 1
  store i64 0, i64* %175, align 8
  br label %176

176:                                              ; preds = %163
  %177 = load i64, i64* %3, align 8
  %178 = add i64 %177, 1
  store i64 %178, i64* %3, align 8
  br label %156

179:                                              ; preds = %156
  %180 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %181 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %180, i32 0, i32 1
  %182 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %181, align 8
  %183 = icmp ne %struct.gnttab_unmap_grant_ref* %182, null
  br i1 %183, label %184, label %211

184:                                              ; preds = %179
  %185 = load i32, i32* @gntdev_dev, align 4
  %186 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %187 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %186, i32 0, i32 1
  %188 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %187, align 8
  %189 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %192 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %191, i32 0, i32 1
  %193 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %192, align 8
  %194 = getelementptr inbounds %struct.gnttab_unmap_grant_ref, %struct.gnttab_unmap_grant_ref* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @xenmem_free(i32 %185, i32 %190, i32 %195)
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* %4, align 4
  %198 = icmp eq i32 %197, 0
  %199 = zext i1 %198 to i32
  %200 = load i32, i32* %4, align 4
  %201 = sext i32 %200 to i64
  %202 = inttoptr i64 %201 to i8*
  %203 = call i32 @KASSERT(i32 %199, i8* %202)
  %204 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %205 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %204, i32 0, i32 1
  %206 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %205, align 8
  %207 = load i32, i32* @M_GNTDEV, align 4
  %208 = call i32 @free(%struct.gnttab_unmap_grant_ref* %206, i32 %207)
  %209 = load %struct.gntdev_gmap*, %struct.gntdev_gmap** %2, align 8
  %210 = getelementptr inbounds %struct.gntdev_gmap, %struct.gntdev_gmap* %209, i32 0, i32 1
  store %struct.gnttab_unmap_grant_ref* null, %struct.gnttab_unmap_grant_ref** %210, align 8
  br label %211

211:                                              ; preds = %184, %179
  %212 = load %struct.gnttab_unmap_grant_ref*, %struct.gnttab_unmap_grant_ref** %7, align 8
  %213 = load i32, i32* @M_GNTDEV, align 4
  %214 = call i32 @free(%struct.gnttab_unmap_grant_ref* %212, i32 %213)
  %215 = load i32, i32* %4, align 4
  ret i32 %215
}

declare dso_local %struct.gnttab_unmap_grant_ref* @malloc(i32, i32, i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i64) #1

declare dso_local i32 @notify(%struct.TYPE_4__*, i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32* @vm_page_lookup(i32, i64) #1

declare dso_local i64 @vm_page_busy_acquire(i32*, i32) #1

declare dso_local i32 @cdev_pager_free_page(i32, i32*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @HYPERVISOR_grant_table_op(i32, %struct.gnttab_unmap_grant_ref*, i32) #1

declare dso_local i32 @xenmem_free(i32, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(%struct.gnttab_unmap_grant_ref*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
