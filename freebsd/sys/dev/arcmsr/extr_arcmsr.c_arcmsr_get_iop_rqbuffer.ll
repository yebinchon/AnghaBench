; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_get_iop_rqbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_get_iop_rqbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.QBUFFER = type { i32 }
%struct.AdapterControlBlock = type { i32, i64 }
%struct.HBA_MessageUnit = type { i32 }
%struct.HBB_MessageUnit = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.HBC_MessageUnit = type { i32 }
%struct.HBD_MessageUnit0 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.HBE_MessageUnit = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.QBUFFER* (%struct.AdapterControlBlock*)* @arcmsr_get_iop_rqbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.QBUFFER* @arcmsr_get_iop_rqbuffer(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.QBUFFER*, align 8
  %4 = alloca %struct.HBA_MessageUnit*, align 8
  %5 = alloca %struct.HBB_MessageUnit*, align 8
  %6 = alloca %struct.HBC_MessageUnit*, align 8
  %7 = alloca %struct.HBD_MessageUnit0*, align 8
  %8 = alloca %struct.HBE_MessageUnit*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store %struct.QBUFFER* null, %struct.QBUFFER** %3, align 8
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %56 [
    i32 132, label %12
    i32 131, label %20
    i32 130, label %30
    i32 129, label %38
    i32 128, label %48
  ]

12:                                               ; preds = %1
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.HBA_MessageUnit*
  store %struct.HBA_MessageUnit* %16, %struct.HBA_MessageUnit** %4, align 8
  %17 = load %struct.HBA_MessageUnit*, %struct.HBA_MessageUnit** %4, align 8
  %18 = getelementptr inbounds %struct.HBA_MessageUnit, %struct.HBA_MessageUnit* %17, i32 0, i32 0
  %19 = bitcast i32* %18 to %struct.QBUFFER*
  store %struct.QBUFFER* %19, %struct.QBUFFER** %3, align 8
  br label %56

20:                                               ; preds = %1
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %22 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.HBB_MessageUnit*
  store %struct.HBB_MessageUnit* %24, %struct.HBB_MessageUnit** %5, align 8
  %25 = load %struct.HBB_MessageUnit*, %struct.HBB_MessageUnit** %5, align 8
  %26 = getelementptr inbounds %struct.HBB_MessageUnit, %struct.HBB_MessageUnit* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast i32* %28 to %struct.QBUFFER*
  store %struct.QBUFFER* %29, %struct.QBUFFER** %3, align 8
  br label %56

30:                                               ; preds = %1
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %32 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.HBC_MessageUnit*
  store %struct.HBC_MessageUnit* %34, %struct.HBC_MessageUnit** %6, align 8
  %35 = load %struct.HBC_MessageUnit*, %struct.HBC_MessageUnit** %6, align 8
  %36 = getelementptr inbounds %struct.HBC_MessageUnit, %struct.HBC_MessageUnit* %35, i32 0, i32 0
  %37 = bitcast i32* %36 to %struct.QBUFFER*
  store %struct.QBUFFER* %37, %struct.QBUFFER** %3, align 8
  br label %56

38:                                               ; preds = %1
  %39 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %40 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.HBD_MessageUnit0*
  store %struct.HBD_MessageUnit0* %42, %struct.HBD_MessageUnit0** %7, align 8
  %43 = load %struct.HBD_MessageUnit0*, %struct.HBD_MessageUnit0** %7, align 8
  %44 = getelementptr inbounds %struct.HBD_MessageUnit0, %struct.HBD_MessageUnit0* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = bitcast i32* %46 to %struct.QBUFFER*
  store %struct.QBUFFER* %47, %struct.QBUFFER** %3, align 8
  br label %56

48:                                               ; preds = %1
  %49 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %50 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.HBE_MessageUnit*
  store %struct.HBE_MessageUnit* %52, %struct.HBE_MessageUnit** %8, align 8
  %53 = load %struct.HBE_MessageUnit*, %struct.HBE_MessageUnit** %8, align 8
  %54 = getelementptr inbounds %struct.HBE_MessageUnit, %struct.HBE_MessageUnit* %53, i32 0, i32 0
  %55 = bitcast i32* %54 to %struct.QBUFFER*
  store %struct.QBUFFER* %55, %struct.QBUFFER** %3, align 8
  br label %56

56:                                               ; preds = %1, %48, %38, %30, %20, %12
  %57 = load %struct.QBUFFER*, %struct.QBUFFER** %3, align 8
  ret %struct.QBUFFER* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
