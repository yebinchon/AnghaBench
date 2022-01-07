; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_acpi_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/cpufreq/extr_est.c_est_acpi_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cf_setting = type { i64, i32, i32*, i32, i32 }
%struct.est_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"acpi_perf\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@MAX_SETTINGS = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@strict = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"Invalid freq %u, ignored.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.cf_setting**, i64*)* @est_acpi_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @est_acpi_info(i32* %0, %struct.cf_setting** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.cf_setting**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.est_softc*, align 8
  %9 = alloca %struct.cf_setting*, align 8
  %10 = alloca %struct.cf_setting*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.cf_setting** %1, %struct.cf_setting*** %6, align 8
  store i64* %2, i64** %7, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @device_get_parent(i32* %17)
  %19 = call i32* @device_find_child(i32 %18, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %19, i32** %11, align 8
  %20 = load i32*, i32** %11, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32*, i32** %11, align 8
  %24 = call i32 @device_is_attached(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22, %3
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %4, align 4
  br label %187

28:                                               ; preds = %22
  %29 = load i32*, i32** %5, align 8
  %30 = call %struct.est_softc* @device_get_softc(i32* %29)
  store %struct.est_softc* %30, %struct.est_softc** %8, align 8
  store %struct.cf_setting* null, %struct.cf_setting** %10, align 8
  %31 = load i32, i32* @MAX_SETTINGS, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 32
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @M_TEMP, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = call %struct.cf_setting* @malloc(i32 %34, i32 %35, i32 %36)
  store %struct.cf_setting* %37, %struct.cf_setting** %9, align 8
  %38 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %39 = icmp eq %struct.cf_setting* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %4, align 4
  br label %187

42:                                               ; preds = %28
  %43 = load i32, i32* @MAX_SETTINGS, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32*, i32** %11, align 8
  %45 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %46 = call i32 @CPUFREQ_DRV_SETTINGS(i32* %44, %struct.cf_setting* %45, i32* %12)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  br label %168

50:                                               ; preds = %42
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 32
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @M_DEVBUF, align 4
  %56 = load i32, i32* @M_NOWAIT, align 4
  %57 = call %struct.cf_setting* @malloc(i32 %54, i32 %55, i32 %56)
  store %struct.cf_setting* %57, %struct.cf_setting** %10, align 8
  %58 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %59 = icmp eq %struct.cf_setting* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i32, i32* @ENOMEM, align 4
  store i32 %61, i32* %13, align 4
  br label %168

62:                                               ; preds = %50
  %63 = call i32 @est_get_id16(i32* %16)
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %64

64:                                               ; preds = %153, %62
  %65 = load i32, i32* %14, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %156

68:                                               ; preds = %64
  %69 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %69, i64 %71
  %73 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %152

76:                                               ; preds = %68
  %77 = load i32*, i32** %5, align 8
  %78 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %78, i64 %80
  %82 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @strict, align 4
  %87 = call i32 @est_set_id16(i32* %77, i32 %85, i32 %86)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %76
  %91 = load i64, i64* @bootverbose, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %90
  %94 = load i32*, i32** %5, align 8
  %95 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %96 = load i32, i32* %14, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %95, i64 %97
  %99 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @device_printf(i32* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %93, %90
  br label %153

103:                                              ; preds = %76
  %104 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %105 = load i32, i32* %14, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %104, i64 %106
  %108 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %111 = load i32, i32* %15, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %110, i64 %112
  %114 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %113, i32 0, i32 0
  store i64 %109, i64* %114, align 8
  %115 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %116 = load i32, i32* %14, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %115, i64 %117
  %119 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %121, i64 %123
  %125 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %124, i32 0, i32 4
  store i32 %120, i32* %125, align 4
  %126 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %127 = load i32, i32* %14, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %126, i64 %128
  %130 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %135 = load i32, i32* %15, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %134, i64 %136
  %138 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %137, i32 0, i32 3
  store i32 %133, i32* %138, align 8
  %139 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %139, i64 %141
  %143 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %146 = load i32, i32* %15, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %145, i64 %147
  %149 = getelementptr inbounds %struct.cf_setting, %struct.cf_setting* %148, i32 0, i32 1
  store i32 %144, i32* %149, align 8
  %150 = load i32, i32* %15, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %15, align 4
  br label %152

152:                                              ; preds = %103, %68
  br label %153

153:                                              ; preds = %152, %102
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %14, align 4
  br label %64

156:                                              ; preds = %64
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %16, align 4
  %159 = call i32 @est_set_id16(i32* %157, i32 %158, i32 0)
  %160 = load i32, i32* @TRUE, align 4
  %161 = load %struct.est_softc*, %struct.est_softc** %8, align 8
  %162 = getelementptr inbounds %struct.est_softc, %struct.est_softc* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 4
  %163 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %164 = load %struct.cf_setting**, %struct.cf_setting*** %6, align 8
  store %struct.cf_setting* %163, %struct.cf_setting** %164, align 8
  %165 = load i32, i32* %15, align 4
  %166 = sext i32 %165 to i64
  %167 = load i64*, i64** %7, align 8
  store i64 %166, i64* %167, align 8
  store i32 0, i32* %13, align 4
  br label %168

168:                                              ; preds = %156, %60, %49
  %169 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %170 = icmp ne %struct.cf_setting* %169, null
  br i1 %170, label %171, label %175

171:                                              ; preds = %168
  %172 = load %struct.cf_setting*, %struct.cf_setting** %9, align 8
  %173 = load i32, i32* @M_TEMP, align 4
  %174 = call i32 @free(%struct.cf_setting* %172, i32 %173)
  br label %175

175:                                              ; preds = %171, %168
  %176 = load i32, i32* %13, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %180 = icmp ne %struct.cf_setting* %179, null
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load %struct.cf_setting*, %struct.cf_setting** %10, align 8
  %183 = load i32, i32* @M_DEVBUF, align 4
  %184 = call i32 @free(%struct.cf_setting* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %178, %175
  %186 = load i32, i32* %13, align 4
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %185, %40, %26
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32* @device_find_child(i32, i8*, i32) #1

declare dso_local i32 @device_get_parent(i32*) #1

declare dso_local i32 @device_is_attached(i32*) #1

declare dso_local %struct.est_softc* @device_get_softc(i32*) #1

declare dso_local %struct.cf_setting* @malloc(i32, i32, i32) #1

declare dso_local i32 @CPUFREQ_DRV_SETTINGS(i32*, %struct.cf_setting*, i32*) #1

declare dso_local i32 @est_get_id16(i32*) #1

declare dso_local i32 @est_set_id16(i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32*, i8*, i64) #1

declare dso_local i32 @free(%struct.cf_setting*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
