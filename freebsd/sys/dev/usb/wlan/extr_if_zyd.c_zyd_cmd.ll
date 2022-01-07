; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_softc = type { i32, i32, i32, i32* }
%struct.zyd_cmd = type { i32, i32 }
%struct.zyd_rq = type { i32, i32, i32, i8*, i8*, %struct.zyd_cmd* }

@EINVAL = common dso_local global i32 0, align 4
@ZYD_DEBUG_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"sending cmd %p = %*D\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@ZYD_INTR_RD = common dso_local global i64 0, align 8
@ZYD_INTR_WR = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [7 x i8] c"zydcmd\00", align 1
@hz = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"command timeout\0A\00", align 1
@zyd_rq = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"finsihed cmd %p, error = %d \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zyd_softc*, i32, i8*, i32, i8*, i32, i32)* @zyd_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zyd_cmd(%struct.zyd_softc* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.zyd_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.zyd_cmd, align 4
  %17 = alloca %struct.zyd_rq, align 8
  %18 = alloca i32, align 4
  store %struct.zyd_softc* %0, %struct.zyd_softc** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp sgt i32 %19, 4
  br i1 %20, label %21, label %23

21:                                               ; preds = %7
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %8, align 4
  br label %89

23:                                               ; preds = %7
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @htole16(i32 %24)
  %26 = getelementptr inbounds %struct.zyd_cmd, %struct.zyd_cmd* %16, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds %struct.zyd_cmd, %struct.zyd_cmd* %16, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i8*, i8** %11, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @memcpy(i32 %28, i8* %29, i32 %30)
  %32 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %33 = load i32, i32* @ZYD_DEBUG_CMD, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call i32 (%struct.zyd_softc*, i32, i8*, %struct.zyd_rq*, i32, ...) @DPRINTF(%struct.zyd_softc* %32, i32 %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.zyd_rq* %17, i32 %34, i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %37 = getelementptr inbounds %struct.zyd_rq, %struct.zyd_rq* %17, i32 0, i32 5
  store %struct.zyd_cmd* %16, %struct.zyd_cmd** %37, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = getelementptr inbounds %struct.zyd_rq, %struct.zyd_rq* %17, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %13, align 8
  %41 = getelementptr inbounds %struct.zyd_rq, %struct.zyd_rq* %17, i32 0, i32 3
  store i8* %40, i8** %41, align 8
  %42 = load i32, i32* %12, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 4, %43
  %45 = trunc i64 %44 to i32
  %46 = getelementptr inbounds %struct.zyd_rq, %struct.zyd_rq* %17, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* %14, align 4
  %48 = getelementptr inbounds %struct.zyd_rq, %struct.zyd_rq* %17, i32 0, i32 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %15, align 4
  %50 = getelementptr inbounds %struct.zyd_rq, %struct.zyd_rq* %17, i32 0, i32 2
  store i32 %49, i32* %50, align 8
  %51 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %52 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %51, i32 0, i32 0
  %53 = call i32 @STAILQ_INSERT_TAIL(i32* %52, %struct.zyd_rq* %17, %struct.zyd_rq* byval(%struct.zyd_rq) align 8 %17)
  %54 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %55 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %54, i32 0, i32 3
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @ZYD_INTR_RD, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbd_transfer_start(i32 %59)
  %61 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %62 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %61, i32 0, i32 3
  %63 = load i32*, i32** %62, align 8
  %64 = load i64, i64* @ZYD_INTR_WR, align 8
  %65 = getelementptr inbounds i32, i32* %63, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usbd_transfer_start(i32 %66)
  %68 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %69 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %68, i32 0, i32 2
  %70 = load i32, i32* @hz, align 4
  %71 = call i32 @mtx_sleep(%struct.zyd_rq* %17, i32* %69, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load i32, i32* %18, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %23
  %75 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %76 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  br label %79

79:                                               ; preds = %74, %23
  %80 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %81 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %80, i32 0, i32 0
  %82 = load i32, i32* @zyd_rq, align 4
  %83 = call i32 @STAILQ_REMOVE(i32* %81, %struct.zyd_rq* %17, i32 %82, %struct.zyd_rq* byval(%struct.zyd_rq) align 8 %17)
  %84 = load %struct.zyd_softc*, %struct.zyd_softc** %9, align 8
  %85 = load i32, i32* @ZYD_DEBUG_CMD, align 4
  %86 = load i32, i32* %18, align 4
  %87 = call i32 (%struct.zyd_softc*, i32, i8*, %struct.zyd_rq*, i32, ...) @DPRINTF(%struct.zyd_softc* %84, i32 %85, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), %struct.zyd_rq* %17, i32 %86)
  %88 = load i32, i32* %18, align 4
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %79, %21
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @DPRINTF(%struct.zyd_softc*, i32, i8*, %struct.zyd_rq*, i32, ...) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.zyd_rq*, %struct.zyd_rq* byval(%struct.zyd_rq) align 8) #1

declare dso_local i32 @usbd_transfer_start(i32) #1

declare dso_local i32 @mtx_sleep(%struct.zyd_rq*, i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @STAILQ_REMOVE(i32*, %struct.zyd_rq*, i32, %struct.zyd_rq* byval(%struct.zyd_rq) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
