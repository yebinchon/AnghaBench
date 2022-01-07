; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rts_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_rtsock.c_rts_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32 }
%struct.sockproto = type { i16, i32 }
%struct.m_tag = type { i32 }

@PF_ROUTE = common dso_local global i32 0, align 4
@PACKET_TAG_RTSOCKFAM = common dso_local global i32 0, align 4
@route_src = common dso_local global i32 0, align 4
@raw_input_rts_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mbuf*)* @rts_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rts_input(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.sockproto, align 4
  %4 = alloca i16*, align 8
  %5 = alloca %struct.m_tag*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %6 = load i32, i32* @PF_ROUTE, align 4
  %7 = getelementptr inbounds %struct.sockproto, %struct.sockproto* %3, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %9 = load i32, i32* @PACKET_TAG_RTSOCKFAM, align 4
  %10 = call %struct.m_tag* @m_tag_find(%struct.mbuf* %8, i32 %9, i32* null)
  store %struct.m_tag* %10, %struct.m_tag** %5, align 8
  %11 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %12 = icmp ne %struct.m_tag* %11, null
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %15 = getelementptr inbounds %struct.m_tag, %struct.m_tag* %14, i64 1
  %16 = bitcast %struct.m_tag* %15 to i16*
  store i16* %16, i16** %4, align 8
  %17 = load i16*, i16** %4, align 8
  %18 = load i16, i16* %17, align 2
  %19 = getelementptr inbounds %struct.sockproto, %struct.sockproto* %3, i32 0, i32 0
  store i16 %18, i16* %19, align 4
  %20 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %21 = load %struct.m_tag*, %struct.m_tag** %5, align 8
  %22 = call i32 @m_tag_delete(%struct.mbuf* %20, %struct.m_tag* %21)
  br label %25

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.sockproto, %struct.sockproto* %3, i32 0, i32 0
  store i16 0, i16* %24, align 4
  br label %25

25:                                               ; preds = %23, %13
  %26 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %27 = load i32, i32* @raw_input_rts_cb, align 4
  %28 = call i32 @raw_input_ext(%struct.mbuf* %26, %struct.sockproto* %3, i32* @route_src, i32 %27)
  ret void
}

declare dso_local %struct.m_tag* @m_tag_find(%struct.mbuf*, i32, i32*) #1

declare dso_local i32 @m_tag_delete(%struct.mbuf*, %struct.m_tag*) #1

declare dso_local i32 @raw_input_ext(%struct.mbuf*, %struct.sockproto*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
