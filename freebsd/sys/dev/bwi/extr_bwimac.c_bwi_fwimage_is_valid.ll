; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_fwimage_is_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_fwimage_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }
%struct.firmware = type { i32, i32, i64 }
%struct.bwi_fwhdr = type { i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"invalid firmware (%s): invalid size %zu\0A\00", align 1
@BWI_FW_T_IV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"invalid firmware (%s): size mismatch, fw %u, real %zu\0A\00", align 1
@.str.2 = private unnamed_addr constant [60 x i8] c"invalid firmware (%s): type mismatch, fw '%c', target '%c'\0A\00", align 1
@BWI_FW_GEN_1 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [59 x i8] c"invalid firmware (%s): wrong generation, fw %d, target %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_softc*, %struct.firmware*, i32)* @bwi_fwimage_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_fwimage_is_valid(%struct.bwi_softc* %0, %struct.firmware* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bwi_fwhdr*, align 8
  store %struct.bwi_softc* %0, %struct.bwi_softc** %5, align 8
  store %struct.firmware* %1, %struct.firmware** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.firmware*, %struct.firmware** %6, align 8
  %10 = getelementptr inbounds %struct.firmware, %struct.firmware* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = icmp ult i64 %12, 12
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %16 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.firmware*, %struct.firmware** %6, align 8
  %19 = getelementptr inbounds %struct.firmware, %struct.firmware* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.firmware*, %struct.firmware** %6, align 8
  %22 = getelementptr inbounds %struct.firmware, %struct.firmware* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %17, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  store i32 0, i32* %4, align 4
  br label %100

25:                                               ; preds = %3
  %26 = load %struct.firmware*, %struct.firmware** %6, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to %struct.bwi_fwhdr*
  store %struct.bwi_fwhdr* %29, %struct.bwi_fwhdr** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @BWI_FW_T_IV, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %63

33:                                               ; preds = %25
  %34 = load %struct.bwi_fwhdr*, %struct.bwi_fwhdr** %8, align 8
  %35 = getelementptr inbounds %struct.bwi_fwhdr, %struct.bwi_fwhdr* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @be32toh(i32 %36)
  %38 = sext i32 %37 to i64
  %39 = load %struct.firmware*, %struct.firmware** %6, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = sub i64 %42, 12
  %44 = icmp ne i64 %38, %43
  br i1 %44, label %45, label %62

45:                                               ; preds = %33
  %46 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %47 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.firmware*, %struct.firmware** %6, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bwi_fwhdr*, %struct.bwi_fwhdr** %8, align 8
  %53 = getelementptr inbounds %struct.bwi_fwhdr, %struct.bwi_fwhdr* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @be32toh(i32 %54)
  %56 = load %struct.firmware*, %struct.firmware** %6, align 8
  %57 = getelementptr inbounds %struct.firmware, %struct.firmware* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = sub i64 %59, 12
  %61 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %55, i64 %60)
  store i32 0, i32* %4, align 4
  br label %100

62:                                               ; preds = %33
  br label %63

63:                                               ; preds = %62, %25
  %64 = load %struct.bwi_fwhdr*, %struct.bwi_fwhdr** %8, align 8
  %65 = getelementptr inbounds %struct.bwi_fwhdr, %struct.bwi_fwhdr* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %66, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %63
  %70 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %71 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.firmware*, %struct.firmware** %6, align 8
  %74 = getelementptr inbounds %struct.firmware, %struct.firmware* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.bwi_fwhdr*, %struct.bwi_fwhdr** %8, align 8
  %77 = getelementptr inbounds %struct.bwi_fwhdr, %struct.bwi_fwhdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %72, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78, i32 %79)
  store i32 0, i32* %4, align 4
  br label %100

81:                                               ; preds = %63
  %82 = load %struct.bwi_fwhdr*, %struct.bwi_fwhdr** %8, align 8
  %83 = getelementptr inbounds %struct.bwi_fwhdr, %struct.bwi_fwhdr* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @BWI_FW_GEN_1, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %89 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.firmware*, %struct.firmware** %6, align 8
  %92 = getelementptr inbounds %struct.firmware, %struct.firmware* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.bwi_fwhdr*, %struct.bwi_fwhdr** %8, align 8
  %95 = getelementptr inbounds %struct.bwi_fwhdr, %struct.bwi_fwhdr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @BWI_FW_GEN_1, align 4
  %98 = call i32 (i32, i8*, i32, i32, ...) @device_printf(i32 %90, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i32 %93, i32 %96, i32 %97)
  store i32 0, i32* %4, align 4
  br label %100

99:                                               ; preds = %81
  store i32 1, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %87, %69, %45, %14
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @device_printf(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @be32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
