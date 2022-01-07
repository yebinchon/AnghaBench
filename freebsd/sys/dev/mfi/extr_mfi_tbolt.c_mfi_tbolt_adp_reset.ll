; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_adp_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mfi/extr_mfi_tbolt.c_mfi_tbolt_adp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mfi_softc = type { i32 }

@MFI_WSR = common dso_local global i32 0, align 4
@MFI_HDR = common dso_local global i32 0, align 4
@DIAG_WRITE_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"ADP_RESET_TBOLT: retry time=%d, hostdiag=%#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"ADP_RESET_TBOLT: HostDiag=%#x\0A\00", align 1
@DIAG_RESET_ADAPTER = common dso_local global i32 0, align 4
@MFI_RSR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mfi_tbolt_adp_reset(%struct.mfi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mfi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mfi_softc* %0, %struct.mfi_softc** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %8 = load i32, i32* @MFI_WSR, align 4
  %9 = call i32 @MFI_WRITE4(%struct.mfi_softc* %7, i32 %8, i32 15)
  %10 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %11 = load i32, i32* @MFI_WSR, align 4
  %12 = call i32 @MFI_WRITE4(%struct.mfi_softc* %10, i32 %11, i32 4)
  %13 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %14 = load i32, i32* @MFI_WSR, align 4
  %15 = call i32 @MFI_WRITE4(%struct.mfi_softc* %13, i32 %14, i32 11)
  %16 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %17 = load i32, i32* @MFI_WSR, align 4
  %18 = call i32 @MFI_WRITE4(%struct.mfi_softc* %16, i32 %17, i32 2)
  %19 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %20 = load i32, i32* @MFI_WSR, align 4
  %21 = call i32 @MFI_WRITE4(%struct.mfi_softc* %19, i32 %20, i32 7)
  %22 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %23 = load i32, i32* @MFI_WSR, align 4
  %24 = call i32 @MFI_WRITE4(%struct.mfi_softc* %22, i32 %23, i32 13)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %29, %1
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 10000
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %25

32:                                               ; preds = %25
  %33 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %34 = load i32, i32* @MFI_HDR, align 4
  %35 = call i64 @MFI_READ4(%struct.mfi_softc* %33, i32 %34)
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %66, %32
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DIAG_WRITE_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %67

43:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %44

44:                                               ; preds = %48, %43
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 1000
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %44

51:                                               ; preds = %44
  %52 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %53 = load i32, i32* @MFI_HDR, align 4
  %54 = call i64 @MFI_READ4(%struct.mfi_softc* %52, i32 %53)
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  %56 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %57 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %4, align 4
  %64 = icmp sge i32 %62, 100
  br i1 %64, label %65, label %66

65:                                               ; preds = %51
  store i32 1, i32* %2, align 4
  br label %129

66:                                               ; preds = %51
  br label %37

67:                                               ; preds = %37
  %68 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %69 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %6, align 4
  %72 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %74 = load i32, i32* @MFI_HDR, align 4
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @DIAG_RESET_ADAPTER, align 4
  %77 = or i32 %75, %76
  %78 = call i32 @MFI_WRITE4(%struct.mfi_softc* %73, i32 %74, i32 %77)
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %91, %67
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 10
  br i1 %81, label %82, label %94

82:                                               ; preds = %79
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %87, %82
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 10000
  br i1 %85, label %86, label %90

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %83

90:                                               ; preds = %83
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %5, align 4
  br label %79

94:                                               ; preds = %79
  %95 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %96 = load i32, i32* @MFI_RSR, align 4
  %97 = call i64 @MFI_READ4(%struct.mfi_softc* %95, i32 %96)
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %127, %94
  %100 = load i32, i32* %6, align 4
  %101 = load i32, i32* @DIAG_RESET_ADAPTER, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %128

104:                                              ; preds = %99
  store i32 0, i32* %5, align 4
  br label %105

105:                                              ; preds = %109, %104
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 1000
  br i1 %107, label %108, label %112

108:                                              ; preds = %105
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %105

112:                                              ; preds = %105
  %113 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %114 = load i32, i32* @MFI_RSR, align 4
  %115 = call i64 @MFI_READ4(%struct.mfi_softc* %113, i32 %114)
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %6, align 4
  %117 = load %struct.mfi_softc*, %struct.mfi_softc** %3, align 8
  %118 = getelementptr inbounds %struct.mfi_softc, %struct.mfi_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %4, align 4
  %121 = load i32, i32* %6, align 4
  %122 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load i32, i32* %4, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %4, align 4
  %125 = icmp sge i32 %123, 1000
  br i1 %125, label %126, label %127

126:                                              ; preds = %112
  store i32 1, i32* %2, align 4
  br label %129

127:                                              ; preds = %112
  br label %99

128:                                              ; preds = %99
  store i32 0, i32* %2, align 4
  br label %129

129:                                              ; preds = %128, %126, %65
  %130 = load i32, i32* %2, align 4
  ret i32 %130
}

declare dso_local i32 @MFI_WRITE4(%struct.mfi_softc*, i32, i32) #1

declare dso_local i64 @MFI_READ4(%struct.mfi_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
