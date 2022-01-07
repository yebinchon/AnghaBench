; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_event_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pccbb/extr_pccbb.c_cbb_event_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbb_softc = type { i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"cbbstart\00", align 1
@hz = common dso_local global i32 0, align 4
@CBB_KTHREAD_RUNNING = common dso_local global i32 0, align 4
@CBB_KTHREAD_DONE = common dso_local global i32 0, align 4
@CBB_SOCKET_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"Status is 0x%x\0A\00", align 1
@CBB_STATE_NOT_A_CARD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Not a card bit set, rescanning\0A\00", align 1
@CBB_SOCKET_FORCE = common dso_local global i32 0, align 4
@CBB_FORCE_CV_TEST = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Can't determine card type\0A\00", align 1
@CBB_SOCKET_MASK = common dso_local global i32 0, align 4
@CBB_SOCKET_MASK_CD = common dso_local global i32 0, align 4
@CBB_SOCKET_MASK_CSTS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Thread terminating\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cbb_event_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cbb_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.cbb_softc*
  store %struct.cbb_softc* %8, %struct.cbb_softc** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @hz, align 4
  %10 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %11 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @device_get_unit(i32 %12)
  %14 = mul nsw i32 %9, %13
  %15 = mul nsw i32 %14, 2
  %16 = call i32 @pause(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %18 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %17, i32 0, i32 1
  %19 = call i32 @mtx_lock(i32* %18)
  %20 = load i32, i32* @CBB_KTHREAD_RUNNING, align 4
  %21 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %22 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 8
  br label %25

25:                                               ; preds = %125, %1
  %26 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %27 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @CBB_KTHREAD_DONE, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %126

32:                                               ; preds = %25
  %33 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %34 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %33, i32 0, i32 1
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %37 = load i32, i32* @CBB_SOCKET_STATE, align 4
  %38 = call i32 @cbb_get(%struct.cbb_softc* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @DPRINTF(i8* %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @CBB_CARD_PRESENT(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %32
  store i32 0, i32* %6, align 4
  %47 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %48 = call i32 @cbb_removal(%struct.cbb_softc* %47)
  br label %77

49:                                               ; preds = %32
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @CBB_STATE_NOT_A_CARD, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  %57 = icmp slt i32 %55, 10
  br i1 %57, label %58, label %67

58:                                               ; preds = %54
  %59 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %60 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @DEVPRINTF(i32 ptrtoint ([32 x i8]* @.str.2 to i32))
  %63 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %64 = load i32, i32* @CBB_SOCKET_FORCE, align 4
  %65 = load i32, i32* @CBB_FORCE_CV_TEST, align 4
  %66 = call i32 @cbb_setb(%struct.cbb_softc* %63, i32 %64, i32 %65)
  br label %72

67:                                               ; preds = %54
  %68 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %69 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %58
  br label %76

73:                                               ; preds = %49
  store i32 0, i32* %6, align 4
  %74 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %75 = call i32 @cbb_insert(%struct.cbb_softc* %74)
  br label %76

76:                                               ; preds = %73, %72
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %79 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %89

82:                                               ; preds = %77
  %83 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %84 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i32 @root_mount_rel(i32* %85)
  %87 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %88 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %87, i32 0, i32 4
  store i32* null, i32** %88, align 8
  br label %89

89:                                               ; preds = %82, %77
  %90 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %91 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %90, i32 0, i32 1
  %92 = call i32 @mtx_lock(i32* %91)
  %93 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %94 = load i32, i32* @CBB_SOCKET_MASK, align 4
  %95 = load i32, i32* @CBB_SOCKET_MASK_CD, align 4
  %96 = load i32, i32* @CBB_SOCKET_MASK_CSTS, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @cbb_setb(%struct.cbb_softc* %93, i32 %94, i32 %97)
  %99 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %100 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %99, i32 0, i32 3
  %101 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %102 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %101, i32 0, i32 1
  %103 = call i32 @msleep(i32* %100, i32* %102, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 0)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %117, %89
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @EWOULDBLOCK, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %110 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @CBB_KTHREAD_DONE, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br label %115

115:                                              ; preds = %108, %104
  %116 = phi i1 [ false, %104 ], [ %114, %108 ]
  br i1 %116, label %117, label %125

117:                                              ; preds = %115
  %118 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %119 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %118, i32 0, i32 3
  %120 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %121 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %120, i32 0, i32 1
  %122 = load i32, i32* @hz, align 4
  %123 = sdiv i32 %122, 5
  %124 = call i32 @msleep(i32* %119, i32* %121, i32 0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %123)
  store i32 %124, i32* %5, align 4
  br label %104

125:                                              ; preds = %115
  br label %25

126:                                              ; preds = %25
  %127 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %128 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @DEVPRINTF(i32 ptrtoint ([20 x i8]* @.str.5 to i32))
  %131 = load i32, i32* @CBB_KTHREAD_RUNNING, align 4
  %132 = xor i32 %131, -1
  %133 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %134 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = and i32 %135, %132
  store i32 %136, i32* %134, align 8
  %137 = load %struct.cbb_softc*, %struct.cbb_softc** %3, align 8
  %138 = getelementptr inbounds %struct.cbb_softc, %struct.cbb_softc* %137, i32 0, i32 1
  %139 = call i32 @mtx_unlock(i32* %138)
  %140 = call i32 @kproc_exit(i32 0)
  ret void
}

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cbb_get(%struct.cbb_softc*, i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @CBB_CARD_PRESENT(i32) #1

declare dso_local i32 @cbb_removal(%struct.cbb_softc*) #1

declare dso_local i32 @DEVPRINTF(i32) #1

declare dso_local i32 @cbb_setb(%struct.cbb_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @cbb_insert(%struct.cbb_softc*) #1

declare dso_local i32 @root_mount_rel(i32*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @kproc_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
