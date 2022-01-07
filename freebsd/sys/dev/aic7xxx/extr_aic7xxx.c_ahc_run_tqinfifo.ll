; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_run_tqinfifo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_run_tqinfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i64, i32, i32, %struct.target_cmd* }
%struct.target_cmd = type { i64 }

@AHC_AUTOPAUSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@HOST_TQINPOS = common dso_local global i32 0, align 4
@AHC_HS_MAILBOX = common dso_local global i32 0, align 4
@HS_MAILBOX = common dso_local global i32 0, align 4
@KERNEL_TQINPOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_run_tqinfifo(%struct.ahc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.target_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AHC_AUTOPAUSE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @TRUE, align 4
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %13, %2
  %16 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %17 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %18 = call i32 @ahc_sync_tqinfifo(%struct.ahc_softc* %16, i32 %17)
  br label %19

19:                                               ; preds = %118, %15
  %20 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %21 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %20, i32 0, i32 4
  %22 = load %struct.target_cmd*, %struct.target_cmd** %21, align 8
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.target_cmd, %struct.target_cmd* %22, i64 %25
  store %struct.target_cmd* %26, %struct.target_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.target_cmd, %struct.target_cmd* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %119

30:                                               ; preds = %19
  %31 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %32 = load %struct.target_cmd*, %struct.target_cmd** %5, align 8
  %33 = call i64 @ahc_handle_target_cmd(%struct.ahc_softc* %31, %struct.target_cmd* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %119

36:                                               ; preds = %30
  %37 = load %struct.target_cmd*, %struct.target_cmd** %5, align 8
  %38 = getelementptr inbounds %struct.target_cmd, %struct.target_cmd* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %40 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %41 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %47 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ahc_targetcmd_offset(%struct.ahc_softc* %46, i64 %49)
  %51 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %52 = call i32 @aic_dmamap_sync(%struct.ahc_softc* %39, i32 %42, i32 %45, i32 %50, i32 8, i32 %51)
  %53 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %54, align 8
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @HOST_TQINPOS, align 4
  %61 = sub nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = and i64 %59, %62
  %64 = icmp eq i64 %63, 1
  br i1 %64, label %65, label %118

65:                                               ; preds = %36
  %66 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %67 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @AHC_HS_MAILBOX, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %65
  %73 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %74 = load i32, i32* @HS_MAILBOX, align 4
  %75 = call i32 @ahc_inb(%struct.ahc_softc* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @HOST_TQINPOS, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %6, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %6, align 4
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @HOST_TQINPOS, align 4
  %84 = sext i32 %83 to i64
  %85 = and i64 %82, %84
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = or i64 %87, %85
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %6, align 4
  %90 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %91 = load i32, i32* @HS_MAILBOX, align 4
  %92 = load i32, i32* %6, align 4
  %93 = call i32 @ahc_outb(%struct.ahc_softc* %90, i32 %91, i32 %92)
  br label %117

94:                                               ; preds = %65
  %95 = load i32, i32* %4, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %99 = call i32 @ahc_pause(%struct.ahc_softc* %98)
  br label %100

100:                                              ; preds = %97, %94
  %101 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %102 = load i32, i32* @KERNEL_TQINPOS, align 4
  %103 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %104 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @HOST_TQINPOS, align 4
  %107 = sext i32 %106 to i64
  %108 = and i64 %105, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32 @ahc_outb(%struct.ahc_softc* %101, i32 %102, i32 %109)
  %111 = load i32, i32* %4, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %100
  %114 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %115 = call i32 @ahc_unpause(%struct.ahc_softc* %114)
  br label %116

116:                                              ; preds = %113, %100
  br label %117

117:                                              ; preds = %116, %72
  br label %118

118:                                              ; preds = %117, %36
  br label %19

119:                                              ; preds = %35, %19
  ret void
}

declare dso_local i32 @ahc_sync_tqinfifo(%struct.ahc_softc*, i32) #1

declare dso_local i64 @ahc_handle_target_cmd(%struct.ahc_softc*, %struct.target_cmd*) #1

declare dso_local i32 @aic_dmamap_sync(%struct.ahc_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ahc_targetcmd_offset(%struct.ahc_softc*, i64) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_unpause(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
