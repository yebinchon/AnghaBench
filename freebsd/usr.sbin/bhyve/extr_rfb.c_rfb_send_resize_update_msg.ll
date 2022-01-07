; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_send_resize_update_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_send_resize_update_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i32, i32 }
%struct.rfb_srvr_updt_msg = type { i32, i8*, i8*, i8*, i8*, i8*, i64, i64 }
%struct.rfb_srvr_rect_hdr = type { i32, i8*, i8*, i8*, i8*, i8*, i64, i64 }

@RFB_ENCODING_RESIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfb_softc*, i32)* @rfb_send_resize_update_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfb_send_resize_update_msg(%struct.rfb_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rfb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rfb_srvr_updt_msg, align 8
  %6 = alloca %struct.rfb_srvr_rect_hdr, align 8
  store %struct.rfb_softc* %0, %struct.rfb_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = getelementptr inbounds %struct.rfb_srvr_updt_msg, %struct.rfb_srvr_updt_msg* %5, i32 0, i32 7
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.rfb_srvr_updt_msg, %struct.rfb_srvr_updt_msg* %5, i32 0, i32 6
  store i64 0, i64* %8, align 8
  %9 = call i8* @htons(i32 1)
  %10 = getelementptr inbounds %struct.rfb_srvr_updt_msg, %struct.rfb_srvr_updt_msg* %5, i32 0, i32 5
  store i8* %9, i8** %10, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @stream_write(i32 %11, %struct.rfb_srvr_updt_msg* %5, i32 64)
  %13 = call i8* @htons(i32 0)
  %14 = getelementptr inbounds %struct.rfb_srvr_rect_hdr, %struct.rfb_srvr_rect_hdr* %6, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = call i8* @htons(i32 0)
  %16 = getelementptr inbounds %struct.rfb_srvr_rect_hdr, %struct.rfb_srvr_rect_hdr* %6, i32 0, i32 3
  store i8* %15, i8** %16, align 8
  %17 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @htons(i32 %19)
  %21 = getelementptr inbounds %struct.rfb_srvr_rect_hdr, %struct.rfb_srvr_rect_hdr* %6, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = load %struct.rfb_softc*, %struct.rfb_softc** %3, align 8
  %23 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @htons(i32 %24)
  %26 = getelementptr inbounds %struct.rfb_srvr_rect_hdr, %struct.rfb_srvr_rect_hdr* %6, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* @RFB_ENCODING_RESIZE, align 4
  %28 = call i32 @htonl(i32 %27)
  %29 = getelementptr inbounds %struct.rfb_srvr_rect_hdr, %struct.rfb_srvr_rect_hdr* %6, i32 0, i32 0
  store i32 %28, i32* %29, align 8
  %30 = load i32, i32* %4, align 4
  %31 = bitcast %struct.rfb_srvr_rect_hdr* %6 to %struct.rfb_srvr_updt_msg*
  %32 = call i32 @stream_write(i32 %30, %struct.rfb_srvr_updt_msg* %31, i32 64)
  ret void
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @stream_write(i32, %struct.rfb_srvr_updt_msg*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
