; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_alloc_cmd_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_uath.c_uath_alloc_cmd_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uath_softc = type { i32, i64, i32, i32, i32 }
%struct.uath_cmd = type { i32, i32*, %struct.uath_softc* }

@UATH_CMD_LIST_COUNT = common dso_local global i32 0, align 4
@UATH_MAX_CMDSZ = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@st_cmd_inactive = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uath_softc*, %struct.uath_cmd*)* @uath_alloc_cmd_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uath_alloc_cmd_list(%struct.uath_softc* %0, %struct.uath_cmd* %1) #0 {
  %3 = alloca %struct.uath_softc*, align 8
  %4 = alloca %struct.uath_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uath_cmd*, align 8
  store %struct.uath_softc* %0, %struct.uath_softc** %3, align 8
  store %struct.uath_cmd* %1, %struct.uath_cmd** %4, align 8
  %7 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %7, i32 0, i32 4
  %9 = call i32 @STAILQ_INIT(i32* %8)
  %10 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %11 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %10, i32 0, i32 3
  %12 = call i32 @STAILQ_INIT(i32* %11)
  %13 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %14 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %13, i32 0, i32 2
  %15 = call i32 @STAILQ_INIT(i32* %14)
  %16 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %17 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %16, i32 0, i32 0
  %18 = call i32 @STAILQ_INIT(i32* %17)
  store i32 0, i32* %5, align 4
  br label %19

19:                                               ; preds = %53, %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @UATH_CMD_LIST_COUNT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %56

23:                                               ; preds = %19
  %24 = load %struct.uath_cmd*, %struct.uath_cmd** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.uath_cmd, %struct.uath_cmd* %24, i64 %26
  store %struct.uath_cmd* %27, %struct.uath_cmd** %6, align 8
  %28 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %29 = load %struct.uath_cmd*, %struct.uath_cmd** %6, align 8
  %30 = getelementptr inbounds %struct.uath_cmd, %struct.uath_cmd* %29, i32 0, i32 2
  store %struct.uath_softc* %28, %struct.uath_softc** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.uath_cmd*, %struct.uath_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.uath_cmd, %struct.uath_cmd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %35 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to i32*
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @UATH_MAX_CMDSZ, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  %43 = load %struct.uath_cmd*, %struct.uath_cmd** %6, align 8
  %44 = getelementptr inbounds %struct.uath_cmd, %struct.uath_cmd* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %46 = getelementptr inbounds %struct.uath_softc, %struct.uath_softc* %45, i32 0, i32 0
  %47 = load %struct.uath_cmd*, %struct.uath_cmd** %6, align 8
  %48 = load i32, i32* @next, align 4
  %49 = call i32 @STAILQ_INSERT_TAIL(i32* %46, %struct.uath_cmd* %47, i32 %48)
  %50 = load %struct.uath_softc*, %struct.uath_softc** %3, align 8
  %51 = load i32, i32* @st_cmd_inactive, align 4
  %52 = call i32 @UATH_STAT_INC(%struct.uath_softc* %50, i32 %51)
  br label %53

53:                                               ; preds = %23
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %19

56:                                               ; preds = %19
  ret i32 0
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.uath_cmd*, i32) #1

declare dso_local i32 @UATH_STAT_INC(%struct.uath_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
