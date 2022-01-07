; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_valid_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_valid_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exca_softc = type { i32, i32, i32, i32 }

@EXCA_BOGUS = common dso_local global i32 0, align 4
@EXCA_IDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Ident is %x\0A\00", align 1
@EXCA_IDENT_IFTYPE_MASK = common dso_local global i32 0, align 4
@EXCA_IDENT_IFTYPE_MEM_AND_IO = common dso_local global i32 0, align 4
@EXCA_IDENT_ZERO = common dso_local global i32 0, align 4
@EXCA_IDENT_REV_MASK = common dso_local global i32 0, align 4
@EXCA_I82365 = common dso_local global i32 0, align 4
@EXCA_REG_INDEX = common dso_local global i32 0, align 4
@EXCA_VADEM_COOKIE1 = common dso_local global i32 0, align 4
@EXCA_VADEM_COOKIE2 = common dso_local global i32 0, align 4
@EXCA_VADEM_VMISC = common dso_local global i32 0, align 4
@EXCA_VADEM_REV = common dso_local global i32 0, align 4
@EXCA_VG365 = common dso_local global i32 0, align 4
@EXCA_VG465 = common dso_local global i32 0, align 4
@EXCA_VG468 = common dso_local global i32 0, align 4
@EXCA_VG469 = common dso_local global i32 0, align 4
@EXCA_RICOH_ID = common dso_local global i32 0, align 4
@EXCA_RID_396 = common dso_local global i32 0, align 4
@EXCA_RF5C396 = common dso_local global i32 0, align 4
@EXCA_RID_296 = common dso_local global i32 0, align 4
@EXCA_RF5C296 = common dso_local global i32 0, align 4
@EXCA_CIRRUS_CHIP_INFO = common dso_local global i32 0, align 4
@EXCA_CIRRUS_CHIP_INFO_CHIP_ID = common dso_local global i32 0, align 4
@EXCA_CIRRUS_CHIP_INFO_SLOTS = common dso_local global i32 0, align 4
@EXCA_PD6722 = common dso_local global i32 0, align 4
@EXCA_PD6710 = common dso_local global i32 0, align 4
@EXCA_I82365SL_DF = common dso_local global i32 0, align 4
@EXCA_IBM = common dso_local global i32 0, align 4
@EXCA_IBM_KING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exca_softc*)* @exca_valid_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exca_valid_slot(%struct.exca_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exca_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.exca_softc* %0, %struct.exca_softc** %3, align 8
  %5 = load i32, i32* @EXCA_BOGUS, align 4
  %6 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %7 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %9 = load i32, i32* @EXCA_IDENT, align 4
  %10 = call i32 @exca_getb(%struct.exca_softc* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %12 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @DEVPRINTF(i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EXCA_IDENT_IFTYPE_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @EXCA_IDENT_IFTYPE_MEM_AND_IO, align 4
  %20 = icmp ne i32 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %158

22:                                               ; preds = %1
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @EXCA_IDENT_ZERO, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %158

28:                                               ; preds = %22
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @EXCA_IDENT_REV_MASK, align 4
  %31 = and i32 %29, %30
  switch i32 %31, label %156 [
    i32 132, label %32
    i32 131, label %32
    i32 133, label %144
    i32 130, label %148
    i32 129, label %148
    i32 128, label %152
  ]

32:                                               ; preds = %28, %28
  %33 = load i32, i32* @EXCA_I82365, align 4
  %34 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %35 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %37 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %40 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EXCA_REG_INDEX, align 4
  %43 = load i32, i32* @EXCA_VADEM_COOKIE1, align 4
  %44 = call i32 @bus_space_write_1(i32 %38, i32 %41, i32 %42, i32 %43)
  %45 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %46 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %49 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @EXCA_REG_INDEX, align 4
  %52 = load i32, i32* @EXCA_VADEM_COOKIE2, align 4
  %53 = call i32 @bus_space_write_1(i32 %47, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %55 = load i32, i32* @EXCA_VADEM_VMISC, align 4
  %56 = load i32, i32* @EXCA_VADEM_REV, align 4
  %57 = call i32 @exca_setb(%struct.exca_softc* %54, i32 %55, i32 %56)
  %58 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %59 = load i32, i32* @EXCA_IDENT, align 4
  %60 = call i32 @exca_getb(%struct.exca_softc* %58, i32 %59)
  store i32 %60, i32* %4, align 4
  %61 = load i32, i32* %4, align 4
  %62 = and i32 %61, 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %32
  %65 = load i32, i32* %4, align 4
  %66 = and i32 %65, 7
  switch i32 %66, label %79 [
    i32 1, label %67
    i32 2, label %71
    i32 3, label %75
  ]

67:                                               ; preds = %64
  %68 = load i32, i32* @EXCA_VG365, align 4
  %69 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %70 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %83

71:                                               ; preds = %64
  %72 = load i32, i32* @EXCA_VG465, align 4
  %73 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %74 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %83

75:                                               ; preds = %64
  %76 = load i32, i32* @EXCA_VG468, align 4
  %77 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %78 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  br label %83

79:                                               ; preds = %64
  %80 = load i32, i32* @EXCA_VG469, align 4
  %81 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %82 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %79, %75, %71, %67
  %84 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %85 = load i32, i32* @EXCA_VADEM_VMISC, align 4
  %86 = load i32, i32* @EXCA_VADEM_REV, align 4
  %87 = call i32 @exca_clrb(%struct.exca_softc* %84, i32 %85, i32 %86)
  br label %157

88:                                               ; preds = %32
  %89 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %90 = load i32, i32* @EXCA_RICOH_ID, align 4
  %91 = call i32 @exca_getb(%struct.exca_softc* %89, i32 %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @EXCA_RID_396, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %88
  %96 = load i32, i32* @EXCA_RF5C396, align 4
  %97 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %98 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 4
  br label %157

99:                                               ; preds = %88
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @EXCA_RID_296, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %107

103:                                              ; preds = %99
  %104 = load i32, i32* @EXCA_RF5C296, align 4
  %105 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %106 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  br label %157

107:                                              ; preds = %99
  br label %108

108:                                              ; preds = %107
  %109 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %110 = load i32, i32* @EXCA_CIRRUS_CHIP_INFO, align 4
  %111 = call i32 @exca_putb(%struct.exca_softc* %109, i32 %110, i32 0)
  %112 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %113 = load i32, i32* @EXCA_CIRRUS_CHIP_INFO, align 4
  %114 = call i32 @exca_getb(%struct.exca_softc* %112, i32 %113)
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* %4, align 4
  %116 = load i32, i32* @EXCA_CIRRUS_CHIP_INFO_CHIP_ID, align 4
  %117 = and i32 %115, %116
  %118 = load i32, i32* @EXCA_CIRRUS_CHIP_INFO_CHIP_ID, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %143

120:                                              ; preds = %108
  %121 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %122 = load i32, i32* @EXCA_CIRRUS_CHIP_INFO, align 4
  %123 = call i32 @exca_getb(%struct.exca_softc* %121, i32 %122)
  store i32 %123, i32* %4, align 4
  %124 = load i32, i32* %4, align 4
  %125 = load i32, i32* @EXCA_CIRRUS_CHIP_INFO_CHIP_ID, align 4
  %126 = and i32 %124, %125
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %120
  %129 = load i32, i32* %4, align 4
  %130 = load i32, i32* @EXCA_CIRRUS_CHIP_INFO_SLOTS, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @EXCA_PD6722, align 4
  %135 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %136 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 4
  br label %141

137:                                              ; preds = %128
  %138 = load i32, i32* @EXCA_PD6710, align 4
  %139 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %140 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %137, %133
  br label %157

142:                                              ; preds = %120
  br label %143

143:                                              ; preds = %142, %108
  br label %157

144:                                              ; preds = %28
  %145 = load i32, i32* @EXCA_I82365SL_DF, align 4
  %146 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %147 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  br label %157

148:                                              ; preds = %28, %28
  %149 = load i32, i32* @EXCA_IBM, align 4
  %150 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %151 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 4
  br label %157

152:                                              ; preds = %28
  %153 = load i32, i32* @EXCA_IBM_KING, align 4
  %154 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %155 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 4
  br label %157

156:                                              ; preds = %28
  store i32 0, i32* %2, align 4
  br label %158

157:                                              ; preds = %152, %148, %144, %143, %141, %103, %95, %83
  store i32 1, i32* %2, align 4
  br label %158

158:                                              ; preds = %157, %156, %27, %21
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @exca_getb(%struct.exca_softc*, i32) #1

declare dso_local i32 @DEVPRINTF(i32, i8*, i32) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

declare dso_local i32 @exca_setb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @exca_clrb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @exca_putb(%struct.exca_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
