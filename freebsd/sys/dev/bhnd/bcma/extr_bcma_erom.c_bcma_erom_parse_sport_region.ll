; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_parse_sport_region.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_parse_sport_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }
%struct.bcma_erom_sport_region = type { i32, i32, i8*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@REGION = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@REGION_BASE = common dso_local global i32 0, align 4
@REGION_TYPE = common dso_local global i32 0, align 4
@REGION_PORT = common dso_local global i32 0, align 4
@REGION_SIZE = common dso_local global i32 0, align 4
@REGION_64BIT = common dso_local global i32 0, align 4
@BCMA_EROM_REGION_SIZE_OTHER = common dso_local global i32 0, align 4
@RSIZE_VAL = common dso_local global i32 0, align 4
@RSIZE_64BIT = common dso_local global i32 0, align 4
@BCMA_EROM_REGION_SIZE_BASE = common dso_local global i32 0, align 4
@BHND_ADDR_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"%s%u: invalid address map %llx:%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, %struct.bcma_erom_sport_region*)* @bcma_erom_parse_sport_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_parse_sport_region(%struct.bcma_erom* %0, %struct.bcma_erom_sport_region* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_erom*, align 8
  %5 = alloca %struct.bcma_erom_sport_region*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bcma_erom* %0, %struct.bcma_erom** %4, align 8
  store %struct.bcma_erom_sport_region* %1, %struct.bcma_erom_sport_region** %5, align 8
  %9 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %10 = call i64 @bcma_erom_peek32(%struct.bcma_erom* %9, i64* %6)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %141

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* @REGION, align 4
  %17 = call i32 @BCMA_EROM_ENTRY_IS(i64 %15, i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %3, align 4
  br label %141

21:                                               ; preds = %14
  %22 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %23 = call i32 @bcma_erom_skip32(%struct.bcma_erom* %22)
  br label %24

24:                                               ; preds = %21
  %25 = load i64, i64* %6, align 8
  %26 = load i32, i32* @REGION_BASE, align 4
  %27 = call i8* @BCMA_EROM_GET_ATTR(i64 %25, i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %30 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @REGION_TYPE, align 4
  %33 = call i8* @BCMA_EROM_GET_ATTR(i64 %31, i32 %32)
  %34 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %35 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* @REGION_PORT, align 4
  %38 = call i8* @BCMA_EROM_GET_ATTR(i64 %36, i32 %37)
  %39 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %40 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %6, align 8
  %42 = load i32, i32* @REGION_SIZE, align 4
  %43 = call i8* @BCMA_EROM_GET_ATTR(i64 %41, i32 %42)
  %44 = ptrtoint i8* %43 to i32
  store i32 %44, i32* %7, align 4
  %45 = load i64, i64* %6, align 8
  %46 = load i32, i32* @REGION_64BIT, align 4
  %47 = call i8* @BCMA_EROM_GET_ATTR(i64 %45, i32 %46)
  %48 = icmp ne i8* %47, null
  br i1 %48, label %49, label %63

49:                                               ; preds = %24
  %50 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %51 = call i32 @bcma_erom_read32(%struct.bcma_erom* %50, i64* %6)
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %3, align 4
  br label %141

55:                                               ; preds = %49
  %56 = load i64, i64* %6, align 8
  %57 = trunc i64 %56 to i32
  %58 = shl i32 %57, 32
  %59 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %60 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %55, %24
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @BCMA_EROM_REGION_SIZE_OTHER, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %99

67:                                               ; preds = %63
  %68 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %69 = call i32 @bcma_erom_read32(%struct.bcma_erom* %68, i64* %6)
  store i32 %69, i32* %8, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %3, align 4
  br label %141

73:                                               ; preds = %67
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* @RSIZE_VAL, align 4
  %76 = call i8* @BCMA_EROM_GET_ATTR(i64 %74, i32 %75)
  %77 = ptrtoint i8* %76 to i32
  %78 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %79 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* @RSIZE_64BIT, align 4
  %82 = call i8* @BCMA_EROM_GET_ATTR(i64 %80, i32 %81)
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %73
  %85 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %86 = call i32 @bcma_erom_read32(%struct.bcma_erom* %85, i64* %6)
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %141

90:                                               ; preds = %84
  %91 = load i64, i64* %6, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 32
  %94 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %95 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  br label %98

98:                                               ; preds = %90, %73
  br label %105

99:                                               ; preds = %63
  %100 = load i32, i32* @BCMA_EROM_REGION_SIZE_BASE, align 4
  %101 = load i32, i32* %7, align 4
  %102 = shl i32 %100, %101
  %103 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %104 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %98
  %106 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %107 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %140

110:                                              ; preds = %105
  %111 = load i32, i32* @BHND_ADDR_MAX, align 4
  %112 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %113 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = sub nsw i32 %114, 1
  %116 = sub nsw i32 %111, %115
  %117 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %118 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp slt i32 %116, %119
  br i1 %120, label %121, label %140

121:                                              ; preds = %110
  %122 = load %struct.bcma_erom*, %struct.bcma_erom** %4, align 8
  %123 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %124 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %123, i32 0, i32 3
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @bcma_erom_entry_type_name(i8* %125)
  %127 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %128 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %127, i32 0, i32 2
  %129 = load i8*, i8** %128, align 8
  %130 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %131 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = load %struct.bcma_erom_sport_region*, %struct.bcma_erom_sport_region** %5, align 8
  %135 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = call i32 @EROM_LOG(%struct.bcma_erom* %122, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %126, i8* %129, i64 %133, i64 %137)
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %3, align 4
  br label %141

140:                                              ; preds = %110, %105
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %140, %121, %88, %71, %53, %19, %12
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i64 @bcma_erom_peek32(%struct.bcma_erom*, i64*) #1

declare dso_local i32 @BCMA_EROM_ENTRY_IS(i64, i32) #1

declare dso_local i32 @bcma_erom_skip32(%struct.bcma_erom*) #1

declare dso_local i8* @BCMA_EROM_GET_ATTR(i64, i32) #1

declare dso_local i32 @bcma_erom_read32(%struct.bcma_erom*, i64*) #1

declare dso_local i32 @EROM_LOG(%struct.bcma_erom*, i8*, i32, i8*, i64, i64) #1

declare dso_local i32 @bcma_erom_entry_type_name(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
