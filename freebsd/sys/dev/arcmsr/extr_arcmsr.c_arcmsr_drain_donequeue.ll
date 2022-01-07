; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_drain_donequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_drain_donequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AdapterControlBlock = type { i32, i32, i32, i32, %struct.CommandControlBlock** }
%struct.CommandControlBlock = type { i64, %struct.AdapterControlBlock* }

@ARCMSR_SRB_START = common dso_local global i64 0, align 8
@ARCMSR_SRB_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"arcmsr%d: srb='%p' return srb has been timeouted\0A\00", align 1
@.str.1 = private unnamed_addr constant [91 x i8] c"arcmsr%d: return srb has been completed\0Asrb='%p' srb_state=0x%x outstanding srb count=%d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.AdapterControlBlock*, i32, i32)* @arcmsr_drain_donequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_drain_donequeue(%struct.AdapterControlBlock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.AdapterControlBlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.CommandControlBlock*, align 8
  store %struct.AdapterControlBlock* %0, %struct.AdapterControlBlock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %9 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %37 [
    i32 132, label %11
    i32 131, label %11
    i32 130, label %20
    i32 129, label %20
    i32 128, label %29
  ]

11:                                               ; preds = %3, %3
  %12 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %13 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 5
  %17 = add nsw i32 %14, %16
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %19, %struct.CommandControlBlock** %7, align 8
  br label %46

20:                                               ; preds = %3, %3
  %21 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %22 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, -32
  %26 = add i32 %23, %25
  %27 = zext i32 %26 to i64
  %28 = inttoptr i64 %27 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %28, %struct.CommandControlBlock** %7, align 8
  br label %46

29:                                               ; preds = %3
  %30 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %31 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %30, i32 0, i32 4
  %32 = load %struct.CommandControlBlock**, %struct.CommandControlBlock*** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.CommandControlBlock*, %struct.CommandControlBlock** %32, i64 %34
  %36 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %35, align 8
  store %struct.CommandControlBlock* %36, %struct.CommandControlBlock** %7, align 8
  br label %46

37:                                               ; preds = %3
  %38 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %39 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 %41, 5
  %43 = add nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %45, %struct.CommandControlBlock** %7, align 8
  br label %46

46:                                               ; preds = %37, %29, %20, %11
  %47 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %48 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %47, i32 0, i32 1
  %49 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %48, align 8
  %50 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %51 = icmp ne %struct.AdapterControlBlock* %49, %50
  br i1 %51, label %58, label %52

52:                                               ; preds = %46
  %53 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %54 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ARCMSR_SRB_START, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %52, %46
  %59 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %60 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ARCMSR_SRB_TIMEOUT, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %66 = call i32 @arcmsr_free_srb(%struct.CommandControlBlock* %65)
  %67 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %68 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %71 = call i32 (i8*, i32, %struct.CommandControlBlock*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %69, %struct.CommandControlBlock* %70)
  br label %89

72:                                               ; preds = %58
  %73 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %74 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %77 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %78 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %81 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i8*, i32, %struct.CommandControlBlock*, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.1, i64 0, i64 0), i32 %75, %struct.CommandControlBlock* %76, i64 %79, i32 %82)
  br label %89

84:                                               ; preds = %52
  %85 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %4, align 8
  %86 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %7, align 8
  %87 = load i32, i32* %6, align 4
  %88 = call i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock* %85, %struct.CommandControlBlock* %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %72, %64
  ret void
}

declare dso_local i32 @arcmsr_free_srb(%struct.CommandControlBlock*) #1

declare dso_local i32 @printf(i8*, i32, %struct.CommandControlBlock*, ...) #1

declare dso_local i32 @arcmsr_report_srb_state(%struct.AdapterControlBlock*, %struct.CommandControlBlock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
