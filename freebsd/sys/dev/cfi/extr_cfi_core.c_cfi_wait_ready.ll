; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_wait_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i64*, i64*, i32, i32*, i32* }

@CFI_INTEL_STATUS_WSMS = common dso_local global i32 0, align 4
@CFI_INTEL_XSTATUS_RSVD = common dso_local global i32 0, align 4
@CFI_INTEL_STATUS_RSVD = common dso_local global i32 0, align 4
@CFI_INTEL_STATUS_DPS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CFI_INTEL_STATUS_PSLBS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CFI_INTEL_STATUS_ECLBS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"\0Aerror=%d (st 0x%x st0 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfi_softc*, i32, i64, i32)* @cfi_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfi_wait_ready(%struct.cfi_softc* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.cfi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.cfi_softc* %0, %struct.cfi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %140, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %141

24:                                               ; preds = %22
  %25 = call i64 (...) @sbinuptime()
  store i64 %25, i64* %14, align 8
  %26 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %27 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %91 [
    i32 129, label %29
    i32 128, label %29
    i32 130, label %77
    i32 131, label %77
  ]

29:                                               ; preds = %24, %24
  %30 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @cfi_read(%struct.cfi_softc* %30, i32 %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @CFI_INTEL_STATUS_WSMS, align 4
  %35 = and i32 %33, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %29
  %39 = load i32, i32* @CFI_INTEL_XSTATUS_RSVD, align 4
  %40 = load i32, i32* @CFI_INTEL_STATUS_WSMS, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CFI_INTEL_STATUS_RSVD, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %13, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @CFI_INTEL_STATUS_DPS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @EPERM, align 4
  store i32 %52, i32* %10, align 4
  br label %75

53:                                               ; preds = %38
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @CFI_INTEL_STATUS_PSLBS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @EIO, align 4
  store i32 %59, i32* %10, align 4
  br label %74

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @CFI_INTEL_STATUS_ECLBS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %10, align 4
  br label %73

67:                                               ; preds = %60
  %68 = load i32, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %67
  %71 = load i32, i32* @EACCES, align 4
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %70, %67
  br label %73

73:                                               ; preds = %72, %65
  br label %74

74:                                               ; preds = %73, %58
  br label %75

75:                                               ; preds = %74, %51
  br label %76

76:                                               ; preds = %75, %29
  br label %91

77:                                               ; preds = %24, %24
  %78 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @cfi_read(%struct.cfi_softc* %78, i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @cfi_read(%struct.cfi_softc* %81, i32 %82)
  store i32 %83, i32* %13, align 4
  %84 = load i32, i32* %13, align 4
  %85 = and i32 %84, 64
  %86 = load i32, i32* %12, align 4
  %87 = and i32 %86, 64
  %88 = icmp eq i32 %85, %87
  %89 = zext i1 %88 to i64
  %90 = select i1 %88, i32 1, i32 0
  store i32 %90, i32* %9, align 4
  br label %91

91:                                               ; preds = %24, %77, %76
  %92 = load i32, i32* %11, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %106, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* %14, align 8
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %98 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %97, i32 0, i32 1
  %99 = load i64*, i64** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i64, i64* %99, i64 %101
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %96, %103
  %105 = icmp sgt i64 %95, %104
  br i1 %105, label %106, label %140

106:                                              ; preds = %94, %91
  %107 = load i32, i32* %11, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %118, label %109

109:                                              ; preds = %106
  store i32 1, i32* %11, align 4
  %110 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %111 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %110, i32 0, i32 5
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %109, %106
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %122 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %121, i32 0, i32 2
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %120, %127
  %129 = icmp sgt i64 %119, %128
  br i1 %129, label %130, label %139

130:                                              ; preds = %118
  %131 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %132 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %130, %118
  br label %140

140:                                              ; preds = %139, %94
  br label %15

141:                                              ; preds = %22
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %149, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %10, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %148, i32* %10, align 4
  br label %149

149:                                              ; preds = %147, %144, %141
  %150 = load i32, i32* %10, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %149
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* %12, align 4
  %156 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %153, i32 %154, i32 %155)
  br label %157

157:                                              ; preds = %152, %149
  %158 = load i32, i32* %10, align 4
  ret i32 %158
}

declare dso_local i64 @sbinuptime(...) #1

declare dso_local i32 @cfi_read(%struct.cfi_softc*, i32) #1

declare dso_local i32 @printf(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
