; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_ape_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, i32, i32 }

@BGE_MFW_ON_APE = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5761 = common dso_local global i64 0, align 8
@BGE_APE_LOCK_REQ = common dso_local global i32 0, align 4
@BGE_APE_LOCK_GRANT = common dso_local global i32 0, align 4
@BGE_APE_PER_LOCK_REQ = common dso_local global i32 0, align 4
@BGE_APE_PER_LOCK_GRANT = common dso_local global i32 0, align 4
@BGE_APE_LOCK_REQ_DRIVER0 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"APE lock %d request failed! request = 0x%04x[0x%04x], status = 0x%04x[0x%04x]\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bge_softc*, i32)* @bge_ape_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bge_ape_lock(%struct.bge_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bge_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @BGE_MFW_ON_APE, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %138

19:                                               ; preds = %2
  %20 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BGE_ASICREV_BCM5761, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* @BGE_APE_LOCK_REQ, align 4
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* @BGE_APE_LOCK_GRANT, align 4
  store i32 %27, i32* %7, align 4
  br label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @BGE_APE_PER_LOCK_REQ, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* @BGE_APE_PER_LOCK_GRANT, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %28, %25
  %32 = load i32, i32* %5, align 4
  %33 = mul nsw i32 4, %32
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %83 [
    i32 134, label %35
    i32 133, label %55
    i32 132, label %68
    i32 131, label %81
    i32 130, label %81
    i32 129, label %81
    i32 128, label %81
  ]

35:                                               ; preds = %31
  %36 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @BGE_ASICREV_BCM5761, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 0, i32* %3, align 4
  br label %138

42:                                               ; preds = %35
  %43 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %44 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* @BGE_APE_LOCK_REQ_DRIVER0, align 4
  store i32 %48, i32* %6, align 4
  br label %54

49:                                               ; preds = %42
  %50 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %51 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 1, %52
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %49, %47
  br label %85

55:                                               ; preds = %31
  %56 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %57 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %55
  %61 = load i32, i32* @BGE_APE_LOCK_REQ_DRIVER0, align 4
  store i32 %61, i32* %6, align 4
  br label %67

62:                                               ; preds = %55
  %63 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %64 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 1, %65
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %62, %60
  br label %85

68:                                               ; preds = %31
  %69 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %70 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @BGE_APE_LOCK_REQ_DRIVER0, align 4
  store i32 %74, i32* %6, align 4
  br label %80

75:                                               ; preds = %68
  %76 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = shl i32 1, %78
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %73
  br label %85

81:                                               ; preds = %31, %31, %31, %31
  %82 = load i32, i32* @BGE_APE_LOCK_REQ_DRIVER0, align 4
  store i32 %82, i32* %6, align 4
  br label %85

83:                                               ; preds = %31
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %3, align 4
  br label %138

85:                                               ; preds = %81, %80, %67, %54
  %86 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @APE_WRITE_4(%struct.bge_softc* %86, i32 %89, i32 %90)
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %107, %85
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %93, 20000
  br i1 %94, label %95, label %110

95:                                               ; preds = %92
  %96 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %11, align 4
  %99 = add nsw i32 %97, %98
  %100 = call i32 @APE_READ_4(%struct.bge_softc* %96, i32 %99)
  store i32 %100, i32* %9, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %6, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %95
  br label %110

105:                                              ; preds = %95
  %106 = call i32 @DELAY(i32 50)
  br label %107

107:                                              ; preds = %105
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  br label %92

110:                                              ; preds = %104, %92
  %111 = load i32, i32* %9, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %111, %112
  br i1 %113, label %114, label %137

114:                                              ; preds = %110
  %115 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %116 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %11, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* %6, align 4
  %123 = and i32 %122, 65535
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %124, %125
  %127 = load i32, i32* %9, align 4
  %128 = and i32 %127, 65535
  %129 = call i32 @device_printf(i32 %117, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %118, i32 %121, i32 %123, i32 %126, i32 %128)
  %130 = load %struct.bge_softc*, %struct.bge_softc** %4, align 8
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* %11, align 4
  %133 = add nsw i32 %131, %132
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @APE_WRITE_4(%struct.bge_softc* %130, i32 %133, i32 %134)
  %136 = load i32, i32* @EBUSY, align 4
  store i32 %136, i32* %3, align 4
  br label %138

137:                                              ; preds = %110
  store i32 0, i32* %3, align 4
  br label %138

138:                                              ; preds = %137, %114, %83, %41, %18
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local i32 @APE_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @APE_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
