; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_encode_baudrate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/serial/extr_uftdi.c_uftdi_encode_baudrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uftdi_softc = type { i32, i64 }
%struct.uftdi_param_config = type { i32, i8* }

@uftdi_encode_baudrate.encoded_fraction = internal constant [8 x i32] [i32 0, i32 3, i32 2, i32 4, i32 1, i32 5, i32 6, i32 7], align 16
@uftdi_encode_baudrate.roundoff_232a = internal constant [16 x i32] [i32 0, i32 1, i32 0, i32 1, i32 0, i32 -1, i32 2, i32 1, i32 0, i32 -1, i32 -2, i32 -3, i32 4, i32 3, i32 2, i32 1], align 16
@DEVF_BAUDCLK_12M = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@DEVT_232A = common dso_local global i64 0, align 8
@DEVF_BAUDBITS_HINDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uftdi_softc*, i32, %struct.uftdi_param_config*)* @uftdi_encode_baudrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uftdi_encode_baudrate(%struct.uftdi_softc* %0, i32 %1, %struct.uftdi_param_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.uftdi_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.uftdi_param_config*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uftdi_softc* %0, %struct.uftdi_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.uftdi_param_config* %2, %struct.uftdi_param_config** %7, align 8
  %13 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %14 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @DEVF_BAUDCLK_12M, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* %6, align 4
  %21 = icmp sge i32 %20, 1200
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 12000000, i32* %8, align 4
  store i32 131072, i32* %10, align 4
  br label %24

23:                                               ; preds = %19, %3
  store i32 3000000, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %23, %22
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %8, align 4
  %27 = ashr i32 %26, 14
  %28 = icmp slt i32 %25, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29, %24
  %34 = load i32, i32* @ERANGE, align 4
  store i32 %34, i32* %4, align 4
  br label %124

35:                                               ; preds = %29
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 4
  %38 = load i32, i32* %6, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, 15
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, -8
  store i32 %45, i32* %9, align 4
  br label %64

46:                                               ; preds = %35
  %47 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %48 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @DEVT_232A, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 15
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* @uftdi_encode_baudrate.roundoff_232a, i64 0, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %63

60:                                               ; preds = %46
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %60, %52
  br label %64

64:                                               ; preds = %63, %43
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 1
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %8, align 4
  %68 = shl i32 %67, 3
  %69 = load i32, i32* %9, align 4
  %70 = sdiv i32 %68, %69
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @uftdi_baud_within_tolerance(i32 %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %64
  %76 = load i32, i32* @ERANGE, align 4
  store i32 %76, i32* %4, align 4
  br label %124

77:                                               ; preds = %64
  %78 = load i32, i32* %9, align 4
  %79 = and i32 %78, 7
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %9, align 4
  %81 = ashr i32 %80, 3
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %90

84:                                               ; preds = %77
  %85 = load i32, i32* %11, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %9, align 4
  br label %89

88:                                               ; preds = %84
  store i32 0, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %77
  %91 = load i32, i32* %11, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [8 x i32], [8 x i32]* @uftdi_encode_baudrate.encoded_fraction, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 14
  %96 = load i32, i32* %10, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %104 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %103, i32 0, i32 1
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %9, align 4
  %106 = ashr i32 %105, 16
  %107 = sext i32 %106 to i64
  %108 = inttoptr i64 %107 to i8*
  %109 = ptrtoint i8* %108 to i32
  %110 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %111 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load %struct.uftdi_softc*, %struct.uftdi_softc** %5, align 8
  %113 = getelementptr inbounds %struct.uftdi_softc, %struct.uftdi_softc* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @DEVF_BAUDBITS_HINDEX, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %90
  %119 = load %struct.uftdi_param_config*, %struct.uftdi_param_config** %7, align 8
  %120 = getelementptr inbounds %struct.uftdi_param_config, %struct.uftdi_param_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = shl i32 %121, 8
  store i32 %122, i32* %120, align 8
  br label %123

123:                                              ; preds = %118, %90
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %75, %33
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @uftdi_baud_within_tolerance(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
