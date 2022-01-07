; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_load_ucode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_load_ucode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucode = type { i64, i32, i32, i32, i32* }
%struct.fxp_softc = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }
%struct.fxp_cb_ucode = type { i32, i64, i32*, i8* }

@FXP_FLAG_NO_UCODE = common dso_local global i32 0, align 4
@ucode_table = common dso_local global %struct.ucode* null, align 8
@FXP_CB_COMMAND_UCODE = common dso_local global i32 0, align 4
@FXP_CB_COMMAND_EL = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@FXP_CSR_SCB_GENERAL = common dso_local global i32 0, align 4
@FXP_SCB_COMMAND_CU_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Microcode loaded, int_delay: %d usec  bundle_max: %d\0A\00", align 1
@FXP_FLAG_UCODE = common dso_local global i32 0, align 4
@FXP_TXCB_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fxp_softc*)* @fxp_load_ucode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_load_ucode(%struct.fxp_softc* %0) #0 {
  %2 = alloca %struct.fxp_softc*, align 8
  %3 = alloca %struct.ucode*, align 8
  %4 = alloca %struct.fxp_cb_ucode*, align 8
  %5 = alloca i32, align 4
  store %struct.fxp_softc* %0, %struct.fxp_softc** %2, align 8
  %6 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %7 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @FXP_FLAG_NO_UCODE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %181

13:                                               ; preds = %1
  %14 = load %struct.ucode*, %struct.ucode** @ucode_table, align 8
  store %struct.ucode* %14, %struct.ucode** %3, align 8
  br label %15

15:                                               ; preds = %30, %13
  %16 = load %struct.ucode*, %struct.ucode** %3, align 8
  %17 = getelementptr inbounds %struct.ucode, %struct.ucode* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %22 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ucode*, %struct.ucode** %3, align 8
  %25 = getelementptr inbounds %struct.ucode, %struct.ucode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %33

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.ucode*, %struct.ucode** %3, align 8
  %32 = getelementptr inbounds %struct.ucode, %struct.ucode* %31, i32 1
  store %struct.ucode* %32, %struct.ucode** %3, align 8
  br label %15

33:                                               ; preds = %28, %15
  %34 = load %struct.ucode*, %struct.ucode** %3, align 8
  %35 = getelementptr inbounds %struct.ucode, %struct.ucode* %34, i32 0, i32 4
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %181

39:                                               ; preds = %33
  %40 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %41 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %40, i32 0, i32 7
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to %struct.fxp_cb_ucode*
  store %struct.fxp_cb_ucode* %44, %struct.fxp_cb_ucode** %4, align 8
  %45 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %46 = getelementptr inbounds %struct.fxp_cb_ucode, %struct.fxp_cb_ucode* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @FXP_CB_COMMAND_UCODE, align 4
  %48 = load i32, i32* @FXP_CB_COMMAND_EL, align 4
  %49 = or i32 %47, %48
  %50 = call i8* @htole16(i32 %49)
  %51 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %52 = getelementptr inbounds %struct.fxp_cb_ucode, %struct.fxp_cb_ucode* %51, i32 0, i32 3
  store i8* %50, i8** %52, align 8
  %53 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %54 = getelementptr inbounds %struct.fxp_cb_ucode, %struct.fxp_cb_ucode* %53, i32 0, i32 0
  store i32 -1, i32* %54, align 8
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %76, %39
  %56 = load i32, i32* %5, align 4
  %57 = load %struct.ucode*, %struct.ucode** %3, align 8
  %58 = getelementptr inbounds %struct.ucode, %struct.ucode* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %55
  %62 = load %struct.ucode*, %struct.ucode** %3, align 8
  %63 = getelementptr inbounds %struct.ucode, %struct.ucode* %62, i32 0, i32 4
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @htole32(i32 %68)
  %70 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %71 = getelementptr inbounds %struct.fxp_cb_ucode, %struct.fxp_cb_ucode* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  store i32 %69, i32* %75, align 4
  br label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %55

