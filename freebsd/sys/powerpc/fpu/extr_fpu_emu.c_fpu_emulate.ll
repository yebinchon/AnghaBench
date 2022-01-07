; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_emu.c_fpu_emulate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/fpu/extr_fpu_emu.c_fpu_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trapframe = type { i64 }
%struct.fpu = type { i32 }
%union.instr = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.fpemu = type { i64, %struct.fpu* }
%struct.TYPE_3__ = type { i64 }

@SIGSEGV = common dso_local global i32 0, align 4
@FPE_EX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"fpu_emulate: emulating insn %x at %p\0A\00", align 1
@OPC_TWI = common dso_local global i64 0, align 8
@OPC_integer_31 = common dso_local global i64 0, align 8
@OPC31_TW = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"fpu_emulate: SIGTRAP\0A\00", align 1
@SIGTRAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"fpu_emulate: success\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"fpu_emulate: SIGFPE\0A\00", align 1
@SIGFPE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"fpu_emulate: SIGSEGV\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"fpu_emulate: SIGILL\0A\00", align 1
@SIGILL = common dso_local global i32 0, align 4
@KDB_WHY_UNSET = common dso_local global i32 0, align 4
@fpe_debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu_emulate(%struct.trapframe* %0, %struct.fpu* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trapframe*, align 8
  %5 = alloca %struct.fpu*, align 8
  %6 = alloca %union.instr, align 8
  %7 = alloca %struct.fpemu, align 8
  %8 = alloca i32, align 4
  store %struct.trapframe* %0, %struct.trapframe** %4, align 8
  store %struct.fpu* %1, %struct.fpu** %5, align 8
  %9 = load %struct.fpu*, %struct.fpu** %5, align 8
  %10 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %7, i32 0, i32 1
  store %struct.fpu* %9, %struct.fpu** %10, align 8
  %11 = getelementptr inbounds %struct.fpemu, %struct.fpemu* %7, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %13 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast %union.instr* %6 to i32*
  %17 = call i64 @copyin(i8* %15, i32* %16, i32 4)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @SIGSEGV, align 4
  store i32 %20, i32* %3, align 4
  br label %76

21:                                               ; preds = %2
  %22 = load i32, i32* @FPE_EX, align 4
  %23 = bitcast %union.instr* %6 to i32*
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %26 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call i32 @DPRINTF(i32 %22, i8* %28)
  %30 = bitcast %union.instr* %6 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @OPC_TWI, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %21
  %36 = bitcast %union.instr* %6 to %struct.TYPE_3__*
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @OPC_integer_31, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = bitcast %union.instr* %6 to %struct.TYPE_4__*
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @OPC31_TW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41, %21
  %48 = load i32, i32* @FPE_EX, align 4
  %49 = call i32 @DPRINTF(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @SIGTRAP, align 4
  store i32 %50, i32* %3, align 4
  br label %76

51:                                               ; preds = %41, %35
  store i32 0, i32* %8, align 4
  %52 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %53 = call i32 @fpu_execute(%struct.trapframe* %52, %struct.fpemu* %7, %union.instr* %6)
  switch i32 %53, label %70 [
    i32 0, label %54
    i32 129, label %61
    i32 130, label %65
    i32 128, label %69
  ]

54:                                               ; preds = %51
  %55 = load i32, i32* @FPE_EX, align 4
  %56 = call i32 @DPRINTF(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.trapframe*, %struct.trapframe** %4, align 8
  %58 = getelementptr inbounds %struct.trapframe, %struct.trapframe* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 4
  store i64 %60, i64* %58, align 8
  br label %74

61:                                               ; preds = %51
  %62 = load i32, i32* @FPE_EX, align 4
  %63 = call i32 @DPRINTF(i32 %62, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @SIGFPE, align 4
  store i32 %64, i32* %8, align 4
  br label %74

65:                                               ; preds = %51
  %66 = load i32, i32* @FPE_EX, align 4
  %67 = call i32 @DPRINTF(i32 %66, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %68 = load i32, i32* @SIGSEGV, align 4
  store i32 %68, i32* %8, align 4
  br label %74

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %51, %69
  %71 = load i32, i32* @FPE_EX, align 4
  %72 = call i32 @DPRINTF(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %73 = load i32, i32* @SIGILL, align 4
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %70, %65, %61, %54
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %3, align 4
  br label %76

76:                                               ; preds = %74, %47, %19
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i64 @copyin(i8*, i32*, i32) #1

declare dso_local i32 @DPRINTF(i32, i8*) #1

declare dso_local i32 @fpu_execute(%struct.trapframe*, %struct.fpemu*, %union.instr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
