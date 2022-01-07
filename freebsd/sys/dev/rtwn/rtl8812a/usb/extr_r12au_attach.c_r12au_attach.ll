; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12au_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12au_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_usb_softc = type { i32, i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i8**, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i8**, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@r12au_align_rx = common dso_local global i32 0, align 4
@RTWN_FLAG_EXT_HDR = common dso_local global i32 0, align 4
@r12a_set_chan = common dso_local global i32 0, align 4
@r12a_fill_tx_desc = common dso_local global i32 0, align 4
@r12a_fill_tx_desc_raw = common dso_local global i32 0, align 4
@r12a_fill_tx_desc_null = common dso_local global i32 0, align 4
@r12au_dump_tx_desc = common dso_local global i32 0, align 4
@r12a_tx_radiotap_flags = common dso_local global i32 0, align 4
@r12a_rx_radiotap_flags = common dso_local global i32 0, align 4
@r12a_get_rx_stats = common dso_local global i32 0, align 4
@r88e_get_rssi_cck = common dso_local global i32 0, align 4
@r88e_get_rssi_ofdm = common dso_local global i32 0, align 4
@r12au_classify_intr = common dso_local global i32 0, align 4
@r12a_ratectl_tx_complete = common dso_local global i32 0, align 4
@r12a_handle_c2h_report = common dso_local global i32 0, align 4
@r12a_check_frame_checksum = common dso_local global i32 0, align 4
@r12a_rf_write = common dso_local global i32 0, align 4
@r12a_check_condition = common dso_local global i32 0, align 4
@rtwn_nop_softc = common dso_local global i8* null, align 8
@r12a_parse_rom = common dso_local global i32 0, align 4
@r12a_power_on = common dso_local global i32 0, align 4
@r12a_power_off = common dso_local global i32 0, align 4
@r12a_fw_reset = common dso_local global i32 0, align 4
@r12a_fw_download_enable = common dso_local global i32 0, align 4
@r92c_llt_init = common dso_local global i32 0, align 4
@r12a_set_page_size = common dso_local global i32 0, align 4
@r12a_lc_calib = common dso_local global i32 0, align 4
@r12a_iq_calib = common dso_local global i32 0, align 4
@r12a_read_chipid_vendor = common dso_local global i32 0, align 4
@r12au_adj_devcaps = common dso_local global i32 0, align 4
@r12a_vap_preattach = common dso_local global i32 0, align 4
@r12au_postattach = common dso_local global i32 0, align 4
@r12a_detach_private = common dso_local global i32 0, align 4
@r12a_set_media_status = common dso_local global i8* null, align 8
@r88e_set_rsvd_page = common dso_local global i32 0, align 4
@r12a_set_pwrmode = common dso_local global i32 0, align 4
@r12a_beacon_init = common dso_local global i32 0, align 4
@r92c_beacon_enable = common dso_local global i32 0, align 4
@r12a_beacon_set_rate = common dso_local global i32 0, align 4
@rtwn_nop_softc_int = common dso_local global i8* null, align 8
@r88e_temp_measure = common dso_local global i32 0, align 4
@r88e_temp_read = common dso_local global i32 0, align 4
@r92cu_init_tx_agg = common dso_local global i32 0, align 4
@r12au_init_rx_agg = common dso_local global i32 0, align 4
@r12au_init_ampdu = common dso_local global i32 0, align 4
@r12a_init_intr = common dso_local global i32 0, align 4
@r12a_init_edca = common dso_local global i32 0, align 4
@r12a_init_bb = common dso_local global i32 0, align 4
@r12a_init_rf = common dso_local global i32 0, align 4
@r12a_init_antsel = common dso_local global i32 0, align 4
@r12au_post_init = common dso_local global i32 0, align 4
@rtwn_nop_int_softc = common dso_local global i32 0, align 4
@r12a_chan_5ghz_0 = common dso_local global i32* null, align 8
@r12a_chan_5ghz_1 = common dso_local global i32* null, align 8
@r12a_chan_5ghz_2 = common dso_local global i32* null, align 8
@rtl8812au_mac = common dso_local global i32* null, align 8
@rtl8812au_bb = common dso_local global i32* null, align 8
@rtl8812au_agc = common dso_local global i32* null, align 8
@rtl8812au_rf = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"RTL8812AU\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rtwn-rtl8812aufw\00", align 1
@R12A_TX_PAGE_COUNT = common dso_local global i32 0, align 4
@R12A_TXPKTBUF_COUNT = common dso_local global i32 0, align 4
@R12A_PUBQ_NPAGES = common dso_local global i32 0, align 4
@R12A_TX_PAGE_SIZE = common dso_local global i32 0, align 4
@R12A_EFUSE_MAX_LEN = common dso_local global i32 0, align 4
@R12A_EFUSE_MAP_LEN = common dso_local global i32 0, align 4
@R12A_RX_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@R12A_MACID_MAX = common dso_local global i64 0, align 8
@R12A_CAM_ENTRY_COUNT = common dso_local global i32 0, align 4
@R12A_MAX_FW_SIZE = common dso_local global i32 0, align 4
@R88E_CALIB_THRESHOLD = common dso_local global i32 0, align 4
@R92C_TDECTRL = common dso_local global i8* null, align 8
@R12A_RCR_DIS_CHK_14 = common dso_local global i32 0, align 4
@R12A_RCR_VHT_ACK = common dso_local global i32 0, align 4
@R12A_RCR_TCP_OFFLD_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12au_attach(%struct.rtwn_usb_softc* %0) #0 {
  %2 = alloca %struct.rtwn_usb_softc*, align 8
  %3 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_usb_softc* %0, %struct.rtwn_usb_softc** %2, align 8
  %4 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %4, i32 0, i32 2
  store %struct.rtwn_softc* %5, %struct.rtwn_softc** %3, align 8
  %6 = load i32, i32* @r12au_align_rx, align 4
  %7 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 4
  %9 = load %struct.rtwn_usb_softc*, %struct.rtwn_usb_softc** %2, align 8
  %10 = getelementptr inbounds %struct.rtwn_usb_softc, %struct.rtwn_usb_softc* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* @RTWN_FLAG_EXT_HDR, align 4
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %13 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %12, i32 0, i32 80
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* @r12a_set_chan, align 4
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %16 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %15, i32 0, i32 79
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @r12a_fill_tx_desc, align 4
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %19 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %18, i32 0, i32 78
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @r12a_fill_tx_desc_raw, align 4
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %21, i32 0, i32 77
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @r12a_fill_tx_desc_null, align 4
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %24, i32 0, i32 76
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @r12au_dump_tx_desc, align 4
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %28 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %27, i32 0, i32 75
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @r12a_tx_radiotap_flags, align 4
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %31 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %30, i32 0, i32 74
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @r12a_rx_radiotap_flags, align 4
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %34 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %33, i32 0, i32 73
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @r12a_get_rx_stats, align 4
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %37 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %36, i32 0, i32 72
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @r88e_get_rssi_cck, align 4
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %39, i32 0, i32 71
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @r88e_get_rssi_ofdm, align 4
  %42 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %43 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %42, i32 0, i32 70
  store i32 %41, i32* %43, align 8
  %44 = load i32, i32* @r12au_classify_intr, align 4
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %46 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %45, i32 0, i32 69
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @r12a_ratectl_tx_complete, align 4
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %49 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %48, i32 0, i32 68
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @r12a_handle_c2h_report, align 4
  %51 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %52 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %51, i32 0, i32 67
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @r12a_check_frame_checksum, align 4
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %55 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %54, i32 0, i32 66
  store i32 %53, i32* %55, align 8
  %56 = load i32, i32* @r12a_rf_write, align 4
  %57 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %58 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %57, i32 0, i32 65
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @r12a_check_condition, align 4
  %60 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %61 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %60, i32 0, i32 64
  store i32 %59, i32* %61, align 8
  %62 = load i8*, i8** @rtwn_nop_softc, align 8
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %64 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %63, i32 0, i32 63
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* @r12a_parse_rom, align 4
  %66 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %67 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %66, i32 0, i32 62
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* @r12a_power_on, align 4
  %69 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %70 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %69, i32 0, i32 61
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @r12a_power_off, align 4
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %73 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %72, i32 0, i32 60
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @r12a_fw_reset, align 4
  %75 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %76 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %75, i32 0, i32 59
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @r12a_fw_download_enable, align 4
  %78 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %79 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %78, i32 0, i32 58
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @r92c_llt_init, align 4
  %81 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %82 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %81, i32 0, i32 57
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* @r12a_set_page_size, align 4
  %84 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %85 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %84, i32 0, i32 56
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @r12a_lc_calib, align 4
  %87 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %88 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %87, i32 0, i32 55
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @r12a_iq_calib, align 4
  %90 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %91 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %90, i32 0, i32 54
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @r12a_read_chipid_vendor, align 4
  %93 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %94 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %93, i32 0, i32 53
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* @r12au_adj_devcaps, align 4
  %96 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %97 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %96, i32 0, i32 52
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @r12a_vap_preattach, align 4
  %99 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %100 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %99, i32 0, i32 51
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @r12au_postattach, align 4
  %102 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %103 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %102, i32 0, i32 50
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @r12a_detach_private, align 4
  %105 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %106 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %105, i32 0, i32 49
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** @r12a_set_media_status, align 8
  %108 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %109 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %108, i32 0, i32 45
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* @r88e_set_rsvd_page, align 4
  %111 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %112 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %111, i32 0, i32 48
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @r12a_set_pwrmode, align 4
  %114 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %115 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %114, i32 0, i32 47
  store i32 %113, i32* %115, align 8
  %116 = load i8*, i8** @rtwn_nop_softc, align 8
  %117 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %118 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %117, i32 0, i32 46
  store i8* %116, i8** %118, align 8
  %119 = load i32, i32* @r12a_beacon_init, align 4
  %120 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %121 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %120, i32 0, i32 44
  store i32 %119, i32* %121, align 8
  %122 = load i32, i32* @r92c_beacon_enable, align 4
  %123 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %124 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %123, i32 0, i32 43
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @r12a_beacon_set_rate, align 4
  %126 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %127 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %126, i32 0, i32 42
  store i32 %125, i32* %127, align 8
  %128 = load i8*, i8** @rtwn_nop_softc_int, align 8
  %129 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %130 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %129, i32 0, i32 41
  store i8* %128, i8** %130, align 8
  %131 = load i32, i32* @r88e_temp_measure, align 4
  %132 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %133 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %132, i32 0, i32 40
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @r88e_temp_read, align 4
  %135 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %136 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %135, i32 0, i32 39
  store i32 %134, i32* %136, align 8
  %137 = load i32, i32* @r92cu_init_tx_agg, align 4
  %138 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %139 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %138, i32 0, i32 38
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @r12au_init_rx_agg, align 4
  %141 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %142 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %141, i32 0, i32 37
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @r12au_init_ampdu, align 4
  %144 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %145 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %144, i32 0, i32 36
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @r12a_init_intr, align 4
  %147 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %148 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %147, i32 0, i32 35
  store i32 %146, i32* %148, align 8
  %149 = load i32, i32* @r12a_init_edca, align 4
  %150 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %151 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %150, i32 0, i32 34
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @r12a_init_bb, align 4
  %153 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %154 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %153, i32 0, i32 33
  store i32 %152, i32* %154, align 8
  %155 = load i32, i32* @r12a_init_rf, align 4
  %156 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %157 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %156, i32 0, i32 32
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @r12a_init_antsel, align 4
  %159 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %160 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %159, i32 0, i32 31
  store i32 %158, i32* %160, align 8
  %161 = load i32, i32* @r12au_post_init, align 4
  %162 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %163 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %162, i32 0, i32 30
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @rtwn_nop_int_softc, align 4
  %165 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %166 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %165, i32 0, i32 29
  store i32 %164, i32* %166, align 8
  %167 = load i32*, i32** @r12a_chan_5ghz_0, align 8
  %168 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %169 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %168, i32 0, i32 28
  %170 = load i32**, i32*** %169, align 8
  %171 = getelementptr inbounds i32*, i32** %170, i64 0
  store i32* %167, i32** %171, align 8
  %172 = load i32*, i32** @r12a_chan_5ghz_1, align 8
  %173 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %174 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %173, i32 0, i32 28
  %175 = load i32**, i32*** %174, align 8
  %176 = getelementptr inbounds i32*, i32** %175, i64 1
  store i32* %172, i32** %176, align 8
  %177 = load i32*, i32** @r12a_chan_5ghz_2, align 8
  %178 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %179 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %178, i32 0, i32 28
  %180 = load i32**, i32*** %179, align 8
  %181 = getelementptr inbounds i32*, i32** %180, i64 2
  store i32* %177, i32** %181, align 8
  %182 = load i32*, i32** @r12a_chan_5ghz_0, align 8
  %183 = call i8* @nitems(i32* %182)
  %184 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %185 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %184, i32 0, i32 27
  %186 = load i8**, i8*** %185, align 8
  %187 = getelementptr inbounds i8*, i8** %186, i64 0
  store i8* %183, i8** %187, align 8
  %188 = load i32*, i32** @r12a_chan_5ghz_1, align 8
  %189 = call i8* @nitems(i32* %188)
  %190 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %191 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %190, i32 0, i32 27
  %192 = load i8**, i8*** %191, align 8
  %193 = getelementptr inbounds i8*, i8** %192, i64 1
  store i8* %189, i8** %193, align 8
  %194 = load i32*, i32** @r12a_chan_5ghz_2, align 8
  %195 = call i8* @nitems(i32* %194)
  %196 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %197 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %196, i32 0, i32 27
  %198 = load i8**, i8*** %197, align 8
  %199 = getelementptr inbounds i8*, i8** %198, i64 2
  store i8* %195, i8** %199, align 8
  %200 = load i32*, i32** @rtl8812au_mac, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 0
  %202 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %203 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %202, i32 0, i32 26
  store i32* %201, i32** %203, align 8
  %204 = load i32*, i32** @rtl8812au_mac, align 8
  %205 = call i8* @nitems(i32* %204)
  %206 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %207 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %206, i32 0, i32 25
  store i8* %205, i8** %207, align 8
  %208 = load i32*, i32** @rtl8812au_bb, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %211 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %210, i32 0, i32 24
  store i32* %209, i32** %211, align 8
  %212 = load i32*, i32** @rtl8812au_bb, align 8
  %213 = call i8* @nitems(i32* %212)
  %214 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %215 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %214, i32 0, i32 23
  store i8* %213, i8** %215, align 8
  %216 = load i32*, i32** @rtl8812au_agc, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 0
  %218 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %219 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %218, i32 0, i32 22
  store i32* %217, i32** %219, align 8
  %220 = load i32*, i32** @rtl8812au_agc, align 8
  %221 = call i8* @nitems(i32* %220)
  %222 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %223 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %222, i32 0, i32 21
  store i8* %221, i8** %223, align 8
  %224 = load i32*, i32** @rtl8812au_rf, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %227 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %226, i32 0, i32 20
  store i32* %225, i32** %227, align 8
  %228 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %229 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %228, i32 0, i32 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %229, align 8
  %230 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %231 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %230, i32 0, i32 1
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8** %231, align 8
  %232 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %233 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %232, i32 0, i32 2
  store i32 2384, i32* %233, align 8
  %234 = load i32, i32* @R12A_TX_PAGE_COUNT, align 4
  %235 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %236 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %235, i32 0, i32 19
  store i32 %234, i32* %236, align 8
  %237 = load i32, i32* @R12A_TXPKTBUF_COUNT, align 4
  %238 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %239 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %238, i32 0, i32 18
  store i32 %237, i32* %239, align 4
  %240 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %241 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %240, i32 0, i32 3
  store i32 128, i32* %241, align 4
  %242 = load i32, i32* @R12A_PUBQ_NPAGES, align 4
  %243 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %244 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %243, i32 0, i32 17
  store i32 %242, i32* %244, align 8
  %245 = load i32, i32* @R12A_TX_PAGE_SIZE, align 4
  %246 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %247 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %246, i32 0, i32 16
  store i32 %245, i32* %247, align 4
  %248 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %249 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %248, i32 0, i32 4
  store i32 4, i32* %249, align 8
  %250 = load i32, i32* @R12A_EFUSE_MAX_LEN, align 4
  %251 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %252 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %251, i32 0, i32 15
  store i32 %250, i32* %252, align 8
  %253 = load i32, i32* @R12A_EFUSE_MAP_LEN, align 4
  %254 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %255 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %254, i32 0, i32 14
  store i32 %253, i32* %255, align 4
  %256 = load i32, i32* @R12A_RX_DMA_BUFFER_SIZE, align 4
  %257 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %258 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %257, i32 0, i32 13
  store i32 %256, i32* %258, align 8
  %259 = load i64, i64* @R12A_MACID_MAX, align 8
  %260 = add nsw i64 %259, 1
  %261 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %262 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %261, i32 0, i32 12
  store i64 %260, i64* %262, align 8
  %263 = load i32, i32* @R12A_CAM_ENTRY_COUNT, align 4
  %264 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %265 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %264, i32 0, i32 11
  store i32 %263, i32* %265, align 8
  %266 = load i32, i32* @R12A_MAX_FW_SIZE, align 4
  %267 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %268 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %267, i32 0, i32 10
  store i32 %266, i32* %268, align 4
  %269 = load i32, i32* @R88E_CALIB_THRESHOLD, align 4
  %270 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %271 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %270, i32 0, i32 9
  store i32 %269, i32* %271, align 8
  %272 = load i8*, i8** @R92C_TDECTRL, align 8
  %273 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %274 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %273, i32 0, i32 8
  %275 = load i8**, i8*** %274, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 0
  store i8* %272, i8** %276, align 8
  %277 = load i8*, i8** @R92C_TDECTRL, align 8
  %278 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %279 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %278, i32 0, i32 8
  %280 = load i8**, i8*** %279, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 1
  store i8* %277, i8** %281, align 8
  %282 = load i32, i32* @R12A_RCR_DIS_CHK_14, align 4
  %283 = load i32, i32* @R12A_RCR_VHT_ACK, align 4
  %284 = or i32 %282, %283
  %285 = load i32, i32* @R12A_RCR_TCP_OFFLD_EN, align 4
  %286 = or i32 %284, %285
  %287 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %288 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %287, i32 0, i32 5
  store i32 %286, i32* %288, align 4
  %289 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %290 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %289, i32 0, i32 6
  store i32 2, i32* %290, align 8
  %291 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %292 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %291, i32 0, i32 7
  store i32 2, i32* %292, align 4
  %293 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %294 = call i32 @r12a_attach_private(%struct.rtwn_softc* %293)
  ret void
}

declare dso_local i8* @nitems(i32*) #1

declare dso_local i32 @r12a_attach_private(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