79:                                               ; preds = %55
  %80 = load %struct.ucode*, %struct.ucode** %3, align 8
  %81 = getelementptr inbounds %struct.ucode, %struct.ucode* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %86 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %89 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = sdiv i32 %90, 2
  %92 = add nsw i32 %87, %91
  %93 = call i8* @htole16(i32 %92)
  %94 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %95 = getelementptr inbounds %struct.fxp_cb_ucode, %struct.fxp_cb_ucode* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.ucode*, %struct.ucode** %3, align 8
  %98 = getelementptr inbounds %struct.ucode, %struct.ucode* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = bitcast i32* %101 to i8**
  store i8* %93, i8** %102, align 8
  br label %103

103:                                              ; preds = %84, %79
  %104 = load %struct.ucode*, %struct.ucode** %3, align 8
  %105 = getelementptr inbounds %struct.ucode, %struct.ucode* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %103
  %109 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %110 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @htole16(i32 %111)
  %113 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %114 = getelementptr inbounds %struct.fxp_cb_ucode, %struct.fxp_cb_ucode* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.ucode*, %struct.ucode** %3, align 8
  %117 = getelementptr inbounds %struct.ucode, %struct.ucode* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 8
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %115, i64 %119
  %121 = bitcast i32* %120 to i8**
  store i8* %112, i8** %121, align 8
  br label %122

122:                                              ; preds = %108, %103
  %123 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %124 = call i32 @fxp_scb_wait(%struct.fxp_softc* %123)
  %125 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %126 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %125, i32 0, i32 6
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %129 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %132 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %133 = or i32 %131, %132
  %134 = call i32 @bus_dmamap_sync(i32 %127, i32 %130, i32 %133)
  %135 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %136 = load i32, i32* @FXP_CSR_SCB_GENERAL, align 4
  %137 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %138 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @CSR_WRITE_4(%struct.fxp_softc* %135, i32 %136, i32 %140)
  %142 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %143 = load i32, i32* @FXP_SCB_COMMAND_CU_START, align 4
  %144 = call i32 @fxp_scb_cmd(%struct.fxp_softc* %142, i32 %143)
  %145 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %146 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %147 = getelementptr inbounds %struct.fxp_cb_ucode, %struct.fxp_cb_ucode* %146, i32 0, i32 1
  %148 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %149 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %148, i32 0, i32 6
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %152 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %151, i32 0, i32 5
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @fxp_dma_wait(%struct.fxp_softc* %145, i64* %147, i32 %150, i32 %153)
  %155 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %156 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %159 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.ucode*, %struct.ucode** %3, align 8
  %162 = getelementptr inbounds %struct.ucode, %struct.ucode* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %122
  br label %170

166:                                              ; preds = %122
  %167 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %168 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  br label %170

170:                                              ; preds = %166, %165
  %171 = phi i32 [ 0, %165 ], [ %169, %166 ]
  %172 = call i32 @device_printf(i32 %157, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %160, i32 %171)
  %173 = load i32, i32* @FXP_FLAG_UCODE, align 4
  %174 = load %struct.fxp_softc*, %struct.fxp_softc** %2, align 8
  %175 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 8
  %178 = load %struct.fxp_cb_ucode*, %struct.fxp_cb_ucode** %4, align 8
  %179 = load i32, i32* @FXP_TXCB_SZ, align 4
  %180 = call i32 @bzero(%struct.fxp_cb_ucode* %178, i32 %179)
  br label %181

181:                                              ; preds = %170, %38, %12
  ret void
}

declare dso_local i8* @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @fxp_scb_wait(%struct.fxp_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.fxp_softc*, i32, i32) #1

declare dso_local i32 @fxp_scb_cmd(%struct.fxp_softc*, i32) #1

declare dso_local i32 @fxp_dma_wait(%struct.fxp_softc*, i64*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @bzero(%struct.fxp_cb_ucode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
