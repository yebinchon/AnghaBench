; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cmd2str.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-all.c_ata_cmd2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ata_cmd2str.buffer = internal global [20 x i8] zeroinitializer, align 16
@ATA_R_ATAPI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"TEST_UNIT_READY\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"REZERO\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"REQUEST_SENSE\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"FORMAT\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"WEOF\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"SPACE\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"INQUIRY\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"MODE_SELECT\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"ERASE\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"MODE_SENSE\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"START_STOP\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"PREVENT_ALLOW\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"ATAPI_READ_FORMAT_CAPACITIES\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"READ_CAPACITY\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"READ_BIG\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"WRITE_BIG\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"LOCATE\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c"READ_POSITION\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"SYNCHRONIZE_CACHE\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"WRITE_BUFFER\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"READ_BUFFER\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"READ_SUBCHANNEL\00", align 1
@.str.24 = private unnamed_addr constant [9 x i8] c"READ_TOC\00", align 1
@.str.25 = private unnamed_addr constant [8 x i8] c"PLAY_10\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"PLAY_MSF\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"PLAY_TRACK\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"PAUSE\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"READ_DISK_INFO\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"READ_TRACK_INFO\00", align 1
@.str.31 = private unnamed_addr constant [14 x i8] c"RESERVE_TRACK\00", align 1
@.str.32 = private unnamed_addr constant [14 x i8] c"SEND_OPC_INFO\00", align 1
@.str.33 = private unnamed_addr constant [16 x i8] c"MODE_SELECT_BIG\00", align 1
@.str.34 = private unnamed_addr constant [13 x i8] c"REPAIR_TRACK\00", align 1
@.str.35 = private unnamed_addr constant [16 x i8] c"READ_MASTER_CUE\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"MODE_SENSE_BIG\00", align 1
@.str.37 = private unnamed_addr constant [20 x i8] c"CLOSE_TRACK/SESSION\00", align 1
@.str.38 = private unnamed_addr constant [21 x i8] c"READ_BUFFER_CAPACITY\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"SEND_CUE_SHEET\00", align 1
@.str.40 = private unnamed_addr constant [18 x i8] c"SERVICE_ACTION_IN\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"BLANK_CMD\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"SEND_KEY\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"REPORT_KEY\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"PLAY_12\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"LOAD_UNLOAD\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"READ_DVD_STRUCTURE\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"PLAY_CD\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"SET_SPEED\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"MECH_STATUS\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"READ_CD\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"POLL_DSC\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"NOP FLUSHQUEUE\00", align 1
@.str.53 = private unnamed_addr constant [13 x i8] c"NOP AUTOPOLL\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"NOP\00", align 1
@.str.55 = private unnamed_addr constant [27 x i8] c"CFA_REQUEST_EXTENDED_ERROR\00", align 1
@.str.56 = private unnamed_addr constant [9 x i8] c"DSM TRIM\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"DSM\00", align 1
@.str.58 = private unnamed_addr constant [13 x i8] c"DEVICE_RESET\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"READ48\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"READ_DMA48\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"READ_DMA_QUEUED48\00", align 1
@.str.62 = private unnamed_addr constant [26 x i8] c"READ_NATIVE_MAX_ADDRESS48\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"READ_MUL48\00", align 1
@.str.64 = private unnamed_addr constant [18 x i8] c"READ_STREAM_DMA48\00", align 1
@.str.65 = private unnamed_addr constant [14 x i8] c"READ_STREAM48\00", align 1
@.str.66 = private unnamed_addr constant [13 x i8] c"READ_LOG_EXT\00", align 1
@.str.67 = private unnamed_addr constant [8 x i8] c"WRITE48\00", align 1
@.str.68 = private unnamed_addr constant [12 x i8] c"WRITE_DMA48\00", align 1
@.str.69 = private unnamed_addr constant [19 x i8] c"WRITE_DMA_QUEUED48\00", align 1
@.str.70 = private unnamed_addr constant [18 x i8] c"SET_MAX_ADDRESS48\00", align 1
@.str.71 = private unnamed_addr constant [12 x i8] c"WRITE_MUL48\00", align 1
@.str.72 = private unnamed_addr constant [19 x i8] c"WRITE_STREAM_DMA48\00", align 1
@.str.73 = private unnamed_addr constant [15 x i8] c"WRITE_STREAM48\00", align 1
@.str.74 = private unnamed_addr constant [16 x i8] c"WRITE_DMA_FUA48\00", align 1
@.str.75 = private unnamed_addr constant [23 x i8] c"WRITE_DMA_QUEUED_FUA48\00", align 1
@.str.76 = private unnamed_addr constant [14 x i8] c"WRITE_LOG_EXT\00", align 1
@.str.77 = private unnamed_addr constant [12 x i8] c"READ_VERIFY\00", align 1
@.str.78 = private unnamed_addr constant [14 x i8] c"READ_VERIFY48\00", align 1
@.str.79 = private unnamed_addr constant [29 x i8] c"WRITE_UNCORRECTABLE48 PSEUDO\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"WRITE_UNCORRECTABLE48 FLAGGED\00", align 1
@.str.81 = private unnamed_addr constant [22 x i8] c"WRITE_UNCORRECTABLE48\00", align 1
@.str.82 = private unnamed_addr constant [17 x i8] c"CONFIGURE_STREAM\00", align 1
@.str.83 = private unnamed_addr constant [18 x i8] c"READ_FPDMA_QUEUED\00", align 1
@.str.84 = private unnamed_addr constant [19 x i8] c"WRITE_FPDMA_QUEUED\00", align 1
@.str.85 = private unnamed_addr constant [13 x i8] c"NCQ_NON_DATA\00", align 1
@.str.86 = private unnamed_addr constant [18 x i8] c"SEND_FPDMA_QUEUED\00", align 1
@.str.87 = private unnamed_addr constant [21 x i8] c"RECEIVE_FPDMA_QUEUED\00", align 1
@.str.88 = private unnamed_addr constant [18 x i8] c"SEP_ATTN IDENTIFY\00", align 1
@.str.89 = private unnamed_addr constant [21 x i8] c"SEP_ATTN READ BUFFER\00", align 1
@.str.90 = private unnamed_addr constant [36 x i8] c"SEP_ATTN RECEIVE DIAGNOSTIC RESULTS\00", align 1
@.str.91 = private unnamed_addr constant [22 x i8] c"SEP_ATTN WRITE BUFFER\00", align 1
@.str.92 = private unnamed_addr constant [25 x i8] c"SEP_ATTN SEND DIAGNOSTIC\00", align 1
@.str.93 = private unnamed_addr constant [9 x i8] c"SEP_ATTN\00", align 1
@.str.94 = private unnamed_addr constant [5 x i8] c"SEEK\00", align 1
@.str.95 = private unnamed_addr constant [21 x i8] c"CFA_TRANSLATE_SECTOR\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"EXECUTE_DEVICE_DIAGNOSTIC\00", align 1
@.str.97 = private unnamed_addr constant [19 x i8] c"DOWNLOAD_MICROCODE\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"PACKET\00", align 1
@.str.99 = private unnamed_addr constant [15 x i8] c"ATAPI_IDENTIFY\00", align 1
@.str.100 = private unnamed_addr constant [8 x i8] c"SERVICE\00", align 1
@.str.101 = private unnamed_addr constant [23 x i8] c"SMART READ ATTR VALUES\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"SMART READ ATTR THRESHOLDS\00", align 1
@.str.103 = private unnamed_addr constant [23 x i8] c"SMART SAVE ATTR VALUES\00", align 1
@.str.104 = private unnamed_addr constant [32 x i8] c"SMART EXECUTE OFFLINE IMMEDIATE\00", align 1
@.str.105 = private unnamed_addr constant [20 x i8] c"SMART READ LOG DATA\00", align 1
@.str.106 = private unnamed_addr constant [23 x i8] c"SMART ENABLE OPERATION\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"SMART DISABLE OPERATION\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"SMART RETURN STATUS\00", align 1
@.str.109 = private unnamed_addr constant [6 x i8] c"SMART\00", align 1
@.str.110 = private unnamed_addr constant [21 x i8] c"DEVICE CONFIGURATION\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"CFA_ERASE\00", align 1
@.str.112 = private unnamed_addr constant [9 x i8] c"READ_MUL\00", align 1
@.str.113 = private unnamed_addr constant [10 x i8] c"WRITE_MUL\00", align 1
@.str.114 = private unnamed_addr constant [10 x i8] c"SET_MULTI\00", align 1
@.str.115 = private unnamed_addr constant [16 x i8] c"READ_DMA_QUEUED\00", align 1
@.str.116 = private unnamed_addr constant [9 x i8] c"READ_DMA\00", align 1
@.str.117 = private unnamed_addr constant [10 x i8] c"WRITE_DMA\00", align 1
@.str.118 = private unnamed_addr constant [17 x i8] c"WRITE_DMA_QUEUED\00", align 1
@.str.119 = private unnamed_addr constant [33 x i8] c"CFA_WRITE_MULTIPLE_WITHOUT_ERASE\00", align 1
@.str.120 = private unnamed_addr constant [16 x i8] c"WRITE_MUL_FUA48\00", align 1
@.str.121 = private unnamed_addr constant [22 x i8] c"CHECK_MEDIA_CARD_TYPE\00", align 1
@.str.122 = private unnamed_addr constant [17 x i8] c"GET_MEDIA_STATUS\00", align 1
@.str.123 = private unnamed_addr constant [11 x i8] c"MEDIA_LOCK\00", align 1
@.str.124 = private unnamed_addr constant [13 x i8] c"MEDIA_UNLOCK\00", align 1
@.str.125 = private unnamed_addr constant [18 x i8] c"STANDBY_IMMEDIATE\00", align 1
@.str.126 = private unnamed_addr constant [15 x i8] c"IDLE_IMMEDIATE\00", align 1
@.str.127 = private unnamed_addr constant [8 x i8] c"STANDBY\00", align 1
@.str.128 = private unnamed_addr constant [5 x i8] c"IDLE\00", align 1
@.str.129 = private unnamed_addr constant [15 x i8] c"READ_BUFFER/PM\00", align 1
@.str.130 = private unnamed_addr constant [17 x i8] c"CHECK_POWER_MODE\00", align 1
@.str.131 = private unnamed_addr constant [6 x i8] c"SLEEP\00", align 1
@.str.132 = private unnamed_addr constant [11 x i8] c"FLUSHCACHE\00", align 1
@.str.133 = private unnamed_addr constant [9 x i8] c"WRITE_PM\00", align 1
@.str.134 = private unnamed_addr constant [13 x i8] c"FLUSHCACHE48\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"ATA_IDENTIFY\00", align 1
@.str.136 = private unnamed_addr constant [12 x i8] c"MEDIA_EJECT\00", align 1
@.str.137 = private unnamed_addr constant [30 x i8] c"SETFEATURES SET TRANSFER MODE\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE WCACHE\00", align 1
@.str.139 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE WCACHE\00", align 1
@.str.140 = private unnamed_addr constant [24 x i8] c"SETFEATURES ENABLE PUIS\00", align 1
@.str.141 = private unnamed_addr constant [25 x i8] c"SETFEATURES DISABLE PUIS\00", align 1
@.str.142 = private unnamed_addr constant [20 x i8] c"SETFEATURES SPIN-UP\00", align 1
@.str.143 = private unnamed_addr constant [32 x i8] c"SETFEATURES ENABLE SATA FEATURE\00", align 1
@.str.144 = private unnamed_addr constant [33 x i8] c"SETFEATURES DISABLE SATA FEATURE\00", align 1
@.str.145 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE RCACHE\00", align 1
@.str.146 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE RCACHE\00", align 1
@.str.147 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE RELIRQ\00", align 1
@.str.148 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE RELIRQ\00", align 1
@.str.149 = private unnamed_addr constant [26 x i8] c"SETFEATURES ENABLE SRVIRQ\00", align 1
@.str.150 = private unnamed_addr constant [27 x i8] c"SETFEATURES DISABLE SRVIRQ\00", align 1
@.str.151 = private unnamed_addr constant [12 x i8] c"SETFEATURES\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"SECURITY_SET_PASSWORD\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"SECURITY_UNLOCK\00", align 1
@.str.154 = private unnamed_addr constant [23 x i8] c"SECURITY_ERASE_PREPARE\00", align 1
@.str.155 = private unnamed_addr constant [20 x i8] c"SECURITY_ERASE_UNIT\00", align 1
@.str.156 = private unnamed_addr constant [21 x i8] c"SECURITY_FREEZE_LOCK\00", align 1
@.str.157 = private unnamed_addr constant [26 x i8] c"SECURITY_DISABLE_PASSWORD\00", align 1
@.str.158 = private unnamed_addr constant [24 x i8] c"READ_NATIVE_MAX_ADDRESS\00", align 1
@.str.159 = private unnamed_addr constant [16 x i8] c"SET_MAX_ADDRESS\00", align 1
@.str.160 = private unnamed_addr constant [21 x i8] c"unknown CMD (0x%02x)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ata_cmd2str(%struct.ata_request* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ata_request*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %3, align 8
  %4 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %5 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @ATA_R_ATAPI, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %87

