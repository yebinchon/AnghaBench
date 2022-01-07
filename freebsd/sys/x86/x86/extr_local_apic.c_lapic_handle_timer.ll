; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_handle_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/x86/extr_local_apic.c_lapic_handle_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapic = type { i32* }
%struct.TYPE_3__ = type { i32, i32 (%struct.TYPE_3__*, i32)*, i64 }
%struct.thread = type { i32, %struct.trapframe* }
%struct.trapframe = type { i32 }

@lapics = common dso_local global %struct.lapic* null, align 8
@apic_id = common dso_local global i32 0, align 4
@lapic_et = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@cpuid = common dso_local global i32 0, align 4
@hlt_cpus_mask = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapic_handle_timer(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca %struct.lapic*, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.thread*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %6 = call i32 (...) @lapic_eoi()
  %7 = load %struct.lapic*, %struct.lapic** @lapics, align 8
  %8 = load i32, i32* @apic_id, align 4
  %9 = call i64 @PCPU_GET(i32 %8)
  %10 = getelementptr inbounds %struct.lapic, %struct.lapic* %7, i64 %9
  store %struct.lapic* %10, %struct.lapic** %3, align 8
  %11 = load %struct.lapic*, %struct.lapic** %3, align 8
  %12 = getelementptr inbounds %struct.lapic, %struct.lapic* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = call i32 (...) @critical_enter()
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lapic_et, i32 0, i32 2), align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %41

19:                                               ; preds = %1
  %20 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %20, %struct.thread** %5, align 8
  %21 = load %struct.thread*, %struct.thread** %5, align 8
  %22 = getelementptr inbounds %struct.thread, %struct.thread* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %22, align 8
  %25 = load %struct.thread*, %struct.thread** %5, align 8
  %26 = getelementptr inbounds %struct.thread, %struct.thread* %25, i32 0, i32 1
  %27 = load %struct.trapframe*, %struct.trapframe** %26, align 8
  store %struct.trapframe* %27, %struct.trapframe** %4, align 8
  %28 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %29 = load %struct.thread*, %struct.thread** %5, align 8
  %30 = getelementptr inbounds %struct.thread, %struct.thread* %29, i32 0, i32 1
  store %struct.trapframe* %28, %struct.trapframe** %30, align 8
  %31 = load i32 (%struct.TYPE_3__*, i32)*, i32 (%struct.TYPE_3__*, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lapic_et, i32 0, i32 1), align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @lapic_et, i32 0, i32 0), align 8
  %33 = call i32 %31(%struct.TYPE_3__* @lapic_et, i32 %32)
  %34 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %35 = load %struct.thread*, %struct.thread** %5, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 1
  store %struct.trapframe* %34, %struct.trapframe** %36, align 8
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = getelementptr inbounds %struct.thread, %struct.thread* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %19, %1
  %42 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @lapic_eoi(...) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @critical_enter(...) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
