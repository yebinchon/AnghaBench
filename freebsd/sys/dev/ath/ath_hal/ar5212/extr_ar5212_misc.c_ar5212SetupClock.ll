; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetupClock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5212/extr_ar5212_misc.c_ar5212SetupClock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hal = type { i32 }

@AR_PHY_SLEEP_CTR_CONTROL = common dso_local global i32 0, align 4
@AR_PHY_REFCLKPD = common dso_local global i32 0, align 4
@AR_USEC = common dso_local global i32 0, align 4
@AR_USEC_USEC32 = common dso_local global i32 0, align 4
@AR_TSF_PARM = common dso_local global i32 0, align 4
@AR_PCICFG = common dso_local global i32 0, align 4
@AR_PCICFG_SCLK_SEL = common dso_local global i32 0, align 4
@AR_PHY_SLEEP_CTR_LIMIT = common dso_local global i32 0, align 4
@AR_PHY_SLEEP_SCAL = common dso_local global i32 0, align 4
@AR_PHY_M_SLEEP = common dso_local global i32 0, align 4
@AR_PHY_REFCLKDLY = common dso_local global i32 0, align 4
@AR_PCICFG_SCLK_RATE_IND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar5212SetupClock(%struct.ath_hal* %0, i32 %1) #0 {
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_hal* %0, %struct.ath_hal** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i64 @ar5212Use32KHzclock(%struct.ath_hal* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %84

9:                                                ; preds = %2
  %10 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %11 = load i32, i32* @AR_PHY_SLEEP_CTR_CONTROL, align 4
  %12 = call i32 @OS_REG_WRITE(%struct.ath_hal* %10, i32 %11, i32 31)
  %13 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %14 = load i32, i32* @AR_PHY_REFCLKPD, align 4
  %15 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %16 = call i64 @IS_RAD5112_ANY(%struct.ath_hal* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %9
  %19 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %20 = call i64 @IS_5413(%struct.ath_hal* %19)
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %18, %9
  %23 = phi i1 [ true, %9 ], [ %21, %18 ]
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 20, i32 24
  %26 = call i32 @OS_REG_WRITE(%struct.ath_hal* %13, i32 %14, i32 %25)
  %27 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %28 = load i32, i32* @AR_USEC, align 4
  %29 = load i32, i32* @AR_USEC_USEC32, align 4
  %30 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %27, i32 %28, i32 %29, i32 1)
  %31 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %32 = load i32, i32* @AR_TSF_PARM, align 4
  %33 = call i32 @OS_REG_WRITE(%struct.ath_hal* %31, i32 %32, i32 61)
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = load i32, i32* @AR_PCICFG, align 4
  %36 = load i32, i32* @AR_PCICFG_SCLK_SEL, align 4
  %37 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %34, i32 %35, i32 %36, i32 1)
  %38 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %39 = call i64 @IS_2413(%struct.ath_hal* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %22
  %42 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %43 = call i64 @IS_5413(%struct.ath_hal* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %49, label %45

45:                                               ; preds = %41
  %46 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %47 = call i64 @IS_2417(%struct.ath_hal* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %66

49:                                               ; preds = %45, %41, %22
  %50 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %51 = load i32, i32* @AR_PHY_SLEEP_CTR_LIMIT, align 4
  %52 = call i32 @OS_REG_WRITE(%struct.ath_hal* %50, i32 %51, i32 38)
  %53 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %54 = load i32, i32* @AR_PHY_SLEEP_SCAL, align 4
  %55 = call i32 @OS_REG_WRITE(%struct.ath_hal* %53, i32 %54, i32 13)
  %56 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %57 = load i32, i32* @AR_PHY_M_SLEEP, align 4
  %58 = call i32 @OS_REG_WRITE(%struct.ath_hal* %56, i32 %57, i32 7)
  %59 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %60 = load i32, i32* @AR_PHY_REFCLKDLY, align 4
  %61 = call i32 @OS_REG_WRITE(%struct.ath_hal* %59, i32 %60, i32 63)
  %62 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %63 = load i32, i32* @AR_PCICFG, align 4
  %64 = load i32, i32* @AR_PCICFG_SCLK_RATE_IND, align 4
  %65 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %62, i32 %63, i32 %64, i32 2)
  br label %83

66:                                               ; preds = %45
  %67 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %68 = load i32, i32* @AR_PHY_SLEEP_CTR_LIMIT, align 4
  %69 = call i32 @OS_REG_WRITE(%struct.ath_hal* %67, i32 %68, i32 10)
  %70 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %71 = load i32, i32* @AR_PHY_SLEEP_SCAL, align 4
  %72 = call i32 @OS_REG_WRITE(%struct.ath_hal* %70, i32 %71, i32 12)
  %73 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %74 = load i32, i32* @AR_PHY_M_SLEEP, align 4
  %75 = call i32 @OS_REG_WRITE(%struct.ath_hal* %73, i32 %74, i32 3)
  %76 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %77 = load i32, i32* @AR_PHY_REFCLKDLY, align 4
  %78 = call i32 @OS_REG_WRITE(%struct.ath_hal* %76, i32 %77, i32 32)
  %79 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %80 = load i32, i32* @AR_PCICFG, align 4
  %81 = load i32, i32* @AR_PCICFG_SCLK_RATE_IND, align 4
  %82 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %79, i32 %80, i32 %81, i32 3)
  br label %83

83:                                               ; preds = %66, %49
  br label %162

84:                                               ; preds = %2
  %85 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %86 = load i32, i32* @AR_PCICFG, align 4
  %87 = load i32, i32* @AR_PCICFG_SCLK_RATE_IND, align 4
  %88 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %85, i32 %86, i32 %87, i32 0)
  %89 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %90 = load i32, i32* @AR_PCICFG, align 4
  %91 = load i32, i32* @AR_PCICFG_SCLK_SEL, align 4
  %92 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %89, i32 %90, i32 %91, i32 0)
  %93 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %94 = load i32, i32* @AR_TSF_PARM, align 4
  %95 = call i32 @OS_REG_WRITE(%struct.ath_hal* %93, i32 %94, i32 1)
  %96 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %97 = load i32, i32* @AR_PHY_SLEEP_CTR_CONTROL, align 4
  %98 = call i32 @OS_REG_WRITE(%struct.ath_hal* %96, i32 %97, i32 31)
  %99 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %100 = load i32, i32* @AR_PHY_SLEEP_CTR_LIMIT, align 4
  %101 = call i32 @OS_REG_WRITE(%struct.ath_hal* %99, i32 %100, i32 127)
  %102 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %103 = call i64 @IS_2417(%struct.ath_hal* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %84
  %106 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %107 = load i32, i32* @AR_PHY_SLEEP_SCAL, align 4
  %108 = call i32 @OS_REG_WRITE(%struct.ath_hal* %106, i32 %107, i32 10)
  br label %122

109:                                              ; preds = %84
  %110 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %111 = call i64 @IS_HB63(%struct.ath_hal* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %115 = load i32, i32* @AR_PHY_SLEEP_SCAL, align 4
  %116 = call i32 @OS_REG_WRITE(%struct.ath_hal* %114, i32 %115, i32 50)
  br label %121

117:                                              ; preds = %109
  %118 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %119 = load i32, i32* @AR_PHY_SLEEP_SCAL, align 4
  %120 = call i32 @OS_REG_WRITE(%struct.ath_hal* %118, i32 %119, i32 14)
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %105
  %123 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %124 = load i32, i32* @AR_PHY_M_SLEEP, align 4
  %125 = call i32 @OS_REG_WRITE(%struct.ath_hal* %123, i32 %124, i32 12)
  %126 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %127 = load i32, i32* @AR_PHY_REFCLKDLY, align 4
  %128 = call i32 @OS_REG_WRITE(%struct.ath_hal* %126, i32 %127, i32 255)
  %129 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %130 = load i32, i32* @AR_PHY_REFCLKPD, align 4
  %131 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %132 = call i64 @IS_RAD5112_ANY(%struct.ath_hal* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %122
  %135 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %136 = call i64 @IS_5413(%struct.ath_hal* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %134
  %139 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %140 = call i64 @IS_2417(%struct.ath_hal* %139)
  %141 = icmp ne i64 %140, 0
  br label %142

142:                                              ; preds = %138, %134, %122
  %143 = phi i1 [ true, %134 ], [ true, %122 ], [ %141, %138 ]
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 20, i32 24
  %146 = call i32 @OS_REG_WRITE(%struct.ath_hal* %129, i32 %130, i32 %145)
  %147 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %148 = load i32, i32* @AR_USEC, align 4
  %149 = load i32, i32* @AR_USEC_USEC32, align 4
  %150 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %151 = call i64 @IS_RAD5112_ANY(%struct.ath_hal* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %157, label %153

153:                                              ; preds = %142
  %154 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %155 = call i64 @IS_5413(%struct.ath_hal* %154)
  %156 = icmp ne i64 %155, 0
  br label %157

157:                                              ; preds = %153, %142
  %158 = phi i1 [ true, %142 ], [ %156, %153 ]
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i32 39, i32 31
  %161 = call i32 @OS_REG_RMW_FIELD(%struct.ath_hal* %147, i32 %148, i32 %149, i32 %160)
  br label %162

162:                                              ; preds = %157, %83
  ret void
}

declare dso_local i64 @ar5212Use32KHzclock(%struct.ath_hal*, i32) #1

declare dso_local i32 @OS_REG_WRITE(%struct.ath_hal*, i32, i32) #1

declare dso_local i64 @IS_RAD5112_ANY(%struct.ath_hal*) #1

declare dso_local i64 @IS_5413(%struct.ath_hal*) #1

declare dso_local i32 @OS_REG_RMW_FIELD(%struct.ath_hal*, i32, i32, i32) #1

declare dso_local i64 @IS_2413(%struct.ath_hal*) #1

declare dso_local i64 @IS_2417(%struct.ath_hal*) #1

declare dso_local i64 @IS_HB63(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
