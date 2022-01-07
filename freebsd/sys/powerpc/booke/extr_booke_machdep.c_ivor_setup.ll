; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_ivor_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/booke/extr_booke_machdep.c_ivor_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPR_IVPR = common dso_local global i32 0, align 4
@interrupt_vector_base = common dso_local global i32 0, align 4
@SPR_IVOR0 = common dso_local global i32 0, align 4
@int_critical_input = common dso_local global i32 0, align 4
@SPR_IVOR1 = common dso_local global i32 0, align 4
@int_machine_check = common dso_local global i32 0, align 4
@SPR_IVOR2 = common dso_local global i32 0, align 4
@int_data_storage = common dso_local global i32 0, align 4
@SPR_IVOR3 = common dso_local global i32 0, align 4
@int_instr_storage = common dso_local global i32 0, align 4
@SPR_IVOR4 = common dso_local global i32 0, align 4
@int_external_input = common dso_local global i32 0, align 4
@SPR_IVOR5 = common dso_local global i32 0, align 4
@int_alignment = common dso_local global i32 0, align 4
@SPR_IVOR6 = common dso_local global i32 0, align 4
@int_program = common dso_local global i32 0, align 4
@SPR_IVOR8 = common dso_local global i32 0, align 4
@int_syscall = common dso_local global i32 0, align 4
@SPR_IVOR10 = common dso_local global i32 0, align 4
@int_decrementer = common dso_local global i32 0, align 4
@SPR_IVOR11 = common dso_local global i32 0, align 4
@int_fixed_interval_timer = common dso_local global i32 0, align 4
@SPR_IVOR12 = common dso_local global i32 0, align 4
@int_watchdog = common dso_local global i32 0, align 4
@SPR_IVOR13 = common dso_local global i32 0, align 4
@int_data_tlb_error = common dso_local global i32 0, align 4
@SPR_IVOR14 = common dso_local global i32 0, align 4
@int_inst_tlb_error = common dso_local global i32 0, align 4
@SPR_IVOR15 = common dso_local global i32 0, align 4
@int_debug = common dso_local global i32 0, align 4
@SPR_IVOR32 = common dso_local global i32 0, align 4
@int_vec = common dso_local global i32 0, align 4
@SPR_IVOR33 = common dso_local global i32 0, align 4
@int_vecast = common dso_local global i32 0, align 4
@SPR_IVOR7 = common dso_local global i32 0, align 4
@int_fpu = common dso_local global i32 0, align 4
@int_debug_ed = common dso_local global i32 0, align 4
@EPCR_ICM = common dso_local global i64 0, align 8
@SPR_EPCR = common dso_local global i32 0, align 4
@SPR_IVOR34 = common dso_local global i32 0, align 4
@SPR_IVOR35 = common dso_local global i32 0, align 4
@int_performance_counter = common dso_local global i32 0, align 4
@int_spe_fpdata = common dso_local global i32 0, align 4
@int_spe_fpround = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivor_setup() #0 {
  %1 = load i32, i32* @SPR_IVPR, align 4
  %2 = call i32 @mtspr(i32 %1, i64 and (i64 ptrtoint (i32* @interrupt_vector_base to i64), i64 -65536))
  %3 = load i32, i32* @SPR_IVOR0, align 4
  %4 = load i32, i32* @int_critical_input, align 4
  %5 = call i32 @SET_TRAP(i32 %3, i32 %4)
  %6 = load i32, i32* @SPR_IVOR1, align 4
  %7 = load i32, i32* @int_machine_check, align 4
  %8 = call i32 @SET_TRAP(i32 %6, i32 %7)
  %9 = load i32, i32* @SPR_IVOR2, align 4
  %10 = load i32, i32* @int_data_storage, align 4
  %11 = call i32 @SET_TRAP(i32 %9, i32 %10)
  %12 = load i32, i32* @SPR_IVOR3, align 4
  %13 = load i32, i32* @int_instr_storage, align 4
  %14 = call i32 @SET_TRAP(i32 %12, i32 %13)
  %15 = load i32, i32* @SPR_IVOR4, align 4
  %16 = load i32, i32* @int_external_input, align 4
  %17 = call i32 @SET_TRAP(i32 %15, i32 %16)
  %18 = load i32, i32* @SPR_IVOR5, align 4
  %19 = load i32, i32* @int_alignment, align 4
  %20 = call i32 @SET_TRAP(i32 %18, i32 %19)
  %21 = load i32, i32* @SPR_IVOR6, align 4
  %22 = load i32, i32* @int_program, align 4
  %23 = call i32 @SET_TRAP(i32 %21, i32 %22)
  %24 = load i32, i32* @SPR_IVOR8, align 4
  %25 = load i32, i32* @int_syscall, align 4
  %26 = call i32 @SET_TRAP(i32 %24, i32 %25)
  %27 = load i32, i32* @SPR_IVOR10, align 4
  %28 = load i32, i32* @int_decrementer, align 4
  %29 = call i32 @SET_TRAP(i32 %27, i32 %28)
  %30 = load i32, i32* @SPR_IVOR11, align 4
  %31 = load i32, i32* @int_fixed_interval_timer, align 4
  %32 = call i32 @SET_TRAP(i32 %30, i32 %31)
  %33 = load i32, i32* @SPR_IVOR12, align 4
  %34 = load i32, i32* @int_watchdog, align 4
  %35 = call i32 @SET_TRAP(i32 %33, i32 %34)
  %36 = load i32, i32* @SPR_IVOR13, align 4
  %37 = load i32, i32* @int_data_tlb_error, align 4
  %38 = call i32 @SET_TRAP(i32 %36, i32 %37)
  %39 = load i32, i32* @SPR_IVOR14, align 4
  %40 = load i32, i32* @int_inst_tlb_error, align 4
  %41 = call i32 @SET_TRAP(i32 %39, i32 %40)
  %42 = load i32, i32* @SPR_IVOR15, align 4
  %43 = load i32, i32* @int_debug, align 4
  %44 = call i32 @SET_TRAP(i32 %42, i32 %43)
  %45 = call i32 (...) @mfpvr()
  %46 = ashr i32 %45, 16
  %47 = and i32 %46, 65535
  switch i32 %47, label %66 [
    i32 128, label %48
    i32 132, label %55
    i32 129, label %55
    i32 131, label %62
    i32 130, label %62
  ]

48:                                               ; preds = %0
  %49 = load i32, i32* @SPR_IVOR32, align 4
  %50 = load i32, i32* @int_vec, align 4
  %51 = call i32 @SET_TRAP(i32 %49, i32 %50)
  %52 = load i32, i32* @SPR_IVOR33, align 4
  %53 = load i32, i32* @int_vecast, align 4
  %54 = call i32 @SET_TRAP(i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %0, %0, %48
  %56 = load i32, i32* @SPR_IVOR7, align 4
  %57 = load i32, i32* @int_fpu, align 4
  %58 = call i32 @SET_TRAP(i32 %56, i32 %57)
  %59 = load i32, i32* @SPR_IVOR15, align 4
  %60 = load i32, i32* @int_debug_ed, align 4
  %61 = call i32 @SET_TRAP(i32 %59, i32 %60)
  br label %66

62:                                               ; preds = %0, %0
  %63 = load i32, i32* @SPR_IVOR32, align 4
  %64 = load i32, i32* @int_vec, align 4
  %65 = call i32 @SET_TRAP(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %0, %62, %55
  ret void
}

declare dso_local i32 @mtspr(i32, i64) #1

declare dso_local i32 @SET_TRAP(i32, i32) #1

declare dso_local i32 @mfpvr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
