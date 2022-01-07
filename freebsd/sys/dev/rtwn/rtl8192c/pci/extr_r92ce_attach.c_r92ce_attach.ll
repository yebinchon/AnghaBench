; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_attach.c_r92ce_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/pci/extr_r92ce_attach.c_r92ce_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_pci_softc = type { i32, i32, i32, i32, i32, i32, i32, %struct.rtwn_softc }
%struct.rtwn_softc = type { i32, i32, i64, i8**, i32, i32, i32, i64, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32*, i8*, i32*, i8*, i32*, i8*, i32*, i32, i32, i8*, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@r92ce_setup_tx_desc = common dso_local global i32 0, align 4
@r92ce_tx_postsetup = common dso_local global i32 0, align 4
@r92ce_copy_tx_desc = common dso_local global i32 0, align 4
@r92ce_enable_intr = common dso_local global i32 0, align 4
@r92ce_get_intr_status = common dso_local global i32 0, align 4
@R92C_TCR_CFENDFORM = common dso_local global i32 0, align 4
@RTWN_FLAG_CAM_FIXED = common dso_local global i32 0, align 4
@r92ce_start_xfers = common dso_local global i32 0, align 4
@r92c_set_chan = common dso_local global i32 0, align 4
@r92c_fill_tx_desc = common dso_local global i32 0, align 4
@r92c_fill_tx_desc_raw = common dso_local global i32 0, align 4
@r92c_fill_tx_desc_null = common dso_local global i32 0, align 4
@r92ce_dump_tx_desc = common dso_local global i32 0, align 4
@r92c_tx_radiotap_flags = common dso_local global i32 0, align 4
@r92c_rx_radiotap_flags = common dso_local global i32 0, align 4
@r92c_get_rx_stats = common dso_local global i32 0, align 4
@r92c_get_rssi_cck = common dso_local global i32 0, align 4
@r92c_get_rssi_ofdm = common dso_local global i32 0, align 4
@r92c_classify_intr = common dso_local global i32 0, align 4
@rtwn_nop_softc_uint8_int = common dso_local global i8* null, align 8
@rtwn_nop_int_softc_mbuf = common dso_local global i32 0, align 4
@r92c_rf_read = common dso_local global i32 0, align 4
@r92c_rf_write = common dso_local global i32 0, align 4
@r92c_check_condition = common dso_local global i32 0, align 4
@r92c_efuse_postread = common dso_local global i32 0, align 4
@r92c_parse_rom = common dso_local global i32 0, align 4
@r92ce_set_led = common dso_local global i32 0, align 4
@r92ce_power_on = common dso_local global i32 0, align 4
@r92ce_power_off = common dso_local global i32 0, align 4
@r92ce_fw_reset = common dso_local global i32 0, align 4
@r92c_fw_download_enable = common dso_local global i32 0, align 4
@r92c_llt_init = common dso_local global i32 0, align 4
@r92c_set_page_size = common dso_local global i32 0, align 4
@r92c_lc_calib = common dso_local global i32 0, align 4
@r92ce_iq_calib = common dso_local global i32 0, align 4
@r92c_read_chipid_vendor = common dso_local global i32 0, align 4
@r92ce_adj_devcaps = common dso_local global i32 0, align 4
@rtwn_nop_softc_vap = common dso_local global i32 0, align 4
@r92ce_postattach = common dso_local global i32 0, align 4
@r92c_detach_private = common dso_local global i32 0, align 4
@r92c_joinbss_rpt = common dso_local global i32 0, align 4
@r92c_set_rsvd_page = common dso_local global i32 0, align 4
@r92c_set_pwrmode = common dso_local global i32 0, align 4
@r92c_set_rssi = common dso_local global i32 0, align 4
@r92c_beacon_init = common dso_local global i32 0, align 4
@r92c_beacon_enable = common dso_local global i32 0, align 4
@rtwn_nop_void_int = common dso_local global i32 0, align 4
@rtwn_nop_softc_int = common dso_local global i32 0, align 4
@r92c_temp_measure = common dso_local global i32 0, align 4
@r92c_temp_read = common dso_local global i32 0, align 4
@rtwn_nop_softc = common dso_local global i8* null, align 8
@r92ce_init_ampdu = common dso_local global i32 0, align 4
@r92ce_init_intr = common dso_local global i32 0, align 4
@r92ce_init_edca = common dso_local global i32 0, align 4
@r92ce_init_bb = common dso_local global i32 0, align 4
@r92c_init_rf = common dso_local global i32 0, align 4
@r92ce_post_init = common dso_local global i32 0, align 4
@rtwn_nop_int_softc = common dso_local global i32 0, align 4
@rtl8192ce_mac = common dso_local global i32* null, align 8
@rtl8192ce_bb = common dso_local global i32* null, align 8
@rtl8192ce_agc = common dso_local global i32* null, align 8
@rtl8192c_rf = common dso_local global i32* null, align 8
@R92CE_TX_PAGE_COUNT = common dso_local global i32 0, align 4
@R92C_TXPKTBUF_COUNT = common dso_local global i32 0, align 4
@R92CE_PUBQ_NPAGES = common dso_local global i32 0, align 4
@R92CE_HPQ_NPAGES = common dso_local global i32 0, align 4
@R92CE_LPQ_NPAGES = common dso_local global i32 0, align 4
@R92C_TX_PAGE_SIZE = common dso_local global i32 0, align 4
@R92C_EFUSE_MAX_LEN = common dso_local global i32 0, align 4
@R92C_EFUSE_MAP_LEN = common dso_local global i32 0, align 4
@R92C_RX_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@R92C_MACID_MAX = common dso_local global i64 0, align 8
@R92C_CAM_ENTRY_COUNT = common dso_local global i32 0, align 4
@R92C_MAX_FW_SIZE = common dso_local global i32 0, align 4
@R92C_CALIB_THRESHOLD = common dso_local global i32 0, align 4
@R92C_TDECTRL = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92ce_attach(%struct.rtwn_pci_softc* %0) #0 {
  %2 = alloca %struct.rtwn_pci_softc*, align 8
  %3 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_pci_softc* %0, %struct.rtwn_pci_softc** %2, align 8
  %4 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %5 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %4, i32 0, i32 7
  store %struct.rtwn_softc* %5, %struct.rtwn_softc** %3, align 8
  %6 = load i32, i32* @r92ce_setup_tx_desc, align 4
  %7 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %7, i32 0, i32 6
  store i32 %6, i32* %8, align 8
  %9 = load i32, i32* @r92ce_tx_postsetup, align 4
  %10 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @r92ce_copy_tx_desc, align 4
  %13 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %14 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @r92ce_enable_intr, align 4
  %16 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %17 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @r92ce_get_intr_status, align 4
  %19 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %20 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %22 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %21, i32 0, i32 0
  store i32 63345, i32* %22, align 8
  %23 = load i32, i32* @R92C_TCR_CFENDFORM, align 4
  %24 = or i32 %23, 4096
  %25 = or i32 %24, 8192
  %26 = load %struct.rtwn_pci_softc*, %struct.rtwn_pci_softc** %2, align 8
  %27 = getelementptr inbounds %struct.rtwn_pci_softc, %struct.rtwn_pci_softc* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @RTWN_FLAG_CAM_FIXED, align 4
  %29 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %30 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %29, i32 0, i32 79
  store i32 %28, i32* %30, align 8
  %31 = load i32, i32* @r92ce_start_xfers, align 4
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 78
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @r92c_set_chan, align 4
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %35, i32 0, i32 77
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* @r92c_fill_tx_desc, align 4
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %39 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %38, i32 0, i32 76
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @r92c_fill_tx_desc_raw, align 4
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %42 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %41, i32 0, i32 75
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @r92c_fill_tx_desc_null, align 4
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %44, i32 0, i32 74
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @r92ce_dump_tx_desc, align 4
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %48 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %47, i32 0, i32 73
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @r92c_tx_radiotap_flags, align 4
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %51 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %50, i32 0, i32 72
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @r92c_rx_radiotap_flags, align 4
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %54 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %53, i32 0, i32 71
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* @r92c_get_rx_stats, align 4
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %57 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %56, i32 0, i32 70
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @r92c_get_rssi_cck, align 4
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %60 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %59, i32 0, i32 69
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @r92c_get_rssi_ofdm, align 4
  %62 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %63 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %62, i32 0, i32 68
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @r92c_classify_intr, align 4
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %66 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %65, i32 0, i32 67
  store i32 %64, i32* %66, align 8
  %67 = load i8*, i8** @rtwn_nop_softc_uint8_int, align 8
  %68 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %69 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %68, i32 0, i32 66
  store i8* %67, i8** %69, align 8
  %70 = load i8*, i8** @rtwn_nop_softc_uint8_int, align 8
  %71 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %72 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %71, i32 0, i32 65
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @rtwn_nop_int_softc_mbuf, align 4
  %74 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %75 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %74, i32 0, i32 64
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* @r92c_rf_read, align 4
  %77 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %78 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %77, i32 0, i32 63
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @r92c_rf_write, align 4
  %80 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %81 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %80, i32 0, i32 62
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* @r92c_check_condition, align 4
  %83 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %84 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %83, i32 0, i32 61
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @r92c_efuse_postread, align 4
  %86 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %87 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %86, i32 0, i32 60
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @r92c_parse_rom, align 4
  %89 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %90 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %89, i32 0, i32 59
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @r92ce_set_led, align 4
  %92 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %93 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %92, i32 0, i32 58
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @r92ce_power_on, align 4
  %95 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %96 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %95, i32 0, i32 57
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @r92ce_power_off, align 4
  %98 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %99 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %98, i32 0, i32 56
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @r92ce_fw_reset, align 4
  %101 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %102 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %101, i32 0, i32 55
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @r92c_fw_download_enable, align 4
  %104 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %105 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %104, i32 0, i32 54
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @r92c_llt_init, align 4
  %107 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %108 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %107, i32 0, i32 53
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* @r92c_set_page_size, align 4
  %110 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %111 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %110, i32 0, i32 52
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @r92c_lc_calib, align 4
  %113 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %114 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %113, i32 0, i32 51
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @r92ce_iq_calib, align 4
  %116 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %117 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %116, i32 0, i32 50
  store i32 %115, i32* %117, align 4
  %118 = load i32, i32* @r92c_read_chipid_vendor, align 4
  %119 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %120 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %119, i32 0, i32 49
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* @r92ce_adj_devcaps, align 4
  %122 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %123 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %122, i32 0, i32 48
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* @rtwn_nop_softc_vap, align 4
  %125 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %126 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %125, i32 0, i32 47
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* @r92ce_postattach, align 4
  %128 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %129 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %128, i32 0, i32 46
  store i32 %127, i32* %129, align 4
  %130 = load i32, i32* @r92c_detach_private, align 4
  %131 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %132 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %131, i32 0, i32 45
  store i32 %130, i32* %132, align 8
  %133 = load i32, i32* @r92c_joinbss_rpt, align 4
  %134 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %135 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %134, i32 0, i32 44
  store i32 %133, i32* %135, align 4
  %136 = load i32, i32* @r92c_set_rsvd_page, align 4
  %137 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %138 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %137, i32 0, i32 43
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* @r92c_set_pwrmode, align 4
  %140 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %141 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %140, i32 0, i32 42
  store i32 %139, i32* %141, align 4
  %142 = load i32, i32* @r92c_set_rssi, align 4
  %143 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %144 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %143, i32 0, i32 41
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* @r92c_beacon_init, align 4
  %146 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %147 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %146, i32 0, i32 40
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* @r92c_beacon_enable, align 4
  %149 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %150 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %149, i32 0, i32 39
  store i32 %148, i32* %150, align 8
  %151 = load i32, i32* @rtwn_nop_void_int, align 4
  %152 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %153 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %152, i32 0, i32 38
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @rtwn_nop_softc_int, align 4
  %155 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %156 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %155, i32 0, i32 37
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @r92c_temp_measure, align 4
  %158 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %159 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %158, i32 0, i32 36
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* @r92c_temp_read, align 4
  %161 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %162 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %161, i32 0, i32 35
  store i32 %160, i32* %162, align 8
  %163 = load i8*, i8** @rtwn_nop_softc, align 8
  %164 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %165 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %164, i32 0, i32 34
  store i8* %163, i8** %165, align 8
  %166 = load i8*, i8** @rtwn_nop_softc, align 8
  %167 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %168 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %167, i32 0, i32 33
  store i8* %166, i8** %168, align 8
  %169 = load i32, i32* @r92ce_init_ampdu, align 4
  %170 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %171 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %170, i32 0, i32 32
  store i32 %169, i32* %171, align 8
  %172 = load i32, i32* @r92ce_init_intr, align 4
  %173 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %174 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %173, i32 0, i32 31
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @r92ce_init_edca, align 4
  %176 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %177 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %176, i32 0, i32 30
  store i32 %175, i32* %177, align 8
  %178 = load i32, i32* @r92ce_init_bb, align 4
  %179 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %180 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %179, i32 0, i32 29
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @r92c_init_rf, align 4
  %182 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %183 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %182, i32 0, i32 28
  store i32 %181, i32* %183, align 8
  %184 = load i8*, i8** @rtwn_nop_softc, align 8
  %185 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %186 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %185, i32 0, i32 27
  store i8* %184, i8** %186, align 8
  %187 = load i32, i32* @r92ce_post_init, align 4
  %188 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %189 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %188, i32 0, i32 26
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @rtwn_nop_int_softc, align 4
  %191 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %192 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %191, i32 0, i32 25
  store i32 %190, i32* %192, align 8
  %193 = load i32*, i32** @rtl8192ce_mac, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %196 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %195, i32 0, i32 24
  store i32* %194, i32** %196, align 8
  %197 = load i32*, i32** @rtl8192ce_mac, align 8
  %198 = call i8* @nitems(i32* %197)
  %199 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %200 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %199, i32 0, i32 23
  store i8* %198, i8** %200, align 8
  %201 = load i32*, i32** @rtl8192ce_bb, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 0
  %203 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %204 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %203, i32 0, i32 22
  store i32* %202, i32** %204, align 8
  %205 = load i32*, i32** @rtl8192ce_bb, align 8
  %206 = call i8* @nitems(i32* %205)
  %207 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %208 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %207, i32 0, i32 21
  store i8* %206, i8** %208, align 8
  %209 = load i32*, i32** @rtl8192ce_agc, align 8
  %210 = getelementptr inbounds i32, i32* %209, i64 0
  %211 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %212 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %211, i32 0, i32 20
  store i32* %210, i32** %212, align 8
  %213 = load i32*, i32** @rtl8192ce_agc, align 8
  %214 = call i8* @nitems(i32* %213)
  %215 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %216 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %215, i32 0, i32 19
  store i8* %214, i8** %216, align 8
  %217 = load i32*, i32** @rtl8192c_rf, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 0
  %219 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %220 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %219, i32 0, i32 18
  store i32* %218, i32** %220, align 8
  %221 = load i32, i32* @R92CE_TX_PAGE_COUNT, align 4
  %222 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %223 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %222, i32 0, i32 17
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @R92C_TXPKTBUF_COUNT, align 4
  %225 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %226 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %225, i32 0, i32 16
  store i32 %224, i32* %226, align 8
  %227 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %228 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %227, i32 0, i32 0
  store i32 64, i32* %228, align 8
  %229 = load i32, i32* @R92CE_PUBQ_NPAGES, align 4
  %230 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %231 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %230, i32 0, i32 15
  store i32 %229, i32* %231, align 4
  %232 = load i32, i32* @R92CE_HPQ_NPAGES, align 4
  %233 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %234 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %233, i32 0, i32 14
  store i32 %232, i32* %234, align 8
  %235 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %236 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %235, i32 0, i32 13
  store i64 0, i64* %236, align 8
  %237 = load i32, i32* @R92CE_LPQ_NPAGES, align 4
  %238 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %239 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %238, i32 0, i32 12
  store i32 %237, i32* %239, align 8
  %240 = load i32, i32* @R92C_TX_PAGE_SIZE, align 4
  %241 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %242 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %241, i32 0, i32 11
  store i32 %240, i32* %242, align 4
  %243 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %244 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %243, i32 0, i32 1
  store i32 4, i32* %244, align 4
  %245 = load i32, i32* @R92C_EFUSE_MAX_LEN, align 4
  %246 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %247 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %246, i32 0, i32 10
  store i32 %245, i32* %247, align 8
  %248 = load i32, i32* @R92C_EFUSE_MAP_LEN, align 4
  %249 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %250 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %249, i32 0, i32 9
  store i32 %248, i32* %250, align 4
  %251 = load i32, i32* @R92C_RX_DMA_BUFFER_SIZE, align 4
  %252 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %253 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %252, i32 0, i32 8
  store i32 %251, i32* %253, align 8
  %254 = load i64, i64* @R92C_MACID_MAX, align 8
  %255 = add nsw i64 %254, 1
  %256 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %257 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %256, i32 0, i32 7
  store i64 %255, i64* %257, align 8
  %258 = load i32, i32* @R92C_CAM_ENTRY_COUNT, align 4
  %259 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %260 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %259, i32 0, i32 6
  store i32 %258, i32* %260, align 8
  %261 = load i32, i32* @R92C_MAX_FW_SIZE, align 4
  %262 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %263 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %262, i32 0, i32 5
  store i32 %261, i32* %263, align 4
  %264 = load i32, i32* @R92C_CALIB_THRESHOLD, align 4
  %265 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %266 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %265, i32 0, i32 4
  store i32 %264, i32* %266, align 8
  %267 = load i8*, i8** @R92C_TDECTRL, align 8
  %268 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %269 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %268, i32 0, i32 3
  %270 = load i8**, i8*** %269, align 8
  %271 = getelementptr inbounds i8*, i8** %270, i64 0
  store i8* %267, i8** %271, align 8
  %272 = load i8*, i8** @R92C_TDECTRL, align 8
  %273 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %274 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %273, i32 0, i32 3
  %275 = load i8**, i8*** %274, align 8
  %276 = getelementptr inbounds i8*, i8** %275, i64 1
  store i8* %272, i8** %276, align 8
  %277 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %278 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %277, i32 0, i32 2
  store i64 0, i64* %278, align 8
  %279 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %280 = call i32 @r92ce_attach_private(%struct.rtwn_softc* %279)
  ret void
}

declare dso_local i8* @nitems(i32*) #1

declare dso_local i32 @r92ce_attach_private(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
