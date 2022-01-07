; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_disassociate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwi/extr_if_iwi.c_iwi_disassociate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwi_softc = type { i32, %struct.iwi_associate }
%struct.iwi_associate = type { i32, i32, i32 }

@IWI_FLAG_ASSOCIATED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Not associated\0A\00", align 1
@IWI_FW_DISASSOCIATING = common dso_local global i32 0, align 4
@IWI_HC_DISASSOC_QUIET = common dso_local global i32 0, align 4
@IWI_HC_DISASSOC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Trying to disassociate from %6D channel %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c":\00", align 1
@IWI_CMD_ASSOCIATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwi_softc*, i32)* @iwi_disassociate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwi_disassociate(%struct.iwi_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwi_associate*, align 8
  store %struct.iwi_softc* %0, %struct.iwi_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %8 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %7, i32 0, i32 1
  store %struct.iwi_associate* %8, %struct.iwi_associate** %6, align 8
  %9 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %10 = getelementptr inbounds %struct.iwi_softc, %struct.iwi_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IWI_FLAG_ASSOCIATED, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = call i32 @DPRINTF(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %19 = load i32, i32* @IWI_FW_DISASSOCIATING, align 4
  %20 = call i32 @IWI_STATE_BEGIN(%struct.iwi_softc* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load i32, i32* @IWI_HC_DISASSOC_QUIET, align 4
  %25 = load %struct.iwi_associate*, %struct.iwi_associate** %6, align 8
  %26 = getelementptr inbounds %struct.iwi_associate, %struct.iwi_associate* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  br label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @IWI_HC_DISASSOC, align 4
  %29 = load %struct.iwi_associate*, %struct.iwi_associate** %6, align 8
  %30 = getelementptr inbounds %struct.iwi_associate, %struct.iwi_associate* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %27, %23
  %32 = load %struct.iwi_associate*, %struct.iwi_associate** %6, align 8
  %33 = getelementptr inbounds %struct.iwi_associate, %struct.iwi_associate* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.iwi_associate*, %struct.iwi_associate** %6, align 8
  %36 = getelementptr inbounds %struct.iwi_associate, %struct.iwi_associate* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @DPRINTF(i8* %39)
  %41 = load %struct.iwi_softc*, %struct.iwi_softc** %4, align 8
  %42 = load i32, i32* @IWI_CMD_ASSOCIATE, align 4
  %43 = load %struct.iwi_associate*, %struct.iwi_associate** %6, align 8
  %44 = call i32 @iwi_cmd(%struct.iwi_softc* %41, i32 %42, %struct.iwi_associate* %43, i32 12)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %31, %15
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @IWI_STATE_BEGIN(%struct.iwi_softc*, i32) #1

declare dso_local i32 @iwi_cmd(%struct.iwi_softc*, i32, %struct.iwi_associate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
