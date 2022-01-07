; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop2drv_data_wrote_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop2drv_data_wrote_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, i32 }
%struct.QBUFFER = type { i32 }

@ARCMSR_MAX_QBUFFER = common dso_local global i32 0, align 4
@ACB_F_IOPDATA_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_iop2drv_data_wrote_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_iop2drv_data_wrote_handle(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.QBUFFER*, align 8
  %4 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %5 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %6 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %5, i32 0, i32 2
  %7 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %6)
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %9 = call %struct.QBUFFER* @arcmsr_get_iop_rqbuffer(%struct.AdapterControlBlock* %8)
  store %struct.QBUFFER* %9, %struct.QBUFFER** %3, align 8
  %10 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %11 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %14 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  %17 = sub nsw i32 %16, 1
  %18 = load i32, i32* @ARCMSR_MAX_QBUFFER, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.QBUFFER*, %struct.QBUFFER** %3, align 8
  %23 = getelementptr inbounds %struct.QBUFFER, %struct.QBUFFER* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %1
  %27 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %28 = load %struct.QBUFFER*, %struct.QBUFFER** %3, align 8
  %29 = call i64 @arcmsr_Read_iop_rqbuffer_data(%struct.AdapterControlBlock* %27, %struct.QBUFFER* %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %33 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %34 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = or i32 %35, %32
  store i32 %36, i32* %34, align 4
  br label %37

37:                                               ; preds = %31, %26
  br label %44

38:                                               ; preds = %1
  %39 = load i32, i32* @ACB_F_IOPDATA_OVERFLOW, align 4
  %40 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %41 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  br label %44

44:                                               ; preds = %38, %37
  %45 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %46 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %45, i32 0, i32 2
  %47 = call i32 @ARCMSR_LOCK_RELEASE(i32* %46)
  ret void
}

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local %struct.QBUFFER* @arcmsr_get_iop_rqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i64 @arcmsr_Read_iop_rqbuffer_data(%struct.AdapterControlBlock*, %struct.QBUFFER*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