10:                                               ; preds = %1
  %11 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %12 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %10
  %19 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %20 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  br label %32

24:                                               ; preds = %10
  %25 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %26 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  br label %32

32:                                               ; preds = %24, %18
  %33 = phi i32 [ %23, %18 ], [ %31, %24 ]
  switch i32 %33, label %86 [
    i32 0, label %34
    i32 1, label %35
    i32 3, label %36
    i32 4, label %37
    i32 8, label %38
    i32 10, label %39
    i32 16, label %40
    i32 17, label %41
    i32 18, label %42
    i32 21, label %43
    i32 25, label %44
    i32 26, label %45
    i32 27, label %46
    i32 30, label %47
    i32 35, label %48
    i32 37, label %49
    i32 40, label %50
    i32 42, label %51
    i32 43, label %52
    i32 52, label %53
    i32 53, label %54
    i32 59, label %55
    i32 60, label %56
    i32 66, label %57
    i32 67, label %58
    i32 69, label %59
    i32 71, label %60
    i32 72, label %61
    i32 75, label %62
    i32 81, label %63
    i32 82, label %64
    i32 83, label %65
    i32 84, label %66
    i32 85, label %67
    i32 88, label %68
    i32 89, label %69
    i32 90, label %70
    i32 91, label %71
    i32 92, label %72
    i32 93, label %73
    i32 150, label %74
    i32 161, label %75
    i32 163, label %76
    i32 164, label %77
    i32 165, label %78
    i32 166, label %79
    i32 173, label %80
    i32 180, label %81
    i32 187, label %82
    i32 189, label %83
    i32 190, label %84
    i32 255, label %85
  ]

