; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8523_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8523_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i32, i32, i64, i64 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.csr = type { i32, i32, i32, i32 }
%struct.csr.0 = type { i32, i32, i32, i32 }

@PCF85xx_R_CS1 = common dso_local global i32 0, align 4
@WAITFLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot read RTC control regs\0A\00", align 1
@PCF8523_M_CS3_PM = common dso_local global i32 0, align 4
@PCF8523_B_CS3_PM_NOBAT = common dso_local global i32 0, align 4
@PCF85xx_B_CS1_STOP = common dso_local global i32 0, align 4
@PCF85xx_B_SECOND_OS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WARNING: RTC battery failed; time is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot write CS1 reg\0A\00", align 1
@PCF2127_R_TS_CTL = common dso_local global i32 0, align 4
@PCF2127_B_TSOFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"cannot write timestamp control\0A\00", align 1
@PCF2129_B_CLKOUT_HIGHZ = common dso_local global i32 0, align 4
@PCF8523_R_TMR_CLKOUT = common dso_local global i32 0, align 4
@PCF2129_B_CLKOUT_OTPR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"cannot write CLKOUT control\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"nxpotp\00", align 1
@PCF8523_B_CLKOUT_HIGHZ = common dso_local global i32 0, align 4
@PCF2129_B_CS1_12HR = common dso_local global i32 0, align 4
@PCF2127_R_AGING_OFFSET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"cannot read AGINGOFFSET register\0A\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c"freqadj\00", align 1
@CTLFLAG_RWTUN = common dso_local global i32 0, align 4
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_MPSAFE = common dso_local global i32 0, align 4
@freqadj_sysctl = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"Frequency adjust in PPM, range [-7,+8]\00", align 1
@PCF8523_B_CS1_12HR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxprtc_softc*)* @pcf8523_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8523_start(%struct.nxprtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxprtc_softc*, align 8
  %4 = alloca %struct.sysctl_ctx_list*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  %6 = alloca %struct.csr, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nxprtc_softc* %0, %struct.nxprtc_softc** %3, align 8
  %10 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PCF85xx_R_CS1, align 4
  %14 = bitcast %struct.csr* %6 to %struct.csr.0*
  %15 = load i32, i32* @WAITFLAGS, align 4
  %16 = call i32 @nxprtc_readfrom(i32 %12, i32 %13, %struct.csr.0* %14, i32 16, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %2, align 4
  br label %184

24:                                               ; preds = %1
  %25 = getelementptr inbounds %struct.csr, %struct.csr* %6, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PCF8523_M_CS3_PM, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @PCF8523_B_CS3_PM_NOBAT, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.csr, %struct.csr* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @PCF85xx_B_CS1_STOP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.csr, %struct.csr* %6, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PCF85xx_B_SECOND_OS, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %120

43:                                               ; preds = %37, %31, %24
  %44 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %49 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %105

52:                                               ; preds = %43
  %53 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %54 = load i32, i32* @PCF85xx_R_CS1, align 4
  %55 = call i32 @write_reg(%struct.nxprtc_softc* %53, i32 %54, i32 0)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %60 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %184

64:                                               ; preds = %52
  %65 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %66 = load i32, i32* @PCF2127_R_TS_CTL, align 4
  %67 = load i32, i32* @PCF2127_B_TSOFF, align 4
  %68 = call i32 @write_reg(%struct.nxprtc_softc* %65, i32 %66, i32 %67)
  store i32 %68, i32* %7, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %64
  %72 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %73 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @device_printf(i32 %74, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %2, align 4
  br label %184

77:                                               ; preds = %64
  %78 = load i32, i32* @PCF2129_B_CLKOUT_HIGHZ, align 4
  store i32 %78, i32* %8, align 4
  %79 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %80 = load i32, i32* @PCF8523_R_TMR_CLKOUT, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @write_reg(%struct.nxprtc_softc* %79, i32 %80, i32 %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %87 = load i32, i32* @PCF8523_R_TMR_CLKOUT, align 4
  %88 = load i32, i32* %8, align 4
  %89 = load i32, i32* @PCF2129_B_CLKOUT_OTPR, align 4
  %90 = or i32 %88, %89
  %91 = call i32 @write_reg(%struct.nxprtc_softc* %86, i32 %87, i32 %90)
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %85, %77
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %97 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @device_printf(i32 %98, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %2, align 4
  br label %184

101:                                              ; preds = %92
  %102 = call i32 @mstosbt(i32 100)
  %103 = call i32 @mstosbt(i32 10)
  %104 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %102, i32 %103, i32 0)
  br label %107

105:                                              ; preds = %43
  %106 = load i32, i32* @PCF8523_B_CLKOUT_HIGHZ, align 4
  store i32 %106, i32* %8, align 4
  br label %107

107:                                              ; preds = %105, %101
  %108 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %109 = load i32, i32* @PCF8523_R_TMR_CLKOUT, align 4
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @write_reg(%struct.nxprtc_softc* %108, i32 %109, i32 %110)
  store i32 %111, i32* %7, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %115 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @device_printf(i32 %116, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %2, align 4
  br label %184

119:                                              ; preds = %107
  br label %120

120:                                              ; preds = %119, %37
  %121 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %122 = call i32 @pcf8523_battery_check(%struct.nxprtc_softc* %121)
  %123 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %124 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %173

127:                                              ; preds = %120
  %128 = getelementptr inbounds %struct.csr, %struct.csr* %6, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @PCF2129_B_CS1_12HR, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %127
  %134 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %135 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %134, i32 0, i32 0
  store i32 1, i32* %135, align 8
  br label %136

136:                                              ; preds = %133, %127
  %137 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %138 = load i32, i32* @PCF2127_R_AGING_OFFSET, align 4
  %139 = call i32 @read_reg(%struct.nxprtc_softc* %137, i32 %138, i32* %9)
  store i32 %139, i32* %7, align 4
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %136
  %143 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %144 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @device_printf(i32 %145, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %184

148:                                              ; preds = %136
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %152 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %151, i32 0, i32 2
  store i64 %150, i64* %152, align 8
  %153 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %154 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %155)
  store %struct.sysctl_ctx_list* %156, %struct.sysctl_ctx_list** %4, align 8
  %157 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %158 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @device_get_sysctl_tree(i32 %159)
  %161 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %160)
  store %struct.sysctl_oid_list* %161, %struct.sysctl_oid_list** %5, align 8
  %162 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %4, align 8
  %163 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %164 = load i32, i32* @OID_AUTO, align 4
  %165 = load i32, i32* @CTLFLAG_RWTUN, align 4
  %166 = load i32, i32* @CTLTYPE_INT, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @CTLFLAG_MPSAFE, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %171 = load i32, i32* @freqadj_sysctl, align 4
  %172 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %162, %struct.sysctl_oid_list* %163, i32 %164, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i32 %169, %struct.nxprtc_softc* %170, i32 0, i32 %171, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i64 0, i64 0))
  br label %183

173:                                              ; preds = %120
  %174 = getelementptr inbounds %struct.csr, %struct.csr* %6, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @PCF8523_B_CS1_12HR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %182

179:                                              ; preds = %173
  %180 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %181 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %180, i32 0, i32 0
  store i32 1, i32* %181, align 8
  br label %182

182:                                              ; preds = %179, %173
  br label %183

183:                                              ; preds = %182, %148
  store i32 0, i32* %2, align 4
  br label %184

184:                                              ; preds = %183, %142, %113, %95, %71, %58, %18
  %185 = load i32, i32* %2, align 4
  ret i32 %185
}

declare dso_local i32 @nxprtc_readfrom(i32, i32, %struct.csr.0*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @write_reg(%struct.nxprtc_softc*, i32, i32) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @mstosbt(i32) #1

declare dso_local i32 @pcf8523_battery_check(%struct.nxprtc_softc*) #1

declare dso_local i32 @read_reg(%struct.nxprtc_softc*, i32, i32*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.nxprtc_softc*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
