; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_clear_critical_section.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_clear_critical_section.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i64, i32, i64, i64, %struct.cs* }
%struct.cs = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@SEQADDR0 = common dso_local global i32 0, align 4
@SEQADDR1 = common dso_local global i32 0, align 4
@AHC_MAX_STEPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Infinite loop in critical section\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"critical section loop\00", align 1
@SIMODE0 = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@AHC_DT = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i64 0, align 8
@CLRINT = common dso_local global i32 0, align 4
@CLRSCSIINT = common dso_local global i64 0, align 8
@SEQCTL = common dso_local global i32 0, align 4
@STEP = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CLRSINT1 = common dso_local global i32 0, align 4
@CLRBUSFREE = common dso_local global i64 0, align 8
@HCNTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_clear_critical_section(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.ahc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cs*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %2, align 8
  %10 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %171

15:                                               ; preds = %1
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %152, %15
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %19 = load i32, i32* @SEQADDR0, align 4
  %20 = call i32 @ahc_inb(%struct.ahc_softc* %18, i32 %19)
  %21 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %22 = load i32, i32* @SEQADDR1, align 4
  %23 = call i32 @ahc_inb(%struct.ahc_softc* %21, i32 %22)
  %24 = shl i32 %23, 8
  %25 = or i32 %20, %24
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %8, align 8
  %27 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %28 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %27, i32 0, i32 4
  %29 = load %struct.cs*, %struct.cs** %28, align 8
  store %struct.cs* %29, %struct.cs** %7, align 8
  store i64 0, i64* %9, align 8
  br label %30

30:                                               ; preds = %50, %17
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %55

36:                                               ; preds = %30
  %37 = load %struct.cs*, %struct.cs** %7, align 8
  %38 = getelementptr inbounds %struct.cs, %struct.cs* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %36
  %43 = load %struct.cs*, %struct.cs** %7, align 8
  %44 = getelementptr inbounds %struct.cs, %struct.cs* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = icmp sge i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %55

49:                                               ; preds = %42, %36
  br label %50

50:                                               ; preds = %49
  %51 = load i64, i64* %9, align 8
  %52 = add nsw i64 %51, 1
  store i64 %52, i64* %9, align 8
  %53 = load %struct.cs*, %struct.cs** %7, align 8
  %54 = getelementptr inbounds %struct.cs, %struct.cs* %53, i32 1
  store %struct.cs* %54, %struct.cs** %7, align 8
  br label %30

55:                                               ; preds = %48, %30
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %58 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %153

62:                                               ; preds = %55
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @AHC_MAX_STEPS, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %68 = call i8* @ahc_name(%struct.ahc_softc* %67)
  %69 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8* %68)
  %70 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %71 = call i32 @ahc_dump_card_state(%struct.ahc_softc* %70)
  %72 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %66, %62
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @FALSE, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %122

79:                                               ; preds = %73
  %80 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %81 = load i32, i32* @SIMODE0, align 4
  %82 = call i32 @ahc_inb(%struct.ahc_softc* %80, i32 %81)
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %5, align 8
  %84 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %85 = load i32, i32* @SIMODE0, align 4
  %86 = call i32 @ahc_outb(%struct.ahc_softc* %84, i32 %85, i64 0)
  %87 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %88 = load i32, i32* @SIMODE1, align 4
  %89 = call i32 @ahc_inb(%struct.ahc_softc* %87, i32 %88)
  %90 = sext i32 %89 to i64
  store i64 %90, i64* %6, align 8
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AHC_DT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %79
  %98 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %99 = load i32, i32* @SIMODE1, align 4
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* @ENBUSFREE, align 8
  %102 = and i64 %100, %101
  %103 = call i32 @ahc_outb(%struct.ahc_softc* %98, i32 %99, i64 %102)
  br label %108

104:                                              ; preds = %79
  %105 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %106 = load i32, i32* @SIMODE1, align 4
  %107 = call i32 @ahc_outb(%struct.ahc_softc* %105, i32 %106, i64 0)
  br label %108

108:                                              ; preds = %104, %97
  %109 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %110 = load i32, i32* @CLRINT, align 4
  %111 = load i64, i64* @CLRSCSIINT, align 8
  %112 = call i32 @ahc_outb(%struct.ahc_softc* %109, i32 %110, i64 %111)
  %113 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %114 = load i32, i32* @SEQCTL, align 4
  %115 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %116 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @STEP, align 8
  %119 = or i64 %117, %118
  %120 = call i32 @ahc_outb(%struct.ahc_softc* %113, i32 %114, i64 %119)
  %121 = load i32, i32* @TRUE, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %108, %73
  %123 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @AHC_DT, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %122
  %130 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %131 = load i32, i32* @CLRSINT1, align 4
  %132 = load i64, i64* @CLRBUSFREE, align 8
  %133 = call i32 @ahc_outb(%struct.ahc_softc* %130, i32 %131, i64 %132)
  %134 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %135 = load i32, i32* @CLRINT, align 4
  %136 = load i64, i64* @CLRSCSIINT, align 8
  %137 = call i32 @ahc_outb(%struct.ahc_softc* %134, i32 %135, i64 %136)
  br label %138

138:                                              ; preds = %129, %122
  %139 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %140 = load i32, i32* @HCNTRL, align 4
  %141 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %142 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = call i32 @ahc_outb(%struct.ahc_softc* %139, i32 %140, i64 %143)
  br label %145

145:                                              ; preds = %150, %138
  %146 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %147 = call i32 @ahc_is_paused(%struct.ahc_softc* %146)
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @aic_delay(i32 200)
  br label %145

152:                                              ; preds = %145
  br label %17

153:                                              ; preds = %61
  %154 = load i32, i32* %3, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %171

156:                                              ; preds = %153
  %157 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %158 = load i32, i32* @SIMODE0, align 4
  %159 = load i64, i64* %5, align 8
  %160 = call i32 @ahc_outb(%struct.ahc_softc* %157, i32 %158, i64 %159)
  %161 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %162 = load i32, i32* @SIMODE1, align 4
  %163 = load i64, i64* %6, align 8
  %164 = call i32 @ahc_outb(%struct.ahc_softc* %161, i32 %162, i64 %163)
  %165 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %166 = load i32, i32* @SEQCTL, align 4
  %167 = load %struct.ahc_softc*, %struct.ahc_softc** %2, align 8
  %168 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = call i32 @ahc_outb(%struct.ahc_softc* %165, i32 %166, i64 %169)
  br label %171

171:                                              ; preds = %14, %156, %153
  ret void
}

declare dso_local i32 @ahc_inb(%struct.ahc_softc*, i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

declare dso_local i32 @ahc_dump_card_state(%struct.ahc_softc*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i32, i64) #1

declare dso_local i32 @ahc_is_paused(%struct.ahc_softc*) #1

declare dso_local i32 @aic_delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
