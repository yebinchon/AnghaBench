; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_query_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tdfx/extr_tdfx_pci.c_tdfx_query_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tdfx_pio_data = type { i32, i32, i32, i32 }
%struct.tdfx_softc = type { i32 }

@tdfx_count = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tdfx_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.tdfx_pio_data*)* @tdfx_query_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfx_query_update(i32 %0, %struct.tdfx_pio_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tdfx_pio_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tdfx_softc*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.tdfx_pio_data* %1, %struct.tdfx_pio_data** %5, align 8
  store %struct.tdfx_softc* null, %struct.tdfx_softc** %12, align 8
  %13 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %14 = icmp eq %struct.tdfx_pio_data* %13, null
  br i1 %14, label %22, label %15

15:                                               ; preds = %2
  %16 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %17 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @tdfx_count, align 4
  %20 = and i32 %19, 15
  %21 = icmp sge i32 %18, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %15, %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %162

25:                                               ; preds = %15
  %26 = load i32, i32* @tdfx_devclass, align 4
  %27 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %28 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @devclass_get_softc(i32 %26, i32 %29)
  %31 = inttoptr i64 %30 to %struct.tdfx_softc*
  store %struct.tdfx_softc* %31, %struct.tdfx_softc** %12, align 8
  %32 = load %struct.tdfx_softc*, %struct.tdfx_softc** %12, align 8
  %33 = icmp eq %struct.tdfx_softc* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %25
  %35 = load i32, i32* @ENXIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %162

37:                                               ; preds = %25
  %38 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %39 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %86 [
    i32 132, label %41
    i32 131, label %50
    i32 130, label %59
    i32 129, label %68
    i32 128, label %77
  ]

41:                                               ; preds = %37
  %42 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %43 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 2
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %162

49:                                               ; preds = %41
  br label %89

50:                                               ; preds = %37
  %51 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %52 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 4
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %162

58:                                               ; preds = %50
  br label %89

59:                                               ; preds = %37
  %60 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %61 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 4
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %162

67:                                               ; preds = %59
  br label %89

68:                                               ; preds = %37
  %69 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %70 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 4
  br i1 %72, label %73, label %76

73:                                               ; preds = %68
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %162

76:                                               ; preds = %68
  br label %89

77:                                               ; preds = %37
  %78 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %79 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 4
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %162

85:                                               ; preds = %77
  br label %89

86:                                               ; preds = %37
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %162

89:                                               ; preds = %85, %76, %67, %58, %49
  %90 = load %struct.tdfx_softc*, %struct.tdfx_softc** %12, align 8
  %91 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %94 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, -4
  %97 = call i32 @pci_read_config(i32 %92, i32 %96, i32 4)
  store i32 %97, i32* %9, align 4
  %98 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %99 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  switch i32 %100, label %143 [
    i32 1, label %101
    i32 2, label %119
    i32 4, label %137
  ]

101:                                              ; preds = %89
  %102 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %103 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @copyin(i32 %104, i32* %6, i32 1)
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %108 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 3
  %111 = mul nsw i32 8, %110
  %112 = shl i32 %106, %111
  store i32 %112, i32* %10, align 4
  %113 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %114 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 3
  %117 = mul nsw i32 8, %116
  %118 = shl i32 255, %117
  store i32 %118, i32* %11, align 4
  br label %146

119:                                              ; preds = %89
  %120 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %121 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @copyin(i32 %122, i32* %7, i32 2)
  %124 = load i32, i32* %7, align 4
  %125 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %126 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 3
  %129 = mul nsw i32 8, %128
  %130 = shl i32 %124, %129
  store i32 %130, i32* %10, align 4
  %131 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %132 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 3
  %135 = mul nsw i32 8, %134
  %136 = shl i32 65535, %135
  store i32 %136, i32* %11, align 4
  br label %146

137:                                              ; preds = %89
  %138 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %139 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @copyin(i32 %140, i32* %8, i32 4)
  %142 = load i32, i32* %8, align 4
  store i32 %142, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  br label %146

143:                                              ; preds = %89
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %162

146:                                              ; preds = %137, %119, %101
  %147 = load i32, i32* %9, align 4
  %148 = load i32, i32* %11, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  %151 = load i32, i32* %10, align 4
  %152 = or i32 %150, %151
  store i32 %152, i32* %9, align 4
  %153 = load %struct.tdfx_softc*, %struct.tdfx_softc** %12, align 8
  %154 = getelementptr inbounds %struct.tdfx_softc, %struct.tdfx_softc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.tdfx_pio_data*, %struct.tdfx_pio_data** %5, align 8
  %157 = getelementptr inbounds %struct.tdfx_pio_data, %struct.tdfx_pio_data* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, -4
  %160 = load i32, i32* %9, align 4
  %161 = call i32 @pci_write_config(i32 %155, i32 %159, i32 %160, i32 4)
  store i32 0, i32* %3, align 4
  br label %162

162:                                              ; preds = %146, %143, %86, %82, %73, %64, %55, %46, %34, %22
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local i64 @devclass_get_softc(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
