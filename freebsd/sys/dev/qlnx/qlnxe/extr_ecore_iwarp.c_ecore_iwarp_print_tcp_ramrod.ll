; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_print_tcp_ramrod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_iwarp.c_ecore_iwarp_print_tcp_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.iwarp_tcp_offload_ramrod_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c">>> PRINT TCP RAMROD\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"local_mac=%x %x %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"remote_mac=%x %x %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"vlan_id=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"flags=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"ip_version=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"local_ip=%x.%x.%x.%x\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"remote_ip=%x.%x.%x.%x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"flow_label=%x\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"ttl=%x\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"tos_or_tc=%x\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"local_port=%x\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"remote_port=%x\0A\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"mss=%x\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"rcv_wnd_scale=%x\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"connect_mode=%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"syn_ip_payload_length=%x\0A\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"syn_phy_addr_lo=%x\0A\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"syn_phy_addr_hi=%x\0A\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"<<<f  PRINT TCP RAMROD\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*, %struct.iwarp_tcp_offload_ramrod_data*)* @ecore_iwarp_print_tcp_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iwarp_print_tcp_ramrod(%struct.ecore_hwfn* %0, %struct.iwarp_tcp_offload_ramrod_data* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.iwarp_tcp_offload_ramrod_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.iwarp_tcp_offload_ramrod_data* %1, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %5 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %6 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %7 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %5, i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %10 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %11 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 21
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %15 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 20
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %19 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 19
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %8, i32 %9, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %13, i32 %17, i32 %21)
  %23 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %24 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %25 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %26 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 18
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %30 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 17
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %34 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 16
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %23, i32 %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 %32, i32 %36)
  %38 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %39 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %40 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %41 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 8
  %44 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %38, i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %46 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %47 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %48 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 14
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %45, i32 %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %53 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %54 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %55 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 13
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %52, i32 %53, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i32 %57)
  %59 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %60 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %61 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %62 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 12
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %68 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 12
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %74 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 12
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %80 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 12
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %59, i32 %60, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i32 %66, i32 %72, i32 %78, i32 %84)
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %87 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %88 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %89 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 11
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %95 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 11
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %101 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 11
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %107 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 11
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %86, i32 %87, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %93, i32 %99, i32 %105, i32 %111)
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %114 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %115 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %116 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 10
  %118 = load i32, i32* %117, align 8
  %119 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %113, i32 %114, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %118)
  %120 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %121 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %122 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %123 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 9
  %125 = load i32, i32* %124, align 4
  %126 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %120, i32 %121, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0), i32 %125)
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %128 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %129 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %130 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 8
  %132 = load i32, i32* %131, align 8
  %133 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %127, i32 %128, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %132)
  %134 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %135 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %136 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %137 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 4
  %140 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %134, i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i32 %139)
  %141 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %142 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %143 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %144 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 6
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %141, i32 %142, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), i32 %146)
  %148 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %149 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %150 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %151 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %148, i32 %149, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.13, i64 0, i64 0), i32 %153)
  %155 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %156 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %157 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %158 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %155, i32 %156, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0), i32 %160)
  %162 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %163 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %164 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %165 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %162, i32 %163, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i32 %167)
  %169 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %170 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %171 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %172 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %169, i32 %170, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.16, i64 0, i64 0), i32 %174)
  %176 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %177 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %178 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %179 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %176, i32 %177, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0), i32 %181)
  %183 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %184 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %185 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %186 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %183, i32 %184, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32 %188)
  %190 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %191 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %192 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %190, i32 %191, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0))
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
