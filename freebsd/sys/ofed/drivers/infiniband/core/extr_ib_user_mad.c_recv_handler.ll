; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_recv_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_user_mad.c_recv_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32, i32, %struct.ib_umad_file* }
%struct.ib_umad_file = type { i32 }
%struct.ib_mad_send_buf = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_6__, %struct.TYPE_10__*, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.ib_umad_packet = type { %struct.TYPE_8__, %struct.ib_mad_recv_wc*, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i64, i64 }
%struct.ib_ah_attr = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }

@IB_WC_SUCCESS = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_WC_GRH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_mad_agent*, %struct.ib_mad_send_buf*, %struct.ib_mad_recv_wc*)* @recv_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_handler(%struct.ib_mad_agent* %0, %struct.ib_mad_send_buf* %1, %struct.ib_mad_recv_wc* %2) #0 {
  %4 = alloca %struct.ib_mad_agent*, align 8
  %5 = alloca %struct.ib_mad_send_buf*, align 8
  %6 = alloca %struct.ib_mad_recv_wc*, align 8
  %7 = alloca %struct.ib_umad_file*, align 8
  %8 = alloca %struct.ib_umad_packet*, align 8
  %9 = alloca %struct.ib_ah_attr, align 4
  %10 = alloca i32, align 4
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %4, align 8
  store %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_buf** %5, align 8
  store %struct.ib_mad_recv_wc* %2, %struct.ib_mad_recv_wc** %6, align 8
  %11 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %12 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %11, i32 0, i32 2
  %13 = load %struct.ib_umad_file*, %struct.ib_umad_file** %12, align 8
  store %struct.ib_umad_file* %13, %struct.ib_umad_file** %7, align 8
  %14 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %15 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IB_WC_SUCCESS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %186

22:                                               ; preds = %3
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.ib_umad_packet* @kzalloc(i32 88, i32 %23)
  store %struct.ib_umad_packet* %24, %struct.ib_umad_packet** %8, align 8
  %25 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %26 = icmp ne %struct.ib_umad_packet* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %186

28:                                               ; preds = %22
  %29 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %30 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %33 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  %34 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %35 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %36 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %35, i32 0, i32 1
  store %struct.ib_mad_recv_wc* %34, %struct.ib_mad_recv_wc** %36, align 8
  %37 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %38 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 12
  store i64 0, i64* %40, align 8
  %41 = load %struct.ib_umad_file*, %struct.ib_umad_file** %7, align 8
  %42 = call i64 @hdr_size(%struct.ib_umad_file* %41)
  %43 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %44 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %48 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 11
  store i64 %46, i64* %50, align 8
  %51 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %52 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %51, i32 0, i32 1
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be32(i32 %55)
  %57 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %58 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 10
  store i8* %56, i8** %60, align 8
  %61 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %62 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @cpu_to_be16(i32 %65)
  %67 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %68 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 9
  store i32 %66, i32* %70, align 4
  %71 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %72 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %77 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 8
  store i32 %75, i32* %79, align 8
  %80 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %81 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %80, i32 0, i32 1
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %86 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 7
  store i32 %84, i32* %88, align 4
  %89 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %90 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %89, i32 0, i32 1
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %95 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 6
  store i32 %93, i32* %97, align 8
  %98 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %99 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %98, i32 0, i32 1
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @IB_WC_GRH, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %110 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  store i32 %108, i32* %112, align 8
  %113 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %114 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %175

119:                                              ; preds = %28
  %120 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %121 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %124 = getelementptr inbounds %struct.ib_mad_agent, %struct.ib_mad_agent* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %127 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %126, i32 0, i32 1
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %127, align 8
  %129 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %130 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @ib_init_ah_from_wc(i32 %122, i32 %125, %struct.TYPE_10__* %128, i32 %132, %struct.ib_ah_attr* %9)
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %119
  br label %183

137:                                              ; preds = %119
  %138 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %9, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %142 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 5
  store i32 %140, i32* %144, align 4
  %145 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %9, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %149 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 4
  store i32 %147, i32* %151, align 8
  %152 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %9, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %156 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 3
  store i32 %154, i32* %158, align 4
  %159 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %160 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %9, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 1
  %166 = call i32 @memcpy(i32 %163, i32* %165, i32 16)
  %167 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %9, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i8* @cpu_to_be32(i32 %169)
  %171 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %172 = getelementptr inbounds %struct.ib_umad_packet, %struct.ib_umad_packet* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 1
  store i8* %170, i8** %174, align 8
  br label %175

175:                                              ; preds = %137, %28
  %176 = load %struct.ib_umad_file*, %struct.ib_umad_file** %7, align 8
  %177 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %4, align 8
  %178 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %179 = call i64 @queue_packet(%struct.ib_umad_file* %176, %struct.ib_mad_agent* %177, %struct.ib_umad_packet* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %175
  br label %183

182:                                              ; preds = %175
  br label %189

183:                                              ; preds = %181, %136
  %184 = load %struct.ib_umad_packet*, %struct.ib_umad_packet** %8, align 8
  %185 = call i32 @kfree(%struct.ib_umad_packet* %184)
  br label %186

186:                                              ; preds = %183, %27, %21
  %187 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %6, align 8
  %188 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %187)
  br label %189

189:                                              ; preds = %186, %182
  ret void
}

declare dso_local %struct.ib_umad_packet* @kzalloc(i32, i32) #1

declare dso_local i64 @hdr_size(%struct.ib_umad_file*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @ib_init_ah_from_wc(i32, i32, %struct.TYPE_10__*, i32, %struct.ib_ah_attr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @queue_packet(%struct.ib_umad_file*, %struct.ib_mad_agent*, %struct.ib_umad_packet*) #1

declare dso_local i32 @kfree(%struct.ib_umad_packet*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
