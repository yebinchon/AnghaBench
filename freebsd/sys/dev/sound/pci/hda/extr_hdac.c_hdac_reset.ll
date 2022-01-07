; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdac.c_hdac_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_softc = type { i32, i32, i32, i32, i32 }

@HDAC_CORBCTL = common dso_local global i32 0, align 4
@HDAC_RIRBCTL = common dso_local global i32 0, align 4
@HDAC_DPIBLBASE = common dso_local global i32 0, align 4
@HDAC_DPIBUBASE = common dso_local global i32 0, align 4
@HDAC_GCTL = common dso_local global i32 0, align 4
@HDAC_GCTL_CRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Unable to put hdac in reset\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Device stuck in reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_softc*, i32)* @hdac_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_reset(%struct.hdac_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdac_softc* %0, %struct.hdac_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %22, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %12 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %9
  %16 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %17 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %16, i32 0, i32 4
  %18 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @HDAC_ISDCTL(%struct.hdac_softc* %18, i32 %19)
  %21 = call i32 @HDAC_WRITE_4(i32* %17, i32 %20, i32 0)
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %8, align 4
  br label %9

25:                                               ; preds = %9
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %29 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %26
  %33 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %34 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %33, i32 0, i32 4
  %35 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @HDAC_OSDCTL(%struct.hdac_softc* %35, i32 %36)
  %38 = call i32 @HDAC_WRITE_4(i32* %34, i32 %37, i32 0)
  br label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %26

42:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %56, %42
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %46 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %43
  %50 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %51 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %50, i32 0, i32 4
  %52 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @HDAC_BSDCTL(%struct.hdac_softc* %52, i32 %53)
  %55 = call i32 @HDAC_WRITE_4(i32* %51, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %49
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %43

59:                                               ; preds = %43
  %60 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %61 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %60, i32 0, i32 4
  %62 = load i32, i32* @HDAC_CORBCTL, align 4
  %63 = call i32 @HDAC_WRITE_1(i32* %61, i32 %62, i32 0)
  %64 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %65 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %64, i32 0, i32 4
  %66 = load i32, i32* @HDAC_RIRBCTL, align 4
  %67 = call i32 @HDAC_WRITE_1(i32* %65, i32 %66, i32 0)
  %68 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %69 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %68, i32 0, i32 4
  %70 = load i32, i32* @HDAC_DPIBLBASE, align 4
  %71 = call i32 @HDAC_WRITE_4(i32* %69, i32 %70, i32 0)
  %72 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %73 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %72, i32 0, i32 4
  %74 = load i32, i32* @HDAC_DPIBUBASE, align 4
  %75 = call i32 @HDAC_WRITE_4(i32* %73, i32 %74, i32 0)
  %76 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %77 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %76, i32 0, i32 4
  %78 = load i32, i32* @HDAC_GCTL, align 4
  %79 = call i32 @HDAC_READ_4(i32* %77, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %81 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %80, i32 0, i32 4
  %82 = load i32, i32* @HDAC_GCTL, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @HDAC_GCTL_CRST, align 4
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  %87 = call i32 @HDAC_WRITE_4(i32* %81, i32 %82, i32 %86)
  store i32 10000, i32* %7, align 4
  br label %88

88:                                               ; preds = %100, %59
  %89 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %90 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %89, i32 0, i32 4
  %91 = load i32, i32* @HDAC_GCTL, align 4
  %92 = call i32 @HDAC_READ_4(i32* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @HDAC_GCTL_CRST, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %88
  br label %104

98:                                               ; preds = %88
  %99 = call i32 @DELAY(i32 10)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, -1
  store i32 %102, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %88, label %104

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @HDAC_GCTL_CRST, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %104
  %110 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %111 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @ENXIO, align 4
  store i32 %114, i32* %3, align 4
  br label %161

115:                                              ; preds = %104
  %116 = load i32, i32* %5, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %115
  store i32 0, i32* %3, align 4
  br label %161

119:                                              ; preds = %115
  %120 = call i32 @DELAY(i32 100)
  %121 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %122 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %121, i32 0, i32 4
  %123 = load i32, i32* @HDAC_GCTL, align 4
  %124 = call i32 @HDAC_READ_4(i32* %122, i32 %123)
  store i32 %124, i32* %6, align 4
  %125 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %126 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %125, i32 0, i32 4
  %127 = load i32, i32* @HDAC_GCTL, align 4
  %128 = load i32, i32* %6, align 4
  %129 = load i32, i32* @HDAC_GCTL_CRST, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @HDAC_WRITE_4(i32* %126, i32 %127, i32 %130)
  store i32 10000, i32* %7, align 4
  br label %132

132:                                              ; preds = %144, %119
  %133 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %134 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %133, i32 0, i32 4
  %135 = load i32, i32* @HDAC_GCTL, align 4
  %136 = call i32 @HDAC_READ_4(i32* %134, i32 %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @HDAC_GCTL_CRST, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %132
  br label %148

142:                                              ; preds = %132
  %143 = call i32 @DELAY(i32 10)
  br label %144

144:                                              ; preds = %142
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, -1
  store i32 %146, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %132, label %148

148:                                              ; preds = %144, %141
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @HDAC_GCTL_CRST, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %159, label %153

153:                                              ; preds = %148
  %154 = load %struct.hdac_softc*, %struct.hdac_softc** %4, align 8
  %155 = getelementptr inbounds %struct.hdac_softc, %struct.hdac_softc* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %158 = load i32, i32* @ENXIO, align 4
  store i32 %158, i32* %3, align 4
  br label %161

159:                                              ; preds = %148
  %160 = call i32 @DELAY(i32 1000)
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %159, %153, %118, %109
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i32 @HDAC_WRITE_4(i32*, i32, i32) #1

declare dso_local i32 @HDAC_ISDCTL(%struct.hdac_softc*, i32) #1

declare dso_local i32 @HDAC_OSDCTL(%struct.hdac_softc*, i32) #1

declare dso_local i32 @HDAC_BSDCTL(%struct.hdac_softc*, i32) #1

declare dso_local i32 @HDAC_WRITE_1(i32*, i32, i32) #1

declare dso_local i32 @HDAC_READ_4(i32*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
