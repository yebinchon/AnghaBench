; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_register_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_intr_machdep.c_intr_register_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}*, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"unregistered PIC\00", align 1
@num_io_irqs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"IRQ %d too large (%u irqs)\00", align 1
@interrupt_sources = common dso_local global %struct.intsrc** null, align 8
@EEXIST = common dso_local global i32 0, align 4
@intr_disable_src = common dso_local global i32 0, align 4
@intr_assign_cpu = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"irq%d:\00", align 1
@intrsrc_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intr_register_source(%struct.intsrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intsrc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %3, align 8
  %6 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %7 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = call i32 @intr_pic_registered(%struct.TYPE_2__* %8)
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %12 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.intsrc*)**
  %16 = load i32 (%struct.intsrc*)*, i32 (%struct.intsrc*)** %15, align 8
  %17 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %18 = call i32 %16(%struct.intsrc* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @num_io_irqs, align 4
  %21 = icmp slt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @num_io_irqs, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @KASSERT(i32 %22, i8* %26)
  %28 = load %struct.intsrc**, %struct.intsrc*** @interrupt_sources, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.intsrc*, %struct.intsrc** %28, i64 %30
  %32 = load %struct.intsrc*, %struct.intsrc** %31, align 8
  %33 = icmp ne %struct.intsrc* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %1
  %35 = load i32, i32* @EEXIST, align 4
  store i32 %35, i32* %2, align 4
  br label %87

36:                                               ; preds = %1
  %37 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %38 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %37, i32 0, i32 1
  %39 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @intr_disable_src, align 4
  %42 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %43 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %49 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* @intr_assign_cpu, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @intr_event_create(i32* %38, %struct.intsrc* %39, i32 0, i32 %40, i32 %41, i32 %47, i32 %53, i32 %54, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  store i32 %56, i32* %4, align 4
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %36
  %60 = load i32, i32* %4, align 4
  store i32 %60, i32* %2, align 4
  br label %87

61:                                               ; preds = %36
  %62 = call i32 @sx_xlock(i32* @intrsrc_lock)
  %63 = load %struct.intsrc**, %struct.intsrc*** @interrupt_sources, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.intsrc*, %struct.intsrc** %63, i64 %65
  %67 = load %struct.intsrc*, %struct.intsrc** %66, align 8
  %68 = icmp ne %struct.intsrc* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %61
  %70 = call i32 @sx_xunlock(i32* @intrsrc_lock)
  %71 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %72 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @intr_event_destroy(i32 %73)
  %75 = load i32, i32* @EEXIST, align 4
  store i32 %75, i32* %2, align 4
  br label %87

76:                                               ; preds = %61
  %77 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %78 = call i32 @intrcnt_register(%struct.intsrc* %77)
  %79 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %80 = load %struct.intsrc**, %struct.intsrc*** @interrupt_sources, align 8
  %81 = load i32, i32* %5, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.intsrc*, %struct.intsrc** %80, i64 %82
  store %struct.intsrc* %79, %struct.intsrc** %83, align 8
  %84 = load %struct.intsrc*, %struct.intsrc** %3, align 8
  %85 = getelementptr inbounds %struct.intsrc, %struct.intsrc* %84, i32 0, i32 0
  store i64 0, i64* %85, align 8
  %86 = call i32 @sx_xunlock(i32* @intrsrc_lock)
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %76, %69, %59, %34
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @intr_pic_registered(%struct.TYPE_2__*) #1

declare dso_local i32 @intr_event_create(i32*, %struct.intsrc*, i32, i32, i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @intr_event_destroy(i32) #1

declare dso_local i32 @intrcnt_register(%struct.intsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
