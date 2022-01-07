; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32, i32, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"does not respond\0A\00", align 1
@INTR_TYPE_BIO = common dso_local global i32 0, align 4
@INTR_ENTROPY = common dso_local global i32 0, align 4
@FDC_NOFAST = common dso_local global i32 0, align 4
@INTR_MPSAFE = common dso_local global i32 0, align 4
@fdc_intr_fast = common dso_local global i32* null, align 8
@fdc_intr = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot setup interrupt\0A\00", align 1
@FDC_NODMA = common dso_local global i32 0, align 4
@MAX_BYTES_PER_CYL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@FDC_NEEDS_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"fdc lock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@settle = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdc_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.fdc_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.fdc_data* @device_get_softc(i32 %6)
  store %struct.fdc_data* %7, %struct.fdc_data** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %10 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %9, i32 0, i32 8
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %13 = call i32 @fdc_initial_reset(i32 %11, %struct.fdc_data* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @device_printf(i32 %17, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %130

20:                                               ; preds = %1
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %23 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @INTR_TYPE_BIO, align 4
  %26 = load i32, i32* @INTR_ENTROPY, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %29 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @FDC_NOFAST, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* @INTR_MPSAFE, align 4
  br label %37

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36, %34
  %38 = phi i32 [ %35, %34 ], [ 0, %36 ]
  %39 = or i32 %27, %38
  %40 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %41 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FDC_NOFAST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %49

47:                                               ; preds = %37
  %48 = load i32*, i32** @fdc_intr_fast, align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = phi i32* [ null, %46 ], [ %48, %47 ]
  %51 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %52 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @FDC_NOFAST, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32*, i32** @fdc_intr, align 8
  br label %60

59:                                               ; preds = %49
  br label %60

60:                                               ; preds = %59, %57
  %61 = phi i32* [ %58, %57 ], [ null, %59 ]
  %62 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %63 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %64 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %63, i32 0, i32 6
  %65 = call i32 @bus_setup_intr(i32 %21, i32 %24, i32 %39, i32* %50, i32* %61, %struct.fdc_data* %62, i32* %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %60
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @device_printf(i32 %69, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* %5, align 4
  store i32 %71, i32* %2, align 4
  br label %130

72:                                               ; preds = %60
  %73 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %74 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @FDC_NODMA, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %107, label %79

79:                                               ; preds = %72
  %80 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %81 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @isa_dma_acquire(i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %101, label %86

86:                                               ; preds = %79
  %87 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %88 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @MAX_BYTES_PER_CYL, align 4
  %91 = load i32, i32* @M_WAITOK, align 4
  %92 = call i32 @isa_dma_init(i32 %89, i32 %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %86
  %96 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %97 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %96, i32 0, i32 5
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @isa_dma_release(i32 %98)
  br label %100

100:                                              ; preds = %95, %86
  br label %101

101:                                              ; preds = %100, %79
  %102 = load i32, i32* %5, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %130

106:                                              ; preds = %101
  br label %107

107:                                              ; preds = %106, %72
  %108 = load i32, i32* %3, align 4
  %109 = call i32 @device_get_unit(i32 %108)
  %110 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %111 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @FDC_NEEDS_RESET, align 4
  %113 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %114 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  %117 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %118 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %117, i32 0, i32 3
  %119 = load i32, i32* @MTX_DEF, align 4
  %120 = call i32 @mtx_init(i32* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %119)
  %121 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %122 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %123 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %122, i32 0, i32 2
  store i64 0, i64* %123, align 8
  %124 = call i32 @fdout_wr(%struct.fdc_data* %121, i64 0)
  %125 = load %struct.fdc_data*, %struct.fdc_data** %4, align 8
  %126 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %125, i32 0, i32 1
  %127 = call i32 @bioq_init(i32* %126)
  %128 = load i32, i32* @hz, align 4
  %129 = sdiv i32 %128, 8
  store i32 %129, i32* @settle, align 4
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %107, %104, %68, %16
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.fdc_data* @device_get_softc(i32) #1

declare dso_local i32 @fdc_initial_reset(i32, %struct.fdc_data*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_setup_intr(i32, i32, i32, i32*, i32*, %struct.fdc_data*, i32*) #1

declare dso_local i32 @isa_dma_acquire(i32) #1

declare dso_local i32 @isa_dma_init(i32, i32, i32) #1

declare dso_local i32 @isa_dma_release(i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @fdout_wr(%struct.fdc_data*, i64) #1

declare dso_local i32 @bioq_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
