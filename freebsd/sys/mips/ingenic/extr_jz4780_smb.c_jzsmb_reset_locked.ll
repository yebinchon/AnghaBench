; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_reset_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/ingenic/extr_jz4780_smb.c_jzsmb_reset_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jzsmb_softc = type { i32, i32 }

@SMBINTM = common dso_local global i32 0, align 4
@SMBCON_REST = common dso_local global i32 0, align 4
@SMBCON_SLVDIS = common dso_local global i32 0, align 4
@SMBCON_MD = common dso_local global i32 0, align 4
@SMBCON_SPD_STANDARD = common dso_local global i32 0, align 4
@JZSMB_SETUP_TIME_STANDARD = common dso_local global i32 0, align 4
@JZSMB_HOLD_TIME_STANDARD = common dso_local global i32 0, align 4
@JZSMB_PERIOD_MIN_STANDARD = common dso_local global i32 0, align 4
@JZSMB_PERIOD_MAX_STANDARD = common dso_local global i32 0, align 4
@JZSMB_HCNT_BASE = common dso_local global i32 0, align 4
@JZSMB_HCNT_MIN = common dso_local global i32 0, align 4
@JZSMB_LCNT_BASE = common dso_local global i32 0, align 4
@JZSMB_LCNT_MIN = common dso_local global i32 0, align 4
@SMBCON = common dso_local global i32 0, align 4
@SMBSHCNT = common dso_local global i32 0, align 4
@SMBSLCNT = common dso_local global i32 0, align 4
@SMBCON_SPD_FAST = common dso_local global i32 0, align 4
@JZSMB_SETUP_TIME_FAST = common dso_local global i32 0, align 4
@JZSMB_HOLD_TIME_FAST = common dso_local global i32 0, align 4
@JZSMB_PERIOD_MIN_FAST = common dso_local global i32 0, align 4
@JZSMB_PERIOD_MAX_FAST = common dso_local global i32 0, align 4
@SMBFHCNT = common dso_local global i32 0, align 4
@SMBFLCNT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SMBSDASU = common dso_local global i32 0, align 4
@SMBSDAHD = common dso_local global i32 0, align 4
@SMBSDAHD_HDENB = common dso_local global i32 0, align 4
@SMBTAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @jzsmb_reset_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jzsmb_reset_locked(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.jzsmb_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.jzsmb_softc* @device_get_softc(i32 %13)
  store %struct.jzsmb_softc* %14, %struct.jzsmb_softc** %6, align 8
  %15 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %16 = call i32 @SMB_ASSERT_LOCKED(%struct.jzsmb_softc* %15)
  %17 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %18 = call i32 @jzsmb_enable(%struct.jzsmb_softc* %17, i32 0)
  %19 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %20 = load i32, i32* @SMBINTM, align 4
  %21 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %19, i32 %20, i32 0)
  %22 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %23 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %26 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = sdiv i32 %24, %27
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* @SMBCON_REST, align 4
  %30 = load i32, i32* @SMBCON_SLVDIS, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @SMBCON_MD, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %35 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %113 [
    i32 128, label %37
    i32 129, label %75
  ]

37:                                               ; preds = %2
  %38 = load i32, i32* @SMBCON_SPD_STANDARD, align 4
  %39 = load i32, i32* %7, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* @JZSMB_SETUP_TIME_STANDARD, align 4
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* @JZSMB_HOLD_TIME_STANDARD, align 4
  store i32 %42, i32* %12, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @JZSMB_PERIOD_MIN_STANDARD, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32, i32* @JZSMB_PERIOD_MAX_STANDARD, align 4
  %47 = load i32, i32* @JZSMB_PERIOD_MIN_STANDARD, align 4
  %48 = add nsw i32 %46, %47
  %49 = sdiv i32 %45, %48
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %50, %51
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @JZSMB_HCNT_BASE, align 4
  %55 = sub nsw i32 %53, %54
  %56 = load i32, i32* @JZSMB_HCNT_MIN, align 4
  %57 = call i32 @MAX(i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @JZSMB_LCNT_BASE, align 4
  %60 = sub nsw i32 %58, %59
  %61 = load i32, i32* @JZSMB_LCNT_MIN, align 4
  %62 = call i32 @MAX(i32 %60, i32 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %64 = load i32, i32* @SMBCON, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %63, i32 %64, i32 %65)
  %67 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %68 = load i32, i32* @SMBSHCNT, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %67, i32 %68, i32 %69)
  %71 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %72 = load i32, i32* @SMBSLCNT, align 4
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %71, i32 %72, i32 %73)
  br label %115