34:                                               ; preds = %32
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %254

35:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %254

36:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %254

37:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %254

38:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %254

39:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %254

40:                                               ; preds = %32
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %254

41:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %254

42:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %254

43:                                               ; preds = %32
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %254

44:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %254

45:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %254

46:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %254

47:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %254

48:                                               ; preds = %32
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %254

49:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %254

50:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %254

51:                                               ; preds = %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %254

52:                                               ; preds = %32
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %254

53:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %254

54:                                               ; preds = %32
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %254

55:                                               ; preds = %32
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %254

56:                                               ; preds = %32
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %254

57:                                               ; preds = %32
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %254

58:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %254

59:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %254

60:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %254

61:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %254

62:                                               ; preds = %32
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %254

63:                                               ; preds = %32
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %254

64:                                               ; preds = %32
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %254

65:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %254

66:                                               ; preds = %32
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %254

67:                                               ; preds = %32
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %254

68:                                               ; preds = %32
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %254

69:                                               ; preds = %32
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %254

70:                                               ; preds = %32
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %254

71:                                               ; preds = %32
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %254

72:                                               ; preds = %32
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %254

73:                                               ; preds = %32
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %254

74:                                               ; preds = %32
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.40, i64 0, i64 0), i8** %2, align 8
  br label %254

