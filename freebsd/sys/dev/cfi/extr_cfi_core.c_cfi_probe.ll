; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cfi/extr_cfi_core.c_cfi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfi_softc = type { i32, i32, i32, i32*, i64, i32, i32, i32 }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@CFI_QRY_IDENT = common dso_local global i64 0, align 8
@CFI_QRY_VEND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"AMD/Fujitsu\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Intel/Sharp\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Intel\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Mitsubishi\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Unknown vendor\00", align 1
@CFI_QRY_SIZE = common dso_local global i64 0, align 8
@CFI_QRY_IFACE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"%s - %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [80 x i8], align 16
  %5 = alloca %struct.cfi_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.cfi_softc* @device_get_softc(i32 %10)
  store %struct.cfi_softc* %11, %struct.cfi_softc** %5, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %14 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %15, i32 0, i32 4
  store i64 0, i64* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @SYS_RES_MEMORY, align 4
  %19 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %20 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %19, i32 0, i32 4
  %21 = load i32, i32* @RF_ACTIVE, align 4
  %22 = call i32* @bus_alloc_resource_any(i32 %17, i32 %18, i64* %20, i32 %21)
  %23 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %24 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %26 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %170

31:                                               ; preds = %1
  %32 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %33 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %32, i32 0, i32 3
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rman_get_bustag(i32* %34)
  %36 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %37 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %39 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_bushandle(i32* %40)
  %42 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %43 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %42, i32 0, i32 5
  store i32 %41, i32* %43, align 8
  %44 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %45 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %31
  %49 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %50 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %51

51:                                               ; preds = %62, %48
  %52 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %53 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sle i32 %54, 4
  br i1 %55, label %56, label %67

56:                                               ; preds = %51
  %57 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %58 = load i64, i64* @CFI_QRY_IDENT, align 8
  %59 = call i32 @cfi_read_qry(%struct.cfi_softc* %57, i64 %58)
  %60 = icmp eq i32 %59, 81
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %67

62:                                               ; preds = %56
  %63 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %64 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = shl i32 %65, 1
  store i32 %66, i32* %64, align 8
  br label %51

67:                                               ; preds = %61, %51
  br label %76

68:                                               ; preds = %31
  %69 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %70 = load i64, i64* @CFI_QRY_IDENT, align 8
  %71 = call i32 @cfi_read_qry(%struct.cfi_softc* %69, i64 %70)
  %72 = icmp ne i32 %71, 81
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = load i32, i32* @ENXIO, align 4
  store i32 %74, i32* %7, align 4
  br label %159

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75, %67
  %77 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %78 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 4
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @ENXIO, align 4
  store i32 %82, i32* %7, align 4
  br label %159

83:                                               ; preds = %76
  %84 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %85 = load i64, i64* @CFI_QRY_IDENT, align 8
  %86 = add nsw i64 %85, 1
  %87 = call i32 @cfi_read_qry(%struct.cfi_softc* %84, i64 %86)
  %88 = icmp ne i32 %87, 82
  br i1 %88, label %95, label %89

89:                                               ; preds = %83
  %90 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %91 = load i64, i64* @CFI_QRY_IDENT, align 8
  %92 = add nsw i64 %91, 2
  %93 = call i32 @cfi_read_qry(%struct.cfi_softc* %90, i64 %92)
  %94 = icmp ne i32 %93, 89
  br i1 %94, label %95, label %97

95:                                               ; preds = %89, %83
  %96 = load i32, i32* @ENXIO, align 4
  store i32 %96, i32* %7, align 4
  br label %159

97:                                               ; preds = %89
  %98 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %99 = load i64, i64* @CFI_QRY_VEND, align 8
  %100 = call i32 @cfi_read_qry(%struct.cfi_softc* %98, i64 %99)
  %101 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %102 = load i64, i64* @CFI_QRY_VEND, align 8
  %103 = add nsw i64 %102, 1
  %104 = call i32 @cfi_read_qry(%struct.cfi_softc* %101, i64 %103)
  %105 = shl i32 %104, 8
  %106 = or i32 %100, %105
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %109 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %9, align 4
  switch i32 %110, label %115 [
    i32 133, label %111
    i32 132, label %111
    i32 131, label %112
    i32 130, label %113
    i32 129, label %114
    i32 128, label %114
  ]

111:                                              ; preds = %97, %97
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  br label %116

112:                                              ; preds = %97
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8** %6, align 8
  br label %116

113:                                              ; preds = %97
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  br label %116

114:                                              ; preds = %97, %97
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8** %6, align 8
  br label %116

115:                                              ; preds = %97
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i8** %6, align 8
  br label %116

116:                                              ; preds = %115, %114, %113, %112, %111
  %117 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %118 = load i64, i64* @CFI_QRY_SIZE, align 8
  %119 = call i32 @cfi_read_qry(%struct.cfi_softc* %117, i64 %118)
  %120 = shl i32 1, %119
  %121 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %122 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %124 = load i64, i64* @CFI_QRY_IFACE, align 8
  %125 = call i32 @cfi_read_qry(%struct.cfi_softc* %123, i64 %124)
  %126 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %127 = load i64, i64* @CFI_QRY_IFACE, align 8
  %128 = add nsw i64 %127, 1
  %129 = call i32 @cfi_read_qry(%struct.cfi_softc* %126, i64 %128)
  %130 = shl i32 %129, 8
  %131 = or i32 %125, %130
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %8, align 4
  %134 = load i32, i32* %8, align 4
  %135 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %136 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %134, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %116
  br label %143

141:                                              ; preds = %116
  %142 = load i32, i32* @EINVAL, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = phi i32 [ 0, %140 ], [ %142, %141 ]
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %143
  br label %159

148:                                              ; preds = %143
  %149 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %150 = load i8*, i8** %6, align 8
  %151 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %152 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 8
  %154 = call i8* @cfi_fmtsize(i32 %153)
  %155 = call i32 @snprintf(i8* %149, i32 80, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* %150, i8* %154)
  %156 = load i32, i32* %3, align 4
  %157 = getelementptr inbounds [80 x i8], [80 x i8]* %4, i64 0, i64 0
  %158 = call i32 @device_set_desc_copy(i32 %156, i8* %157)
  br label %159

159:                                              ; preds = %148, %147, %95, %81, %73
  %160 = load i32, i32* %3, align 4
  %161 = load i32, i32* @SYS_RES_MEMORY, align 4
  %162 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %163 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.cfi_softc*, %struct.cfi_softc** %5, align 8
  %166 = getelementptr inbounds %struct.cfi_softc, %struct.cfi_softc* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = call i32 @bus_release_resource(i32 %160, i32 %161, i64 %164, i32* %167)
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %159, %29
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local %struct.cfi_softc* @device_get_softc(i32) #1

declare dso_local i32* @bus_alloc_resource_any(i32, i32, i64*, i32) #1

declare dso_local i32 @rman_get_bustag(i32*) #1

declare dso_local i32 @rman_get_bushandle(i32*) #1

declare dso_local i32 @cfi_read_qry(%struct.cfi_softc*, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @cfi_fmtsize(i32) #1

declare dso_local i32 @device_set_desc_copy(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
