; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_Write_data_2iop_wqbuffer_D.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_Write_data_2iop_wqbuffer_D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i64, i64, i32* }
%struct.QBUFFER = type { i32, i64 }

@ACB_F_MESSAGE_WQBUFFER_READ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ARCMSR_MAX_QBUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*)* @arcmsr_Write_data_2iop_wqbuffer_D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_Write_data_2iop_wqbuffer_D(%struct.AdapterControlBlock* %0) #0 {
  %2 = alloca %struct.AdapterControlBlock*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.QBUFFER*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %2, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %10 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %11 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %106

16:                                               ; preds = %1
  %17 = load i32, i32* @M_DEVBUF, align 4
  %18 = load i32, i32* @M_NOWAIT, align 4
  %19 = load i32, i32* @M_ZERO, align 4
  %20 = or i32 %18, %19
  %21 = call i32* @malloc(i32 128, i32 %17, i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  br label %106

26:                                               ; preds = %16
  %27 = load i32, i32* @ACB_F_MESSAGE_WQBUFFER_READ, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %30 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, %28
  store i32 %32, i32* %30, align 8
  %33 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %34 = call %struct.QBUFFER* @arcmsr_get_iop_wqbuffer(%struct.AdapterControlBlock* %33)
  store %struct.QBUFFER* %34, %struct.QBUFFER** %4, align 8
  %35 = load %struct.QBUFFER*, %struct.QBUFFER** %4, align 8
  %36 = getelementptr inbounds %struct.QBUFFER, %struct.QBUFFER* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i32*
  store i32* %38, i32** %6, align 8
  br label %39

39:                                               ; preds = %52, %26
  %40 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %41 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %44 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 124
  br label %50

50:                                               ; preds = %47, %39
  %51 = phi i1 [ false, %39 ], [ %49, %47 ]
  br i1 %51, label %52, label %76

52:                                               ; preds = %50
  %53 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %54 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %57 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32* %59, i32** %3, align 8
  %60 = load i32*, i32** %3, align 8
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %64 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add i64 %65, 1
  store i64 %66, i64* %64, align 8
  %67 = load i64, i64* @ARCMSR_MAX_QBUFFER, align 8
  %68 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %69 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = urem i64 %70, %67
  store i64 %71, i64* %69, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %5, align 8
  %74 = load i32, i32* %8, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %8, align 4
  br label %39

76:                                               ; preds = %50
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.QBUFFER*, %struct.QBUFFER** %4, align 8
  %79 = getelementptr inbounds %struct.QBUFFER, %struct.QBUFFER* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %9, align 4
  %81 = load i32*, i32** %7, align 8
  store i32* %81, i32** %5, align 8
  br label %82

82:                                               ; preds = %85, %76
  %83 = load i32, i32* %9, align 4
  %84 = icmp sge i32 %83, 4
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32*, i32** %7, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %7, align 8
  %88 = load i32, i32* %86, align 4
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = sub nsw i32 %91, 4
  store i32 %92, i32* %9, align 4
  br label %82

93:                                               ; preds = %82
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32*, i32** %7, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %6, align 8
  store i32 %98, i32* %99, align 4
  br label %100

100:                                              ; preds = %96, %93
  %101 = load i32*, i32** %5, align 8
  %102 = load i32, i32* @M_DEVBUF, align 4
  %103 = call i32 @free(i32* %101, i32 %102)
  %104 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %2, align 8
  %105 = call i32 @arcmsr_iop_message_wrote(%struct.AdapterControlBlock* %104)
  br label %106

106:                                              ; preds = %25, %100, %1
  ret void
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local %struct.QBUFFER* @arcmsr_get_iop_wqbuffer(%struct.AdapterControlBlock*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @arcmsr_iop_message_wrote(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