75:                                               ; preds = %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.41, i64 0, i64 0), i8** %2, align 8
  br label %254

76:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.42, i64 0, i64 0), i8** %2, align 8
  br label %254

77:                                               ; preds = %32
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.43, i64 0, i64 0), i8** %2, align 8
  br label %254

78:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i64 0, i64 0), i8** %2, align 8
  br label %254

79:                                               ; preds = %32
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i64 0, i64 0), i8** %2, align 8
  br label %254

80:                                               ; preds = %32
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.46, i64 0, i64 0), i8** %2, align 8
  br label %254

81:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.47, i64 0, i64 0), i8** %2, align 8
  br label %254

82:                                               ; preds = %32
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.48, i64 0, i64 0), i8** %2, align 8
  br label %254

83:                                               ; preds = %32
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.49, i64 0, i64 0), i8** %2, align 8
  br label %254

84:                                               ; preds = %32
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i64 0, i64 0), i8** %2, align 8
  br label %254

85:                                               ; preds = %32
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.51, i64 0, i64 0), i8** %2, align 8
  br label %254

86:                                               ; preds = %32
  br label %247

87:                                               ; preds = %1
  %88 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %89 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %246 [
    i32 0, label %93
    i32 3, label %102
    i32 6, label %103
    i32 8, label %111
    i32 32, label %112
    i32 36, label %113
    i32 37, label %114
    i32 38, label %115
    i32 39, label %116
    i32 41, label %117
    i32 42, label %118
    i32 43, label %119
    i32 47, label %120
    i32 48, label %121
    i32 52, label %122
    i32 53, label %123
    i32 54, label %124
    i32 55, label %125
    i32 57, label %126
    i32 58, label %127
    i32 59, label %128
    i32 61, label %129
    i32 62, label %130
    i32 63, label %131
    i32 64, label %132
    i32 66, label %133
    i32 69, label %134
    i32 81, label %143
    i32 96, label %144
    i32 97, label %145
    i32 99, label %146
    i32 100, label %147
    i32 101, label %148
    i32 103, label %149
    i32 112, label %168
    i32 135, label %169
    i32 144, label %170
    i32 146, label %171
    i32 160, label %172
    i32 161, label %173
    i32 162, label %174
    i32 176, label %175
    i32 177, label %190
    i32 192, label %191
    i32 196, label %192
    i32 197, label %193
    i32 198, label %194
    i32 199, label %195
    i32 200, label %196
    i32 202, label %197
    i32 204, label %198
    i32 205, label %199
    i32 206, label %200
    i32 209, label %201
    i32 218, label %202
    i32 222, label %203
    i32 223, label %204
    i32 224, label %205
    i32 225, label %206
    i32 226, label %207
    i32 227, label %208
    i32 228, label %209
    i32 229, label %210
    i32 230, label %211
    i32 231, label %212
    i32 232, label %213
    i32 234, label %214
    i32 236, label %215
    i32 237, label %216
    i32 239, label %217
    i32 241, label %238
    i32 242, label %239
    i32 243, label %240
    i32 244, label %241
    i32 245, label %242
    i32 246, label %243
    i32 248, label %244
    i32 249, label %245
  ]

