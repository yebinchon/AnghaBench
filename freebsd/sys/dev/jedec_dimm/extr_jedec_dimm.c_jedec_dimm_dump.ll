; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jedec_dimm/extr_jedec_dimm.c_jedec_dimm_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jedec_dimm_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"unable to read page0:0x%02x: %d\0A\00", align 1
@DRAM_TYPE_DDR4_SDRAM = common dso_local global i32 0, align 4
@JEDEC_DTI_PAGE = common dso_local global i32 0, align 4
@JEDEC_LSA_PAGE_SET1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"unable to change page: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to read page1:0x%02x: %d\0A\00", align 1
@JEDEC_LSA_PAGE_SET0 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"unable to restore page: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jedec_dimm_softc*, i32)* @jedec_dimm_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jedec_dimm_dump(%struct.jedec_dimm_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.jedec_dimm_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [512 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.jedec_dimm_softc* %0, %struct.jedec_dimm_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %35, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %15 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %18 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %22
  %24 = call i32 @smbus_readb(i32 %16, i32 %19, i32 %20, i32* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %29 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %96

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %5, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @DRAM_TYPE_DDR4_SDRAM, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %89

42:                                               ; preds = %38
  store i32 1, i32* %7, align 4
  %43 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %44 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @JEDEC_DTI_PAGE, align 4
  %47 = load i32, i32* @JEDEC_LSA_PAGE_SET1, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @smbus_writeb(i32 %45, i32 %48, i32 0, i32 0)
  store i32 %49, i32* %6, align 4
  %50 = load i32, i32* %6, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %42
  %53 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %54 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  br label %58

58:                                               ; preds = %52, %42
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %85, %58
  %60 = load i32, i32* %5, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %88

62:                                               ; preds = %59
  %63 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %64 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %67 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 256, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 %72
  %74 = call i32 @smbus_readb(i32 %65, i32 %68, i32 %69, i32* %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %62
  %78 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %79 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %81, i32 %82)
  br label %96

84:                                               ; preds = %62
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %59

88:                                               ; preds = %59
  br label %89

89:                                               ; preds = %88, %38
  %90 = getelementptr inbounds [512 x i32], [512 x i32]* %8, i64 0, i64 0
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i32 512, i32 256
  %95 = call i32 @hexdump(i32* %90, i32 %94, i32* null, i32 0)
  br label %96

96:                                               ; preds = %89, %77, %27
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %96
  %100 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %101 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @JEDEC_DTI_PAGE, align 4
  %104 = load i32, i32* @JEDEC_LSA_PAGE_SET0, align 4
  %105 = or i32 %103, %104
  %106 = call i32 @smbus_writeb(i32 %102, i32 %105, i32 0, i32 0)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %99
  %110 = load %struct.jedec_dimm_softc*, %struct.jedec_dimm_softc** %3, align 8
  %111 = getelementptr inbounds %struct.jedec_dimm_softc, %struct.jedec_dimm_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %113)
  br label %115

115:                                              ; preds = %109, %99
  br label %116

116:                                              ; preds = %115, %96
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @smbus_readb(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @smbus_writeb(i32, i32, i32, i32) #1

declare dso_local i32 @hexdump(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
