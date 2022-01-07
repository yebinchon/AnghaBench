; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nvm_read_chunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm.c_iwm_nvm_read_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }
%struct.iwm_nvm_access_cmd = type { i32, i32, i32, i32 }
%struct.iwm_nvm_access_resp = type { i32*, i32, i32, i32 }
%struct.iwm_rx_packet = type { i64 }
%struct.iwm_host_cmd = type { i32, i32*, %struct.iwm_rx_packet*, i32, i32 }

@IWM_NVM_READ_OPCODE = common dso_local global i32 0, align 4
@IWM_CMD_WANT_SKB = common dso_local global i32 0, align 4
@IWM_CMD_SEND_IN_RFKILL = common dso_local global i32 0, align 4
@IWM_NVM_ACCESS_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Could not send NVM_ACCESS command (error=%d)\0A\00", align 1
@IWM_READ_NVM_CHUNK_NOT_VALID_ADDRESS = common dso_local global i32 0, align 4
@IWM_DEBUG_EEPROM = common dso_local global i32 0, align 4
@IWM_DEBUG_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [81 x i8] c"NVM access command failed on offset 0x%x since that section size is multiple 2K\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"NVM access command failed with status %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"NVM ACCESS response with invalid offset %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"NVM ACCESS response with too much data (%d bytes requested, %d bytes received)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwm_softc*, i32, i32, i32, i32*, i32*)* @iwm_nvm_read_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwm_nvm_read_chunk(%struct.iwm_softc* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwm_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.iwm_nvm_access_cmd, align 4
  %15 = alloca %struct.iwm_nvm_access_resp*, align 8
  %16 = alloca %struct.iwm_rx_packet*, align 8
  %17 = alloca %struct.iwm_host_cmd, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  store %struct.iwm_softc* %0, %struct.iwm_softc** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %22 = getelementptr inbounds %struct.iwm_nvm_access_cmd, %struct.iwm_nvm_access_cmd* %14, i32 0, i32 0
  %23 = load i32, i32* @IWM_NVM_READ_OPCODE, align 4
  store i32 %23, i32* %22, align 4
  %24 = getelementptr inbounds %struct.iwm_nvm_access_cmd, %struct.iwm_nvm_access_cmd* %14, i32 0, i32 1
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @htole16(i32 %25)
  store i32 %26, i32* %24, align 4
  %27 = getelementptr inbounds %struct.iwm_nvm_access_cmd, %struct.iwm_nvm_access_cmd* %14, i32 0, i32 2
  %28 = load i32, i32* %11, align 4
  %29 = call i32 @htole16(i32 %28)
  store i32 %29, i32* %27, align 4
  %30 = getelementptr inbounds %struct.iwm_nvm_access_cmd, %struct.iwm_nvm_access_cmd* %14, i32 0, i32 3
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @htole16(i32 %31)
  store i32 %32, i32* %30, align 4
  %33 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %17, i32 0, i32 0
  %34 = load i32, i32* @IWM_CMD_WANT_SKB, align 4
  %35 = load i32, i32* @IWM_CMD_SEND_IN_RFKILL, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %33, align 8
  %37 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %17, i32 0, i32 1
  store i32* null, i32** %37, align 8
  %38 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %17, i32 0, i32 2
  store %struct.iwm_rx_packet* null, %struct.iwm_rx_packet** %38, align 8
  %39 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %17, i32 0, i32 3
  %40 = ptrtoint %struct.iwm_nvm_access_cmd* %14 to i32
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %17, i32 0, i32 4
  %42 = load i32, i32* @IWM_NVM_ACCESS_CMD, align 4
  store i32 %42, i32* %41, align 4
  %43 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %17, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 16, i32* %45, align 4
  %46 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %47 = call i32 @iwm_send_cmd(%struct.iwm_softc* %46, %struct.iwm_host_cmd* %17)
  store i32 %47, i32* %18, align 4
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %6
  %51 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %52 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %18, align 4
  %55 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %53, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* %18, align 4
  store i32 %56, i32* %7, align 4
  br label %143

57:                                               ; preds = %6
  %58 = getelementptr inbounds %struct.iwm_host_cmd, %struct.iwm_host_cmd* %17, i32 0, i32 2
  %59 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %58, align 8
  store %struct.iwm_rx_packet* %59, %struct.iwm_rx_packet** %16, align 8
  %60 = load %struct.iwm_rx_packet*, %struct.iwm_rx_packet** %16, align 8
  %61 = getelementptr inbounds %struct.iwm_rx_packet, %struct.iwm_rx_packet* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to i8*
  %64 = bitcast i8* %63 to %struct.iwm_nvm_access_resp*
  store %struct.iwm_nvm_access_resp* %64, %struct.iwm_nvm_access_resp** %15, align 8
  %65 = load %struct.iwm_nvm_access_resp*, %struct.iwm_nvm_access_resp** %15, align 8
  %66 = getelementptr inbounds %struct.iwm_nvm_access_resp, %struct.iwm_nvm_access_resp* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @le16toh(i32 %67)
  store i32 %68, i32* %18, align 4
  %69 = load %struct.iwm_nvm_access_resp*, %struct.iwm_nvm_access_resp** %15, align 8
  %70 = getelementptr inbounds %struct.iwm_nvm_access_resp, %struct.iwm_nvm_access_resp* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @le16toh(i32 %71)
  store i32 %72, i32* %19, align 4
  %73 = load %struct.iwm_nvm_access_resp*, %struct.iwm_nvm_access_resp** %15, align 8
  %74 = getelementptr inbounds %struct.iwm_nvm_access_resp, %struct.iwm_nvm_access_resp* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @le16toh(i32 %75)
  store i32 %76, i32* %20, align 4
  %77 = load %struct.iwm_nvm_access_resp*, %struct.iwm_nvm_access_resp** %15, align 8
  %78 = getelementptr inbounds %struct.iwm_nvm_access_resp, %struct.iwm_nvm_access_resp* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  store i32* %79, i32** %21, align 8
  %80 = load i32, i32* %18, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %57
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %97

85:                                               ; preds = %82
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* @IWM_READ_NVM_CHUNK_NOT_VALID_ADDRESS, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %97

89:                                               ; preds = %85
  %90 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %91 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %92 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %90, i32 %93, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32*, i32** %13, align 8
  store i32 0, i32* %96, align 4
  store i32 0, i32* %18, align 4
  br label %105

97:                                               ; preds = %85, %82
  %98 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %99 = load i32, i32* @IWM_DEBUG_EEPROM, align 4
  %100 = load i32, i32* @IWM_DEBUG_RESET, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %18, align 4
  %103 = call i32 @IWM_DPRINTF(%struct.iwm_softc* %98, i32 %101, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EIO, align 4
  store i32 %104, i32* %18, align 4
  br label %105

105:                                              ; preds = %97, %89
  br label %139

106:                                              ; preds = %57
  %107 = load i32, i32* %20, align 4
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %106
  %111 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %112 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %20, align 4
  %115 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %18, align 4
  br label %139

117:                                              ; preds = %106
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %11, align 4
  %120 = icmp sgt i32 %118, %119
  br i1 %120, label %121, label %129

121:                                              ; preds = %117
  %122 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %123 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* %19, align 4
  %127 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %124, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %125, i32 %126)
  %128 = load i32, i32* @EINVAL, align 4
  store i32 %128, i32* %18, align 4
  br label %139

129:                                              ; preds = %117
  %130 = load i32*, i32** %12, align 8
  %131 = load i32, i32* %10, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  %134 = load i32*, i32** %21, align 8
  %135 = load i32, i32* %19, align 4
  %136 = call i32 @memcpy(i32* %133, i32* %134, i32 %135)
  %137 = load i32, i32* %19, align 4
  %138 = load i32*, i32** %13, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %129, %121, %110, %105
  %140 = load %struct.iwm_softc*, %struct.iwm_softc** %8, align 8
  %141 = call i32 @iwm_free_resp(%struct.iwm_softc* %140, %struct.iwm_host_cmd* %17)
  %142 = load i32, i32* %18, align 4
  store i32 %142, i32* %7, align 4
  br label %143

143:                                              ; preds = %139, %50
  %144 = load i32, i32* %7, align 4
  ret i32 %144
}

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @iwm_send_cmd(%struct.iwm_softc*, %struct.iwm_host_cmd*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @IWM_DPRINTF(%struct.iwm_softc*, i32, i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @iwm_free_resp(%struct.iwm_softc*, %struct.iwm_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
