; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_get_freesrb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_get_freesrb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { i32 }
%struct.AdapterControlBlock = type { i64, i64, i32, %struct.CommandControlBlock** }

@ARCMSR_MAX_FREESRB_NUM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.CommandControlBlock* (%struct.AdapterControlBlock*)* @arcmsr_get_freesrb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.CommandControlBlock* @arcmsr_get_freesrb(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca %struct.CommandControlBlock*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store %struct.CommandControlBlock* null, %struct.CommandControlBlock** %3, align 8
  %6 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %7 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %6, i32 0, i32 2
  %8 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %7)
  %9 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %10 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %4, align 8
  %15 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %16 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %15, i32 0, i32 3
  %17 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %17, i64 %18
  %20 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %19, align 8
  store %struct.CommandControlBlock* %20, %struct.CommandControlBlock** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = add i64 %21, 1
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* @ARCMSR_MAX_FREESRB_NUM, align 8
  %24 = load i64, i64* %4, align 8
  %25 = urem i64 %24, %23
  store i64 %25, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %32 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %31, i32 0, i32 1
  store i64 %30, i64* %32, align 8
  br label %34

33:                                               ; preds = %1
  store %struct.CommandControlBlock* null, %struct.CommandControlBlock** %3, align 8
  br label %34

34:                                               ; preds = %33, %29
  %35 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %36 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %35, i32 0, i32 2
  %37 = call i32 @ARCMSR_LOCK_RELEASE(i32* %36)
  %38 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %3, align 8
  ret %struct.CommandControlBlock* %38
}

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
