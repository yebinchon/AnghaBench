; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_ptrace_single_step.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_pm_machdep.c_ptrace_single_step.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_2__, i32, %struct.proc*, %struct.trapframe* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.proc = type { i8*, i32 }
%struct.trapframe = type { i64, i32, i32 }

@MIPS_BREAK_SSTEP = common dso_local global i32 0, align 4
@KTR_PTRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"ptrace_single_step: tid %d, current instr at %#lx: %#08x\00", align 1
@MIPS_CR_BR_DELAY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"SS %s (%d): breakpoint already set at %p (va %p)\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"ptrace_single_step: tid %d, break set at %#lx: (%#08x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptrace_single_step(%struct.thread* %0) #0 {
  %2 = alloca %struct.thread*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc*, align 8
  store %struct.thread* %0, %struct.thread** %2, align 8
  %9 = load %struct.thread*, %struct.thread** %2, align 8
  %10 = getelementptr inbounds %struct.thread, %struct.thread* %9, i32 0, i32 3
  %11 = load %struct.trapframe*, %struct.trapframe** %10, align 8
  store %struct.trapframe* %11, %struct.trapframe** %4, align 8
  %12 = load i32, i32* @MIPS_BREAK_SSTEP, align 4
  store i32 %12, i32* %6, align 4
  %13 = load %struct.thread*, %struct.thread** %2, align 8
  %14 = getelementptr inbounds %struct.thread, %struct.thread* %13, i32 0, i32 2
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %8, align 8
  %16 = load %struct.proc*, %struct.proc** %8, align 8
  %17 = call i32 @PROC_UNLOCK(%struct.proc* %16)
  %18 = load %struct.thread*, %struct.thread** %2, align 8
  %19 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %20 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ptrace_read_int(%struct.thread* %18, i64 %21, i32* %7)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %98

26:                                               ; preds = %1
  %27 = load i32, i32* @KTR_PTRACE, align 4
  %28 = load %struct.thread*, %struct.thread** %2, align 8
  %29 = getelementptr inbounds %struct.thread, %struct.thread* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %32 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @CTR3(i32 %27, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %33, i32 %34)
  %36 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %37 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @MIPS_CR_BR_DELAY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %26
  %43 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %44 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %45 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %48 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = ptrtoint i32* %7 to i64
  %51 = call i64 @MipsEmulateBranch(%struct.trapframe* %43, i64 %46, i32 %49, i64 %50)
  store i64 %51, i64* %3, align 8
  br label %57

52:                                               ; preds = %26
  %53 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %54 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %3, align 8
  br label %57

57:                                               ; preds = %52, %42
  %58 = load %struct.thread*, %struct.thread** %2, align 8
  %59 = getelementptr inbounds %struct.thread, %struct.thread* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %57
  %64 = load %struct.proc*, %struct.proc** %8, align 8
  %65 = getelementptr inbounds %struct.proc, %struct.proc* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.proc*, %struct.proc** %8, align 8
  %68 = getelementptr inbounds %struct.proc, %struct.proc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.thread*, %struct.thread** %2, align 8
  %71 = getelementptr inbounds %struct.thread, %struct.thread* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load i64, i64* %3, align 8
  %76 = inttoptr i64 %75 to i8*
  %77 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* %66, i32 %69, i8* %74, i8* %76)
  %78 = load i32, i32* @EFAULT, align 4
  store i32 %78, i32* %5, align 4
  br label %98

79:                                               ; preds = %57
  %80 = load i64, i64* %3, align 8
  %81 = load %struct.thread*, %struct.thread** %2, align 8
  %82 = getelementptr inbounds %struct.thread, %struct.thread* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  %84 = load %struct.thread*, %struct.thread** %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load %struct.thread*, %struct.thread** %2, align 8
  %87 = getelementptr inbounds %struct.thread, %struct.thread* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = call i32 @ptrace_read_int(%struct.thread* %84, i64 %85, i32* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %79
  br label %98

93:                                               ; preds = %79
  %94 = load %struct.thread*, %struct.thread** %2, align 8
  %95 = load i64, i64* %3, align 8
  %96 = load i32, i32* %6, align 4
  %97 = call i32 @ptrace_write_int(%struct.thread* %94, i64 %95, i32 %96)
  store i32 %97, i32* %5, align 4
  br label %98

98:                                               ; preds = %93, %92, %63, %25
  %99 = load %struct.proc*, %struct.proc** %8, align 8
  %100 = call i32 @PROC_LOCK(%struct.proc* %99)
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %114

103:                                              ; preds = %98
  %104 = load i32, i32* @KTR_PTRACE, align 4
  %105 = load %struct.thread*, %struct.thread** %2, align 8
  %106 = getelementptr inbounds %struct.thread, %struct.thread* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load i64, i64* %3, align 8
  %109 = load %struct.thread*, %struct.thread** %2, align 8
  %110 = getelementptr inbounds %struct.thread, %struct.thread* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @CTR3(i32 %104, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %107, i64 %108, i32 %112)
  br label %114

114:                                              ; preds = %103, %98
  %115 = load i32, i32* %5, align 4
  ret i32 %115
}

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @ptrace_read_int(%struct.thread*, i64, i32*) #1

declare dso_local i32 @CTR3(i32, i8*, i32, i64, i32) #1

declare dso_local i64 @MipsEmulateBranch(%struct.trapframe*, i64, i32, i64) #1

declare dso_local i32 @printf(i8*, i8*, i32, i8*, i8*) #1

declare dso_local i32 @ptrace_write_int(%struct.thread*, i64, i32) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
