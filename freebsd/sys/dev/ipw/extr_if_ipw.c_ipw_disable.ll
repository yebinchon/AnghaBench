; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipw/extr_if_ipw.c_ipw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_softc = type { i32 }

@IPW_FLAG_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Disable adapter\0A\00", align 1
@IPW_CMD_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_softc*)* @ipw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_disable(%struct.ipw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ipw_softc* %0, %struct.ipw_softc** %3, align 8
  %5 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IPW_FLAG_ENABLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %1
  %12 = call i32 @DPRINTF(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %14 = load i32, i32* @IPW_CMD_DISABLE, align 4
  %15 = call i32 @ipw_cmd(%struct.ipw_softc* %13, i32 %14, i32* null, i32 0)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %35

20:                                               ; preds = %11
  %21 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %22 = call i32 @ipw_waitfordisable(%struct.ipw_softc* %21, i32 1)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %35

27:                                               ; preds = %20
  %28 = load i32, i32* @IPW_FLAG_ENABLED, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.ipw_softc*, %struct.ipw_softc** %3, align 8
  %31 = getelementptr inbounds %struct.ipw_softc, %struct.ipw_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %25, %18
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @ipw_cmd(%struct.ipw_softc*, i32, i32*, i32) #1

declare dso_local i32 @ipw_waitfordisable(%struct.ipw_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
