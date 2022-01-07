; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow_v9.c_export9_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netgraph/netflow/extr_netflow_v9.c_export9_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netflow_v9_packet_opt = type { i32, i32, i32, i64 }
%struct.flow_entry = type { i32 }
%struct.netflow_v9_flowset_header = type { i64, i8* }
%struct.netflow_v9_record_general = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.netflow_v9_record_ipv6_tcp, %struct.netflow_v9_record_ipv4_tcp }
%struct.netflow_v9_record_ipv6_tcp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.netflow_v9_record_ipv4_tcp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }
%struct.mbuf = type { i32 }
%struct.flow_entry_data = type { i32, i32, %struct.TYPE_13__, i32, i32, i32, i32, i32, i64, i64, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@KTR_NET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"ng_netflow: V9 export packet without tag!\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"export9_add(): Don't know what to do with %d flow type!\00", align 1
@NETFLOW_V9_MAX_RESERVED_FLOWSET = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"ng_netflow: m_append() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @export9_add(i32 %0, %struct.netflow_v9_packet_opt* %1, %struct.flow_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.netflow_v9_packet_opt*, align 8
  %7 = alloca %struct.flow_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.netflow_v9_flowset_header, align 8
  %10 = alloca %struct.netflow_v9_record_general, align 8
  %11 = alloca %struct.mbuf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.flow_entry_data*, align 8
  %14 = alloca %struct.netflow_v9_record_ipv4_tcp*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.netflow_v9_packet_opt* %1, %struct.netflow_v9_packet_opt** %6, align 8
  store %struct.flow_entry* %2, %struct.flow_entry** %7, align 8
  store i64 0, i64* %8, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call %struct.mbuf* @NGI_M(i32 %15)
  store %struct.mbuf* %16, %struct.mbuf** %11, align 8
  %17 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %18 = icmp eq %struct.netflow_v9_packet_opt* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @KTR_NET, align 4
  %21 = call i32 @CTR0(i32 %20, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %207

22:                                               ; preds = %3
  %23 = load %struct.flow_entry*, %struct.flow_entry** %7, align 8
  %24 = getelementptr inbounds %struct.flow_entry, %struct.flow_entry* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to %struct.flow_entry_data*
  store %struct.flow_entry_data* %25, %struct.flow_entry_data** %13, align 8
  %26 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %27 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  switch i32 %30, label %141 [
    i32 129, label %31
  ]

31:                                               ; preds = %22
  %32 = getelementptr inbounds %struct.netflow_v9_record_general, %struct.netflow_v9_record_general* %10, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store %struct.netflow_v9_record_ipv4_tcp* %33, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %34 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %35 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 6
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %40 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %39, i32 0, i32 19
  store i32 %38, i32* %40, align 8
  %41 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %42 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %47 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %46, i32 0, i32 18
  store i32 %45, i32* %47, align 4
  %48 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %49 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %48, i32 0, i32 10
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %53 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %52, i32 0, i32 17
  store i32 %51, i32* %53, align 8
  %54 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %55 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = call i8* @htons(i64 %56)
  %58 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %59 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %58, i32 0, i32 16
  store i8* %57, i8** %59, align 8
  %60 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %61 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %60, i32 0, i32 8
  %62 = load i64, i64* %61, align 8
  %63 = call i8* @htons(i64 %62)
  %64 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %65 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %64, i32 0, i32 15
  store i8* %63, i8** %65, align 8
  %66 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %67 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %66, i32 0, i32 7
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @htonl(i32 %68)
  %70 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %71 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %70, i32 0, i32 14
  store i8* %69, i8** %71, align 8
  %72 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %73 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %72, i32 0, i32 6
  %74 = load i32, i32* %73, align 8
  %75 = call i8* @htonl(i32 %74)
  %76 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %77 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %76, i32 0, i32 13
  store i8* %75, i8** %77, align 8
  %78 = call i8* @htonl(i32 0)
  %79 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %80 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %79, i32 0, i32 12
  store i8* %78, i8** %80, align 8
  %81 = call i8* @htonl(i32 0)
  %82 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %83 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %82, i32 0, i32 11
  store i8* %81, i8** %83, align 8
  %84 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %85 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %84, i32 0, i32 5
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @MILLIUPTIME(i32 %86)
  %88 = call i8* @htonl(i32 %87)
  %89 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %90 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %89, i32 0, i32 10
  store i8* %88, i8** %90, align 8
  %91 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %92 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @MILLIUPTIME(i32 %93)
  %95 = call i8* @htonl(i32 %94)
  %96 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %97 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %96, i32 0, i32 9
  store i8* %95, i8** %97, align 8
  %98 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %99 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %103 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %102, i32 0, i32 8
  store i32 %101, i32* %103, align 8
  %104 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %105 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %109 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %108, i32 0, i32 7
  store i32 %107, i32* %109, align 4
  %110 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %111 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %114 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %113, i32 0, i32 6
  store i32 %112, i32* %114, align 8
  %115 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %116 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %120 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %122 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %121, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %126 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %128 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %131 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %130, i32 0, i32 3
  store i32 %129, i32* %131, align 4
  %132 = load %struct.flow_entry_data*, %struct.flow_entry_data** %13, align 8
  %133 = getelementptr inbounds %struct.flow_entry_data, %struct.flow_entry_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %136 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %135, i32 0, i32 2
  store i32 %134, i32* %136, align 8
  %137 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %138 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %137, i32 0, i32 0
  store i32 0, i32* %138, align 8
  %139 = load %struct.netflow_v9_record_ipv4_tcp*, %struct.netflow_v9_record_ipv4_tcp** %14, align 8
  %140 = getelementptr inbounds %struct.netflow_v9_record_ipv4_tcp, %struct.netflow_v9_record_ipv4_tcp* %139, i32 0, i32 1
  store i32 0, i32* %140, align 4
  store i64 120, i64* %8, align 8
  br label %145

141:                                              ; preds = %22
  %142 = load i32, i32* @KTR_NET, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @CTR1(i32 %142, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  store i32 0, i32* %4, align 4
  br label %207

145:                                              ; preds = %31
  %146 = load i32, i32* %12, align 4
  %147 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %148 = getelementptr inbounds %struct.netflow_v9_packet_opt, %struct.netflow_v9_packet_opt* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %146, %149
  br i1 %150, label %151, label %182

151:                                              ; preds = %145
  %152 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %153 = getelementptr inbounds %struct.netflow_v9_packet_opt, %struct.netflow_v9_packet_opt* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %158 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %159 = call i32 @close_flowset(%struct.mbuf* %157, %struct.netflow_v9_packet_opt* %158)
  br label %160

160:                                              ; preds = %156, %151
  %161 = load i32, i32* %12, align 4
  %162 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %163 = getelementptr inbounds %struct.netflow_v9_packet_opt, %struct.netflow_v9_packet_opt* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %165 = call i64 @m_pktlen(%struct.mbuf* %164)
  %166 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %167 = getelementptr inbounds %struct.netflow_v9_packet_opt, %struct.netflow_v9_packet_opt* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* @NETFLOW_V9_MAX_RESERVED_FLOWSET, align 8
  %169 = load i32, i32* %12, align 4
  %170 = sext i32 %169 to i64
  %171 = add nsw i64 %168, %170
  %172 = call i8* @htons(i64 %171)
  %173 = getelementptr inbounds %struct.netflow_v9_flowset_header, %struct.netflow_v9_flowset_header* %9, i32 0, i32 1
  store i8* %172, i8** %173, align 8
  %174 = getelementptr inbounds %struct.netflow_v9_flowset_header, %struct.netflow_v9_flowset_header* %9, i32 0, i32 0
  store i64 0, i64* %174, align 8
  %175 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %176 = bitcast %struct.netflow_v9_flowset_header* %9 to i8*
  %177 = call i32 @m_append(%struct.mbuf* %175, i64 16, i8* %176)
  %178 = icmp ne i32 %177, 1
  br i1 %178, label %179, label %181

179:                                              ; preds = %160
  %180 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %181

181:                                              ; preds = %179, %160
  br label %182

182:                                              ; preds = %181, %145
  %183 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds %struct.netflow_v9_record_general, %struct.netflow_v9_record_general* %10, i32 0, i32 0
  %186 = bitcast %struct.TYPE_14__* %185 to i8*
  %187 = call i32 @m_append(%struct.mbuf* %183, i64 %184, i8* %186)
  %188 = icmp ne i32 %187, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %182
  %190 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  br label %191

191:                                              ; preds = %189, %182
  %192 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %193 = getelementptr inbounds %struct.netflow_v9_packet_opt, %struct.netflow_v9_packet_opt* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = add nsw i32 %194, 1
  store i32 %195, i32* %193, align 8
  %196 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  %197 = call i64 @m_pktlen(%struct.mbuf* %196)
  %198 = add i64 %197, 240
  %199 = add i64 %198, 16
  %200 = load %struct.netflow_v9_packet_opt*, %struct.netflow_v9_packet_opt** %6, align 8
  %201 = getelementptr inbounds %struct.netflow_v9_packet_opt, %struct.netflow_v9_packet_opt* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @_NETFLOW_V9_MAX_SIZE(i32 %202)
  %204 = icmp uge i64 %199, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %191
  store i32 1, i32* %4, align 4
  br label %207

206:                                              ; preds = %191
  store i32 0, i32* %4, align 4
  br label %207

207:                                              ; preds = %206, %205, %141, %19
  %208 = load i32, i32* %4, align 4
  ret i32 %208
}

declare dso_local %struct.mbuf* @NGI_M(i32) #1

declare dso_local i32 @CTR0(i32, i8*) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @MILLIUPTIME(i32) #1

declare dso_local i32 @CTR1(i32, i8*, i32) #1

declare dso_local i32 @close_flowset(%struct.mbuf*, %struct.netflow_v9_packet_opt*) #1

declare dso_local i64 @m_pktlen(%struct.mbuf*) #1

declare dso_local i32 @m_append(%struct.mbuf*, i64, i8*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @_NETFLOW_V9_MAX_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
