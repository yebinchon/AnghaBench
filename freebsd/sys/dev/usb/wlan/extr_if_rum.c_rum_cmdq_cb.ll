; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_cmdq_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rum.c_rum_cmdq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rum_softc = type { i64, %struct.rum_cmdq* }
%struct.rum_cmdq = type { i32, i32, i32 (%struct.rum_softc*, i32*, i32)* }

@RUM_CMDQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @rum_cmdq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rum_cmdq_cb(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rum_softc*, align 8
  %6 = alloca %struct.rum_cmdq*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.rum_softc*
  store %struct.rum_softc* %8, %struct.rum_softc** %5, align 8
  %9 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %10 = call i32 @RUM_CMDQ_LOCK(%struct.rum_softc* %9)
  br label %11

11:                                               ; preds = %22, %2
  %12 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %13 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %12, i32 0, i32 1
  %14 = load %struct.rum_cmdq*, %struct.rum_cmdq** %13, align 8
  %15 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %16 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.rum_cmdq, %struct.rum_cmdq* %14, i64 %17
  %19 = getelementptr inbounds %struct.rum_cmdq, %struct.rum_cmdq* %18, i32 0, i32 2
  %20 = load i32 (%struct.rum_softc*, i32*, i32)*, i32 (%struct.rum_softc*, i32*, i32)** %19, align 8
  %21 = icmp ne i32 (%struct.rum_softc*, i32*, i32)* %20, null
  br i1 %21, label %22, label %59

22:                                               ; preds = %11
  %23 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %24 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %23, i32 0, i32 1
  %25 = load %struct.rum_cmdq*, %struct.rum_cmdq** %24, align 8
  %26 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %27 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.rum_cmdq, %struct.rum_cmdq* %25, i64 %28
  store %struct.rum_cmdq* %29, %struct.rum_cmdq** %6, align 8
  %30 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %31 = call i32 @RUM_CMDQ_UNLOCK(%struct.rum_softc* %30)
  %32 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %33 = call i32 @RUM_LOCK(%struct.rum_softc* %32)
  %34 = load %struct.rum_cmdq*, %struct.rum_cmdq** %6, align 8
  %35 = getelementptr inbounds %struct.rum_cmdq, %struct.rum_cmdq* %34, i32 0, i32 2
  %36 = load i32 (%struct.rum_softc*, i32*, i32)*, i32 (%struct.rum_softc*, i32*, i32)** %35, align 8
  %37 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %38 = load %struct.rum_cmdq*, %struct.rum_cmdq** %6, align 8
  %39 = getelementptr inbounds %struct.rum_cmdq, %struct.rum_cmdq* %38, i32 0, i32 1
  %40 = load %struct.rum_cmdq*, %struct.rum_cmdq** %6, align 8
  %41 = getelementptr inbounds %struct.rum_cmdq, %struct.rum_cmdq* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %36(%struct.rum_softc* %37, i32* %39, i32 %42)
  %44 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %45 = call i32 @RUM_UNLOCK(%struct.rum_softc* %44)
  %46 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %47 = call i32 @RUM_CMDQ_LOCK(%struct.rum_softc* %46)
  %48 = load %struct.rum_cmdq*, %struct.rum_cmdq** %6, align 8
  %49 = call i32 @memset(%struct.rum_cmdq* %48, i32 0, i32 16)
  %50 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %51 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, 1
  %54 = load i32, i32* @RUM_CMDQ_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = urem i64 %53, %55
  %57 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %58 = getelementptr inbounds %struct.rum_softc, %struct.rum_softc* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %11

59:                                               ; preds = %11
  %60 = load %struct.rum_softc*, %struct.rum_softc** %5, align 8
  %61 = call i32 @RUM_CMDQ_UNLOCK(%struct.rum_softc* %60)
  ret void
}

declare dso_local i32 @RUM_CMDQ_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @RUM_CMDQ_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @RUM_LOCK(%struct.rum_softc*) #1

declare dso_local i32 @RUM_UNLOCK(%struct.rum_softc*) #1

declare dso_local i32 @memset(%struct.rum_cmdq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
