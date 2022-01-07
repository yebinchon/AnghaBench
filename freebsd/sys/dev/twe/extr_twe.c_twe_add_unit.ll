; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_add_unit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_add_unit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { %struct.twe_drive* }
%struct.twe_drive = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }

@TWE_MAX_UNITS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TWE_PARAM_UNITSUMMARY = common dso_local global i32 0, align 4
@TWE_PARAM_UNITSUMMARY_Status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"can't detect attached units\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@TWE_PARAM_UNITSTATUS_Online = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TWE_PARAM_UNITINFO = common dso_local global i32 0, align 4
@TWE_PARAM_UNITINFO_Capacity = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error fetching capacity for unit %d\0A\00", align 1
@TWE_PARAM_UNITINFO_Status = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"error fetching state for unit %d\0A\00", align 1
@TWE_PARAM_UNITINFO_DescriptorSize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"error fetching descriptor size for unit %d\0A\00", align 1
@TWE_PARAM_UNITINFO_Descriptor = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"error fetching descriptor for unit %d\0A\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*, i32)* @twe_add_unit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_add_unit(%struct.twe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.twe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.twe_drive*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %11, align 8
  %13 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %14 = call i32 @TWE_CONFIG_ASSERT_LOCKED(%struct.twe_softc* %13)
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @TWE_MAX_UNITS, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17, %2
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %3, align 4
  br label %187

23:                                               ; preds = %17
  %24 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %25 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %24)
  %26 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %27 = load i32, i32* @TWE_PARAM_UNITSUMMARY, align 4
  %28 = load i32, i32* @TWE_PARAM_UNITSUMMARY_Status, align 4
  %29 = load i32, i32* @TWE_MAX_UNITS, align 4
  %30 = call %struct.TYPE_5__* @twe_get_param(%struct.twe_softc* %26, i32 %27, i32 %28, i32 %29, i32* null)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %10, align 8
  %31 = icmp eq %struct.TYPE_5__* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %23
  %33 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %34 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %33)
  %35 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %36 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %35, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* @EIO, align 4
  store i32 %37, i32* %3, align 4
  br label %187

38:                                               ; preds = %23
  %39 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %40 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %39, i32 0, i32 0
  %41 = load %struct.twe_drive*, %struct.twe_drive** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %41, i64 %43
  store %struct.twe_drive* %44, %struct.twe_drive** %6, align 8
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @TWE_PARAM_UNITSTATUS_Online, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %38
  %56 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %57 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %56)
  %58 = load i32, i32* @ENXIO, align 4
  store i32 %58, i32* %8, align 4
  br label %171

59:                                               ; preds = %38
  %60 = load i32, i32* @TWE_PARAM_UNITINFO, align 4
  %61 = load i32, i32* %5, align 4
  %62 = add nsw i32 %60, %61
  store i32 %62, i32* %7, align 4
  %63 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @TWE_PARAM_UNITINFO_Capacity, align 4
  %66 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %67 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %66, i32 0, i32 0
  %68 = call i64 @twe_get_param_4(%struct.twe_softc* %63, i32 %64, i32 %65, i32* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %72 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %71)
  %73 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %73, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @EIO, align 4
  store i32 %76, i32* %8, align 4
  br label %171

77:                                               ; preds = %59
  %78 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @TWE_PARAM_UNITINFO_Status, align 4
  %81 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %82 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %81, i32 0, i32 7
  %83 = call i64 @twe_get_param_1(%struct.twe_softc* %78, i32 %79, i32 %80, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %77
  %86 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %87 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %86)
  %88 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %88, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* @EIO, align 4
  store i32 %91, i32* %8, align 4
  br label %171

92:                                               ; preds = %77
  %93 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @TWE_PARAM_UNITINFO_DescriptorSize, align 4
  %96 = call i64 @twe_get_param_2(%struct.twe_softc* %93, i32 %94, i32 %95, i32* %9)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %100 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %99)
  %101 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %101, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @EIO, align 4
  store i32 %104, i32* %8, align 4
  br label %171

