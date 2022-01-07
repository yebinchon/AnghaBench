; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rb_ptr_to_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_rb_ptr_to_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.nicvf = type { i32 }
%struct.rbuf_info = type { i32, i32, %struct.mbuf* }

@.str = private unnamed_addr constant [44 x i8] c"%s: Received packet fragment with NULL mbuf\00", align 1
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.nicvf*, i32)* @nicvf_rb_ptr_to_mbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @nicvf_rb_ptr_to_mbuf(%struct.nicvf* %0, i32 %1) #0 {
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.rbuf_info*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @PHYS_TO_DMAP(i32 %7)
  %9 = call %struct.rbuf_info* @GET_RBUF_INFO(i32 %8)
  store %struct.rbuf_info* %9, %struct.rbuf_info** %6, align 8
  %10 = load %struct.rbuf_info*, %struct.rbuf_info** %6, align 8
  %11 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %10, i32 0, i32 2
  %12 = load %struct.mbuf*, %struct.mbuf** %11, align 8
  store %struct.mbuf* %12, %struct.mbuf** %5, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i64 @__predict_false(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %20 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_get_nameunit(i32 %21)
  %23 = call i32 @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.rbuf_info*, %struct.rbuf_info** %6, align 8
  %26 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %25, i32 0, i32 2
  store %struct.mbuf* null, %struct.mbuf** %26, align 8
  %27 = load %struct.rbuf_info*, %struct.rbuf_info** %6, align 8
  %28 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.rbuf_info*, %struct.rbuf_info** %6, align 8
  %31 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %34 = call i32 @bus_dmamap_sync(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.rbuf_info*, %struct.rbuf_info** %6, align 8
  %36 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rbuf_info*, %struct.rbuf_info** %6, align 8
  %39 = getelementptr inbounds %struct.rbuf_info, %struct.rbuf_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bus_dmamap_unload(i32 %37, i32 %40)
  %42 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %42
}

declare dso_local %struct.rbuf_info* @GET_RBUF_INFO(i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
