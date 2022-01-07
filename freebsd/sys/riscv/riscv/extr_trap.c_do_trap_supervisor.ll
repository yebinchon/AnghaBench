; ModuleID = '/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_do_trap_supervisor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/riscv/riscv/extr_trap.c_do_trap_supervisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i32, i32, i32 }

@SSTATUS_SPP = common dso_local global i32 0, align 4
@SSTATUS_SIE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"We must came from S mode with interrupts disabled\00", align 1
@EXCP_MASK = common dso_local global i32 0, align 4
@EXCP_INTR = common dso_local global i32 0, align 4
@KTR_TRAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"do_trap_supervisor: curthread: %p, sepc: %lx, frame: %p\00", align 1
@curthread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"No debugger in kernel.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Illegal instruction at 0x%016lx\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Unknown kernel exception %x trap value %lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_trap_supervisor(%struct.trapframe* %0) #0 {
  %2 = alloca %struct.trapframe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %2, align 8
  %5 = call i32 asm sideeffect "csrr $0, sstatus", "=&r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @SSTATUS_SPP, align 4
  %8 = load i32, i32* @SSTATUS_SIE, align 4
  %9 = or i32 %7, %8
  %10 = and i32 %6, %9
  %11 = load i32, i32* @SSTATUS_SPP, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %16 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EXCP_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %21 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @EXCP_INTR, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %28 = call i32 @riscv_cpu_intr(%struct.trapframe* %27)
  br label %60

29:                                               ; preds = %1
  %30 = load i32, i32* @KTR_TRAP, align 4
  %31 = load i32, i32* @curthread, align 4
  %32 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %33 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %36 = call i32 @CTR3(i32 %30, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %34, %struct.trapframe* %35)
  %37 = load i32, i32* %3, align 4
  switch i32 %37, label %52 [
    i32 132, label %38
    i32 131, label %38
    i32 133, label %38
    i32 128, label %38
    i32 129, label %38
    i32 134, label %41
    i32 130, label %45
  ]

38:                                               ; preds = %29, %29, %29, %29, %29
  %39 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %40 = call i32 @data_abort(%struct.trapframe* %39, i32 0)
  br label %60

41:                                               ; preds = %29
  %42 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %43 = call i32 @dump_regs(%struct.trapframe* %42)
  %44 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %60

45:                                               ; preds = %29
  %46 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %47 = call i32 @dump_regs(%struct.trapframe* %46)
  %48 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %49 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %50)
  br label %60

52:                                               ; preds = %29
  %53 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %54 = call i32 @dump_regs(%struct.trapframe* %53)
  %55 = load i32, i32* %3, align 4
  %56 = load %struct.trapframe*, %struct.trapframe** %2, align 8
  %57 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %55, i32 %58)
  br label %60

60:                                               ; preds = %26, %52, %45, %41, %38
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @riscv_cpu_intr(%struct.trapframe*) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i32, %struct.trapframe*) #1

declare dso_local i32 @data_abort(%struct.trapframe*, i32) #1

declare dso_local i32 @dump_regs(%struct.trapframe*) #1

declare dso_local i32 @panic(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 873}
