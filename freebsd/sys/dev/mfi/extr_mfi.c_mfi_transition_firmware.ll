; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_transition_firmware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi.c_mfi_transition_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { {}*, i32, i32 }

@MFI_FWSTATE_MASK = common dso_local global i32 0, align 4
@MFI_FWSTATE_READY = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Waiting for firmware to become ready\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Firmware fault\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MFI_FLAGS_SKINNY = common dso_local global i32 0, align 4
@MFI_FLAGS_TBOLT = common dso_local global i32 0, align 4
@MFI_SKINNY_IDB = common dso_local global i32 0, align 4
@MFI_FWINIT_CLEAR_HANDSHAKE = common dso_local global i32 0, align 4
@MFI_IDB = common dso_local global i32 0, align 4
@MFI_RESET_WAIT_TIME = common dso_local global i32 0, align 4
@MFI_FWINIT_READY = common dso_local global i32 0, align 4
@MFI_FWINIT_HOTPLUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Unknown firmware state %#x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Firmware stuck in state %#x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_transition_firmware(%struct.mfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %10, i32 0, i32 0
  %12 = bitcast {}** %11 to i32 (%struct.mfi_softc*)**
  %13 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %12, align 8
  %14 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %15 = call i32 %13(%struct.mfi_softc* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MFI_FWSTATE_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %179, %166, %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @MFI_FWSTATE_READY, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %180

23:                                               ; preds = %19
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %126 [
    i32 134, label %34
    i32 128, label %40
    i32 130, label %66
    i32 129, label %91
    i32 137, label %91
    i32 131, label %93
    i32 132, label %95
    i32 133, label %95
    i32 135, label %97
    i32 136, label %100
  ]

34:                                               ; preds = %31
  %35 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @device_printf(i32 %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENXIO, align 4
  store i32 %39, i32* %2, align 4
  br label %181

40:                                               ; preds = %31
  %41 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %40
  %48 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MFI_FLAGS_TBOLT, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %47, %40
  %55 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %56 = load i32, i32* @MFI_SKINNY_IDB, align 4
  %57 = load i32, i32* @MFI_FWINIT_CLEAR_HANDSHAKE, align 4
  %58 = call i32 @MFI_WRITE4(%struct.mfi_softc* %55, i32 %56, i32 %57)
  br label %64

59:                                               ; preds = %47
  %60 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %61 = load i32, i32* @MFI_IDB, align 4
  %62 = load i32, i32* @MFI_FWINIT_CLEAR_HANDSHAKE, align 4
  %63 = call i32 @MFI_WRITE4(%struct.mfi_softc* %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load i32, i32* @MFI_RESET_WAIT_TIME, align 4
  store i32 %65, i32* %6, align 4
  br label %133

66:                                               ; preds = %31
  %67 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %66
  %74 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %75 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MFI_FLAGS_TBOLT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %73, %66
  %81 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %82 = load i32, i32* @MFI_SKINNY_IDB, align 4
  %83 = call i32 @MFI_WRITE4(%struct.mfi_softc* %81, i32 %82, i32 7)
  br label %89

84:                                               ; preds = %73
  %85 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %86 = load i32, i32* @MFI_IDB, align 4
  %87 = load i32, i32* @MFI_FWINIT_READY, align 4
  %88 = call i32 @MFI_WRITE4(%struct.mfi_softc* %85, i32 %86, i32 %87)
  br label %89

89:                                               ; preds = %84, %80
  %90 = load i32, i32* @MFI_RESET_WAIT_TIME, align 4
  store i32 %90, i32* %6, align 4
  br label %133

91:                                               ; preds = %31, %31
  %92 = load i32, i32* @MFI_RESET_WAIT_TIME, align 4
  store i32 %92, i32* %6, align 4
  br label %133

93:                                               ; preds = %31
  %94 = load i32, i32* @MFI_RESET_WAIT_TIME, align 4
  store i32 %94, i32* %6, align 4
  br label %133

95:                                               ; preds = %31, %31
  %96 = load i32, i32* @MFI_RESET_WAIT_TIME, align 4
  store i32 %96, i32* %6, align 4
  br label %133

97:                                               ; preds = %31
  %98 = load i32, i32* @MFI_RESET_WAIT_TIME, align 4
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %9, align 4
  br label %133

100:                                              ; preds = %31
  %101 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %102 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @MFI_FLAGS_SKINNY, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %114, label %107

107:                                              ; preds = %100
  %108 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %109 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MFI_FLAGS_TBOLT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107, %100
  %115 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %116 = load i32, i32* @MFI_SKINNY_IDB, align 4
  %117 = load i32, i32* @MFI_FWINIT_HOTPLUG, align 4
  %118 = call i32 @MFI_WRITE4(%struct.mfi_softc* %115, i32 %116, i32 %117)
  br label %124

119:                                              ; preds = %107
  %120 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %121 = load i32, i32* @MFI_IDB, align 4
  %122 = load i32, i32* @MFI_FWINIT_HOTPLUG, align 4
  %123 = call i32 @MFI_WRITE4(%struct.mfi_softc* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %119, %114
  %125 = load i32, i32* @MFI_RESET_WAIT_TIME, align 4
  store i32 %125, i32* %6, align 4
  br label %133

126:                                              ; preds = %31
  %127 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %128 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %4, align 4
  %131 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %130)
  %132 = load i32, i32* @ENXIO, align 4
  store i32 %132, i32* %2, align 4
  br label %181

133:                                              ; preds = %124, %97, %95, %93, %91, %89, %64
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %156, %133
  %135 = load i32, i32* %7, align 4
  %136 = load i32, i32* %6, align 4
  %137 = mul nsw i32 %136, 10
  %138 = icmp slt i32 %135, %137
  br i1 %138, label %139, label %159

139:                                              ; preds = %134
  %140 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %141 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %140, i32 0, i32 0
  %142 = bitcast {}** %141 to i32 (%struct.mfi_softc*)**
  %143 = load i32 (%struct.mfi_softc*)*, i32 (%struct.mfi_softc*)** %142, align 8
  %144 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %145 = call i32 %143(%struct.mfi_softc* %144)
  store i32 %145, i32* %8, align 4
  %146 = load i32, i32* %8, align 4
  %147 = load i32, i32* @MFI_FWSTATE_MASK, align 4
  %148 = and i32 %146, %147
  store i32 %148, i32* %4, align 4
  %149 = load i32, i32* %4, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %154

152:                                              ; preds = %139
  %153 = call i32 @DELAY(i32 100000)
  br label %155

154:                                              ; preds = %139
  br label %159

155:                                              ; preds = %152
  br label %156

156:                                              ; preds = %155
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  br label %134

159:                                              ; preds = %154, %134
  %160 = load i32, i32* %4, align 4
  %161 = icmp eq i32 %160, 135
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i32, i32* %9, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %166, label %167

166:                                              ; preds = %162
  br label %19

167:                                              ; preds = %162
  br label %168

168:                                              ; preds = %167, %159
  %169 = load i32, i32* %4, align 4
  %170 = load i32, i32* %5, align 4
  %171 = icmp eq i32 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %168
  %173 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %174 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %4, align 4
  %177 = call i32 (i32, i8*, ...) @device_printf(i32 %175, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* @ENXIO, align 4
  store i32 %178, i32* %2, align 4
  br label %181

179:                                              ; preds = %168
  br label %19

180:                                              ; preds = %19
  store i32 0, i32* %2, align 4
  br label %181

181:                                              ; preds = %180, %172, %126, %34
  %182 = load i32, i32* %2, align 4
  ret i32 %182
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
