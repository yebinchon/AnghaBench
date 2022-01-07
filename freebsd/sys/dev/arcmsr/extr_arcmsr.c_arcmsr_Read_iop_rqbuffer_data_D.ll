; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_Read_iop_rqbuffer_data_D.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_Read_iop_rqbuffer_data_D.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i64, i32* }
%struct.QBUFFER = type { i64, i64 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ARCMSR_MAX_QBUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.AdapterControlBlock*, %struct.QBUFFER*)* @arcmsr_Read_iop_rqbuffer_data_D to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arcmsr_Read_iop_rqbuffer_data_D(%struct.AdapterControlBlock* %0, %struct.QBUFFER* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca %struct.QBUFFER*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %4, align 8
  store %struct.QBUFFER* %1, %struct.QBUFFER** %5, align 8
  store i32* null, i32** %7, align 8
  store i64* null, i64** %9, align 8
  %12 = load %struct.QBUFFER*, %struct.QBUFFER** %5, align 8
  %13 = getelementptr inbounds %struct.QBUFFER, %struct.QBUFFER* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i64*
  store i64* %15, i64** %8, align 8
  %16 = load %struct.QBUFFER*, %struct.QBUFFER** %5, align 8
  %17 = getelementptr inbounds %struct.QBUFFER, %struct.QBUFFER* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %10, align 8
  %19 = load i64, i64* %10, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %55

21:                                               ; preds = %2
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = load i32, i32* @M_ZERO, align 4
  %25 = or i32 %23, %24
  %26 = call i32* @malloc(i32 128, i32 %22, i32 %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = bitcast i32* %27 to i64*
  store i64* %28, i64** %9, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i64 0, i64* %3, align 8
  br label %94

32:                                               ; preds = %21
  %33 = load i64, i64* %10, align 8
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %37, %32
  %35 = load i64, i64* %11, align 8
  %36 = icmp sge i64 %35, 4
  br i1 %36, label %37, label %45

37:                                               ; preds = %34
  %38 = load i64*, i64** %8, align 8
  %39 = getelementptr inbounds i64, i64* %38, i32 1
  store i64* %39, i64** %8, align 8
  %40 = load i64, i64* %38, align 8
  %41 = load i64*, i64** %9, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %9, align 8
  store i64 %40, i64* %41, align 8
  %43 = load i64, i64* %11, align 8
  %44 = sub nsw i64 %43, 4
  store i64 %44, i64* %11, align 8
  br label %34

45:                                               ; preds = %34
  %46 = load i64, i64* %11, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %9, align 8
  store i64 %50, i64* %51, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32*, i32** %7, align 8
  %54 = bitcast i32* %53 to i64*
  store i64* %54, i64** %9, align 8
  br label %55

55:                                               ; preds = %52, %2
  br label %56

56:                                               ; preds = %59, %55
  %57 = load i64, i64* %10, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %83

59:                                               ; preds = %56
  %60 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %61 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %64 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  store i32* %66, i32** %6, align 8
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32*, i32** %6, align 8
  store i32 %68, i32* %69, align 4
  %70 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %71 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = add i64 %72, 1
  store i64 %73, i64* %71, align 8
  %74 = load i64, i64* @ARCMSR_MAX_QBUFFER, align 8
  %75 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %76 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = urem i64 %77, %74
  store i64 %78, i64* %76, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %7, align 8
  %81 = load i64, i64* %10, align 8
  %82 = add nsw i64 %81, -1
  store i64 %82, i64* %10, align 8
  br label %56

83:                                               ; preds = %56
  %84 = load i64*, i64** %9, align 8
  %85 = icmp ne i64* %84, null
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i64*, i64** %9, align 8
  %88 = bitcast i64* %87 to i32*
  %89 = load i32, i32* @M_DEVBUF, align 4
  %90 = call i32 @free(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %93 = call i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock* %92)
  store i64 1, i64* %3, align 8
  br label %94

94:                                               ; preds = %91, %31
  %95 = load i64, i64* %3, align 8
  ret i64 %95
}

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @arcmsr_iop_message_read(%struct.AdapterControlBlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
