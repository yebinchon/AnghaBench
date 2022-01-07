; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop2drv_data_read_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_iop2drv_data_read_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i64, i32, i32 }

@ACB_F_MESSAGE_WQBUFFER_READ = common dso_local global i32 0, align 4
@ACB_F_MESSAGE_WQBUFFER_CLEARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_iop2drv_data_read_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_iop2drv_data_read_handle(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  %3 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %4 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %3, i32 0, i32 2
  %5 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %4)
  %6 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, %6
  store i32 %10, i32* %8, align 4
  %11 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %12 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %20 = call i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %23 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %21
  %30 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_CLEARED, align 4
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %32 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %29, %21
  %36 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %37 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %36, i32 0, i32 2
  %38 = call i32 @ARCMSR_LOCK_RELEASE(i32* %37)
  ret void
}

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i32 @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
