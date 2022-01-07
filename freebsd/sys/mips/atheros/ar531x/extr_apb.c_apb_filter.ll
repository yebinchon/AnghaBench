; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/atheros/ar531x/extr_apb.c_apb_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apb_softc = type { i32*, %struct.intr_event** }
%struct.intr_event = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ar531x_soc = common dso_local global i64 0, align 8
@AR531X_SOC_AR5315 = common dso_local global i64 0, align 8
@AR5315_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5315_SYSREG_MISC_INTSTAT = common dso_local global i64 0, align 8
@AR5312_SYSREG_BASE = common dso_local global i64 0, align 8
@AR5312_SYSREG_MISC_INTSTAT = common dso_local global i64 0, align 8
@APB_NIRQS = common dso_local global i32 0, align 4
@AR5312_SYSREG_AHBPERR = common dso_local global i64 0, align 8
@AR5312_SYSREG_AHBDMAE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Stray APB IRQ %d\0A\00", align 1
@curthread = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @apb_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @apb_filter(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.apb_softc*, align 8
  %4 = alloca %struct.intr_event*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.apb_softc*
  store %struct.apb_softc* %8, %struct.apb_softc** %3, align 8
  %9 = load i64, i64* @ar531x_soc, align 8
  %10 = load i64, i64* @AR531X_SOC_AR5315, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %14 = load i64, i64* @AR5315_SYSREG_MISC_INTSTAT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @ATH_READ_REG(i64 %15)
  store i32 %16, i32* %5, align 4
  br label %22

17:                                               ; preds = %1
  %18 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %19 = load i64, i64* @AR5312_SYSREG_MISC_INTSTAT, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @ATH_READ_REG(i64 %20)
  store i32 %21, i32* %5, align 4
  br label %22

22:                                               ; preds = %17, %12
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %114, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @APB_NIRQS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %117

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %113

33:                                               ; preds = %27
  %34 = load i64, i64* @ar531x_soc, align 8
  %35 = load i64, i64* @AR531X_SOC_AR5315, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %33
  %38 = load i64, i64* @AR5315_SYSREG_BASE, align 8
  %39 = load i64, i64* @AR5315_SYSREG_MISC_INTSTAT, align 8
  %40 = add nsw i64 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = shl i32 1, %42
  %44 = xor i32 %43, -1
  %45 = and i32 %41, %44
  %46 = call i32 @ATH_WRITE_REG(i64 %40, i32 %45)
  br label %57

47:                                               ; preds = %33
  %48 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %49 = load i64, i64* @AR5312_SYSREG_MISC_INTSTAT, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 1, %52
  %54 = xor i32 %53, -1
  %55 = and i32 %51, %54
  %56 = call i32 @ATH_WRITE_REG(i64 %50, i32 %55)
  br label %57

57:                                               ; preds = %47, %37
  %58 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %59 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %58, i32 0, i32 1
  %60 = load %struct.intr_event**, %struct.intr_event*** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.intr_event*, %struct.intr_event** %60, i64 %62
  %64 = load %struct.intr_event*, %struct.intr_event** %63, align 8
  store %struct.intr_event* %64, %struct.intr_event** %4, align 8
  %65 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %66 = icmp ne %struct.intr_event* %65, null
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %69 = getelementptr inbounds %struct.intr_event, %struct.intr_event* %68, i32 0, i32 0
  %70 = call i64 @CK_SLIST_EMPTY(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %98

72:                                               ; preds = %67, %57
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %88

75:                                               ; preds = %72
  %76 = load i64, i64* @ar531x_soc, align 8
  %77 = load i64, i64* @AR531X_SOC_AR5315, align 8
  %78 = icmp slt i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %75
  %80 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %81 = load i64, i64* @AR5312_SYSREG_AHBPERR, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @ATH_READ_REG(i64 %82)
  %84 = load i64, i64* @AR5312_SYSREG_BASE, align 8
  %85 = load i64, i64* @AR5312_SYSREG_AHBDMAE, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i32 @ATH_READ_REG(i64 %86)
  br label %88

88:                                               ; preds = %79, %75, %72
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %88
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 6
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* %6, align 4
  %96 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %95)
  br label %97

97:                                               ; preds = %94, %91, %88
  br label %114

98:                                               ; preds = %67
  %99 = load %struct.intr_event*, %struct.intr_event** %4, align 8
  %100 = load i32, i32* @curthread, align 4
  %101 = call %struct.TYPE_2__* @PCPU_GET(i32 %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @intr_event_handle(%struct.intr_event* %99, i32 %103)
  %105 = load %struct.apb_softc*, %struct.apb_softc** %3, align 8
  %106 = getelementptr inbounds %struct.apb_softc, %struct.apb_softc* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i32, i32* %6, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @mips_intrcnt_inc(i32 %111)
  br label %113

113:                                              ; preds = %98, %27
  br label %114

114:                                              ; preds = %113, %97
  %115 = load i32, i32* %6, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %6, align 4
  br label %23

117:                                              ; preds = %23
  %118 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %118
}

declare dso_local i32 @ATH_READ_REG(i64) #1

declare dso_local i32 @ATH_WRITE_REG(i64, i32) #1

declare dso_local i64 @CK_SLIST_EMPTY(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @intr_event_handle(%struct.intr_event*, i32) #1

declare dso_local %struct.TYPE_2__* @PCPU_GET(i32) #1

declare dso_local i32 @mips_intrcnt_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
