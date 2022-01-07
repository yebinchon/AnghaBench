; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_eeprom_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_eeprom_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32 }

@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@JME_EEPROM_SIG0 = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@JME_EEPROM_SIG1 = common dso_local global i64 0, align 8
@JME_EEPROM_FUNC0 = common dso_local global i32 0, align 4
@JME_EEPROM_PAGE_BAR1 = common dso_local global i32 0, align 4
@JME_EEPROM_FUNC_MASK = common dso_local global i64 0, align 8
@JME_EEPROM_PAGE_MASK = common dso_local global i64 0, align 8
@JME_PAR0 = common dso_local global i64 0, align 8
@JME_EEPROM_DESC_END = common dso_local global i64 0, align 8
@JME_EEPROM_DESC_BYTES = common dso_local global i64 0, align 8
@JME_EEPROM_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_softc*)* @jme_eeprom_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_eeprom_macaddr(%struct.jme_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %3, align 8
  %12 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %4, align 8
  %15 = alloca i64, i64 %13, align 16
  store i64 %13, i64* %5, align 8
  store i64 0, i64* %9, align 8
  %16 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %9, align 8
  %19 = call i64 @jme_eeprom_read_byte(%struct.jme_softc* %16, i64 %17, i64* %6)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %1
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @JME_EEPROM_SIG0, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %21, %1
  %26 = load i32, i32* @ENOENT, align 4
  store i32 %26, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

27:                                               ; preds = %21
  %28 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %9, align 8
  %31 = call i64 @jme_eeprom_read_byte(%struct.jme_softc* %28, i64 %29, i64* %6)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @JME_EEPROM_SIG1, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33, %27
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

39:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  br label %40

40:                                               ; preds = %109, %39
  %41 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call i64 @jme_eeprom_read_byte(%struct.jme_softc* %41, i64 %42, i64* %6)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  br label %111

46:                                               ; preds = %40
  %47 = load i32, i32* @JME_EEPROM_FUNC0, align 4
  %48 = load i32, i32* @JME_EEPROM_PAGE_BAR1, align 4
  %49 = call i64 @JME_EEPROM_MKDESC(i32 %47, i32 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* @JME_EEPROM_FUNC_MASK, align 8
  %52 = load i64, i64* @JME_EEPROM_PAGE_MASK, align 8
  %53 = or i64 %51, %52
  %54 = and i64 %50, %53
  %55 = icmp eq i64 %49, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %46
  %57 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add nsw i64 %58, 1
  %60 = call i64 @jme_eeprom_read_byte(%struct.jme_softc* %57, i64 %59, i64* %7)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  br label %111

63:                                               ; preds = %56
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @JME_PAR0, align 8
  %66 = icmp sge i64 %64, %65
  br i1 %66, label %67, label %89

67:                                               ; preds = %63
  %68 = load i64, i64* %7, align 8
  %69 = load i64, i64* @JME_PAR0, align 8
  %70 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %69, %71
  %73 = icmp slt i64 %68, %72
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %76 = load i64, i64* %9, align 8
  %77 = add nsw i64 %76, 2
  %78 = call i64 @jme_eeprom_read_byte(%struct.jme_softc* %75, i64 %77, i64* %8)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  br label %111

81:                                               ; preds = %74
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* @JME_PAR0, align 8
  %85 = sub nsw i64 %83, %84
  %86 = getelementptr inbounds i64, i64* %15, i64 %85
  store i64 %82, i64* %86, align 8
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %81, %67, %63
  br label %90

90:                                               ; preds = %89, %46
  %91 = load i64, i64* %6, align 8
  %92 = load i64, i64* @JME_EEPROM_DESC_END, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* @JME_EEPROM_DESC_END, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  br label %111

97:                                               ; preds = %90
  %98 = load i64, i64* @JME_EEPROM_DESC_BYTES, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add nsw i64 %99, %98
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %97
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %104 = icmp ne i32 %102, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load i64, i64* %9, align 8
  %107 = load i64, i64* @JME_EEPROM_END, align 8
  %108 = icmp slt i64 %106, %107
  br label %109

109:                                              ; preds = %105, %101
  %110 = phi i1 [ false, %101 ], [ %108, %105 ]
  br i1 %110, label %40, label %111

111:                                              ; preds = %109, %96, %80, %62, %45
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %111
  %116 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %117 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %120 = call i32 @bcopy(i64* %15, i32 %118, i32 %119)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

121:                                              ; preds = %111
  %122 = load i32, i32* @ENOENT, align 4
  store i32 %122, i32* %2, align 4
  store i32 1, i32* %11, align 4
  br label %123

123:                                              ; preds = %121, %115, %37, %25
  %124 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @jme_eeprom_read_byte(%struct.jme_softc*, i64, i64*) #2

declare dso_local i64 @JME_EEPROM_MKDESC(i32, i32) #2

declare dso_local i32 @bcopy(i64*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
