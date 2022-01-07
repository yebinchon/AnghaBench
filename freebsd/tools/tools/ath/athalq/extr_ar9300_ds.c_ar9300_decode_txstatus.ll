; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar9300_ds.c_ar9300_decode_txstatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athalq/extr_ar9300_ds.c_ar9300_decode_txstatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_ath_alq_payload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ar9300_txs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [70 x i8] c"[%u.%06u] [%llu] TXSTATUS TxTimestamp=%u (%u), DescId=0x%04x, QCU=%d\0A\00", align 1
@last_ts = common dso_local global i32 0, align 4
@AR_tx_desc_id = common dso_local global i32 0, align 4
@AR_tx_qcu_num = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"    DescId=0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"    DescLen=%d, TxQcuNum=%d, CtrlStat=%d, DescId=0x%04x\0A\00", align 1
@AR_ctrl_stat = common dso_local global i32 0, align 4
@AR_desc_id = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"    TxTimestamp: %u\0A\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"    TxDone=%d, SeqNo=%d, TxOpExceed=%d, TXBFStatus=%d\0A\00", align 1
@AR_tx_done = common dso_local global i32 0, align 4
@AR_seq_num = common dso_local global i32 0, align 4
@AR_tx_op_exceeded = common dso_local global i32 0, align 4
@AR_TXBFStatus = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"    TXBfMismatch=%d, BFStreamMiss=%d, FinalTxIdx=%d\0A\00", align 1
@AR_tx_bf_bw_mismatch = common dso_local global i32 0, align 4
@AR_tx_bf_stream_miss = common dso_local global i32 0, align 4
@AR_final_tx_idx = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [71 x i8] c"    TxBfDestMiss=%d, TxBfExpired=%d, PwrMgmt=%d, Tid=%d, FastTsBit=%d\0A\00", align 1
@AR_tx_bf_dest_miss = common dso_local global i32 0, align 4
@AR_tx_bf_expired = common dso_local global i32 0, align 4
@AR_power_mgmt = common dso_local global i32 0, align 4
@AR_tx_tid = common dso_local global i32 0, align 4
@AR_tx_fast_ts = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [53 x i8] c"    Frmok=%d, xretries=%d, fifounderrun=%d, filt=%d\0A\00", align 1
@AR_frm_xmit_ok = common dso_local global i32 0, align 4
@AR_excessive_retries = common dso_local global i32 0, align 4
@AR_fifounderrun = common dso_local global i32 0, align 4
@AR_filtered = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [73 x i8] c"    DelimUnderrun=%d, DataUnderun=%d, DescCfgErr=%d, TxTimerExceeded=%d\0A\00", align 1
@AR_tx_delim_underrun = common dso_local global i32 0, align 4
@AR_tx_data_underrun = common dso_local global i32 0, align 4
@AR_desc_cfg_err = common dso_local global i32 0, align 4
@AR_tx_timer_expired = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"    RTScnt=%d, FailCnt=%d, VRetryCnt=%d\0A\00", align 1
@AR_rts_fail_cnt = common dso_local global i32 0, align 4
@AR_data_fail_cnt = common dso_local global i32 0, align 4
@AR_virt_retry_cnt = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [26 x i8] c"    RX RSSI 0 [%d %d %d]\0A\00", align 1
@AR_tx_rssi_ant00 = common dso_local global i32 0, align 4
@AR_tx_rssi_ant01 = common dso_local global i32 0, align 4
@AR_tx_rssi_ant02 = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [34 x i8] c"    RX RSSI 1 [%d %d %d] Comb=%d\0A\00", align 1
@AR_tx_rssi_ant10 = common dso_local global i32 0, align 4
@AR_tx_rssi_ant11 = common dso_local global i32 0, align 4
@AR_tx_rssi_ant12 = common dso_local global i32 0, align 4
@AR_tx_rssi_combined = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [17 x i8] c"    BA Valid=%d\0A\00", align 1
@AR_tx_ba_status = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [18 x i8] c"    BALow=0x%08x\0A\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"    BAHigh=0x%08x\0A\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"\0A ------ \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_ath_alq_payload*)* @ar9300_decode_txstatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar9300_decode_txstatus(%struct.if_ath_alq_payload* %0) #0 {
  %2 = alloca %struct.if_ath_alq_payload*, align 8
  %3 = alloca %struct.ar9300_txs, align 4
  store %struct.if_ath_alq_payload* %0, %struct.if_ath_alq_payload** %2, align 8
  %4 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %5 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %4, i32 0, i32 1
  %6 = call i32 @memcpy(%struct.ar9300_txs* %3, i32* %5, i32 36)
  %7 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %8 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @be32toh(i32 %10)
  %12 = trunc i64 %11 to i32
  %13 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %14 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @be32toh(i32 %16)
  %18 = trunc i64 %17 to i32
  %19 = load %struct.if_ath_alq_payload*, %struct.if_ath_alq_payload** %2, align 8
  %20 = getelementptr inbounds %struct.if_ath_alq_payload, %struct.if_ath_alq_payload* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @be64toh(i32 %22)
  %24 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @last_ts, align 4
  %29 = sub nsw i32 %27, %28
  %30 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @AR_tx_desc_id, align 4
  %33 = call i32 @MS(i32 %31, i32 %32)
  %34 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AR_tx_qcu_num, align 4
  %37 = call i32 @MS(i32 %35, i32 %36)
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %18, i64 %23, i32 %25, i32 %29, i32 %33, i32 %37)
  %39 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* @last_ts, align 4
  %44 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  %47 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @AR_tx_qcu_num, align 4
  %50 = call i32 @MS(i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @AR_ctrl_stat, align 4
  %54 = call i32 @MS(i32 %52, i32 %53)
  %55 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AR_desc_id, align 4
  %58 = call i32 @MS(i32 %56, i32 %57)
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %50, i32 %54, i32 %58)
  %60 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @AR_tx_done, align 4
  %66 = call i32 @MF(i32 %64, i32 %65)
  %67 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @AR_seq_num, align 4
  %70 = call i32 @MS(i32 %68, i32 %69)
  %71 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @AR_tx_op_exceeded, align 4
  %74 = call i32 @MF(i32 %72, i32 %73)
  %75 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AR_TXBFStatus, align 4
  %78 = call i32 @MS(i32 %76, i32 %77)
  %79 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %66, i32 %70, i32 %74, i32 %78)
  %80 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AR_tx_bf_bw_mismatch, align 4
  %83 = call i32 @MF(i32 %81, i32 %82)
  %84 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @AR_tx_bf_stream_miss, align 4
  %87 = call i32 @MF(i32 %85, i32 %86)
  %88 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @AR_final_tx_idx, align 4
  %91 = call i32 @MS(i32 %89, i32 %90)
  %92 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 %87, i32 %91)
  %93 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AR_tx_bf_dest_miss, align 4
  %96 = call i32 @MF(i32 %94, i32 %95)
  %97 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @AR_tx_bf_expired, align 4
  %100 = call i32 @MF(i32 %98, i32 %99)
  %101 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @AR_power_mgmt, align 4
  %104 = call i32 @MF(i32 %102, i32 %103)
  %105 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @AR_tx_tid, align 4
  %108 = call i32 @MS(i32 %106, i32 %107)
  %109 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @AR_tx_fast_ts, align 4
  %112 = call i32 @MF(i32 %110, i32 %111)
  %113 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.6, i64 0, i64 0), i32 %96, i32 %100, i32 %104, i32 %108, i32 %112)
  %114 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @AR_frm_xmit_ok, align 4
  %117 = call i32 @MF(i32 %115, i32 %116)
  %118 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @AR_excessive_retries, align 4
  %121 = call i32 @MF(i32 %119, i32 %120)
  %122 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @AR_fifounderrun, align 4
  %125 = call i32 @MF(i32 %123, i32 %124)
  %126 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AR_filtered, align 4
  %129 = call i32 @MF(i32 %127, i32 %128)
  %130 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i32 %117, i32 %121, i32 %125, i32 %129)
  %131 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @AR_tx_delim_underrun, align 4
  %134 = call i32 @MF(i32 %132, i32 %133)
  %135 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @AR_tx_data_underrun, align 4
  %138 = call i32 @MF(i32 %136, i32 %137)
  %139 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @AR_desc_cfg_err, align 4
  %142 = call i32 @MF(i32 %140, i32 %141)
  %143 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @AR_tx_timer_expired, align 4
  %146 = call i32 @MF(i32 %144, i32 %145)
  %147 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0), i32 %134, i32 %138, i32 %142, i32 %146)
  %148 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @AR_rts_fail_cnt, align 4
  %151 = call i32 @MS(i32 %149, i32 %150)
  %152 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @AR_data_fail_cnt, align 4
  %155 = call i32 @MS(i32 %153, i32 %154)
  %156 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 4
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* @AR_virt_retry_cnt, align 4
  %159 = call i32 @MS(i32 %157, i32 %158)
  %160 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0), i32 %151, i32 %155, i32 %159)
  %161 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @AR_tx_rssi_ant00, align 4
  %164 = call i32 @MS(i32 %162, i32 %163)
  %165 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @AR_tx_rssi_ant01, align 4
  %168 = call i32 @MS(i32 %166, i32 %167)
  %169 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* @AR_tx_rssi_ant02, align 4
  %172 = call i32 @MS(i32 %170, i32 %171)
  %173 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i32 %164, i32 %168, i32 %172)
  %174 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 6
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @AR_tx_rssi_ant10, align 4
  %177 = call i32 @MS(i32 %175, i32 %176)
  %178 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 6
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @AR_tx_rssi_ant11, align 4
  %181 = call i32 @MS(i32 %179, i32 %180)
  %182 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 6
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @AR_tx_rssi_ant12, align 4
  %185 = call i32 @MS(i32 %183, i32 %184)
  %186 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 6
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @AR_tx_rssi_combined, align 4
  %189 = call i32 @MS(i32 %187, i32 %188)
  %190 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0), i32 %177, i32 %181, i32 %185, i32 %189)
  %191 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 5
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* @AR_tx_ba_status, align 4
  %194 = call i32 @MF(i32 %192, i32 %193)
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0), i32 %194)
  %196 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 7
  %197 = load i32, i32* %196, align 4
  %198 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0), i32 %197)
  %199 = getelementptr inbounds %struct.ar9300_txs, %struct.ar9300_txs* %3, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i32 %200)
  %202 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i64 0, i64 0))
  ret void
}

declare dso_local i32 @memcpy(%struct.ar9300_txs*, i32*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @be32toh(i32) #1

declare dso_local i64 @be64toh(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @MF(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
