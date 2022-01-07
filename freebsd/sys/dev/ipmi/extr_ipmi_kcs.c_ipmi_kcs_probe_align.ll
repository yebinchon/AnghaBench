; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_ipmi_kcs_probe_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_kcs.c_ipmi_kcs_probe_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipmi_softc = type { i32, i32 }

@KCS_CTL_STS = common dso_local global i32 0, align 4
@KCS_STATUS_IBF = common dso_local global i32 0, align 4
@KCS_CONTROL_GET_STATUS_ABORT = common dso_local global i32 0, align 4
@KCS_STATUS_OBF = common dso_local global i32 0, align 4
@KCS_DATA = common dso_local global i32 0, align 4
@KCS_STATUS_STATE_READ = common dso_local global i32 0, align 4
@KCS_DATA_IN_READ = common dso_local global i32 0, align 4
@KCS_STATUS_STATE_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"KCS probe: end state %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_kcs_probe_align(%struct.ipmi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipmi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipmi_softc* %0, %struct.ipmi_softc** %3, align 8
  %6 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  br label %8

8:                                                ; preds = %53, %1
  %9 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %10 = load i32, i32* @KCS_CTL_STS, align 4
  %11 = call i32 @INB(%struct.ipmi_softc* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  br label %12

12:                                               ; preds = %17, %8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @KCS_STATUS_IBF, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = call i32 @DELAY(i32 100)
  %19 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %20 = load i32, i32* @KCS_CTL_STS, align 4
  %21 = call i32 @INB(%struct.ipmi_softc* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %24 = load i32, i32* @KCS_CTL_STS, align 4
  %25 = load i32, i32* @KCS_CONTROL_GET_STATUS_ABORT, align 4
  %26 = call i32 @OUTB(%struct.ipmi_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %28 = load i32, i32* @KCS_CTL_STS, align 4
  %29 = call i32 @INB(%struct.ipmi_softc* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %35, %22
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @KCS_STATUS_IBF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = call i32 @DELAY(i32 100)
  %37 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %38 = load i32, i32* @KCS_CTL_STS, align 4
  %39 = call i32 @INB(%struct.ipmi_softc* %37, i32 %38)
  store i32 %39, i32* %5, align 4
  br label %30

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %40
  %44 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp sgt i32 %50, 4
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %154

53:                                               ; preds = %43
  br label %8

54:                                               ; preds = %40
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @KCS_STATUS_OBF, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %61 = load i32, i32* @KCS_DATA, align 4
  %62 = call i32 @INB(%struct.ipmi_softc* %60, i32 %61)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %54
  %64 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %65 = load i32, i32* @KCS_DATA, align 4
  %66 = call i32 @OUTB(%struct.ipmi_softc* %64, i32 %65, i32 0)
  %67 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %68 = load i32, i32* @KCS_CTL_STS, align 4
  %69 = call i32 @INB(%struct.ipmi_softc* %67, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %75, %63
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* @KCS_STATUS_IBF, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = call i32 @DELAY(i32 100)
  %77 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %78 = load i32, i32* @KCS_CTL_STS, align 4
  %79 = call i32 @INB(%struct.ipmi_softc* %77, i32 %78)
  store i32 %79, i32* %5, align 4
  br label %70

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  %82 = call i32 @KCS_STATUS_STATE(i32 %81)
  %83 = load i32, i32* @KCS_STATUS_STATE_READ, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %119

85:                                               ; preds = %80
  br label %86

86:                                               ; preds = %92, %85
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @KCS_STATUS_OBF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = call i32 @DELAY(i32 100)
  %94 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %95 = load i32, i32* @KCS_CTL_STS, align 4
  %96 = call i32 @INB(%struct.ipmi_softc* %94, i32 %95)
  store i32 %96, i32* %5, align 4
  br label %86

97:                                               ; preds = %86
  %98 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %99 = load i32, i32* @KCS_DATA, align 4
  %100 = call i32 @INB(%struct.ipmi_softc* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %102 = load i32, i32* @KCS_DATA, align 4
  %103 = load i32, i32* @KCS_DATA_IN_READ, align 4
  %104 = call i32 @OUTB(%struct.ipmi_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %106 = load i32, i32* @KCS_CTL_STS, align 4
  %107 = call i32 @INB(%struct.ipmi_softc* %105, i32 %106)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %113, %97
  %109 = load i32, i32* %5, align 4
  %110 = load i32, i32* @KCS_STATUS_IBF, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = call i32 @DELAY(i32 100)
  %115 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %116 = load i32, i32* @KCS_CTL_STS, align 4
  %117 = call i32 @INB(%struct.ipmi_softc* %115, i32 %116)
  store i32 %117, i32* %5, align 4
  br label %108

118:                                              ; preds = %108
  br label %119

119:                                              ; preds = %118, %80
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @KCS_STATUS_STATE(i32 %120)
  %122 = load i32, i32* @KCS_STATUS_STATE_IDLE, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %146

124:                                              ; preds = %119
  br label %125

125:                                              ; preds = %131, %124
  %126 = load i32, i32* %5, align 4
  %127 = load i32, i32* @KCS_STATUS_OBF, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  %130 = xor i1 %129, true
  br i1 %130, label %131, label %136

131:                                              ; preds = %125
  %132 = call i32 @DELAY(i32 100)
  %133 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %134 = load i32, i32* @KCS_CTL_STS, align 4
  %135 = call i32 @INB(%struct.ipmi_softc* %133, i32 %134)
  store i32 %135, i32* %5, align 4
  br label %125

136:                                              ; preds = %125
  %137 = load i32, i32* %5, align 4
  %138 = load i32, i32* @KCS_STATUS_OBF, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %143 = load i32, i32* @KCS_DATA, align 4
  %144 = call i32 @INB(%struct.ipmi_softc* %142, i32 %143)
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %141, %136
  br label %153

146:                                              ; preds = %119
  %147 = load %struct.ipmi_softc*, %struct.ipmi_softc** %3, align 8
  %148 = getelementptr inbounds %struct.ipmi_softc, %struct.ipmi_softc* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %5, align 4
  %151 = call i32 @KCS_STATUS_STATE(i32 %150)
  %152 = call i32 @device_printf(i32 %149, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %146, %145
  store i32 1, i32* %2, align 4
  br label %154

154:                                              ; preds = %153, %52
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @INB(%struct.ipmi_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @OUTB(%struct.ipmi_softc*, i32, i32) #1

declare dso_local i32 @KCS_STATUS_STATE(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
