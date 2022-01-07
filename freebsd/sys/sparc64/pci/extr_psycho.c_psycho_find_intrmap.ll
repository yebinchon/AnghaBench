; ModuleID = '/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_find_intrmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/sparc64/pci/extr_psycho.c_psycho_find_intrmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.psycho_softc = type { i64, i32 }

@PSYCHO_MAX_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"out of range INO %d requested\0A\00", align 1
@PSR_OBIO_INT_DIAG = common dso_local global i64 0, align 8
@PSR_SCSI_INT_MAP = common dso_local global i64 0, align 8
@PSR_SCSI_INT_CLR = common dso_local global i64 0, align 8
@PSR_PWRMGT_INT_MAP = common dso_local global i64 0, align 8
@PSYCHO_MODE_SABRE = common dso_local global i64 0, align 8
@PSR_TIMER0_INT_MAP = common dso_local global i64 0, align 8
@PSR_TIMER1_INT_MAP = common dso_local global i64 0, align 8
@PSR_PCIBERR_INT_MAP = common dso_local global i64 0, align 8
@PSR_PCI_INT_DIAG = common dso_local global i64 0, align 8
@PSR_PCIA0_INT_MAP = common dso_local global i64 0, align 8
@PSR_PCIA0_INT_CLR = common dso_local global i64 0, align 8
@PSR_PCIB3_INT_MAP = common dso_local global i64 0, align 8
@PSYCHO_MODE_PSYCHO = common dso_local global i64 0, align 8
@PSR_PCIA2_INT_MAP = common dso_local global i64 0, align 8
@PSR_PCIA3_INT_MAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.psycho_softc*, i32, i64*, i64*, i64*)* @psycho_find_intrmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psycho_find_intrmap(%struct.psycho_softc* %0, i32 %1, i64* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.psycho_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.psycho_softc* %0, %struct.psycho_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @PSYCHO_MAX_INO, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %5
  %20 = load %struct.psycho_softc*, %struct.psycho_softc** %7, align 8
  %21 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %6, align 4
  br label %155

25:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  %26 = load %struct.psycho_softc*, %struct.psycho_softc** %7, align 8
  %27 = load i64, i64* @PSR_OBIO_INT_DIAG, align 8
  %28 = call i32 @PSYCHO_READ8(%struct.psycho_softc* %26, i64 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i64, i64* @PSR_SCSI_INT_MAP, align 8
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* @PSR_SCSI_INT_CLR, align 8
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %69, %25
  %32 = load i64, i64* %13, align 8
  %33 = load i64, i64* @PSR_PWRMGT_INT_MAP, align 8
  %34 = icmp sle i64 %32, %33
  br i1 %34, label %35, label %76

35:                                               ; preds = %31
  %36 = load %struct.psycho_softc*, %struct.psycho_softc** %7, align 8
  %37 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PSYCHO_MODE_SABRE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %58

41:                                               ; preds = %35
  %42 = load i64, i64* %13, align 8
  %43 = load i64, i64* @PSR_TIMER0_INT_MAP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %57, label %45

45:                                               ; preds = %41
  %46 = load i64, i64* %13, align 8
  %47 = load i64, i64* @PSR_TIMER1_INT_MAP, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* @PSR_PCIBERR_INT_MAP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %57, label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %13, align 8
  %55 = load i64, i64* @PSR_PWRMGT_INT_MAP, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53, %49, %45, %41
  br label %69

58:                                               ; preds = %53, %35
  %59 = load %struct.psycho_softc*, %struct.psycho_softc** %7, align 8
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @PSYCHO_READ8(%struct.psycho_softc* %59, i64 %60)
  %62 = call i32 @INTINO(i32 %61)
  %63 = load i32, i32* %8, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* %14, align 4
  %67 = and i32 %66, 2
  store i32 %67, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %76

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i64, i64* %13, align 8
  %71 = add nsw i64 %70, 8
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, 8
  store i64 %73, i64* %12, align 8
  %74 = load i32, i32* %14, align 4
  %75 = ashr i32 %74, 2
  store i32 %75, i32* %14, align 4
  br label %31

76:                                               ; preds = %65, %31
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %134, label %79

79:                                               ; preds = %76
  %80 = load %struct.psycho_softc*, %struct.psycho_softc** %7, align 8
  %81 = load i64, i64* @PSR_PCI_INT_DIAG, align 8
  %82 = call i32 @PSYCHO_READ8(%struct.psycho_softc* %80, i64 %81)
  store i32 %82, i32* %14, align 4
  %83 = load i64, i64* @PSR_PCIA0_INT_MAP, align 8
  store i64 %83, i64* %13, align 8
  %84 = load i64, i64* @PSR_PCIA0_INT_CLR, align 8
  store i64 %84, i64* %12, align 8
  br label %85

85:                                               ; preds = %126, %79
  %86 = load i64, i64* %13, align 8
  %87 = load i64, i64* @PSR_PCIB3_INT_MAP, align 8
  %88 = icmp sle i64 %86, %87
  br i1 %88, label %89, label %133

89:                                               ; preds = %85
  %90 = load %struct.psycho_softc*, %struct.psycho_softc** %7, align 8
  %91 = getelementptr inbounds %struct.psycho_softc, %struct.psycho_softc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @PSYCHO_MODE_PSYCHO, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %89
  %96 = load i64, i64* %13, align 8
  %97 = load i64, i64* @PSR_PCIA2_INT_MAP, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %103, label %99

99:                                               ; preds = %95
  %100 = load i64, i64* %13, align 8
  %101 = load i64, i64* @PSR_PCIA3_INT_MAP, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99, %95
  br label %126

104:                                              ; preds = %99, %89
  %105 = load %struct.psycho_softc*, %struct.psycho_softc** %7, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 @PSYCHO_READ8(%struct.psycho_softc* %105, i64 %106)
  %108 = load i32, i32* %8, align 4
  %109 = xor i32 %107, %108
  %110 = and i32 %109, 60
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %104
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, 3
  %115 = mul nsw i32 8, %114
  %116 = sext i32 %115 to i64
  %117 = load i64, i64* %12, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %12, align 8
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* %8, align 4
  %121 = and i32 %120, 3
  %122 = mul nsw i32 %121, 2
  %123 = ashr i32 %119, %122
  %124 = and i32 %123, 2
  store i32 %124, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %133

125:                                              ; preds = %104
  br label %126

126:                                              ; preds = %125, %103
  %127 = load i64, i64* %13, align 8
  %128 = add nsw i64 %127, 8
  store i64 %128, i64* %13, align 8
  %129 = load i64, i64* %12, align 8
  %130 = add nsw i64 %129, 32
  store i64 %130, i64* %12, align 8
  %131 = load i32, i32* %14, align 4
  %132 = ashr i32 %131, 8
  store i32 %132, i32* %14, align 4
  br label %85

133:                                              ; preds = %112, %85
  br label %134

134:                                              ; preds = %133, %76
  %135 = load i64*, i64** %9, align 8
  %136 = icmp ne i64* %135, null
  br i1 %136, label %137, label %140

137:                                              ; preds = %134
  %138 = load i64, i64* %13, align 8
  %139 = load i64*, i64** %9, align 8
  store i64 %138, i64* %139, align 8
  br label %140

140:                                              ; preds = %137, %134
  %141 = load i64*, i64** %10, align 8
  %142 = icmp ne i64* %141, null
  br i1 %142, label %143, label %146

143:                                              ; preds = %140
  %144 = load i64, i64* %12, align 8
  %145 = load i64*, i64** %10, align 8
  store i64 %144, i64* %145, align 8
  br label %146

146:                                              ; preds = %143, %140
  %147 = load i64*, i64** %11, align 8
  %148 = icmp ne i64* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %146
  %150 = load i32, i32* %14, align 4
  %151 = sext i32 %150 to i64
  %152 = load i64*, i64** %11, align 8
  store i64 %151, i64* %152, align 8
  br label %153

153:                                              ; preds = %149, %146
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %6, align 4
  br label %155

155:                                              ; preds = %153, %19
  %156 = load i32, i32* %6, align 4
  ret i32 %156
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @PSYCHO_READ8(%struct.psycho_softc*, i64) #1

declare dso_local i32 @INTINO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