105:                                              ; preds = %92
  %106 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @TWE_PARAM_UNITINFO_Descriptor, align 4
  %109 = load i32, i32* %9, align 4
  %110 = sub nsw i32 %109, 3
  %111 = call %struct.TYPE_5__* @twe_get_param(%struct.twe_softc* %106, i32 %107, i32 %108, i32 %110, i32* null)
  store %struct.TYPE_5__* %111, %struct.TYPE_5__** %11, align 8
  %112 = icmp eq %struct.TYPE_5__* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %115 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %114)
  %116 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %117 = load i32, i32* %5, align 4
  %118 = call i32 (%struct.twe_softc*, i8*, ...) @twe_printf(%struct.twe_softc* %116, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EIO, align 4
  store i32 %119, i32* %8, align 4
  br label %171

120:                                              ; preds = %105
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = bitcast i32* %123 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %124, %struct.TYPE_6__** %12, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %129 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %128, i32 0, i32 6
  store i32 %127, i32* %129, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %134 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %133, i32 0, i32 5
  store i32 %132, i32* %134, align 4
  %135 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %136 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = icmp sgt i32 %137, 2097152
  br i1 %138, label %139, label %144

139:                                              ; preds = %120
  %140 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %141 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %140, i32 0, i32 1
  store i32 255, i32* %141, align 4
  %142 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %143 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %142, i32 0, i32 2
  store i32 63, i32* %143, align 4
  br label %149

144:                                              ; preds = %120
  %145 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %146 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %145, i32 0, i32 1
  store i32 64, i32* %146, align 4
  %147 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %148 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %147, i32 0, i32 2
  store i32 32, i32* %148, align 4
  br label %149

149:                                              ; preds = %144, %139
  %150 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %151 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %154 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %157 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = mul nsw i32 %155, %158
  %160 = sdiv i32 %152, %159
  %161 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %162 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %161, i32 0, i32 3
  store i32 %160, i32* %162, align 4
  %163 = load i32, i32* %5, align 4
  %164 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %165 = getelementptr inbounds %struct.twe_drive, %struct.twe_drive* %164, i32 0, i32 4
  store i32 %163, i32* %165, align 4
  %166 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %167 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %166)
  %168 = load %struct.twe_softc*, %struct.twe_softc** %4, align 8
  %169 = load %struct.twe_drive*, %struct.twe_drive** %6, align 8
  %170 = call i32 @twe_attach_drive(%struct.twe_softc* %168, %struct.twe_drive* %169)
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %149, %113, %98, %85, %70, %55
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %173 = icmp ne %struct.TYPE_5__* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %171
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %176 = load i32, i32* @M_DEVBUF, align 4
  %177 = call i32 @free(%struct.TYPE_5__* %175, i32 %176)
  br label %178

178:                                              ; preds = %174, %171
  %179 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %180 = icmp ne %struct.TYPE_5__* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %183 = load i32, i32* @M_DEVBUF, align 4
  %184 = call i32 @free(%struct.TYPE_5__* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %178
  %186 = load i32, i32* %8, align 4
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %185, %32, %21
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @TWE_CONFIG_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local i32 @TWE_IO_LOCK(%struct.twe_softc*) #1

declare dso_local %struct.TYPE_5__* @twe_get_param(%struct.twe_softc*, i32, i32, i32, i32*) #1

declare dso_local i32 @TWE_IO_UNLOCK(%struct.twe_softc*) #1

declare dso_local i32 @twe_printf(%struct.twe_softc*, i8*, ...) #1

declare dso_local i64 @twe_get_param_4(%struct.twe_softc*, i32, i32, i32*) #1

declare dso_local i64 @twe_get_param_1(%struct.twe_softc*, i32, i32, i32*) #1

declare dso_local i64 @twe_get_param_2(%struct.twe_softc*, i32, i32, i32*) #1

declare dso_local i32 @twe_attach_drive(%struct.twe_softc*, %struct.twe_drive*) #1

declare dso_local i32 @free(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
