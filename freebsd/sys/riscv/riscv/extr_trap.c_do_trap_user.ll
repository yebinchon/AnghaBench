; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_do_trap_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_do_trap_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.pcb*, %struct.trapframe* }
%struct.pcb = type { i32 }
%struct.trapframe = type { i32, i32, i32, i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@SSTATUS_SPP = common dso_local global i32 0, align 4
@SSTATUS_SIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"We must came from U mode with interrupts disabled\00", align 1
@EXCP_MASK = common dso_local global i32 0, align 4
@EXCP_INTR = common dso_local global i32 0, align 4
@KTR_TRAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"do_trap_user: curthread: %p, sepc: %lx, frame: %p\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@ILL_ILLTRP = common dso_local global i32 0, align 4
@SIGTRAP = common dso_local global i32 0, align 4
@TRAP_BRKPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"Unknown userland exception %x, trap value %lx\0A\00", align 1
@PCB_FP_STARTED = common dso_local global i32 0, align 4
@SSTATUS_FS_CLEAN = common dso_local global i32 0, align 4
@SSTATUS_FS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_trap_user(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcb*, align 8
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %7 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %7, %struct.thread** %4, align 8
  %8 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %9 = load %struct.thread*, %struct.thread** %4, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 1
  store %struct.trapframe* %8, %struct.trapframe** %10, align 8
  %11 = load %struct.thread*, %struct.thread** %4, align 8
  %12 = getelementptr inbounds %struct.thread, %struct.thread* %11, i32 0, i32 0
  %13 = load %struct.pcb*, %struct.pcb** %12, align 8
  store %struct.pcb* %13, %struct.pcb** %6, align 8
  %14 = call i32 asm sideeffect "csrr $0, sstatus", "=&r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @SSTATUS_SPP, align 4
  %17 = load i32, i32* @SSTATUS_SIE, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %24 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @EXCP_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %3, align 4
  %28 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %29 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @EXCP_INTR, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %36 = call i32 @riscv_cpu_intr(%struct.trapframe* %35)
  br label %90

37:                                               ; preds = %1
  %38 = load i32, i32* @KTR_TRAP, align 4
  %39 = load %struct.thread*, %struct.thread** @curthread, align 8
  %40 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %41 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %44 = call i32 @CTR3(i32 %38, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), %struct.thread* %39, i32 %42, %struct.trapframe* %43)
  %45 = load i32, i32* %3, align 4
  switch i32 %45, label %82 [
    i32 134, label %46
    i32 133, label %46
    i32 135, label %46
    i32 129, label %46
    i32 130, label %46
    i32 131, label %46
    i32 128, label %49
    i32 132, label %56
    i32 136, label %69
  ]

46:                                               ; preds = %37, %37, %37, %37, %37, %37
  %47 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %48 = call i32 @data_abort(%struct.trapframe* %47, i32 1)
  br label %90

49:                                               ; preds = %37
  %50 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %51 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 4
  store i32 %53, i32* %51, align 4
  %54 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %55 = call i32 @svc_handler(%struct.trapframe* %54)
  br label %90

56:                                               ; preds = %37
  %57 = load %struct.thread*, %struct.thread** %4, align 8
  %58 = load i32, i32* @SIGILL, align 4
  %59 = load i32, i32* @ILL_ILLTRP, align 4
  %60 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %61 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @call_trapsignal(%struct.thread* %57, i32 %58, i32 %59, i8* %64)
  %66 = load %struct.thread*, %struct.thread** %4, align 8
  %67 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %68 = call i32 @userret(%struct.thread* %66, %struct.trapframe* %67)
  br label %90

69:                                               ; preds = %37
  %70 = load %struct.thread*, %struct.thread** %4, align 8
  %71 = load i32, i32* @SIGTRAP, align 4
  %72 = load i32, i32* @TRAP_BRKPT, align 4
  %73 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %74 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = inttoptr i64 %76 to i8*
  %78 = call i32 @call_trapsignal(%struct.thread* %70, i32 %71, i32 %72, i8* %77)
  %79 = load %struct.thread*, %struct.thread** %4, align 8
  %80 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %81 = call i32 @userret(%struct.thread* %79, %struct.trapframe* %80)
  br label %90

82:                                               ; preds = %37
  %83 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %84 = call i32 @dump_regs(%struct.trapframe* %83)
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %87 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %88)
  br label %90

90:                                               ; preds = %34, %82, %69, %56, %49, %46
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @riscv_cpu_intr(%struct.trapframe*) #1

declare dso_local i32 @CTR3(i32, i8*, %struct.thread*, i32, %struct.trapframe*) #1

declare dso_local i32 @data_abort(%struct.trapframe*, i32) #1

declare dso_local i32 @svc_handler(%struct.trapframe*) #1

declare dso_local i32 @call_trapsignal(%struct.thread*, i32, i32, i8*) #1

declare dso_local i32 @userret(%struct.thread*, %struct.trapframe*) #1

declare dso_local i32 @dump_regs(%struct.trapframe*) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1218}
