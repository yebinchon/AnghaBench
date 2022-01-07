; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm_machdep.c_cpu_copy_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_vm_machdep.c_cpu_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, %struct.pcb*, %struct.pcb* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pcb = type { i32, i32, i32, i32, i32*, i32, i64, i64, i64, i32, %struct.pcb* }

@PCB_NPXINITDONE = common dso_local global i32 0, align 4
@PCB_NPXUSERINITDONE = common dso_local global i32 0, align 4
@PCB_KERNNPX = common dso_local global i32 0, align 4
@cpu_max_ext_state_size = common dso_local global i32 0, align 4
@PSL_T = common dso_local global i32 0, align 4
@fork_return = common dso_local global i64 0, align 8
@fork_trampoline = common dso_local global i64 0, align 8
@setidt_disp = common dso_local global i64 0, align 8
@PSL_KERNEL = common dso_local global i32 0, align 4
@PSL_I = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_copy_thread(%struct.thread* %0, %struct.thread* %1) #0 {
  %3 = alloca %struct.thread*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.pcb*, align 8
  store %struct.thread* %0, %struct.thread** %3, align 8
  store %struct.thread* %1, %struct.thread** %4, align 8
  %6 = load %struct.thread*, %struct.thread** %3, align 8
  %7 = getelementptr inbounds %struct.thread, %struct.thread* %6, i32 0, i32 2
  %8 = load %struct.pcb*, %struct.pcb** %7, align 8
  store %struct.pcb* %8, %struct.pcb** %5, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 2
  %11 = load %struct.pcb*, %struct.pcb** %10, align 8
  %12 = load %struct.pcb*, %struct.pcb** %5, align 8
  %13 = call i32 @bcopy(%struct.pcb* %11, %struct.pcb* %12, i32 72)
  %14 = load i32, i32* @PCB_NPXINITDONE, align 4
  %15 = load i32, i32* @PCB_NPXUSERINITDONE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @PCB_KERNNPX, align 4
  %18 = or i32 %16, %17
  %19 = xor i32 %18, -1
  %20 = load %struct.pcb*, %struct.pcb** %5, align 8
  %21 = getelementptr inbounds %struct.pcb, %struct.pcb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load %struct.pcb*, %struct.pcb** %5, align 8
  %25 = call %struct.pcb* @get_pcb_user_save_pcb(%struct.pcb* %24)
  %26 = load %struct.pcb*, %struct.pcb** %5, align 8
  %27 = getelementptr inbounds %struct.pcb, %struct.pcb* %26, i32 0, i32 10
  store %struct.pcb* %25, %struct.pcb** %27, align 8
  %28 = load %struct.thread*, %struct.thread** %4, align 8
  %29 = call %struct.pcb* @get_pcb_user_save_td(%struct.thread* %28)
  %30 = load %struct.pcb*, %struct.pcb** %5, align 8
  %31 = getelementptr inbounds %struct.pcb, %struct.pcb* %30, i32 0, i32 10
  %32 = load %struct.pcb*, %struct.pcb** %31, align 8
  %33 = load i32, i32* @cpu_max_ext_state_size, align 4
  %34 = call i32 @bcopy(%struct.pcb* %29, %struct.pcb* %32, i32 %33)
  %35 = load %struct.thread*, %struct.thread** %4, align 8
  %36 = getelementptr inbounds %struct.thread, %struct.thread* %35, i32 0, i32 1
  %37 = load %struct.pcb*, %struct.pcb** %36, align 8
  %38 = load %struct.thread*, %struct.thread** %3, align 8
  %39 = getelementptr inbounds %struct.thread, %struct.thread* %38, i32 0, i32 1
  %40 = load %struct.pcb*, %struct.pcb** %39, align 8
  %41 = call i32 @bcopy(%struct.pcb* %37, %struct.pcb* %40, i32 4)
  %42 = load i32, i32* @PSL_T, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.thread*, %struct.thread** %3, align 8
  %45 = getelementptr inbounds %struct.thread, %struct.thread* %44, i32 0, i32 1
  %46 = load %struct.pcb*, %struct.pcb** %45, align 8
  %47 = getelementptr inbounds %struct.pcb, %struct.pcb* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %43
  store i32 %49, i32* %47, align 8
  %50 = load %struct.pcb*, %struct.pcb** %5, align 8
  %51 = getelementptr inbounds %struct.pcb, %struct.pcb* %50, i32 0, i32 8
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* @fork_return, align 8
  %53 = trunc i64 %52 to i32
  %54 = load %struct.pcb*, %struct.pcb** %5, align 8
  %55 = getelementptr inbounds %struct.pcb, %struct.pcb* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.pcb*, %struct.pcb** %5, align 8
  %57 = getelementptr inbounds %struct.pcb, %struct.pcb* %56, i32 0, i32 7
  store i64 0, i64* %57, align 8
  %58 = load %struct.thread*, %struct.thread** %3, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 1
  %60 = load %struct.pcb*, %struct.pcb** %59, align 8
  %61 = ptrtoint %struct.pcb* %60 to i32
  %62 = sext i32 %61 to i64
  %63 = sub i64 %62, 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.pcb*, %struct.pcb** %5, align 8
  %66 = getelementptr inbounds %struct.pcb, %struct.pcb* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.thread*, %struct.thread** %3, align 8
  %68 = ptrtoint %struct.thread* %67 to i32
  %69 = load %struct.pcb*, %struct.pcb** %5, align 8
  %70 = getelementptr inbounds %struct.pcb, %struct.pcb* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 4
  %71 = load i64, i64* @fork_trampoline, align 8
  %72 = trunc i64 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* @setidt_disp, align 8
  %75 = add nsw i64 %73, %74
  %76 = load %struct.pcb*, %struct.pcb** %5, align 8
  %77 = getelementptr inbounds %struct.pcb, %struct.pcb* %76, i32 0, i32 6
  store i64 %75, i64* %77, align 8
  %78 = call i32 (...) @rgs()
  %79 = load %struct.pcb*, %struct.pcb** %5, align 8
  %80 = getelementptr inbounds %struct.pcb, %struct.pcb* %79, i32 0, i32 5
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pcb*, %struct.pcb** %5, align 8
  %82 = getelementptr inbounds %struct.pcb, %struct.pcb* %81, i32 0, i32 4
  store i32* null, i32** %82, align 8
  %83 = load %struct.thread*, %struct.thread** %3, align 8
  %84 = getelementptr inbounds %struct.thread, %struct.thread* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @PSL_KERNEL, align 4
  %87 = load i32, i32* @PSL_I, align 4
  %88 = or i32 %86, %87
  %89 = load %struct.thread*, %struct.thread** %3, align 8
  %90 = getelementptr inbounds %struct.thread, %struct.thread* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  ret void
}

declare dso_local i32 @bcopy(%struct.pcb*, %struct.pcb*, i32) #1

declare dso_local %struct.pcb* @get_pcb_user_save_pcb(%struct.pcb*) #1

declare dso_local %struct.pcb* @get_pcb_user_save_td(%struct.thread*) #1

declare dso_local i32 @rgs(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
