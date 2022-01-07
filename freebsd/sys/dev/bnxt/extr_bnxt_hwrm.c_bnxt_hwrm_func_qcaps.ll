; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_qcaps.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_hwrm.c_bnxt_hwrm_func_qcaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32, %struct.bnxt_pf_info, i32, %struct.bnxt_func_info, %struct.TYPE_2__ }
%struct.bnxt_pf_info = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.bnxt_func_info = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i64 }
%struct.hwrm_func_qcaps_input = type { i32, i32 }
%struct.hwrm_func_qcaps_output = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HWRM_FUNC_QCAPS = common dso_local global i32 0, align 4
@HWRM_FUNC_QCAPS_OUTPUT_FLAGS_WOL_MAGICPKT_SUPPORTED = common dso_local global i32 0, align 4
@BNXT_FLAG_WOL_CAP = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"Invalid ethernet address, generating random locally administered address\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_hwrm_func_qcaps(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hwrm_func_qcaps_input, align 4
  %5 = alloca %struct.hwrm_func_qcaps_output*, align 8
  %6 = alloca %struct.bnxt_func_info*, align 8
  %7 = alloca %struct.bnxt_pf_info*, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = bitcast %struct.hwrm_func_qcaps_input* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %8, i8 0, i64 8, i1 false)
  %9 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %10 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %9, i32 0, i32 4
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = bitcast i8* %13 to %struct.hwrm_func_qcaps_output*
  store %struct.hwrm_func_qcaps_output* %14, %struct.hwrm_func_qcaps_output** %5, align 8
  %15 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %15, i32 0, i32 3
  store %struct.bnxt_func_info* %16, %struct.bnxt_func_info** %6, align 8
  %17 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %18 = load i32, i32* @HWRM_FUNC_QCAPS, align 4
  %19 = call i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc* %17, %struct.hwrm_func_qcaps_input* %4, i32 %18)
  %20 = call i32 @htole16(i32 65535)
  %21 = getelementptr inbounds %struct.hwrm_func_qcaps_input, %struct.hwrm_func_qcaps_input* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %23 = call i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc* %22)
  %24 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %25 = call i32 @_hwrm_send_message(%struct.bnxt_softc* %24, %struct.hwrm_func_qcaps_input* %4, i32 8)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  br label %193

29:                                               ; preds = %1
  %30 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %31 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @HWRM_FUNC_QCAPS_OUTPUT_FLAGS_WOL_MAGICPKT_SUPPORTED, align 4
  %34 = call i32 @htole32(i32 %33)
  %35 = and i32 %32, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load i32, i32* @BNXT_FLAG_WOL_CAP, align 4
  %39 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %29
  %44 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %45 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %44, i32 0, i32 19
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @le16toh(i32 %46)
  %48 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %49 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %48, i32 0, i32 9
  store i8* %47, i8** %49, align 8
  %50 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %51 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %54 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %53, i32 0, i32 18
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %57 = call i32 @memcpy(i32 %52, i32 %55, i32 %56)
  %58 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %59 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %58, i32 0, i32 17
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @le16toh(i32 %60)
  %62 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %63 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %62, i32 0, i32 8
  store i8* %61, i8** %63, align 8
  %64 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %65 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %64, i32 0, i32 16
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @le16toh(i32 %66)
  %68 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %69 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %68, i32 0, i32 7
  store i8* %67, i8** %69, align 8
  %70 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %71 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %70, i32 0, i32 15
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @le16toh(i32 %72)
  %74 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %75 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %74, i32 0, i32 4
  store i8* %73, i8** %75, align 8
  %76 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %77 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %76, i32 0, i32 14
  %78 = load i32, i32* %77, align 4
  %79 = call i8* @le16toh(i32 %78)
  %80 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %81 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %80, i32 0, i32 6
  store i8* %79, i8** %81, align 8
  %82 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %83 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %82, i32 0, i32 13
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le32toh(i32 %84)
  %86 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %87 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %86, i32 0, i32 5
  store i8* %85, i8** %87, align 8
  %88 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %89 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %88, i32 0, i32 5
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %98, label %92

