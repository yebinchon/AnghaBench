; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_handle_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_handle_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.intsrc }
%struct.intsrc = type { i64, i32* }
%struct.trapframe = type { i32 }
%struct.atpic = type { i32 }

@NUM_ISA_IRQS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"unknown int %u\0A\00", align 1
@atintrs = common dso_local global %struct.TYPE_2__* null, align 8
@OCW3_SEL = common dso_local global i32 0, align 4
@OCW3_RR = common dso_local global i32 0, align 4
@OCW3_RIS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atpic_handle_intr(i64 %0, %struct.trapframe* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.intsrc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.trapframe* %1, %struct.trapframe** %4, align 8
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @NUM_ISA_IRQS, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = load i64, i64* %3, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @KASSERT(i32 %11, i8* %13)
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** @atintrs, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.intsrc* %18, %struct.intsrc** %5, align 8
  %19 = load %struct.intsrc*, %struct.intsrc** %5, align 8
  %20 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %58

23:                                               ; preds = %2
  %24 = load i64, i64* %3, align 8
  %25 = icmp eq i64 %24, 7
  br i1 %25, label %29, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %3, align 8
  %28 = icmp eq i64 %27, 15
  br i1 %28, label %29, label %58

29:                                               ; preds = %26, %23
  %30 = load %struct.intsrc*, %struct.intsrc** %5, align 8
  %31 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.atpic*
  %34 = getelementptr inbounds %struct.atpic, %struct.atpic* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %6, align 4
  %36 = call i32 (...) @spinlock_enter()
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @OCW3_SEL, align 4
  %39 = load i32, i32* @OCW3_RR, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @OCW3_RIS, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @outb(i32 %37, i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @inb(i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @OCW3_SEL, align 4
  %48 = load i32, i32* @OCW3_RR, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @outb(i32 %46, i32 %49)
  %51 = call i32 (...) @spinlock_exit()
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @IRQ_MASK(i32 7)
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %29
  br label %62

57:                                               ; preds = %29
  br label %58

58:                                               ; preds = %57, %26, %2
  %59 = load %struct.intsrc*, %struct.intsrc** %5, align 8
  %60 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %61 = call i32 @intr_execute_handlers(%struct.intsrc* %59, %struct.trapframe* %60)
  br label %62

62:                                               ; preds = %58, %56
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @spinlock_exit(...) #1

declare dso_local i32 @IRQ_MASK(i32) #1

declare dso_local i32 @intr_execute_handlers(%struct.intsrc*, %struct.trapframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
