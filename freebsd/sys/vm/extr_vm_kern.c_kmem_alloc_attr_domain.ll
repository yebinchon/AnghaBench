; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_alloc_attr_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_alloc_attr_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32, i32 }

@kernel_object = common dso_local global i32 0, align 4
@vm_dom = common dso_local global %struct.TYPE_8__* null, align 8
@M_BESTFIT = common dso_local global i32 0, align 4
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@M_EXEC = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"kmem_alloc_attr_domain: Domain mismatch %d != %d\00", align 1
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i32, i32, i32)* @kmem_alloc_attr_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kmem_alloc_attr_domain(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_7__*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %23 = load i32, i32* @kernel_object, align 4
  store i32 %23, i32* %15, align 4
  %24 = load i64, i64* %9, align 8
  %25 = call i64 @round_page(i64 %24)
  store i64 %25, i64* %9, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vm_dom, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %14, align 8
  %32 = load i32*, i32** %14, align 8
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @M_BESTFIT, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %34, %35
  %37 = call i64 @vmem_alloc(i32* %32, i64 %33, i32 %36, i64* %16)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %182

40:                                               ; preds = %6
  %41 = load i64, i64* %16, align 8
  %42 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %43 = sub nsw i64 %41, %42
  store i64 %43, i64* %18, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @malloc2vm_flags(i32 %44)
  %46 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %20, align 4
  %50 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %51 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %20, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %20, align 4
  %58 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %59 = load i32, i32* %20, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %20, align 4
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @M_EXEC, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %40
  %66 = load i32, i32* @VM_PROT_ALL, align 4
  br label %69

67:                                               ; preds = %40
  %68 = load i32, i32* @VM_PROT_RW, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %22, align 4
  %71 = load i32, i32* %15, align 4
  %72 = call i32 @VM_OBJECT_WLOCK(i32 %71)
  store i64 0, i64* %17, align 8
  br label %73

73:                                               ; preds = %174, %69
  %74 = load i64, i64* %17, align 8
  %75 = load i64, i64* %9, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %178

77:                                               ; preds = %73
  store i32 0, i32* %21, align 4
  br label %78

78:                                               ; preds = %120, %77
  %79 = load i32, i32* %15, align 4
  %80 = load i64, i64* %18, align 8
  %81 = load i64, i64* %17, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @atop(i64 %82)
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %20, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load i64, i64* @PAGE_SIZE, align 8
  %89 = load i32, i32* %13, align 4
  %90 = call %struct.TYPE_7__* @vm_page_alloc_contig_domain(i32 %79, i32 %83, i32 %84, i32 %85, i32 1, i32 %86, i32 %87, i64 %88, i32 0, i32 %89)
  store %struct.TYPE_7__* %90, %struct.TYPE_7__** %19, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %92 = icmp eq %struct.TYPE_7__* %91, null
  br i1 %92, label %93, label %134

93:                                               ; preds = %78
  %94 = load i32, i32* %15, align 4
  %95 = call i32 @VM_OBJECT_WUNLOCK(i32 %94)
  %96 = load i32, i32* %21, align 4
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @M_NOWAIT, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 3
  %103 = icmp slt i32 %96, %102
  br i1 %103, label %104, label %125

104:                                              ; preds = %93
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32, i32* %12, align 4
  %109 = load i64, i64* @PAGE_SIZE, align 8
  %110 = call i32 @vm_page_reclaim_contig_domain(i32 %105, i32 %106, i32 1, i32 %107, i32 %108, i64 %109, i32 0)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %120, label %112

112:                                              ; preds = %104
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* @M_WAITOK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @vm_wait_domain(i32 %118)
  br label %120

120:                                              ; preds = %117, %112, %104
  %121 = load i32, i32* %15, align 4
  %122 = call i32 @VM_OBJECT_WLOCK(i32 %121)
  %123 = load i32, i32* %21, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %21, align 4
  br label %78

125:                                              ; preds = %93
  %126 = load i32, i32* %15, align 4
  %127 = load i64, i64* %16, align 8
  %128 = load i64, i64* %17, align 8
  %129 = call i32 @kmem_unback(i32 %126, i64 %127, i64 %128)
  %130 = load i32*, i32** %14, align 8
  %131 = load i64, i64* %16, align 8
  %132 = load i64, i64* %9, align 8
  %133 = call i32 @vmem_free(i32* %130, i64 %131, i64 %132)
  store i64 0, i64* %7, align 8
  br label %182

134:                                              ; preds = %78
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %136 = call i32 @vm_phys_domain(%struct.TYPE_7__* %135)
  %137 = load i32, i32* %8, align 4
  %138 = icmp eq i32 %136, %137
  %139 = zext i1 %138 to i32
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %141 = call i32 @vm_phys_domain(%struct.TYPE_7__* %140)
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = inttoptr i64 %143 to i8*
  %145 = call i32 @KASSERT(i32 %139, i8* %144)
  %146 = load i32, i32* %10, align 4
  %147 = load i32, i32* @M_ZERO, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %134
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @PG_ZERO, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %159 = call i32 @pmap_zero_page(%struct.TYPE_7__* %158)
  br label %160

160:                                              ; preds = %157, %150, %134
  %161 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @kernel_pmap, align 4
  %165 = load i64, i64* %16, align 8
  %166 = load i64, i64* %17, align 8
  %167 = add nsw i64 %165, %166
  %168 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %169 = load i32, i32* %22, align 4
  %170 = load i32, i32* %22, align 4
  %171 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  %172 = or i32 %170, %171
  %173 = call i32 @pmap_enter(i32 %164, i64 %167, %struct.TYPE_7__* %168, i32 %169, i32 %172, i32 0)
  br label %174

174:                                              ; preds = %160
  %175 = load i64, i64* @PAGE_SIZE, align 8
  %176 = load i64, i64* %17, align 8
  %177 = add nsw i64 %176, %175
  store i64 %177, i64* %17, align 8
  br label %73

178:                                              ; preds = %73
  %179 = load i32, i32* %15, align 4
  %180 = call i32 @VM_OBJECT_WUNLOCK(i32 %179)
  %181 = load i64, i64* %16, align 8
  store i64 %181, i64* %7, align 8
  br label %182

182:                                              ; preds = %178, %125, %39
  %183 = load i64, i64* %7, align 8
  ret i64 %183
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @vmem_alloc(i32*, i64, i32, i64*) #1

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local %struct.TYPE_7__* @vm_page_alloc_contig_domain(i32, i32, i32, i32, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @vm_page_reclaim_contig_domain(i32, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @vm_wait_domain(i32) #1

declare dso_local i32 @kmem_unback(i32, i64, i64) #1

declare dso_local i32 @vmem_free(i32*, i64, i64) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vm_phys_domain(%struct.TYPE_7__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_7__*) #1

declare dso_local i32 @pmap_enter(i32, i64, %struct.TYPE_7__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
