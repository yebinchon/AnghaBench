; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_u3g.c_u3g_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.u3g_softc = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"sc=%p\0A\00", align 1
@U3G_MAXPORTS = common dso_local global i64 0, align 8
@U3G_N_TRANSFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @u3g_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @u3g_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.u3g_softc*, align 8
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.u3g_softc* @device_get_softc(i32 %5)
  store %struct.u3g_softc* %6, %struct.u3g_softc** %3, align 8
  %7 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %8 = call i32 @DPRINTF(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.u3g_softc* %7)
  %9 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %10 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %9, i32 0, i32 2
  %11 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %12 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ucom_detach(i32* %10, i32 %13)
  store i64 0, i64* %4, align 8
  br label %15

15:                                               ; preds = %28, %1
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @U3G_MAXPORTS, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %21 = getelementptr inbounds %struct.u3g_softc, %struct.u3g_softc* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @U3G_N_TRANSFER, align 4
  %27 = call i32 @usbd_transfer_unsetup(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19
  %29 = load i64, i64* %4, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %4, align 8
  br label %15

31:                                               ; preds = %15
  %32 = load i32, i32* %2, align 4
  %33 = call i32 @device_claim_softc(i32 %32)
  %34 = load %struct.u3g_softc*, %struct.u3g_softc** %3, align 8
  %35 = call i32 @u3g_free_softc(%struct.u3g_softc* %34)
  ret i32 0
}

declare dso_local %struct.u3g_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*, %struct.u3g_softc*) #1

declare dso_local i32 @ucom_detach(i32*, i32) #1

declare dso_local i32 @usbd_transfer_unsetup(i32, i32) #1

declare dso_local i32 @device_claim_softc(i32) #1

declare dso_local i32 @u3g_free_softc(%struct.u3g_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
