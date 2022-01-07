; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_waitfor_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tpm/extr_tpm.c_tpm_waitfor_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tpm_softc = type { i32, i32, i32 }

@TPM_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@TPM_GLOBAL_INT_ENABLE = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tpm_intr\00", align 1
@TPM_STS_BITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tpm_waitfor_int(%struct.tpm_softc* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tpm_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tpm_softc* %0, %struct.tpm_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %15 = call i32 @tpm_status(%struct.tpm_softc* %14)
  %16 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %17 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %19 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %137

26:                                               ; preds = %5
  %27 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %28 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %31 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %34 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %35 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %38 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %41 = call i32 @bus_space_read_4(i32 %36, i32 %39, i32 %40)
  %42 = load i32, i32* %11, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @bus_space_write_4(i32 %29, i32 %32, i32 %33, i32 %43)
  %45 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %46 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %49 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %52 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %53 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %56 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %59 = call i32 @bus_space_read_4(i32 %54, i32 %57, i32 %58)
  %60 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %61 = or i32 %59, %60
  %62 = call i32 @bus_space_write_4(i32 %47, i32 %50, i32 %51, i32 %61)
  %63 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %64 = call i32 @tpm_status(%struct.tpm_softc* %63)
  %65 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %66 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %68 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %8, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %26
  store i32 0, i32* %12, align 4
  br label %97

75:                                               ; preds = %26
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @tpm_tmotohz(i32 %76)
  store i32 %77, i32* %13, align 4
  %78 = load i8*, i8** %10, align 8
  %79 = load i32, i32* @PRIBIO, align 4
  %80 = load i32, i32* @PCATCH, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* %13, align 4
  %83 = call i32 @tsleep(i8* %78, i32 %81, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %85 = call i32 @tpm_status(%struct.tpm_softc* %84)
  %86 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %87 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %89 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %90, %91
  %93 = load i32, i32* %8, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %75
  store i32 0, i32* %12, align 4
  br label %96

96:                                               ; preds = %95, %75
  br label %97

97:                                               ; preds = %96, %74
  %98 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %99 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %102 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %105 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %106 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %109 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %112 = call i32 @bus_space_read_4(i32 %107, i32 %110, i32 %111)
  %113 = load i32, i32* @TPM_GLOBAL_INT_ENABLE, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = call i32 @bus_space_write_4(i32 %100, i32 %103, i32 %104, i32 %115)
  %117 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %118 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %121 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %124 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %125 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.tpm_softc*, %struct.tpm_softc** %7, align 8
  %128 = getelementptr inbounds %struct.tpm_softc, %struct.tpm_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* @TPM_INTERRUPT_ENABLE, align 4
  %131 = call i32 @bus_space_read_4(i32 %126, i32 %129, i32 %130)
  %132 = load i32, i32* %11, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = call i32 @bus_space_write_4(i32 %119, i32 %122, i32 %123, i32 %134)
  %136 = load i32, i32* %12, align 4
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %97, %25
  %138 = load i32, i32* %6, align 4
  ret i32 %138
}

declare dso_local i32 @tpm_status(%struct.tpm_softc*) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @tpm_tmotohz(i32) #1

declare dso_local i32 @tsleep(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
