; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_corecfg_fill_port_regions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_corecfg_fill_port_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_erom = type { i32 }
%struct.bcma_corecfg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bcma_sport = type { i32, i32, %struct.bcma_sport_list, i32, i32, i64 }
%struct.bcma_sport_list = type { i32 }
%struct.bcma_map = type { i32, i32, %struct.bcma_sport_list, i32, i32, i64 }
%struct.bcma_erom_sport_region = type { i64, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BCMA_RMID_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"core%u %s%u: region count reached upper limit of %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"core%u %s%u.%u: invalid slave port address region\0A\00", align 1
@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@m_link = common dso_local global i32 0, align 4
@sp_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_erom*, %struct.bcma_corecfg*, i32, i64)* @bcma_erom_corecfg_fill_port_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_corecfg_fill_port_regions(%struct.bcma_erom* %0, %struct.bcma_corecfg* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bcma_erom*, align 8
  %7 = alloca %struct.bcma_corecfg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.bcma_sport*, align 8
  %11 = alloca %struct.bcma_sport_list*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.bcma_map*, align 8
  %17 = alloca %struct.bcma_erom_sport_region, align 8
  store %struct.bcma_erom* %0, %struct.bcma_erom** %6, align 8
  store %struct.bcma_corecfg* %1, %struct.bcma_corecfg** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.bcma_erom*, %struct.bcma_erom** %6, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @bcma_erom_region_to_port_type(%struct.bcma_erom* %18, i64 %19, i32* %14)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* %13, align 4
  store i32 %24, i32* %5, align 4
  br label %148

25:                                               ; preds = %4
  %26 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %7, align 8
  %27 = load i32, i32* %14, align 4
  %28 = call %struct.bcma_sport_list* @bcma_corecfg_get_port_list(%struct.bcma_corecfg* %26, i32 %27)
  store %struct.bcma_sport_list* %28, %struct.bcma_sport_list** %11, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %14, align 4
  %31 = call %struct.bcma_sport* @bcma_alloc_sport(i32 %29, i32 %30)
  store %struct.bcma_sport* %31, %struct.bcma_sport** %10, align 8
  %32 = load %struct.bcma_sport*, %struct.bcma_sport** %10, align 8
  %33 = icmp eq %struct.bcma_sport* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %5, align 4
  br label %148

36:                                               ; preds = %25
  store i64 0, i64* %15, align 8
  br label %37

37:                                               ; preds = %127, %36
  %38 = load i64, i64* %15, align 8
  %39 = load i64, i64* @BCMA_RMID_MAX, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.bcma_erom*, %struct.bcma_erom** %6, align 8
  %43 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %7, align 8
  %44 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 @bhnd_port_type_name(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = load i64, i64* @BCMA_RMID_MAX, align 8
  %51 = call i32 @EROM_LOG(%struct.bcma_erom* %42, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %48, i32 %49, i64 %50)
  %52 = load i32, i32* @EINVAL, align 4
  store i32 %52, i32* %13, align 4
  br label %131

53:                                               ; preds = %37
  %54 = load %struct.bcma_erom*, %struct.bcma_erom** %6, align 8
  %55 = call i32 @bcma_erom_tell(%struct.bcma_erom* %54)
  store i32 %55, i32* %12, align 4
  %56 = load %struct.bcma_erom*, %struct.bcma_erom** %6, align 8
  %57 = call i32 @bcma_erom_parse_sport_region(%struct.bcma_erom* %56, %struct.bcma_erom_sport_region* %17)
  store i32 %57, i32* %13, align 4
  %58 = load i32, i32* %13, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %53
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @ENOENT, align 4
  %63 = icmp ne i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load %struct.bcma_erom*, %struct.bcma_erom** %6, align 8
  %66 = load %struct.bcma_corecfg*, %struct.bcma_corecfg** %7, align 8
  %67 = getelementptr inbounds %struct.bcma_corecfg, %struct.bcma_corecfg* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @bhnd_port_type_name(i32 %70)
  %72 = load i32, i32* %8, align 4
  %73 = load i64, i64* %15, align 8
  %74 = call i32 @EROM_LOG(%struct.bcma_erom* %65, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %69, i32 %71, i32 %72, i64 %73)
  br label %131

75:                                               ; preds = %60, %53
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* @ENOENT, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %80

79:                                               ; preds = %75
  store i32 0, i32* %13, align 4
  br label %130

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %17, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %90, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %17, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %9, align 8
  %89 = icmp ne i64 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %85, %80
  %91 = load %struct.bcma_erom*, %struct.bcma_erom** %6, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @bcma_erom_seek(%struct.bcma_erom* %91, i32 %92)
  store i32 0, i32* %13, align 4
  br label %131

94:                                               ; preds = %85
  %95 = load i32, i32* @M_BHND, align 4
  %96 = load i32, i32* @M_NOWAIT, align 4
  %97 = call %struct.bcma_sport* @malloc(i32 32, i32 %95, i32 %96)
  %98 = bitcast %struct.bcma_sport* %97 to %struct.bcma_map*
  store %struct.bcma_map* %98, %struct.bcma_map** %16, align 8
  %99 = load %struct.bcma_map*, %struct.bcma_map** %16, align 8
  %100 = icmp eq %struct.bcma_map* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %94
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %13, align 4
  br label %131

103:                                              ; preds = %94
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.bcma_map*, %struct.bcma_map** %16, align 8
  %106 = getelementptr inbounds %struct.bcma_map, %struct.bcma_map* %105, i32 0, i32 5
  store i64 %104, i64* %106, align 8
  %107 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %17, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.bcma_map*, %struct.bcma_map** %16, align 8
  %110 = getelementptr inbounds %struct.bcma_map, %struct.bcma_map* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 8
  %111 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %17, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.bcma_map*, %struct.bcma_map** %16, align 8
  %114 = getelementptr inbounds %struct.bcma_map, %struct.bcma_map* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.bcma_map*, %struct.bcma_map** %16, align 8
  %116 = getelementptr inbounds %struct.bcma_map, %struct.bcma_map* %115, i32 0, i32 0
  store i32 -1, i32* %116, align 8
  %117 = load %struct.bcma_sport*, %struct.bcma_sport** %10, align 8
  %118 = getelementptr inbounds %struct.bcma_sport, %struct.bcma_sport* %117, i32 0, i32 2
  %119 = load %struct.bcma_map*, %struct.bcma_map** %16, align 8
  %120 = bitcast %struct.bcma_map* %119 to %struct.bcma_sport*
  %121 = load i32, i32* @m_link, align 4
  %122 = call i32 @STAILQ_INSERT_TAIL(%struct.bcma_sport_list* %118, %struct.bcma_sport* %120, i32 %121)
  %123 = load %struct.bcma_sport*, %struct.bcma_sport** %10, align 8
  %124 = getelementptr inbounds %struct.bcma_sport, %struct.bcma_sport* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %103
  %128 = load i64, i64* %15, align 8
  %129 = add nsw i64 %128, 1
  store i64 %129, i64* %15, align 8
  br label %37

130:                                              ; preds = %79
  br label %131

131:                                              ; preds = %130, %101, %90, %64, %41
  %132 = load i32, i32* %13, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = load %struct.bcma_sport_list*, %struct.bcma_sport_list** %11, align 8
  %136 = load %struct.bcma_sport*, %struct.bcma_sport** %10, align 8
  %137 = load i32, i32* @sp_link, align 4
  %138 = call i32 @STAILQ_INSERT_TAIL(%struct.bcma_sport_list* %135, %struct.bcma_sport* %136, i32 %137)
  br label %146

139:                                              ; preds = %131
  %140 = load %struct.bcma_sport*, %struct.bcma_sport** %10, align 8
  %141 = icmp ne %struct.bcma_sport* %140, null
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load %struct.bcma_sport*, %struct.bcma_sport** %10, align 8
  %144 = call i32 @bcma_free_sport(%struct.bcma_sport* %143)
  br label %145

145:                                              ; preds = %142, %139
  br label %146

146:                                              ; preds = %145, %134
  %147 = load i32, i32* %13, align 4
  store i32 %147, i32* %5, align 4
  br label %148

148:                                              ; preds = %146, %34, %23
  %149 = load i32, i32* %5, align 4
  ret i32 %149
}

declare dso_local i32 @bcma_erom_region_to_port_type(%struct.bcma_erom*, i64, i32*) #1

declare dso_local %struct.bcma_sport_list* @bcma_corecfg_get_port_list(%struct.bcma_corecfg*, i32) #1

declare dso_local %struct.bcma_sport* @bcma_alloc_sport(i32, i32) #1

declare dso_local i32 @EROM_LOG(%struct.bcma_erom*, i8*, i32, i32, i32, i64) #1

declare dso_local i32 @bhnd_port_type_name(i32) #1

declare dso_local i32 @bcma_erom_tell(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_parse_sport_region(%struct.bcma_erom*, %struct.bcma_erom_sport_region*) #1

declare dso_local i32 @bcma_erom_seek(%struct.bcma_erom*, i32) #1

declare dso_local %struct.bcma_sport* @malloc(i32, i32, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.bcma_sport_list*, %struct.bcma_sport*, i32) #1

declare dso_local i32 @bcma_free_sport(%struct.bcma_sport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
