; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_transition_to_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mrsas/extr_mrsas.c_mrsas_transition_to_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mrsas_softc = type { i32 }

@mrsas_reg_set = common dso_local global i32 0, align 4
@outbound_scratch_pad = common dso_local global i32 0, align 4
@MFI_STATE_MASK = common dso_local global i32 0, align 4
@MRSAS_RESET_WAIT_TIME = common dso_local global i32 0, align 4
@MFI_STATE_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Waiting for FW to come to ready state\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"FW is in FAULT state!!\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@doorbell = common dso_local global i32 0, align 4
@MFI_INIT_CLEAR_HANDSHAKE = common dso_local global i32 0, align 4
@MFI_INIT_HOTPLUG = common dso_local global i32 0, align 4
@MFI_RESET_FLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Unknown state 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"FW state [%d] hasn't changed in %d secs\0A\00", align 1
@MRSAS_OCR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"FW now in Ready state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mrsas_transition_to_ready(%struct.mrsas_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mrsas_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mrsas_softc* %0, %struct.mrsas_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %14 = load i32, i32* @mrsas_reg_set, align 4
  %15 = load i32, i32* @outbound_scratch_pad, align 4
  %16 = call i32 @offsetof(i32 %14, i32 %15)
  %17 = call i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc* %13, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MFI_STATE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @MRSAS_RESET_WAIT_TIME, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @MFI_STATE_READY, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i32, i8*, ...) @device_printf(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %25, %2
  br label %31

31:                                               ; preds = %155, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @MFI_STATE_READY, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %156

35:                                               ; preds = %31
  %36 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %37 = load i32, i32* @mrsas_reg_set, align 4
  %38 = load i32, i32* @outbound_scratch_pad, align 4
  %39 = call i32 @offsetof(i32 %37, i32 %38)
  %40 = call i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc* %36, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %105 [
    i32 134, label %42
    i32 128, label %53
    i32 136, label %62
    i32 130, label %69
    i32 129, label %99
    i32 137, label %100
    i32 132, label %101
    i32 131, label %102
    i32 135, label %103
    i32 133, label %104
  ]

42:                                               ; preds = %35
  %43 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %44 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 (i32, i8*, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 134, i32* %10, align 4
  br label %113

50:                                               ; preds = %42
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %160

53:                                               ; preds = %35
  %54 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %55 = load i32, i32* @mrsas_reg_set, align 4
  %56 = load i32, i32* @doorbell, align 4
  %57 = call i32 @offsetof(i32 %55, i32 %56)
  %58 = load i32, i32* @MFI_INIT_CLEAR_HANDSHAKE, align 4
  %59 = load i32, i32* @MFI_INIT_HOTPLUG, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %54, i32 %57, i32 %60)
  store i32 128, i32* %10, align 4
  br label %113

62:                                               ; preds = %35
  %63 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %64 = load i32, i32* @mrsas_reg_set, align 4
  %65 = load i32, i32* @doorbell, align 4
  %66 = call i32 @offsetof(i32 %64, i32 %65)
  %67 = load i32, i32* @MFI_INIT_HOTPLUG, align 4
  %68 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %63, i32 %66, i32 %67)
  store i32 136, i32* %10, align 4
  br label %113

69:                                               ; preds = %35
  %70 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %71 = call i32 @mrsas_disable_intr(%struct.mrsas_softc* %70)
  %72 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %73 = load i32, i32* @mrsas_reg_set, align 4
  %74 = load i32, i32* @doorbell, align 4
  %75 = call i32 @offsetof(i32 %73, i32 %74)
  %76 = load i32, i32* @MFI_RESET_FLAGS, align 4
  %77 = call i32 @mrsas_write_reg(%struct.mrsas_softc* %72, i32 %75, i32 %76)
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %95, %69
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* %7, align 4
  %81 = mul nsw i32 %80, 1000
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %83, label %98

83:                                               ; preds = %78
  %84 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %85 = load i32, i32* @mrsas_reg_set, align 4
  %86 = load i32, i32* @doorbell, align 4
  %87 = call i32 @offsetof(i32 %85, i32 %86)
  %88 = call i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc* %84, i32 %87)
  %89 = and i32 %88, 1
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = call i32 @DELAY(i32 1000)
  br label %94

93:                                               ; preds = %83
  br label %98

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %78

98:                                               ; preds = %93, %78
  store i32 130, i32* %10, align 4
  br label %113

99:                                               ; preds = %35
  store i32 129, i32* %10, align 4
  br label %113

100:                                              ; preds = %35
  store i32 137, i32* %10, align 4
  br label %113

101:                                              ; preds = %35
  store i32 132, i32* %10, align 4
  br label %113

102:                                              ; preds = %35
  store i32 131, i32* %10, align 4
  br label %113

103:                                              ; preds = %35
  store i32 135, i32* %10, align 4
  br label %113

104:                                              ; preds = %35
  store i32 133, i32* %10, align 4
  br label %113

105:                                              ; preds = %35
  %106 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %107 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %9, align 4
  %110 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @ENODEV, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %3, align 4
  br label %160

113:                                              ; preds = %104, %103, %102, %101, %100, %99, %98, %62, %53, %49
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %139, %113
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %7, align 4
  %117 = mul nsw i32 %116, 1000
  %118 = icmp slt i32 %115, %117
  br i1 %118, label %119, label %142

119:                                              ; preds = %114
  %120 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %121 = load i32, i32* @mrsas_reg_set, align 4
  %122 = load i32, i32* @outbound_scratch_pad, align 4
  %123 = call i32 @offsetof(i32 %121, i32 %122)
  %124 = call i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc* %120, i32 %123)
  %125 = load i32, i32* @MFI_STATE_MASK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %9, align 4
  %127 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %128 = load i32, i32* @mrsas_reg_set, align 4
  %129 = load i32, i32* @outbound_scratch_pad, align 4
  %130 = call i32 @offsetof(i32 %128, i32 %129)
  %131 = call i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc* %127, i32 %130)
  store i32 %131, i32* %12, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %12, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %119
  %136 = call i32 @DELAY(i32 1000)
  br label %138

137:                                              ; preds = %119
  br label %142

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %114

142:                                              ; preds = %137, %114
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp eq i32 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %142
  %147 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %148 = getelementptr inbounds %struct.mrsas_softc, %struct.mrsas_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* %7, align 4
  %152 = call i32 (i32, i8*, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %150, i32 %151)
  %153 = load i32, i32* @ENODEV, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %3, align 4
  br label %160

155:                                              ; preds = %142
  br label %31

156:                                              ; preds = %31
  %157 = load %struct.mrsas_softc*, %struct.mrsas_softc** %4, align 8
  %158 = load i32, i32* @MRSAS_OCR, align 4
  %159 = call i32 @mrsas_dprint(%struct.mrsas_softc* %157, i32 %158, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %146, %105, %50
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @mrsas_read_reg_with_retries(%struct.mrsas_softc*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mrsas_write_reg(%struct.mrsas_softc*, i32, i32) #1

declare dso_local i32 @mrsas_disable_intr(%struct.mrsas_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mrsas_dprint(%struct.mrsas_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
