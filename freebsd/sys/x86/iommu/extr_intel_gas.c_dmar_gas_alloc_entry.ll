; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_alloc_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_gas.c_dmar_gas_alloc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmar_map_entry = type { %struct.dmar_domain* }
%struct.dmar_domain = type { i32 }

@DMAR_PGF_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unsupported flags %x\00", align 1
@dmar_map_entry_zone = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dmar_map_entry* @dmar_gas_alloc_entry(%struct.dmar_domain* %0, i32 %1) #0 {
  %3 = alloca %struct.dmar_domain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dmar_map_entry*, align 8
  store %struct.dmar_domain* %0, %struct.dmar_domain** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  %11 = zext i1 %10 to i32
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = inttoptr i64 %13 to i8*
  %15 = call i32 @KASSERT(i32 %11, i8* %14)
  %16 = load i32, i32* @dmar_map_entry_zone, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @DMAR_PGF_WAITOK, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @M_WAITOK, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @M_NOWAIT, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = load i32, i32* @M_ZERO, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.dmar_map_entry* @uma_zalloc(i32 %16, i32 %28)
  store %struct.dmar_map_entry* %29, %struct.dmar_map_entry** %5, align 8
  %30 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %31 = icmp ne %struct.dmar_map_entry* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %34 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  %35 = getelementptr inbounds %struct.dmar_map_entry, %struct.dmar_map_entry* %34, i32 0, i32 0
  store %struct.dmar_domain* %33, %struct.dmar_domain** %35, align 8
  %36 = load %struct.dmar_domain*, %struct.dmar_domain** %3, align 8
  %37 = getelementptr inbounds %struct.dmar_domain, %struct.dmar_domain* %36, i32 0, i32 0
  %38 = call i32 @atomic_add_int(i32* %37, i32 1)
  br label %39

39:                                               ; preds = %32, %25
  %40 = load %struct.dmar_map_entry*, %struct.dmar_map_entry** %5, align 8
  ret %struct.dmar_map_entry* %40
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.dmar_map_entry* @uma_zalloc(i32, i32) #1

declare dso_local i32 @atomic_add_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