93:                                               ; preds = %87
  %94 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %95 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  switch i32 %98, label %101 [
    i32 0, label %99
    i32 1, label %100
  ]

99:                                               ; preds = %93
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.52, i64 0, i64 0), i8** %2, align 8
  br label %254

100:                                              ; preds = %93
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.53, i64 0, i64 0), i8** %2, align 8
  br label %254

101:                                              ; preds = %93
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.54, i64 0, i64 0), i8** %2, align 8
  br label %254

102:                                              ; preds = %87
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.55, i64 0, i64 0), i8** %2, align 8
  br label %254

103:                                              ; preds = %87
  %104 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %105 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  switch i32 %108, label %110 [
    i32 1, label %109
  ]

109:                                              ; preds = %103
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.56, i64 0, i64 0), i8** %2, align 8
  br label %254

110:                                              ; preds = %103
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.57, i64 0, i64 0), i8** %2, align 8
  br label %254

111:                                              ; preds = %87
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.58, i64 0, i64 0), i8** %2, align 8
  br label %254

112:                                              ; preds = %87
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %254

113:                                              ; preds = %87
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.59, i64 0, i64 0), i8** %2, align 8
  br label %254

114:                                              ; preds = %87
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.60, i64 0, i64 0), i8** %2, align 8
  br label %254

115:                                              ; preds = %87
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.61, i64 0, i64 0), i8** %2, align 8
  br label %254

116:                                              ; preds = %87
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.62, i64 0, i64 0), i8** %2, align 8
  br label %254

117:                                              ; preds = %87
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.63, i64 0, i64 0), i8** %2, align 8
  br label %254

118:                                              ; preds = %87
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.64, i64 0, i64 0), i8** %2, align 8
  br label %254

119:                                              ; preds = %87
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.65, i64 0, i64 0), i8** %2, align 8
  br label %254

120:                                              ; preds = %87
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.66, i64 0, i64 0), i8** %2, align 8
  br label %254

