; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_free_srb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_free_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { i64, i32, %struct.AdapterControlBlock* }
%struct.AdapterControlBlock = type { i64, i32, %struct.CommandControlBlock** }

@ARCMSR_SRB_DONE = common dso_local global i32 0, align 4
@ARCMSR_MAX_FREESRB_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.CommandControlBlock*)* @arcmsr_free_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_free_srb(%struct.CommandControlBlock* %0) #0 {
  %2 = alloca %struct.CommandControlBlock*, align 8
  %3 = alloca %struct.AdapterControlBlock*, align 8
  store %struct.CommandControlBlock* %0, %struct.CommandControlBlock** %2, align 8
  %4 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %5 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %4, i32 0, i32 2
  %6 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %5, align 8
  store %struct.AdapterControlBlock* %6, %struct.AdapterControlBlock** %3, align 8
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 1
  %9 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %8)
  %10 = load i32, i32* @ARCMSR_SRB_DONE, align 4
  %11 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %12 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  %13 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %14 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %2, align 8
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 2
  %18 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %17, align 8
  %19 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %20 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %18, i64 %21
  store %struct.CommandControlBlock* %15, %struct.CommandControlBlock** %22, align 8
  %23 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %24 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %24, align 8
  %27 = load i64, i64* @ARCMSR_MAX_FREESRB_NUM, align 8
  %28 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %29 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = urem i64 %30, %27
  store i64 %31, i64* %29, align 8
  %32 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %33 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %32, i32 0, i32 1
  %34 = call i32 @ARCMSR_LOCK_RELEASE(i32* %33)
  ret void
}

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
