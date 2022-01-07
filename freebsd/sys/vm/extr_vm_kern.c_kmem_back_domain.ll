; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_back_domain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_kern.c_kmem_back_domain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }

@kernel_object = common dso_local global %struct.TYPE_16__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"kmem_back_domain: only supports kernel object.\00", align 1
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@VM_ALLOC_NOBUSY = common dso_local global i32 0, align 4
@VM_ALLOC_WIRED = common dso_local global i32 0, align 4
@VM_ALLOC_NOWAIT = common dso_local global i32 0, align 4
@VM_ALLOC_WAITOK = common dso_local global i32 0, align 4
@VM_ALLOC_WAITFAIL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_EXEC = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@VM_PROT_RW = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"kmem_back_domain: Domain mismatch %d != %d\00", align 1
@M_ZERO = common dso_local global i32 0, align 4
@PG_ZERO = common dso_local global i32 0, align 4
@VPO_UNMANAGED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"kmem_malloc: page %p is managed\00", align 1
@VM_PAGE_BITS_ALL = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@PMAP_ENTER_WIRED = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VPO_KMEM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kmem_back_domain(i32 %0, %struct.TYPE_16__* %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** @kernel_object, align 8
  %20 = icmp eq %struct.TYPE_16__* %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %25 = sub nsw i64 %23, %24
  store i64 %25, i64* %12, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @malloc2vm_flags(i32 %26)
  %28 = load i32, i32* @VM_ALLOC_NOBUSY, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @VM_ALLOC_WIRED, align 4
  %31 = or i32 %29, %30
  store i32 %31, i32* %17, align 4
  %32 = load i32, i32* @VM_ALLOC_NOWAIT, align 4
  %33 = load i32, i32* @VM_ALLOC_WAITOK, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %17, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %17, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* @M_WAITOK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %5
  %45 = load i32, i32* @VM_ALLOC_WAITFAIL, align 4
  %46 = load i32, i32* %17, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %17, align 4
  br label %48

48:                                               ; preds = %44, %5
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @M_EXEC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* @VM_PROT_ALL, align 4
  br label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @VM_PROT_RW, align 4
  br label %57

57:                                               ; preds = %55, %53
  %58 = phi i32 [ %54, %53 ], [ %56, %55 ]
  store i32 %58, i32* %16, align 4
  store i64 0, i64* %13, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %60 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %59)
  br label %61

61:                                               ; preds = %90, %57
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = load i64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @atop(i64 %66)
  %68 = call %struct.TYPE_15__* @vm_radix_lookup_le(i32* %63, i32 %67)
  store %struct.TYPE_15__* %68, %struct.TYPE_15__** %15, align 8
  br label %69

69:                                               ; preds = %149, %61
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %10, align 8
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %73, label %154

73:                                               ; preds = %69
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %75 = load i64, i64* %12, align 8
  %76 = load i64, i64* %13, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i32 @atop(i64 %77)
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %17, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %82 = call %struct.TYPE_15__* @vm_page_alloc_domain_after(%struct.TYPE_16__* %74, i32 %78, i32 %79, i32 %80, %struct.TYPE_15__* %81)
  store %struct.TYPE_15__* %82, %struct.TYPE_15__** %14, align 8
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %84 = icmp eq %struct.TYPE_15__* %83, null
  br i1 %84, label %85, label %99

85:                                               ; preds = %73
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* @M_NOWAIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  br label %61

91:                                               ; preds = %85
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %93 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %92)
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %95 = load i64, i64* %9, align 8
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @kmem_unback(%struct.TYPE_16__* %94, i64 %95, i64 %96)
  %98 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %98, i32* %6, align 4
  br label %158

99:                                               ; preds = %73
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %101 = call i32 @vm_phys_domain(%struct.TYPE_15__* %100)
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %106 = call i32 @vm_phys_domain(%struct.TYPE_15__* %105)
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = inttoptr i64 %108 to i8*
  %110 = call i32 @KASSERT(i32 %104, i8* %109)
  %111 = load i32, i32* %11, align 4
  %112 = load i32, i32* @M_ZERO, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %99
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @PG_ZERO, align 4
  %120 = and i32 %118, %119
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %124 = call i32 @pmap_zero_page(%struct.TYPE_15__* %123)
  br label %125

125:                                              ; preds = %122, %115, %99
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @VPO_UNMANAGED, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  %132 = zext i1 %131 to i32
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %134 = bitcast %struct.TYPE_15__* %133 to i8*
  %135 = call i32 @KASSERT(i32 %132, i8* %134)
  %136 = load i32, i32* @VM_PAGE_BITS_ALL, align 4
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* @kernel_pmap, align 4
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* %13, align 8
  %142 = add nsw i64 %140, %141
  %143 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %16, align 4
  %146 = load i32, i32* @PMAP_ENTER_WIRED, align 4
  %147 = or i32 %145, %146
  %148 = call i32 @pmap_enter(i32 %139, i64 %142, %struct.TYPE_15__* %143, i32 %144, i32 %147, i32 0)
  br label %149

149:                                              ; preds = %125
  %150 = load i64, i64* @PAGE_SIZE, align 8
  %151 = load i64, i64* %13, align 8
  %152 = add nsw i64 %151, %150
  store i64 %152, i64* %13, align 8
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  store %struct.TYPE_15__* %153, %struct.TYPE_15__** %15, align 8
  br label %69

154:                                              ; preds = %69
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %156 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %155)
  %157 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %154, %91
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @malloc2vm_flags(i32) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_15__* @vm_radix_lookup_le(i32*, i32) #1

declare dso_local i32 @atop(i64) #1

declare dso_local %struct.TYPE_15__* @vm_page_alloc_domain_after(%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @kmem_unback(%struct.TYPE_16__*, i64, i64) #1

declare dso_local i32 @vm_phys_domain(%struct.TYPE_15__*) #1

declare dso_local i32 @pmap_zero_page(%struct.TYPE_15__*) #1

declare dso_local i32 @pmap_enter(i32, i64, %struct.TYPE_15__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
