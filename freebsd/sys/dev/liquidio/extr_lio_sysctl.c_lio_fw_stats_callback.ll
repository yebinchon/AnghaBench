; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_fw_stats_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/extr_lio_sysctl.c_lio_fw_stats_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.TYPE_4__ = type { %struct.octeon_tx_stats, %struct.octeon_rx_stats }
%struct.octeon_tx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.octeon_rx_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.lio_soft_command = type { i64 }
%struct.lio_fw_stats_resp = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.octeon_tx_stats, %struct.octeon_rx_stats }
%struct.lio = type { i32, i32 }

@LIO_REQUEST_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.octeon_device*, i64, i8*)* @lio_fw_stats_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lio_fw_stats_callback(%struct.octeon_device* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.octeon_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.lio_soft_command*, align 8
  %8 = alloca %struct.lio_fw_stats_resp*, align 8
  %9 = alloca %struct.octeon_rx_stats*, align 8
  %10 = alloca %struct.octeon_tx_stats*, align 8
  %11 = alloca %struct.octeon_rx_stats*, align 8
  %12 = alloca %struct.octeon_tx_stats*, align 8
  %13 = alloca %struct.ifnet*, align 8
  %14 = alloca %struct.lio*, align 8
  store %struct.octeon_device* %0, %struct.octeon_device** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.lio_soft_command*
  store %struct.lio_soft_command* %16, %struct.lio_soft_command** %7, align 8
  %17 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %18 = getelementptr inbounds %struct.lio_soft_command, %struct.lio_soft_command* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lio_fw_stats_resp*
  store %struct.lio_fw_stats_resp* %20, %struct.lio_fw_stats_resp** %8, align 8
  %21 = load %struct.lio_fw_stats_resp*, %struct.lio_fw_stats_resp** %8, align 8
  %22 = getelementptr inbounds %struct.lio_fw_stats_resp, %struct.lio_fw_stats_resp* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  store %struct.octeon_rx_stats* %23, %struct.octeon_rx_stats** %9, align 8
  %24 = load %struct.lio_fw_stats_resp*, %struct.lio_fw_stats_resp** %8, align 8
  %25 = getelementptr inbounds %struct.lio_fw_stats_resp, %struct.lio_fw_stats_resp* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.octeon_tx_stats* %26, %struct.octeon_tx_stats** %10, align 8
  %27 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store %struct.octeon_rx_stats* %29, %struct.octeon_rx_stats** %11, align 8
  %30 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.octeon_tx_stats* %32, %struct.octeon_tx_stats** %12, align 8
  %33 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %34 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load %struct.ifnet*, %struct.ifnet** %35, align 8
  store %struct.ifnet* %36, %struct.ifnet** %13, align 8
  %37 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  %38 = call %struct.lio* @if_getsoftc(%struct.ifnet* %37)
  store %struct.lio* %38, %struct.lio** %14, align 8
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @LIO_REQUEST_TIMEOUT, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %302

42:                                               ; preds = %3
  %43 = load %struct.lio_fw_stats_resp*, %struct.lio_fw_stats_resp** %8, align 8
  %44 = getelementptr inbounds %struct.lio_fw_stats_resp, %struct.lio_fw_stats_resp* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %302, label %47

47:                                               ; preds = %42
  %48 = load %struct.lio_fw_stats_resp*, %struct.lio_fw_stats_resp** %8, align 8
  %49 = getelementptr inbounds %struct.lio_fw_stats_resp, %struct.lio_fw_stats_resp* %48, i32 0, i32 0
  %50 = bitcast %struct.TYPE_6__* %49 to i32*
  %51 = call i32 @lio_swap_8B_data(i32* %50, i32 0)
  %52 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %53 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %52, i32 0, i32 27
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %56 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %55, i32 0, i32 27
  store i32 %54, i32* %56, align 4
  %57 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %58 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %57, i32 0, i32 26
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %61 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %60, i32 0, i32 26
  store i32 %59, i32* %61, align 4
  %62 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %63 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %62, i32 0, i32 25
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %66 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %65, i32 0, i32 25
  store i32 %64, i32* %66, align 4
  %67 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %68 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %67, i32 0, i32 24
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %71 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %70, i32 0, i32 24
  store i32 %69, i32* %71, align 4
  %72 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %73 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %72, i32 0, i32 23
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %76 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %75, i32 0, i32 23
  store i32 %74, i32* %76, align 4
  %77 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %78 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %77, i32 0, i32 22
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %81 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %80, i32 0, i32 22
  store i32 %79, i32* %81, align 4
  %82 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %83 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %82, i32 0, i32 21
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %86 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %85, i32 0, i32 21
  store i32 %84, i32* %86, align 4
  %87 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %88 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %87, i32 0, i32 20
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %91 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %90, i32 0, i32 20
  store i32 %89, i32* %91, align 4
  %92 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %93 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %92, i32 0, i32 19
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %96 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %95, i32 0, i32 19
  store i32 %94, i32* %96, align 4
  %97 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %98 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %97, i32 0, i32 18
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %101 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %100, i32 0, i32 18
  store i32 %99, i32* %101, align 4
  %102 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %103 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %102, i32 0, i32 17
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %106 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %105, i32 0, i32 17
  store i32 %104, i32* %106, align 4
  %107 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %108 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %107, i32 0, i32 16
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %111 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %110, i32 0, i32 16
  store i32 %109, i32* %111, align 4
  %112 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %113 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %112, i32 0, i32 15
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %116 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %115, i32 0, i32 15
  store i32 %114, i32* %116, align 4
  %117 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %118 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %117, i32 0, i32 14
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %121 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %120, i32 0, i32 14
  store i32 %119, i32* %121, align 4
  %122 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %123 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %122, i32 0, i32 13
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %126 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %125, i32 0, i32 13
  store i32 %124, i32* %126, align 4
  %127 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %128 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %127, i32 0, i32 12
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %131 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %130, i32 0, i32 12
  store i32 %129, i32* %131, align 4
  %132 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %133 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %132, i32 0, i32 11
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %136 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %135, i32 0, i32 11
  store i32 %134, i32* %136, align 4
  %137 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %138 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %137, i32 0, i32 10
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %141 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %140, i32 0, i32 10
  store i32 %139, i32* %141, align 4
  %142 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %143 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %142, i32 0, i32 9
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %146 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %145, i32 0, i32 9
  store i32 %144, i32* %146, align 4
  %147 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %148 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %151 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %150, i32 0, i32 8
  store i32 %149, i32* %151, align 4
  %152 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %153 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %152, i32 0, i32 7
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %156 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %155, i32 0, i32 7
  store i32 %154, i32* %156, align 4
  %157 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %158 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %157, i32 0, i32 6
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %161 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %160, i32 0, i32 6
  store i32 %159, i32* %161, align 4
  %162 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %163 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %166 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %165, i32 0, i32 5
  store i32 %164, i32* %166, align 4
  %167 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %168 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %171 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  %172 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %173 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %176 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 4
  %177 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %178 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %181 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %180, i32 0, i32 2
  store i32 %179, i32* %181, align 4
  %182 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %183 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %186 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %185, i32 0, i32 1
  store i32 %184, i32* %186, align 4
  %187 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %9, align 8
  %188 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.octeon_rx_stats*, %struct.octeon_rx_stats** %11, align 8
  %191 = getelementptr inbounds %struct.octeon_rx_stats, %struct.octeon_rx_stats* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 4
  %192 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %193 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %192, i32 0, i32 21
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %196 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %195, i32 0, i32 21
  store i32 %194, i32* %196, align 4
  %197 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %198 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %197, i32 0, i32 20
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %201 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %200, i32 0, i32 20
  store i32 %199, i32* %201, align 4
  %202 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %203 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %202, i32 0, i32 19
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %206 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %205, i32 0, i32 19
  store i32 %204, i32* %206, align 4
  %207 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %208 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %207, i32 0, i32 18
  %209 = load i32, i32* %208, align 4
  %210 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %211 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %210, i32 0, i32 18
  store i32 %209, i32* %211, align 4
  %212 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %213 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %212, i32 0, i32 17
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %216 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %215, i32 0, i32 17
  store i32 %214, i32* %216, align 4
  %217 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %218 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %217, i32 0, i32 16
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %221 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %220, i32 0, i32 16
  store i32 %219, i32* %221, align 4
  %222 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %223 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %222, i32 0, i32 15
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %226 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %225, i32 0, i32 15
  store i32 %224, i32* %226, align 4
  %227 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %228 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %227, i32 0, i32 14
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %231 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %230, i32 0, i32 14
  store i32 %229, i32* %231, align 4
  %232 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %233 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %232, i32 0, i32 13
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %236 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %235, i32 0, i32 13
  store i32 %234, i32* %236, align 4
  %237 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %238 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %237, i32 0, i32 12
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %241 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %240, i32 0, i32 12
  store i32 %239, i32* %241, align 4
  %242 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %243 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %242, i32 0, i32 11
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %246 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %245, i32 0, i32 11
  store i32 %244, i32* %246, align 4
  %247 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %248 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %247, i32 0, i32 10
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %251 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %250, i32 0, i32 10
  store i32 %249, i32* %251, align 4
  %252 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %253 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %252, i32 0, i32 9
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %256 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %255, i32 0, i32 9
  store i32 %254, i32* %256, align 4
  %257 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %258 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %257, i32 0, i32 8
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %261 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %260, i32 0, i32 8
  store i32 %259, i32* %261, align 4
  %262 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %263 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %262, i32 0, i32 7
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %266 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 4
  %267 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %268 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %267, i32 0, i32 6
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %271 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %270, i32 0, i32 6
  store i32 %269, i32* %271, align 4
  %272 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %273 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %272, i32 0, i32 5
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %276 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %275, i32 0, i32 5
  store i32 %274, i32* %276, align 4
  %277 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %278 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %277, i32 0, i32 4
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %281 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %280, i32 0, i32 4
  store i32 %279, i32* %281, align 4
  %282 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %283 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %286 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %285, i32 0, i32 3
  store i32 %284, i32* %286, align 4
  %287 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %288 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %291 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %290, i32 0, i32 2
  store i32 %289, i32* %291, align 4
  %292 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %293 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %292, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %296 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %295, i32 0, i32 1
  store i32 %294, i32* %296, align 4
  %297 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %10, align 8
  %298 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.octeon_tx_stats*, %struct.octeon_tx_stats** %12, align 8
  %301 = getelementptr inbounds %struct.octeon_tx_stats, %struct.octeon_tx_stats* %300, i32 0, i32 0
  store i32 %299, i32* %301, align 4
  br label %302

302:                                              ; preds = %47, %42, %3
  %303 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %304 = load %struct.lio_soft_command*, %struct.lio_soft_command** %7, align 8
  %305 = call i32 @lio_free_soft_command(%struct.octeon_device* %303, %struct.lio_soft_command* %304)
  %306 = load %struct.lio*, %struct.lio** %14, align 8
  %307 = getelementptr inbounds %struct.lio, %struct.lio* %306, i32 0, i32 1
  %308 = load %struct.lio*, %struct.lio** %14, align 8
  %309 = getelementptr inbounds %struct.lio, %struct.lio* %308, i32 0, i32 0
  %310 = load i32, i32* %309, align 4
  %311 = call i32 @lio_ms_to_ticks(i32 %310)
  %312 = call i32 @callout_schedule(i32* %307, i32 %311)
  ret void
}

declare dso_local %struct.lio* @if_getsoftc(%struct.ifnet*) #1

declare dso_local i32 @lio_swap_8B_data(i32*, i32) #1

declare dso_local i32 @lio_free_soft_command(%struct.octeon_device*, %struct.lio_soft_command*) #1

declare dso_local i32 @callout_schedule(i32*, i32) #1

declare dso_local i32 @lio_ms_to_ticks(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
