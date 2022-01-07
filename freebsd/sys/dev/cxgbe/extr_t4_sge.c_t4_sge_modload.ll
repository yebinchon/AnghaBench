; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_sge_modload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_t4_sge_modload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fl_pktshift = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"Invalid hw.cxgbe.fl_pktshift value (%d), using 0 instead.\0A\00", align 1
@spg_len = common dso_local global i32 0, align 4
@cpu_clflush_line_size = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"Invalid hw.cxgbe.spg_len value (%d), using %d instead.\0A\00", align 1
@cong_drop = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [57 x i8] c"Invalid hw.cxgbe.cong_drop value (%d), using 0 instead.\0A\00", align 1
@tscale = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"Invalid hw.cxgbe.tscale value (%d), using 1 instead.\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@extfree_refs = common dso_local global i32 0, align 4
@extfree_rels = common dso_local global i32 0, align 4
@CPL_FW4_MSG = common dso_local global i32 0, align 4
@handle_fw_msg = common dso_local global i32 0, align 4
@CPL_FW6_MSG = common dso_local global i32 0, align 4
@CPL_SGE_EGR_UPDATE = common dso_local global i32 0, align 4
@handle_sge_egr_update = common dso_local global i32 0, align 4
@CPL_RX_PKT = common dso_local global i32 0, align 4
@t4_eth_rx = common dso_local global i32 0, align 4
@FW6_TYPE_CMD_RPL = common dso_local global i32 0, align 4
@t4_handle_fw_rpl = common dso_local global i32 0, align 4
@FW6_TYPE_WRERR_RPL = common dso_local global i32 0, align 4
@t4_handle_wrerr_rpl = common dso_local global i32 0, align 4
@CPL_COOKIE_ETHOFLD = common dso_local global i32 0, align 4
@CPL_FW4_ACK = common dso_local global i32 0, align 4
@ethofld_fw4_ack = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @t4_sge_modload() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @fl_pktshift, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = load i32, i32* @fl_pktshift, align 4
  %6 = icmp sgt i32 %5, 7
  br i1 %6, label %7, label %10

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @fl_pktshift, align 4
  %9 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %8)
  store i32 0, i32* @fl_pktshift, align 4
  br label %10

10:                                               ; preds = %7, %4
  %11 = load i32, i32* @spg_len, align 4
  %12 = icmp ne i32 %11, 64
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load i32, i32* @spg_len, align 4
  %15 = icmp ne i32 %14, 128
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* @cpu_clflush_line_size, align 4
  %18 = icmp sgt i32 %17, 64
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 128, i32 64
  store i32 %20, i32* %1, align 4
  %21 = load i32, i32* @spg_len, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* @spg_len, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load i32, i32* %1, align 4
  store i32 %28, i32* @spg_len, align 4
  br label %29

29:                                               ; preds = %27, %13, %10
  %30 = load i32, i32* @cong_drop, align 4
  %31 = icmp slt i32 %30, -1
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* @cong_drop, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %29
  %36 = load i32, i32* @cong_drop, align 4
  %37 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  store i32 0, i32* @cong_drop, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @tscale, align 4
  %40 = icmp ne i32 %39, 1
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* @tscale, align 4
  %43 = icmp slt i32 %42, 3
  br i1 %43, label %47, label %44

44:                                               ; preds = %41
  %45 = load i32, i32* @tscale, align 4
  %46 = icmp sgt i32 %45, 17
  br i1 %46, label %47, label %50

47:                                               ; preds = %44, %41
  %48 = load i32, i32* @tscale, align 4
  %49 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i32 %48)
  store i32 1, i32* @tscale, align 4
  br label %50

50:                                               ; preds = %47, %44, %38
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = call i32 @counter_u64_alloc(i32 %51)
  store i32 %52, i32* @extfree_refs, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = call i32 @counter_u64_alloc(i32 %53)
  store i32 %54, i32* @extfree_rels, align 4
  %55 = load i32, i32* @extfree_refs, align 4
  %56 = call i32 @counter_u64_zero(i32 %55)
  %57 = load i32, i32* @extfree_rels, align 4
  %58 = call i32 @counter_u64_zero(i32 %57)
  %59 = call i32 (...) @t4_init_shared_cpl_handlers()
  %60 = load i32, i32* @CPL_FW4_MSG, align 4
  %61 = load i32, i32* @handle_fw_msg, align 4
  %62 = call i32 @t4_register_cpl_handler(i32 %60, i32 %61)
  %63 = load i32, i32* @CPL_FW6_MSG, align 4
  %64 = load i32, i32* @handle_fw_msg, align 4
  %65 = call i32 @t4_register_cpl_handler(i32 %63, i32 %64)
  %66 = load i32, i32* @CPL_SGE_EGR_UPDATE, align 4
  %67 = load i32, i32* @handle_sge_egr_update, align 4
  %68 = call i32 @t4_register_cpl_handler(i32 %66, i32 %67)
  %69 = load i32, i32* @CPL_RX_PKT, align 4
  %70 = load i32, i32* @t4_eth_rx, align 4
  %71 = call i32 @t4_register_cpl_handler(i32 %69, i32 %70)
  %72 = load i32, i32* @FW6_TYPE_CMD_RPL, align 4
  %73 = load i32, i32* @t4_handle_fw_rpl, align 4
  %74 = call i32 @t4_register_fw_msg_handler(i32 %72, i32 %73)
  %75 = load i32, i32* @FW6_TYPE_WRERR_RPL, align 4
  %76 = load i32, i32* @t4_handle_wrerr_rpl, align 4
  %77 = call i32 @t4_register_fw_msg_handler(i32 %75, i32 %76)
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @counter_u64_alloc(i32) #1

declare dso_local i32 @counter_u64_zero(i32) #1

declare dso_local i32 @t4_init_shared_cpl_handlers(...) #1

declare dso_local i32 @t4_register_cpl_handler(i32, i32) #1

declare dso_local i32 @t4_register_fw_msg_handler(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
