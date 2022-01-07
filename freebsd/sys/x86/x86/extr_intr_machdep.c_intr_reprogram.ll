; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_reprogram.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_reprogram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.intsrc*)* }

@intrsrc_lock = common dso_local global i32 0, align 4
@num_io_irqs = common dso_local global i64 0, align 8
@interrupt_sources = common dso_local global %struct.intsrc** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intr_reprogram() #0 {
  %1 = alloca %struct.intsrc*, align 8
  %2 = alloca i64, align 8
  %3 = call i32 @sx_xlock(i32* @intrsrc_lock)
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %32, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @num_io_irqs, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %35

8:                                                ; preds = %4
  %9 = load %struct.intsrc**, %struct.intsrc*** @interrupt_sources, align 8
  %10 = load i64, i64* %2, align 8
  %11 = getelementptr inbounds %struct.intsrc*, %struct.intsrc** %9, i64 %10
  %12 = load %struct.intsrc*, %struct.intsrc** %11, align 8
  store %struct.intsrc* %12, %struct.intsrc** %1, align 8
  %13 = load %struct.intsrc*, %struct.intsrc** %1, align 8
  %14 = icmp eq %struct.intsrc* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %32

16:                                               ; preds = %8
  %17 = load %struct.intsrc*, %struct.intsrc** %1, align 8
  %18 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.intsrc*)*, i32 (%struct.intsrc*)** %20, align 8
  %22 = icmp ne i32 (%struct.intsrc*)* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %16
  %24 = load %struct.intsrc*, %struct.intsrc** %1, align 8
  %25 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.intsrc*)*, i32 (%struct.intsrc*)** %27, align 8
  %29 = load %struct.intsrc*, %struct.intsrc** %1, align 8
  %30 = call i32 %28(%struct.intsrc* %29)
  br label %31

31:                                               ; preds = %23, %16
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %2, align 8
  br label %4

35:                                               ; preds = %4
  %36 = call i32 @sx_xunlock(i32* @intrsrc_lock)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
