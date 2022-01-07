; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload_uncommon.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_prev_unload_uncommon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Uncommon unload Flow\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Path is unmarked\0A\00", align 1
@FW_MSG_CODE_DRV_LOAD_FUNCTION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"FW version matches our own, attempting FLR\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"FLR successful\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Could not FLR\0A\00", align 1
@BXE_PREV_WAIT_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_prev_unload_uncommon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_prev_unload_uncommon(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %6 = load i32, i32* @DBG_LOAD, align 4
  %7 = call i32 @BLOGD(%struct.bxe_softc* %5, i32 %6, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %9 = call i64 @bxe_prev_is_path_marked(%struct.bxe_softc* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %13 = call i32 @bxe_prev_mcp_done(%struct.bxe_softc* %12)
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = load i32, i32* @DBG_LOAD, align 4
  %17 = call i32 @BLOGD(%struct.bxe_softc* %15, i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %19 = load i32, i32* @FW_MSG_CODE_DRV_LOAD_FUNCTION, align 4
  %20 = call i32 @bxe_nic_load_analyze_req(%struct.bxe_softc* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %14
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %25 = load i32, i32* @DBG_LOAD, align 4
  %26 = call i32 @BLOGD(%struct.bxe_softc* %24, i32 %25, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %28 = call i32 @bxe_do_flr(%struct.bxe_softc* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %23, %14
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %34 = load i32, i32* @DBG_LOAD, align 4
  %35 = call i32 @BLOGD(%struct.bxe_softc* %33, i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %48

36:                                               ; preds = %29
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = load i32, i32* @DBG_LOAD, align 4
  %39 = call i32 @BLOGD(%struct.bxe_softc* %37, i32 %38, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %41 = call i32 @bxe_prev_mcp_done(%struct.bxe_softc* %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %36
  %45 = load i32, i32* @BXE_PREV_WAIT_NEEDED, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %44, %36
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %46, %32, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*) #1

declare dso_local i64 @bxe_prev_is_path_marked(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_prev_mcp_done(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_nic_load_analyze_req(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_do_flr(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