121:                                              ; preds = %87
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %254

122:                                              ; preds = %87
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.67, i64 0, i64 0), i8** %2, align 8
  br label %254

123:                                              ; preds = %87
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.68, i64 0, i64 0), i8** %2, align 8
  br label %254

124:                                              ; preds = %87
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.69, i64 0, i64 0), i8** %2, align 8
  br label %254

125:                                              ; preds = %87
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.70, i64 0, i64 0), i8** %2, align 8
  br label %254

126:                                              ; preds = %87
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.71, i64 0, i64 0), i8** %2, align 8
  br label %254

127:                                              ; preds = %87
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.72, i64 0, i64 0), i8** %2, align 8
  br label %254

128:                                              ; preds = %87
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.73, i64 0, i64 0), i8** %2, align 8
  br label %254

129:                                              ; preds = %87
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.74, i64 0, i64 0), i8** %2, align 8
  br label %254

130:                                              ; preds = %87
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.75, i64 0, i64 0), i8** %2, align 8
  br label %254

131:                                              ; preds = %87
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.76, i64 0, i64 0), i8** %2, align 8
  br label %254

132:                                              ; preds = %87
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.77, i64 0, i64 0), i8** %2, align 8
  br label %254

133:                                              ; preds = %87
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.78, i64 0, i64 0), i8** %2, align 8
  br label %254

134:                                              ; preds = %87
  %135 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %136 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  switch i32 %139, label %142 [
    i32 85, label %140
    i32 170, label %141
  ]

140:                                              ; preds = %134
  store i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.79, i64 0, i64 0), i8** %2, align 8
  br label %254

141:                                              ; preds = %134
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.80, i64 0, i64 0), i8** %2, align 8
  br label %254

142:                                              ; preds = %134
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.81, i64 0, i64 0), i8** %2, align 8
  br label %254

143:                                              ; preds = %87
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.82, i64 0, i64 0), i8** %2, align 8
  br label %254

144:                                              ; preds = %87
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.83, i64 0, i64 0), i8** %2, align 8
  br label %254

145:                                              ; preds = %87
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.84, i64 0, i64 0), i8** %2, align 8
  br label %254

146:                                              ; preds = %87
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.85, i64 0, i64 0), i8** %2, align 8
  br label %254

147:                                              ; preds = %87
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.86, i64 0, i64 0), i8** %2, align 8
  br label %254

148:                                              ; preds = %87
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.87, i64 0, i64 0), i8** %2, align 8
  br label %254

149:                                              ; preds = %87
  %150 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %151 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp eq i32 %154, 236
  br i1 %155, label %156, label %157

156:                                              ; preds = %149
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.88, i64 0, i64 0), i8** %2, align 8
  br label %254

157:                                              ; preds = %149
  %158 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %159 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  switch i32 %162, label %167 [
    i32 0, label %163
    i32 2, label %164
    i32 128, label %165
    i32 130, label %166
  ]

163:                                              ; preds = %157
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.89, i64 0, i64 0), i8** %2, align 8
  br label %254

164:                                              ; preds = %157
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.90, i64 0, i64 0), i8** %2, align 8
  br label %254

165:                                              ; preds = %157
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.91, i64 0, i64 0), i8** %2, align 8
  br label %254

166:                                              ; preds = %157
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.92, i64 0, i64 0), i8** %2, align 8
  br label %254

167:                                              ; preds = %157
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.93, i64 0, i64 0), i8** %2, align 8
  br label %254

168:                                              ; preds = %87
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.94, i64 0, i64 0), i8** %2, align 8
  br label %254

169:                                              ; preds = %87
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.95, i64 0, i64 0), i8** %2, align 8
  br label %254

170:                                              ; preds = %87
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.96, i64 0, i64 0), i8** %2, align 8
  br label %254

171:                                              ; preds = %87
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.97, i64 0, i64 0), i8** %2, align 8
  br label %254

172:                                              ; preds = %87
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.98, i64 0, i64 0), i8** %2, align 8
  br label %254

173:                                              ; preds = %87
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.99, i64 0, i64 0), i8** %2, align 8
  br label %254

174:                                              ; preds = %87
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.100, i64 0, i64 0), i8** %2, align 8
  br label %254

