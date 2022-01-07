; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_disable_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atpic.c_atpic_disable_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.intsrc = type { i32* }
%struct.atpic_intsrc = type { i64 }
%struct.atpic = type { i32, i64 }

@INTR_TRIGGER_EDGE = common dso_local global i64 0, align 8
@ICU_IMR_OFFSET = common dso_local global i64 0, align 8
@PIC_EOI = common dso_local global i32 0, align 4
@atpics = common dso_local global %struct.TYPE_2__* null, align 8
@MASTER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*, i32)* @atpic_disable_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atpic_disable_source(%struct.intsrc* %0, i32 %1) #0 {
  %3 = alloca %struct.intsrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atpic_intsrc*, align 8
  %6 = alloca %struct.atpic*, align 8
  store %struct.intsrc* %0, %struct.intsrc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %8 = bitcast %struct.intsrc* %7 to %struct.atpic_intsrc*
  store %struct.atpic_intsrc* %8, %struct.atpic_intsrc** %5, align 8
  %9 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %10 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = bitcast i32* %11 to %struct.atpic*
  store %struct.atpic* %12, %struct.atpic** %6, align 8
  %13 = call i32 (...) @spinlock_enter()
  %14 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %5, align 8
  %15 = getelementptr inbounds %struct.atpic_intsrc, %struct.atpic_intsrc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @INTR_TRIGGER_EDGE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.atpic_intsrc*, %struct.atpic_intsrc** %5, align 8
  %21 = call i32 @IMEN_MASK(%struct.atpic_intsrc* %20)
  %22 = load %struct.atpic*, %struct.atpic** %6, align 8
  %23 = getelementptr inbounds %struct.atpic, %struct.atpic* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.atpic*, %struct.atpic** %6, align 8
  %27 = getelementptr inbounds %struct.atpic, %struct.atpic* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ICU_IMR_OFFSET, align 8
  %30 = add nsw i64 %28, %29
  %31 = load %struct.atpic*, %struct.atpic** %6, align 8
  %32 = getelementptr inbounds %struct.atpic, %struct.atpic* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @outb(i64 %30, i32 %33)
  br label %35

35:                                               ; preds = %19, %2
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @PIC_EOI, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %55

39:                                               ; preds = %35
  %40 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %41 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @atpics, align 8
  %44 = load i64, i64* @MASTER, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = icmp eq i32* %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %50 = call i32 @_atpic_eoi_master(%struct.intsrc* %49)
  br label %54

51:                                               ; preds = %39
  %52 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %53 = call i32 @_atpic_eoi_slave(%struct.intsrc* %52)
  br label %54

54:                                               ; preds = %51, %48
  br label %55

55:                                               ; preds = %54, %35
  %56 = call i32 (...) @spinlock_exit()
  ret void
}

declare dso_local i32 @spinlock_enter(...) #1

declare dso_local i32 @IMEN_MASK(%struct.atpic_intsrc*) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @_atpic_eoi_master(%struct.intsrc*) #1

declare dso_local i32 @_atpic_eoi_slave(%struct.intsrc*) #1

declare dso_local i32 @spinlock_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
