; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_recv_update_msg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_rfb.c_rfb_recv_update_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rfb_softc = type { i64, i64, i64 }
%struct.rfb_updt_msg = type { i64, i64, i64, i64 }
%struct.bhyvegc_image = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rfb_softc*, i32, i32)* @rfb_recv_update_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rfb_recv_update_msg(%struct.rfb_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rfb_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rfb_updt_msg, align 8
  %8 = alloca %struct.bhyvegc_image*, align 8
  store %struct.rfb_softc* %0, %struct.rfb_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = bitcast %struct.rfb_updt_msg* %7 to i8*
  %11 = getelementptr i8, i8* %10, i64 1
  %12 = call i32 @stream_read(i32 %9, i8* %11, i32 31)
  %13 = call i32 (...) @console_refresh()
  %14 = call %struct.bhyvegc_image* (...) @console_get_image()
  store %struct.bhyvegc_image* %14, %struct.bhyvegc_image** %8, align 8
  %15 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @htons(i64 %16)
  %18 = ptrtoint i8* %17 to i64
  %19 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 0
  store i64 %18, i64* %19, align 8
  %20 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i8* @htons(i64 %21)
  %23 = ptrtoint i8* %22 to i64
  %24 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 1
  store i64 %23, i64* %24, align 8
  %25 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i8* @htons(i64 %26)
  %28 = ptrtoint i8* %27 to i64
  %29 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 2
  store i64 %28, i64* %29, align 8
  %30 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = call i8* @htons(i64 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 3
  store i64 %33, i64* %34, align 8
  %35 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %38 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %3
  %42 = getelementptr inbounds %struct.rfb_updt_msg, %struct.rfb_updt_msg* %7, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %45 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %43, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %41, %3
  %49 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %50 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %53 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.bhyvegc_image*, %struct.bhyvegc_image** %8, align 8
  %55 = getelementptr inbounds %struct.bhyvegc_image, %struct.bhyvegc_image* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %58 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %57, i32 0, i32 1
  store i64 %56, i64* %58, align 8
  %59 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %60 = getelementptr inbounds %struct.rfb_softc, %struct.rfb_softc* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @rfb_send_resize_update_msg(%struct.rfb_softc* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %48
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* %6, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %76

72:                                               ; preds = %68
  %73 = load %struct.rfb_softc*, %struct.rfb_softc** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @rfb_send_screen(%struct.rfb_softc* %73, i32 %74, i32 1)
  br label %76

76:                                               ; preds = %72, %71
  ret void
}

declare dso_local i32 @stream_read(i32, i8*, i32) #1

declare dso_local i32 @console_refresh(...) #1

declare dso_local %struct.bhyvegc_image* @console_get_image(...) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i32 @rfb_send_resize_update_msg(%struct.rfb_softc*, i32) #1

declare dso_local i32 @rfb_send_screen(%struct.rfb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