175:                                              ; preds = %87
  %176 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %177 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  switch i32 %180, label %189 [
    i32 208, label %181
    i32 209, label %182
    i32 211, label %183
    i32 212, label %184
    i32 213, label %185
    i32 216, label %186
    i32 217, label %187
    i32 218, label %188
  ]

181:                                              ; preds = %175
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.101, i64 0, i64 0), i8** %2, align 8
  br label %254

182:                                              ; preds = %175
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.102, i64 0, i64 0), i8** %2, align 8
  br label %254

183:                                              ; preds = %175
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.103, i64 0, i64 0), i8** %2, align 8
  br label %254

184:                                              ; preds = %175
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.104, i64 0, i64 0), i8** %2, align 8
  br label %254

185:                                              ; preds = %175
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.105, i64 0, i64 0), i8** %2, align 8
  br label %254

186:                                              ; preds = %175
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.106, i64 0, i64 0), i8** %2, align 8
  br label %254

187:                                              ; preds = %175
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.107, i64 0, i64 0), i8** %2, align 8
  br label %254

188:                                              ; preds = %175
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.108, i64 0, i64 0), i8** %2, align 8
  br label %254

189:                                              ; preds = %175
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.109, i64 0, i64 0), i8** %2, align 8
  br label %254

190:                                              ; preds = %87
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.110, i64 0, i64 0), i8** %2, align 8
  br label %254

191:                                              ; preds = %87
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.111, i64 0, i64 0), i8** %2, align 8
  br label %254

192:                                              ; preds = %87
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.112, i64 0, i64 0), i8** %2, align 8
  br label %254

193:                                              ; preds = %87
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.113, i64 0, i64 0), i8** %2, align 8
  br label %254

194:                                              ; preds = %87
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.114, i64 0, i64 0), i8** %2, align 8
  br label %254

195:                                              ; preds = %87
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.115, i64 0, i64 0), i8** %2, align 8
  br label %254

196:                                              ; preds = %87
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.116, i64 0, i64 0), i8** %2, align 8
  br label %254

197:                                              ; preds = %87
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.117, i64 0, i64 0), i8** %2, align 8
  br label %254

198:                                              ; preds = %87
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.118, i64 0, i64 0), i8** %2, align 8
  br label %254

199:                                              ; preds = %87
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.119, i64 0, i64 0), i8** %2, align 8
  br label %254

200:                                              ; preds = %87
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.120, i64 0, i64 0), i8** %2, align 8
  br label %254

201:                                              ; preds = %87
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.121, i64 0, i64 0), i8** %2, align 8
  br label %254

202:                                              ; preds = %87
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.122, i64 0, i64 0), i8** %2, align 8
  br label %254

203:                                              ; preds = %87
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.123, i64 0, i64 0), i8** %2, align 8
  br label %254

204:                                              ; preds = %87
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.124, i64 0, i64 0), i8** %2, align 8
  br label %254

205:                                              ; preds = %87
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.125, i64 0, i64 0), i8** %2, align 8
  br label %254

206:                                              ; preds = %87
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.126, i64 0, i64 0), i8** %2, align 8
  br label %254

207:                                              ; preds = %87
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.127, i64 0, i64 0), i8** %2, align 8
  br label %254

208:                                              ; preds = %87
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.128, i64 0, i64 0), i8** %2, align 8
  br label %254

209:                                              ; preds = %87
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.129, i64 0, i64 0), i8** %2, align 8
  br label %254

210:                                              ; preds = %87
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.130, i64 0, i64 0), i8** %2, align 8
  br label %254

211:                                              ; preds = %87
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.131, i64 0, i64 0), i8** %2, align 8
  br label %254

212:                                              ; preds = %87
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.132, i64 0, i64 0), i8** %2, align 8
  br label %254

213:                                              ; preds = %87
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.133, i64 0, i64 0), i8** %2, align 8
  br label %254

214:                                              ; preds = %87
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.134, i64 0, i64 0), i8** %2, align 8
  br label %254

215:                                              ; preds = %87
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.135, i64 0, i64 0), i8** %2, align 8
  br label %254

216:                                              ; preds = %87
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.136, i64 0, i64 0), i8** %2, align 8
  br label %254

