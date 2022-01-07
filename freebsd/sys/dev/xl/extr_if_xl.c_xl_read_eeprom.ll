; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32 }

@XL_FLAG_EEPROM_OFFSET_30 = common dso_local global i32 0, align 4
@XL_FLAG_8BITROM = common dso_local global i32 0, align 4
@XL_W0_EE_CMD = common dso_local global i32 0, align 4
@XL_EE_8BIT_READ = common dso_local global i32 0, align 4
@XL_EE_READ = common dso_local global i32 0, align 4
@XL_W0_EE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xl_softc*, i64, i32, i32, i32)* @xl_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_read_eeprom(%struct.xl_softc* %0, i64 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xl_softc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.xl_softc* %0, %struct.xl_softc** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %16 = call i32 @XL_SEL_WIN(i32 0)
  %17 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %18 = call i32 @xl_eeprom_wait(%struct.xl_softc* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %103

21:                                               ; preds = %5
  %22 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %23 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @XL_FLAG_EEPROM_OFFSET_30, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, 48
  store i32 %30, i32* %9, align 4
  br label %31

31:                                               ; preds = %28, %21
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %95, %31
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %98

36:                                               ; preds = %32
  %37 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %38 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @XL_FLAG_8BITROM, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %45 = load i32, i32* @XL_W0_EE_CMD, align 4
  %46 = load i32, i32* @XL_EE_8BIT_READ, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %13, align 4
  %49 = add nsw i32 %47, %48
  %50 = and i32 %49, 63
  %51 = or i32 %46, %50
  %52 = call i32 @CSR_WRITE_2(%struct.xl_softc* %44, i32 %45, i32 %51)
  br label %69

53:                                               ; preds = %36
  %54 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %55 = load i32, i32* @XL_W0_EE_CMD, align 4
  %56 = load i32, i32* @XL_EE_READ, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %13, align 4
  %59 = add nsw i32 %57, %58
  %60 = shl i32 %59, 2
  %61 = and i32 %60, 32512
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %62, %63
  %65 = and i32 %64, 63
  %66 = or i32 %61, %65
  %67 = or i32 %56, %66
  %68 = call i32 @CSR_WRITE_2(%struct.xl_softc* %54, i32 %55, i32 %67)
  br label %69

69:                                               ; preds = %53, %43
  %70 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %71 = call i32 @xl_eeprom_wait(%struct.xl_softc* %70)
  store i32 %71, i32* %12, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %98

75:                                               ; preds = %69
  %76 = load %struct.xl_softc*, %struct.xl_softc** %7, align 8
  %77 = load i32, i32* @XL_W0_EE_DATA, align 4
  %78 = call i32 @CSR_READ_2(%struct.xl_softc* %76, i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i64, i64* %8, align 8
  %80 = load i32, i32* %13, align 4
  %81 = mul nsw i32 %80, 2
  %82 = sext i32 %81 to i64
  %83 = add nsw i64 %79, %82
  %84 = inttoptr i64 %83 to i32*
  store i32* %84, i32** %15, align 8
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %75
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @ntohs(i32 %88)
  %90 = load i32*, i32** %15, align 8
  store i32 %89, i32* %90, align 4
  br label %94

91:                                               ; preds = %75
  %92 = load i32, i32* %14, align 4
  %93 = load i32*, i32** %15, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %32

98:                                               ; preds = %74, %32
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 1, i32 0
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %98, %20
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i32 @XL_SEL_WIN(i32) #1

declare dso_local i32 @xl_eeprom_wait(%struct.xl_softc*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.xl_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_2(%struct.xl_softc*, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
