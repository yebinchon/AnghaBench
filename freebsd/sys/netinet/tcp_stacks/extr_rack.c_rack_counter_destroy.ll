; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_counter_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_rack.c_rack_counter_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rack_badfr = common dso_local global i32 0, align 4
@rack_badfr_bytes = common dso_local global i32 0, align 4
@rack_rtm_prr_retran = common dso_local global i32 0, align 4
@rack_rtm_prr_newdata = common dso_local global i32 0, align 4
@rack_timestamp_mismatch = common dso_local global i32 0, align 4
@rack_reorder_seen = common dso_local global i32 0, align 4
@rack_tlp_tot = common dso_local global i32 0, align 4
@rack_tlp_newdata = common dso_local global i32 0, align 4
@rack_tlp_retran = common dso_local global i32 0, align 4
@rack_tlp_retran_bytes = common dso_local global i32 0, align 4
@rack_tlp_retran_fail = common dso_local global i32 0, align 4
@rack_to_tot = common dso_local global i32 0, align 4
@rack_to_arm_rack = common dso_local global i32 0, align 4
@rack_to_arm_tlp = common dso_local global i32 0, align 4
@rack_paced_segments = common dso_local global i32 0, align 4
@rack_unpaced_segments = common dso_local global i32 0, align 4
@rack_saw_enobuf = common dso_local global i32 0, align 4
@rack_saw_enetunreach = common dso_local global i32 0, align 4
@rack_to_alloc_hard = common dso_local global i32 0, align 4
@rack_to_alloc_emerg = common dso_local global i32 0, align 4
@rack_sack_proc_all = common dso_local global i32 0, align 4
@rack_sack_proc_short = common dso_local global i32 0, align 4
@rack_sack_proc_restart = common dso_local global i32 0, align 4
@rack_to_alloc = common dso_local global i32 0, align 4
@rack_to_alloc_limited = common dso_local global i32 0, align 4
@rack_alloc_limited_conns = common dso_local global i32 0, align 4
@rack_split_limited = common dso_local global i32 0, align 4
@rack_find_high = common dso_local global i32 0, align 4
@rack_enter_tlp_calc = common dso_local global i32 0, align 4
@rack_used_tlpmethod = common dso_local global i32 0, align 4
@rack_used_tlpmethod2 = common dso_local global i32 0, align 4
@rack_progress_drops = common dso_local global i32 0, align 4
@rack_input_idle_reduces = common dso_local global i32 0, align 4
@rack_collapsed_win = common dso_local global i32 0, align 4
@rack_tlp_does_nada = common dso_local global i32 0, align 4
@rack_out_size = common dso_local global i32 0, align 4
@TCP_MSS_ACCT_SIZE = common dso_local global i32 0, align 4
@rack_opts_arry = common dso_local global i32 0, align 4
@RACK_OPTS_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @rack_counter_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rack_counter_destroy() #0 {
  %1 = load i32, i32* @rack_badfr, align 4
  %2 = call i32 @counter_u64_free(i32 %1)
  %3 = load i32, i32* @rack_badfr_bytes, align 4
  %4 = call i32 @counter_u64_free(i32 %3)
  %5 = load i32, i32* @rack_rtm_prr_retran, align 4
  %6 = call i32 @counter_u64_free(i32 %5)
  %7 = load i32, i32* @rack_rtm_prr_newdata, align 4
  %8 = call i32 @counter_u64_free(i32 %7)
  %9 = load i32, i32* @rack_timestamp_mismatch, align 4
  %10 = call i32 @counter_u64_free(i32 %9)
  %11 = load i32, i32* @rack_reorder_seen, align 4
  %12 = call i32 @counter_u64_free(i32 %11)
  %13 = load i32, i32* @rack_tlp_tot, align 4
  %14 = call i32 @counter_u64_free(i32 %13)
  %15 = load i32, i32* @rack_tlp_newdata, align 4
  %16 = call i32 @counter_u64_free(i32 %15)
  %17 = load i32, i32* @rack_tlp_retran, align 4
  %18 = call i32 @counter_u64_free(i32 %17)
  %19 = load i32, i32* @rack_tlp_retran_bytes, align 4
  %20 = call i32 @counter_u64_free(i32 %19)
  %21 = load i32, i32* @rack_tlp_retran_fail, align 4
  %22 = call i32 @counter_u64_free(i32 %21)
  %23 = load i32, i32* @rack_to_tot, align 4
  %24 = call i32 @counter_u64_free(i32 %23)
  %25 = load i32, i32* @rack_to_arm_rack, align 4
  %26 = call i32 @counter_u64_free(i32 %25)
  %27 = load i32, i32* @rack_to_arm_tlp, align 4
  %28 = call i32 @counter_u64_free(i32 %27)
  %29 = load i32, i32* @rack_paced_segments, align 4
  %30 = call i32 @counter_u64_free(i32 %29)
  %31 = load i32, i32* @rack_unpaced_segments, align 4
  %32 = call i32 @counter_u64_free(i32 %31)
  %33 = load i32, i32* @rack_saw_enobuf, align 4
  %34 = call i32 @counter_u64_free(i32 %33)
  %35 = load i32, i32* @rack_saw_enetunreach, align 4
  %36 = call i32 @counter_u64_free(i32 %35)
  %37 = load i32, i32* @rack_to_alloc_hard, align 4
  %38 = call i32 @counter_u64_free(i32 %37)
  %39 = load i32, i32* @rack_to_alloc_emerg, align 4
  %40 = call i32 @counter_u64_free(i32 %39)
  %41 = load i32, i32* @rack_sack_proc_all, align 4
  %42 = call i32 @counter_u64_free(i32 %41)
  %43 = load i32, i32* @rack_sack_proc_short, align 4
  %44 = call i32 @counter_u64_free(i32 %43)
  %45 = load i32, i32* @rack_sack_proc_restart, align 4
  %46 = call i32 @counter_u64_free(i32 %45)
  %47 = load i32, i32* @rack_to_alloc, align 4
  %48 = call i32 @counter_u64_free(i32 %47)
  %49 = load i32, i32* @rack_to_alloc_limited, align 4
  %50 = call i32 @counter_u64_free(i32 %49)
  %51 = load i32, i32* @rack_alloc_limited_conns, align 4
  %52 = call i32 @counter_u64_free(i32 %51)
  %53 = load i32, i32* @rack_split_limited, align 4
  %54 = call i32 @counter_u64_free(i32 %53)
  %55 = load i32, i32* @rack_find_high, align 4
  %56 = call i32 @counter_u64_free(i32 %55)
  %57 = load i32, i32* @rack_enter_tlp_calc, align 4
  %58 = call i32 @counter_u64_free(i32 %57)
  %59 = load i32, i32* @rack_used_tlpmethod, align 4
  %60 = call i32 @counter_u64_free(i32 %59)
  %61 = load i32, i32* @rack_used_tlpmethod2, align 4
  %62 = call i32 @counter_u64_free(i32 %61)
  %63 = load i32, i32* @rack_progress_drops, align 4
  %64 = call i32 @counter_u64_free(i32 %63)
  %65 = load i32, i32* @rack_input_idle_reduces, align 4
  %66 = call i32 @counter_u64_free(i32 %65)
  %67 = load i32, i32* @rack_collapsed_win, align 4
  %68 = call i32 @counter_u64_free(i32 %67)
  %69 = load i32, i32* @rack_tlp_does_nada, align 4
  %70 = call i32 @counter_u64_free(i32 %69)
  %71 = load i32, i32* @rack_out_size, align 4
  %72 = load i32, i32* @TCP_MSS_ACCT_SIZE, align 4
  %73 = call i32 @COUNTER_ARRAY_FREE(i32 %71, i32 %72)
  %74 = load i32, i32* @rack_opts_arry, align 4
  %75 = load i32, i32* @RACK_OPTS_SIZE, align 4
  %76 = call i32 @COUNTER_ARRAY_FREE(i32 %74, i32 %75)
  ret void
}

declare dso_local i32 @counter_u64_free(i32) #1

declare dso_local i32 @COUNTER_ARRAY_FREE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