75:                                               ; preds = %2
  %76 = load i32, i32* @SMBCON_SPD_FAST, align 4
  %77 = load i32, i32* %7, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* @JZSMB_SETUP_TIME_FAST, align 4
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* @JZSMB_HOLD_TIME_FAST, align 4
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @JZSMB_PERIOD_MIN_FAST, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load i32, i32* @JZSMB_PERIOD_MAX_FAST, align 4
  %85 = load i32, i32* @JZSMB_PERIOD_MIN_FAST, align 4
  %86 = add nsw i32 %84, %85
  %87 = sdiv i32 %83, %86
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* %9, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %10, align 4
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* @JZSMB_HCNT_BASE, align 4
  %93 = sub nsw i32 %91, %92
  %94 = load i32, i32* @JZSMB_HCNT_MIN, align 4
  %95 = call i32 @MAX(i32 %93, i32 %94)
  store i32 %95, i32* %9, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @JZSMB_LCNT_BASE, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* @JZSMB_LCNT_MIN, align 4
  %100 = call i32 @MAX(i32 %98, i32 %99)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %102 = load i32, i32* @SMBCON, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %106 = load i32, i32* @SMBFHCNT, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %105, i32 %106, i32 %107)
  %109 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %110 = load i32, i32* @SMBFLCNT, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %109, i32 %110, i32 %111)
  br label %115

113:                                              ; preds = %2
  %114 = load i32, i32* @EINVAL, align 4
  store i32 %114, i32* %3, align 4
  br label %166

115:                                              ; preds = %75, %37
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %118 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %116, %119
  %121 = sdiv i32 %120, 1000
  %122 = sdiv i32 %121, 1000000
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @MAX(i32 255, i32 %124)
  %126 = call i32 @MIN(i32 1, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %128 = load i32, i32* @SMBSDASU, align 4
  %129 = load i32, i32* %11, align 4
  %130 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %127, i32 %128, i32 %129)
  %131 = load i32, i32* %12, align 4
  %132 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %133 = getelementptr inbounds %struct.jzsmb_softc, %struct.jzsmb_softc* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = mul nsw i32 %131, %134
  %136 = sdiv i32 %135, 1000
  %137 = sdiv i32 %136, 1000000
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %12, align 4
  %140 = call i32 @MAX(i32 255, i32 %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp sge i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %115
  %144 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %145 = load i32, i32* @SMBSDAHD, align 4
  %146 = load i32, i32* %12, align 4
  %147 = load i32, i32* @SMBSDAHD_HDENB, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %144, i32 %145, i32 %148)
  br label %154

150:                                              ; preds = %115
  %151 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %152 = load i32, i32* @SMBSDAHD, align 4
  %153 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %151, i32 %152, i32 0)
  br label %154

154:                                              ; preds = %150, %143
  %155 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %156 = load i32, i32* @SMBTAR, align 4
  %157 = load i32, i32* %5, align 4
  %158 = ashr i32 %157, 1
  %159 = call i32 @SMB_WRITE(%struct.jzsmb_softc* %155, i32 %156, i32 %158)
  %160 = load i32, i32* %5, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %154
  %163 = load %struct.jzsmb_softc*, %struct.jzsmb_softc** %6, align 8
  %164 = call i32 @jzsmb_enable(%struct.jzsmb_softc* %163, i32 1)
  br label %165

165:                                              ; preds = %162, %154
  store i32 0, i32* %3, align 4
  br label %166

166:                                              ; preds = %165, %113
  %167 = load i32, i32* %3, align 4
  ret i32 %167
}

declare dso_local %struct.jzsmb_softc* @device_get_softc(i32) #1

declare dso_local i32 @SMB_ASSERT_LOCKED(%struct.jzsmb_softc*) #1

declare dso_local i32 @jzsmb_enable(%struct.jzsmb_softc*, i32) #1

declare dso_local i32 @SMB_WRITE(%struct.jzsmb_softc*, i32, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
