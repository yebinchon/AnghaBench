; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_free_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_phys.c_vm_phys_free_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_phys_seg = type { i32, i32, %struct.vm_freelist***, %struct.TYPE_7__*, i32 }
%struct.vm_freelist = type { i32 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@VM_NFREEORDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"vm_phys_free_pages: page %p has unexpected order %d\00", align 1
@VM_NFREEPOOL = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"vm_phys_free_pages: page %p has unexpected pool %d\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"vm_phys_free_pages: order %d is out of range\00", align 1
@vm_phys_segs = common dso_local global %struct.vm_phys_seg* null, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_phys_free_pages(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_freelist*, align 8
  %6 = alloca %struct.vm_phys_seg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VM_NFREEORDER, align 4
  %13 = icmp eq i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @KASSERT(i32 %14, i8* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @VM_NFREEPOOL, align 8
  %26 = icmp ult i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %27, i8* %32)
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @VM_NFREEORDER, align 4
  %36 = icmp slt i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %37, i8* %40)
  %42 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** @vm_phys_segs, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %42, i64 %45
  store %struct.vm_phys_seg* %46, %struct.vm_phys_seg** %6, align 8
  %47 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %48 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @VM_DOMAIN(i32 %49)
  %51 = call i32 @vm_domain_free_assert_locked(i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @VM_NFREEORDER, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp slt i32 %52, %54
  br i1 %55, label %56, label %150

56:                                               ; preds = %2
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = call i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__* %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %144, %56
  %60 = load i32, i32* @PAGE_SHIFT, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  %63 = shl i32 1, %62
  %64 = load i32, i32* %7, align 4
  %65 = xor i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %68 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %66, %69
  br i1 %70, label %77, label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %7, align 4
  %73 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %74 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71, %59
  br label %149

78:                                               ; preds = %71
  %79 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %80 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %79, i32 0, i32 3
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %84 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %82, %85
  %87 = call i64 @atop(i32 %86)
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %87
  store %struct.TYPE_7__* %88, %struct.TYPE_7__** %8, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %78
  br label %149

95:                                               ; preds = %78
  %96 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %97 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %96, i32 0, i32 2
  %98 = load %struct.vm_freelist***, %struct.vm_freelist**** %97, align 8
  %99 = load %struct.vm_freelist**, %struct.vm_freelist*** %98, align 8
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %99, i64 %102
  %104 = load %struct.vm_freelist*, %struct.vm_freelist** %103, align 8
  store %struct.vm_freelist* %104, %struct.vm_freelist** %5, align 8
  %105 = load %struct.vm_freelist*, %struct.vm_freelist** %5, align 8
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @vm_freelist_rem(%struct.vm_freelist* %105, %struct.TYPE_7__* %106, i32 %107)
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %111, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %95
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %121 = load i32, i32* %4, align 4
  %122 = call i32 @vm_phys_set_pool(i64 %119, %struct.TYPE_7__* %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %95
  %124 = load i32, i32* %4, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* @PAGE_SHIFT, align 4
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %126, %127
  %129 = shl i32 1, %128
  %130 = sub nsw i32 %129, 1
  %131 = xor i32 %130, -1
  %132 = load i32, i32* %7, align 4
  %133 = and i32 %132, %131
  store i32 %133, i32* %7, align 4
  %134 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %135 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %134, i32 0, i32 3
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %139 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  %142 = call i64 @atop(i32 %141)
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %142
  store %struct.TYPE_7__* %143, %struct.TYPE_7__** %3, align 8
  br label %144

144:                                              ; preds = %123
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* @VM_NFREEORDER, align 4
  %147 = sub nsw i32 %146, 1
  %148 = icmp slt i32 %145, %147
  br i1 %148, label %59, label %149

149:                                              ; preds = %144, %94, %77
  br label %150

150:                                              ; preds = %149, %2
  %151 = load %struct.vm_phys_seg*, %struct.vm_phys_seg** %6, align 8
  %152 = getelementptr inbounds %struct.vm_phys_seg, %struct.vm_phys_seg* %151, i32 0, i32 2
  %153 = load %struct.vm_freelist***, %struct.vm_freelist**** %152, align 8
  %154 = load %struct.vm_freelist**, %struct.vm_freelist*** %153, align 8
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.vm_freelist*, %struct.vm_freelist** %154, i64 %157
  %159 = load %struct.vm_freelist*, %struct.vm_freelist** %158, align 8
  store %struct.vm_freelist* %159, %struct.vm_freelist** %5, align 8
  %160 = load %struct.vm_freelist*, %struct.vm_freelist** %5, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %162 = load i32, i32* %4, align 4
  %163 = call i32 @vm_freelist_add(%struct.vm_freelist* %160, %struct.TYPE_7__* %161, i32 %162, i32 1)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_domain_free_assert_locked(i32) #1

declare dso_local i32 @VM_DOMAIN(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(%struct.TYPE_7__*) #1

declare dso_local i64 @atop(i32) #1

declare dso_local i32 @vm_freelist_rem(%struct.vm_freelist*, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @vm_phys_set_pool(i64, %struct.TYPE_7__*, i32) #1

declare dso_local i32 @vm_freelist_add(%struct.vm_freelist*, %struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