217:                                              ; preds = %87
  %218 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %219 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  switch i32 %222, label %237 [
    i32 3, label %223
    i32 2, label %224
    i32 130, label %225
    i32 6, label %226
    i32 134, label %227
    i32 7, label %228
    i32 16, label %229
    i32 144, label %230
    i32 170, label %231
    i32 85, label %232
    i32 93, label %233
    i32 221, label %234
    i32 94, label %235
    i32 222, label %236
  ]

223:                                              ; preds = %217
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.137, i64 0, i64 0), i8** %2, align 8
  br label %254

224:                                              ; preds = %217
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.138, i64 0, i64 0), i8** %2, align 8
  br label %254

225:                                              ; preds = %217
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.139, i64 0, i64 0), i8** %2, align 8
  br label %254

226:                                              ; preds = %217
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.140, i64 0, i64 0), i8** %2, align 8
  br label %254

227:                                              ; preds = %217
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.141, i64 0, i64 0), i8** %2, align 8
  br label %254

228:                                              ; preds = %217
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.142, i64 0, i64 0), i8** %2, align 8
  br label %254

229:                                              ; preds = %217
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.143, i64 0, i64 0), i8** %2, align 8
  br label %254

230:                                              ; preds = %217
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.144, i64 0, i64 0), i8** %2, align 8
  br label %254

231:                                              ; preds = %217
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.145, i64 0, i64 0), i8** %2, align 8
  br label %254

232:                                              ; preds = %217
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.146, i64 0, i64 0), i8** %2, align 8
  br label %254

233:                                              ; preds = %217
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.147, i64 0, i64 0), i8** %2, align 8
  br label %254

234:                                              ; preds = %217
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.148, i64 0, i64 0), i8** %2, align 8
  br label %254

235:                                              ; preds = %217
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.149, i64 0, i64 0), i8** %2, align 8
  br label %254

236:                                              ; preds = %217
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.150, i64 0, i64 0), i8** %2, align 8
  br label %254

237:                                              ; preds = %217
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.151, i64 0, i64 0), i8** %2, align 8
  br label %254

238:                                              ; preds = %87
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.152, i64 0, i64 0), i8** %2, align 8
  br label %254

239:                                              ; preds = %87
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.153, i64 0, i64 0), i8** %2, align 8
  br label %254

240:                                              ; preds = %87
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.154, i64 0, i64 0), i8** %2, align 8
  br label %254

241:                                              ; preds = %87
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.155, i64 0, i64 0), i8** %2, align 8
  br label %254

242:                                              ; preds = %87
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.156, i64 0, i64 0), i8** %2, align 8
  br label %254

243:                                              ; preds = %87
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.157, i64 0, i64 0), i8** %2, align 8
  br label %254

244:                                              ; preds = %87
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.158, i64 0, i64 0), i8** %2, align 8
  br label %254

245:                                              ; preds = %87
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.159, i64 0, i64 0), i8** %2, align 8
  br label %254

246:                                              ; preds = %87
  br label %247

247:                                              ; preds = %246, %86
  %248 = load %struct.ata_request*, %struct.ata_request** %3, align 8
  %249 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = call i32 @sprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @ata_cmd2str.buffer, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.160, i64 0, i64 0), i32 %252)
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @ata_cmd2str.buffer, i64 0, i64 0), i8** %2, align 8
  br label %254

254:                                              ; preds = %247, %245, %244, %243, %242, %241, %240, %239, %238, %237, %236, %235, %234, %233, %232, %231, %230, %229, %228, %227, %226, %225, %224, %223, %216, %215, %214, %213, %212, %211, %210, %209, %208, %207, %206, %205, %204, %203, %202, %201, %200, %199, %198, %197, %196, %195, %194, %193, %192, %191, %190, %189, %188, %187, %186, %185, %184, %183, %182, %181, %174, %173, %172, %171, %170, %169, %168, %167, %166, %165, %164, %163, %156, %148, %147, %146, %145, %144, %143, %142, %141, %140, %133, %132, %131, %130, %129, %128, %127, %126, %125, %124, %123, %122, %121, %120, %119, %118, %117, %116, %115, %114, %113, %112, %111, %110, %109, %102, %101, %100, %99, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %75, %74, %73, %72, %71, %70, %69, %68, %67, %66, %65, %64, %63, %62, %61, %60, %59, %58, %57, %56, %55, %54, %53, %52, %51, %50, %49, %48, %47, %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34
  %255 = load i8*, i8** %2, align 8
  ret i8* %255
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
