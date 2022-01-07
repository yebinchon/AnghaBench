; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i32, i32 (%struct.ahc_softc*)* }

@AHC_CHIPID_MASK = common dso_local global i32 0, align 4
@AHC_AIC7770 = common dso_local global i32 0, align 4
@SBLKCTL = common dso_local global i32 0, align 4
@SELBUSB = common dso_local global i32 0, align 4
@SXFRCTL1 = common dso_local global i32 0, align 4
@HCNTRL = common dso_local global i32 0, align 4
@CHIPRST = common dso_local global i32 0, align 4
@CHIPRSTACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%s: WARNING - Failed chip reset!  Trying to initialize anyway.\0A\00", align 1
@SELWIDE = common dso_local global i32 0, align 4
@AHC_PCI = common dso_local global i32 0, align 4
@AHC_WIDE = common dso_local global i32 0, align 4
@AHC_TWIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c" Unsupported adapter type.  Ignoring\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ahc_reset(%struct.ahc_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ahc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %14 = call i32 @ahc_pause(%struct.ahc_softc* %13)
  store i32 0, i32* %8, align 4
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AHC_CHIPID_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @AHC_AIC7770, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %42

22:                                               ; preds = %2
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %24 = load i32, i32* @SBLKCTL, align 4
  %25 = call i32 @ahc_inb(%struct.ahc_softc* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %27 = load i32, i32* @SBLKCTL, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @SELBUSB, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @ahc_outb(%struct.ahc_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %33 = load i32, i32* @SXFRCTL1, align 4
  %34 = call i32 @ahc_inb(%struct.ahc_softc* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %36 = load i32, i32* @SBLKCTL, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @SELBUSB, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = call i32 @ahc_outb(%struct.ahc_softc* %35, i32 %36, i32 %40)
  br label %42

42:                                               ; preds = %22, %2
  %43 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %44 = load i32, i32* @SXFRCTL1, align 4
  %45 = call i32 @ahc_inb(%struct.ahc_softc* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %47 = load i32, i32* @HCNTRL, align 4
  %48 = load i32, i32* @CHIPRST, align 4
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %50 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %48, %51
  %53 = call i32 @ahc_outb(%struct.ahc_softc* %46, i32 %47, i32 %52)
  store i32 1000, i32* %10, align 4
  br label %54

54:                                               ; preds = %68, %42
  %55 = call i32 @aic_delay(i32 1000)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %62 = load i32, i32* @HCNTRL, align 4
  %63 = call i32 @ahc_inb(%struct.ahc_softc* %61, i32 %62)
  %64 = load i32, i32* @CHIPRSTACK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  br label %68

68:                                               ; preds = %60, %56
  %69 = phi i1 [ false, %56 ], [ %67, %60 ]
  br i1 %69, label %54, label %70

70:                                               ; preds = %68
  %71 = load i32, i32* %10, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %75 = call i8* @ahc_name(%struct.ahc_softc* %74)
  %76 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i8* %75)
  br label %77

77:                                               ; preds = %73, %70
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %79 = load i32, i32* @HCNTRL, align 4
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %81 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @ahc_outb(%struct.ahc_softc* %78, i32 %79, i32 %82)
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %85 = load i32, i32* @SBLKCTL, align 4
  %86 = call i32 @ahc_inb(%struct.ahc_softc* %84, i32 %85)
  %87 = load i32, i32* @SELBUSB, align 4
  %88 = load i32, i32* @SELWIDE, align 4
  %89 = or i32 %87, %88
  %90 = and i32 %86, %89
  store i32 %90, i32* %6, align 4
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AHC_PCI, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %77
  %98 = load i32, i32* @SELBUSB, align 4
  %99 = xor i32 %98, -1
  %100 = load i32, i32* %6, align 4
  %101 = and i32 %100, %99
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %97, %77
  %103 = load i32, i32* %6, align 4
  switch i32 %103, label %117 [
    i32 0, label %104
    i32 2, label %105
    i32 8, label %111
  ]

104:                                              ; preds = %102
  br label %119

105:                                              ; preds = %102
  %106 = load i32, i32* @AHC_WIDE, align 4
  %107 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %108 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  br label %119

111:                                              ; preds = %102
  %112 = load i32, i32* @AHC_TWIN, align 4
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %114 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %119

117:                                              ; preds = %102
  %118 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %162

119:                                              ; preds = %111, %105, %104
  %120 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %121 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @AHC_TWIN, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %147

126:                                              ; preds = %119
  %127 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %128 = load i32, i32* @SBLKCTL, align 4
  %129 = call i32 @ahc_inb(%struct.ahc_softc* %127, i32 %128)
  store i32 %129, i32* %12, align 4
  %130 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %131 = load i32, i32* @SBLKCTL, align 4
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @SELBUSB, align 4
  %134 = or i32 %132, %133
  %135 = call i32 @ahc_outb(%struct.ahc_softc* %130, i32 %131, i32 %134)
  %136 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %137 = load i32, i32* @SXFRCTL1, align 4
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @ahc_outb(%struct.ahc_softc* %136, i32 %137, i32 %138)
  %140 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %141 = load i32, i32* @SBLKCTL, align 4
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* @SELBUSB, align 4
  %144 = xor i32 %143, -1
  %145 = and i32 %142, %144
  %146 = call i32 @ahc_outb(%struct.ahc_softc* %140, i32 %141, i32 %145)
  br label %147

147:                                              ; preds = %126, %119
  %148 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %149 = load i32, i32* @SXFRCTL1, align 4
  %150 = load i32, i32* %7, align 4
  %151 = call i32 @ahc_outb(%struct.ahc_softc* %148, i32 %149, i32 %150)
  store i32 0, i32* %9, align 4
  %152 = load i32, i32* %5, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %147
  %155 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %156 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %155, i32 0, i32 3
  %157 = load i32 (%struct.ahc_softc*)*, i32 (%struct.ahc_softc*)** %156, align 8
  %158 = load %struct.ahc_softc*, %struct.ahc_softc** %4, align 8
  %159 = call i32 %157(%struct.ahc_softc* %158)
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %154, %147
  %161 = load i32, i32* %9, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %117
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i32 @ahc_pause(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i32) #1

declare dso_local i32 @aic_delay(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
