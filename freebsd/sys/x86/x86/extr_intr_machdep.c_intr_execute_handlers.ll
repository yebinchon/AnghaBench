; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_execute_handlers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_execute_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i64*, %struct.TYPE_2__*, %struct.intr_event*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.intsrc*)*, i32 (%struct.intsrc*, i32)* }
%struct.intr_event = type { i32 }
%struct.trapframe = type { i32 }

@v_intr = common dso_local global i32 0, align 4
@clkintr_pending = common dso_local global i32 0, align 4
@PIC_EOI = common dso_local global i32 0, align 4
@MAX_STRAY_LOG = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"stray irq%d\0A\00", align 1
@LOG_CRIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"too many stray irq %d's: not logging anymore\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intr_execute_handlers(%struct.intsrc* %0, %struct.trapframe* %1) #0 {
  %3 = alloca %struct.intsrc*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.intr_event*, align 8
  %6 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %3, align 8
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %7 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %8 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* @v_intr, align 4
  %13 = call i32 @VM_CNT_INC(i32 %12)
  %14 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %15 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %14, i32 0, i32 2
  %16 = load %struct.intr_event*, %struct.intr_event** %15, align 8
  store %struct.intr_event* %16, %struct.intr_event** %5, align 8
  %17 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %18 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.intsrc*)*, i32 (%struct.intsrc*)** %20, align 8
  %22 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %23 = call i32 %21(%struct.intsrc* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 1, i32* @clkintr_pending, align 4
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.intr_event*, %struct.intr_event** %5, align 8
  %29 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %30 = call i64 @intr_event_handle(%struct.intr_event* %28, %struct.trapframe* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %69

32:                                               ; preds = %27
  %33 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %34 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32 (%struct.intsrc*, i32)*, i32 (%struct.intsrc*, i32)** %36, align 8
  %38 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %39 = load i32, i32* @PIC_EOI, align 4
  %40 = call i32 %37(%struct.intsrc* %38, i32 %39)
  %41 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %42 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %41, i32 0, i32 0
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  %46 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %47 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @MAX_STRAY_LOG, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %32
  %53 = load i32, i32* @LOG_ERR, align 4
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @log(i32 %53, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %68

56:                                               ; preds = %32
  %57 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %58 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAX_STRAY_LOG, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load i32, i32* @LOG_CRIT, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @log(i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %52
  br label %69

69:                                               ; preds = %68, %27
  ret void
}

declare dso_local i32 @VM_CNT_INC(i32) #1

declare dso_local i64 @intr_event_handle(%struct.intr_event*, %struct.trapframe*) #1

declare dso_local i32 @log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
