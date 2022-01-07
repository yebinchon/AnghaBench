; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_Write_data_2iop_wqbuffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_Write_data_2iop_wqbuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i32, i64, i64, i32* }
%struct.QBUFFER = type { i32, i64 }

@ACB_ADAPTER_TYPE_B = common dso_local global i64 0, align 8
@ACB_F_MESSAGE_WQBUFFER_READ = common dso_local global i32 0, align 4
@ARCMSR_MAX_QBUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_Write_data_2iop_wqbuffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_Write_data_2iop_wqbuffer(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.QBUFFER*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %8 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ACB_ADAPTER_TYPE_B, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %14 = call i32 @arcmsr_Write_data_2iop_wqbuffer_D(%struct.AdapterControlBlock* %13)
  br label %78

15:                                               ; preds = %1
  %16 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %17 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %78

22:                                               ; preds = %15
  %23 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %26 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 8
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %30 = call %struct.QBUFFER* @arcmsr_get_iop_wqbuffer(%struct.AdapterControlBlock* %29)
  store %struct.QBUFFER* %30, %struct.QBUFFER** %4, align 8
  %31 = load %struct.QBUFFER*, %struct.QBUFFER** %4, align 8
  %32 = getelementptr inbounds %struct.QBUFFER, %struct.QBUFFER* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  store i32* %34, i32** %5, align 8
  br label %35

35:                                               ; preds = %48, %22
  %36 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %37 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %40 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %6, align 4
  %45 = icmp slt i32 %44, 124
  br label %46

46:                                               ; preds = %43, %35
  %47 = phi i1 [ false, %35 ], [ %45, %43 ]
  br i1 %47, label %48, label %72

48:                                               ; preds = %46
  %49 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %50 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %49, i32 0, i32 4
  %51 = load i32*, i32** %50, align 8
  %52 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %53 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  store i32* %55, i32** %3, align 8
  %56 = load i32*, i32** %3, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %60 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load i64, i64* @ARCMSR_MAX_QBUFFER, align 8
  %64 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %65 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = urem i64 %66, %63
  store i64 %67, i64* %65, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %5, align 8
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %35

72:                                               ; preds = %46
  %73 = load i32, i32* %6, align 4
  %74 = load %struct.QBUFFER*, %struct.QBUFFER** %4, align 8
  %75 = getelementptr inbounds %struct.QBUFFER, %struct.QBUFFER* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %77 = call i32 @arcmsr_iop_message_wrote(%struct.AdapterControlBlock* %76)
  br label %78

78:                                               ; preds = %12, %72, %15
  ret void
}

declare dso_local i32 @arcmsr_Write_data_2iop_wqbuffer_D(%struct.AdapterControlBlock*) #1

declare dso_local %struct.QBUFFER* @arcmsr_get_iop_wqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @arcmsr_iop_message_wrote(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
