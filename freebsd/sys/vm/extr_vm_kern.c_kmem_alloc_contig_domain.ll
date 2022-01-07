; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_alloc_contig_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_alloc_contig_domain.c"
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
@M_NOWAIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"kmem_alloc_contig_domain: Domain mismatch %d != %d\00", align 1
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i32, i32, i32, i32, i32, i32)* @kmem_alloc_contig_domain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kmem_alloc_contig_domain(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_7__*, align 8
  %24 = alloca %struct.TYPE_7__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %28 = load i32, i32* @kernel_object, align 4
  store i32 %28, i32* %19, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i64 @round_page(i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** @vm_dom, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %18, align 8
  %37 = load i32*, i32** %18, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @M_BESTFIT, align 4
  %41 = or i32 %39, %40
  %42 = call i64 @vmem_alloc(i32* %37, i64 %38, i32 %41, i64* %20)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %8
  store i64 0, i64* %9, align 8
  br label %182

45:                                               ; preds = %8
  %46 = load i64, i64* %20, align 8
  %47 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, i64* %21, align 8
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @malloc2vm_flags(i32 %49)
  %51 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %54 = or i32 %52, %53
  store i32 %54, i32* %26, align 4
  %55 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %56 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %26, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %26, align 4
  %63 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %64 = load i32, i32* %26, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %26, align 4
  %66 = load i64, i64* %11, align 8
  %67 = call i32 @atop(i64 %66)
  store i32 %67, i32* %25, align 4
  %68 = load i32, i32* %19, align 4
  %69 = call i32 @VM_OBJECT_WLOCK(i32 %68)
  store i32 0, i32* %27, align 4
  br label %70

70:                                               ; preds = %114, %45
  %71 = load i32, i32* %19, align 4
  %72 = load i64, i64* %21, align 8
  %73 = call i32 @atop(i64 %72)
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %26, align 4
  %76 = load i32, i32* %25, align 4
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %16, align 4
  %81 = load i32, i32* %17, align 4
  %82 = call %struct.TYPE_7__* @vm_page_alloc_contig_domain(i32 %71, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81)
  store %struct.TYPE_7__* %82, %struct.TYPE_7__** %24, align 8
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %84 = icmp eq %struct.TYPE_7__* %83, null
  br i1 %84, label %85, label %124

85:                                               ; preds = %70
  %86 = load i32, i32* %19, align 4
  %87 = call i32 @VM_OBJECT_WUNLOCK(i32 %86)
  %88 = load i32, i32* %27, align 4
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @M_NOWAIT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 1, i32 3
  %95 = icmp slt i32 %88, %94
  br i1 %95, label %96, label %119

96:                                               ; preds = %85
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* %26, align 4
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @vm_page_reclaim_contig_domain(i32 %97, i32 %98, i32 %99, i32 %100, i32 %101, i32 %102, i32 %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %114, label %106

106:                                              ; preds = %96
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @M_WAITOK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @vm_wait_domain(i32 %112)
  br label %114

114:                                              ; preds = %111, %106, %96
  %115 = load i32, i32* %19, align 4
  %116 = call i32 @VM_OBJECT_WLOCK(i32 %115)
  %117 = load i32, i32* %27, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %27, align 4
  br label %70

119:                                              ; preds = %85
  %120 = load i32*, i32** %18, align 8
  %121 = load i64, i64* %20, align 8
  %122 = load i64, i64* %11, align 8
  %123 = call i32 @vmem_free(i32* %120, i64 %121, i64 %122)
  store i64 0, i64* %9, align 8
  br label %182

124:                                              ; preds = %70
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %126 = call i32 @vm_phys_domain(%struct.TYPE_7__* %125)
  %127 = load i32, i32* %10, align 4
  %128 = icmp eq i32 %126, %127
  %129 = zext i1 %128 to i32
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %131 = call i32 @vm_phys_domain(%struct.TYPE_7__* %130)
  %132 = load i32, i32* %10, align 4
  %133 = sext i32 %132 to i64
  %134 = inttoptr i64 %133 to i8*
  %135 = call i32 @KASSERT(i32 %129, i8* %134)
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %137 = load i32, i32* %25, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i64 %138
  store %struct.TYPE_7__* %139, %struct.TYPE_7__** %23, align 8
  %140 = load i64, i64* %20, align 8
  store i64 %140, i64* %22, align 8
  br label %141

141:                                              ; preds = %175, %124
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %144 = icmp ult %struct.TYPE_7__* %142, %143
  br i1 %144, label %145, label %178

145:                                              ; preds = %141
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @M_ZERO, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %160

150:                                              ; preds = %145
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @PG_ZERO, align 4
  %155 = and i32 %153, %154
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %150
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %159 = call i32 @pmap_zero_page(%struct.TYPE_7__* %158)
  br label %160

160:                                              ; preds = %157, %150, %145
  %161 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @kernel_pmap, align 4
  %165 = load i64, i64* %22, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %167 = load i32, i32* @VM_PROT_RW, align 4
  %168 = load i32, i32* @VM_PROT_RW, align 4
  %169 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  %170 = or i32 %168, %169
  %171 = call i32 @pmap_enter(i32 %164, i64 %165, %struct.TYPE_7__* %166, i32 %167, i32 %170, i32 0)
  %172 = load i64, i64* @PAGE_SIZE, align 8
  %173 = load i64, i64* %22, align 8
  %174 = add nsw i64 %173, %172
  store i64 %174, i64* %22, align 8
  br label %175

175:                                              ; preds = %160
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 1
  store %struct.TYPE_7__* %177, %struct.TYPE_7__** %24, align 8
  br label %141

178:                                              ; preds = %141
  %179 = load i32, i32* %19, align 4
  %180 = call i32 @VM_OBJECT_WUNLOCK(i32 %179)
  %181 = load i64, i64* %20, align 8
  store i64 %181, i64* %9, align 8
  br label %182

182:                                              ; preds = %178, %119, %44
  %183 = load i64, i64* %9, align 8
  ret i64 %183
}

declare dso_local i64 @round_page(i64) #1

declare dso_local i64 @vmem_alloc(i32*, i64, i32, i64*) #1

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local i32 @atop(i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local %struct.TYPE_7__* @vm_page_alloc_contig_domain(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @vm_page_reclaim_contig_domain(i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_wait_domain(i32) #1

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
