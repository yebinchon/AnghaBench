; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_waitfor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_waitfor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i64, i32, i32, i32, i32 }

@IRQUNK = common dso_local global i64 0, align 8
@TPM_STS_DATA_AVAIL = common dso_local global i32 0, align 4
@TPM_INTF_DATA_AVAIL_INT = common dso_local global i32 0, align 4
@TPM_DATA_AVAIL_INT = common dso_local global i32 0, align 4
@TPM_STS_VALID = common dso_local global i32 0, align 4
@TPM_INTF_STS_VALID_INT = common dso_local global i32 0, align 4
@TPM_STS_VALID_INT = common dso_local global i32 0, align 4
@TPM_STS = common dso_local global i32 0, align 4
@TPM_STS_RESP_RETRY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@TPM_STS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_waitfor(%struct.tpm_softc* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tpm_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %14 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %15 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IRQUNK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %73

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @TPM_STS_DATA_AVAIL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %27 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TPM_INTF_DATA_AVAIL_INT, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = load i32, i32* @TPM_DATA_AVAIL_INT, align 4
  %38 = call i32 @tpm_waitfor_int(%struct.tpm_softc* %33, i32 %34, i32 %35, i8* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  br label %139

39:                                               ; preds = %25, %19
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @TPM_STS_VALID, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %68

44:                                               ; preds = %39
  %45 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %46 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @TPM_INTF_STS_VALID_INT, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %44
  %52 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* @TPM_STS_VALID_INT, align 4
  %57 = call i32 @tpm_waitfor_int(%struct.tpm_softc* %52, i32 %53, i32 %54, i8* %55, i32 %56)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* %13, align 4
  store i32 %61, i32* %5, align 4
  br label %139

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TPM_STS_VALID, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %63, %65
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %44, %39
  %69 = load i32, i32* %10, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* %5, align 4
  br label %139

72:                                               ; preds = %68
  br label %73

73:                                               ; preds = %72, %4
  store i32 3, i32* %11, align 4
  br label %74

74:                                               ; preds = %126, %73
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %10, align 4
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @TPM_STS_VALID, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = load i32, i32* @TPM_STS_VALID, align 4
  store i32 %81, i32* %10, align 4
  br label %82

82:                                               ; preds = %80, %74
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @tpm_tmotohz(i32 %83)
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %102, %82
  %86 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i8*, i8** %9, align 8
  %90 = call i32 @tpm_waitfor_poll(%struct.tpm_softc* %86, i32 %87, i32 %88, i8* %89)
  store i32 %90, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %5, align 4
  br label %139

94:                                               ; preds = %85
  %95 = load i32, i32* %10, align 4
  %96 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %97 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %95, %98
  %100 = load i32, i32* @TPM_STS_VALID, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* @TPM_STS_VALID, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %85

109:                                              ; preds = %94
  %110 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %111 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = and i32 %112, %113
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %114, %115
  br i1 %116, label %117, label %138

117:                                              ; preds = %109
  %118 = load i32, i32* %11, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %11, align 4
  %120 = icmp ne i32 %118, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @TPM_STS_VALID, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %121
  %127 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %128 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.tpm_softc*, %struct.tpm_softc** %6, align 8
  %131 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @TPM_STS, align 4
  %134 = load i32, i32* @TPM_STS_RESP_RETRY, align 4
  %135 = call i32 @bus_space_write_1(i32 %129, i32 %132, i32 %133, i32 %134)
  br label %74

136:                                              ; preds = %121, %117
  %137 = load i32, i32* @EIO, align 4
  store i32 %137, i32* %5, align 4
  br label %139

138:                                              ; preds = %109
  store i32 0, i32* %5, align 4
  br label %139

139:                                              ; preds = %138, %136, %92, %71, %60, %32
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i32 @tpm_waitfor_int(%struct.tpm_softc*, i32, i32, i8*, i32) #1

declare dso_local i32 @tpm_tmotohz(i32) #1

declare dso_local i32 @tpm_waitfor_poll(%struct.tpm_softc*, i32, i32, i8*) #1

declare dso_local i32 @bus_space_write_1(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