92:                                               ; preds = %43
  %93 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %94 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %93, i32 0, i32 4
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %97 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %96, i32 0, i32 5
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %92, %43
  %99 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %100 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @le16toh(i32 %101)
  %103 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %104 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %103, i32 0, i32 3
  store i8* %102, i8** %104, align 8
  %105 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %106 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %105, i32 0, i32 11
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @le16toh(i32 %107)
  %109 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %110 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %109, i32 0, i32 2
  store i8* %108, i8** %110, align 8
  %111 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %112 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @le16toh(i32 %113)
  %115 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %116 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %115, i32 0, i32 1
  store i8* %114, i8** %116, align 8
  %117 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %118 = call i64 @BNXT_PF(%struct.bnxt_softc* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %177

120:                                              ; preds = %98
  %121 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %122 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %121, i32 0, i32 1
  store %struct.bnxt_pf_info* %122, %struct.bnxt_pf_info** %7, align 8
  %123 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %124 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @le16toh(i32 %125)
  %127 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %128 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %127, i32 0, i32 8
  store i8* %126, i8** %128, align 8
  %129 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %130 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %129, i32 0, i32 8
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @le16toh(i32 %131)
  %133 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %134 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %133, i32 0, i32 7
  store i8* %132, i8** %134, align 8
  %135 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %136 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %135, i32 0, i32 7
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @le16toh(i32 %137)
  %139 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %140 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %139, i32 0, i32 6
  store i8* %138, i8** %140, align 8
  %141 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %142 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @le32toh(i32 %143)
  %145 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %146 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %145, i32 0, i32 5
  store i8* %144, i8** %146, align 8
  %147 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %148 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @le32toh(i32 %149)
  %151 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %152 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %151, i32 0, i32 4
  store i8* %150, i8** %152, align 8
  %153 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %154 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @le32toh(i32 %155)
  %157 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %158 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %157, i32 0, i32 3
  store i8* %156, i8** %158, align 8
  %159 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %160 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %159, i32 0, i32 3
  %161 = load i32, i32* %160, align 4
  %162 = call i8* @le32toh(i32 %161)
  %163 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %164 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %163, i32 0, i32 2
  store i8* %162, i8** %164, align 8
  %165 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %166 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @le32toh(i32 %167)
  %169 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %170 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %169, i32 0, i32 1
  store i8* %168, i8** %170, align 8
  %171 = load %struct.hwrm_func_qcaps_output*, %struct.hwrm_func_qcaps_output** %5, align 8
  %172 = getelementptr inbounds %struct.hwrm_func_qcaps_output, %struct.hwrm_func_qcaps_output* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i8* @le32toh(i32 %173)
  %175 = load %struct.bnxt_pf_info*, %struct.bnxt_pf_info** %7, align 8
  %176 = getelementptr inbounds %struct.bnxt_pf_info, %struct.bnxt_pf_info* %175, i32 0, i32 0
  store i8* %174, i8** %176, align 8
  br label %177

177:                                              ; preds = %120, %98
  %178 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %179 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = call i32 @_is_valid_ether_addr(i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %192, label %183

183:                                              ; preds = %177
  %184 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %185 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @device_printf(i32 %186, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0))
  %188 = load %struct.bnxt_func_info*, %struct.bnxt_func_info** %6, align 8
  %189 = getelementptr inbounds %struct.bnxt_func_info, %struct.bnxt_func_info* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @get_random_ether_addr(i32 %190)
  br label %192

192:                                              ; preds = %183, %177
  br label %193

193:                                              ; preds = %192, %28
  %194 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %195 = call i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc* %194)
  %196 = load i32, i32* %3, align 4
  ret i32 %196
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bnxt_hwrm_cmd_hdr_init(%struct.bnxt_softc*, %struct.hwrm_func_qcaps_input*, i32) #2

declare dso_local i32 @htole16(i32) #2

declare dso_local i32 @BNXT_HWRM_LOCK(%struct.bnxt_softc*) #2

declare dso_local i32 @_hwrm_send_message(%struct.bnxt_softc*, %struct.hwrm_func_qcaps_input*, i32) #2

declare dso_local i32 @htole32(i32) #2

declare dso_local i8* @le16toh(i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i8* @le32toh(i32) #2

declare dso_local i64 @BNXT_PF(%struct.bnxt_softc*) #2

declare dso_local i32 @_is_valid_ether_addr(i32) #2

declare dso_local i32 @device_printf(i32, i8*) #2

declare dso_local i32 @get_random_ether_addr(i32) #2

declare dso_local i32 @BNXT_HWRM_UNLOCK(%struct.bnxt_softc*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
