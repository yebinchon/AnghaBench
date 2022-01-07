; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_get_core_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_get_core_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_info = type { i64, i64 }
%struct.bcma_erom = type { i32 }
%struct.bcma_erom_core = type { i32 }

@BCMA_EROM_ENTRY_TYPE_CORE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_BHND = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bhnd_core_info**, i64*)* @bcma_erom_get_core_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_get_core_table(i32* %0, %struct.bhnd_core_info** %1, i64* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.bhnd_core_info**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.bcma_erom*, align 8
  %8 = alloca %struct.bhnd_core_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bcma_erom_core, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.bcma_erom_core, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.bhnd_core_info** %1, %struct.bhnd_core_info*** %5, align 8
  store i64* %2, i64** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = bitcast i32* %17 to %struct.bcma_erom*
  store %struct.bcma_erom* %18, %struct.bcma_erom** %7, align 8
  store %struct.bhnd_core_info* null, %struct.bhnd_core_info** %8, align 8
  %19 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %20 = call i32 @bcma_erom_tell(%struct.bcma_erom* %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %22 = call i32 @bcma_erom_reset(%struct.bcma_erom* %21)
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %46, %3
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br i1 %26, label %27, label %49

27:                                               ; preds = %23
  %28 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %29 = load i32, i32* @BCMA_EROM_ENTRY_TYPE_CORE, align 4
  %30 = call i32 @bcma_erom_seek_next(%struct.bcma_erom* %28, i32 %29)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @ENOENT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %49

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %125

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %42 = call i32 @bcma_erom_parse_core(%struct.bcma_erom* %41, %struct.bcma_erom_core* %12)
  store i32 %42, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %125

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i64, i64* %10, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, i64* %10, align 8
  br label %23

49:                                               ; preds = %34, %23
  %50 = load i64, i64* %10, align 8
  %51 = load i32, i32* @M_BHND, align 4
  %52 = load i32, i32* @M_NOWAIT, align 4
  %53 = call %struct.bhnd_core_info* @mallocarray(i64 %50, i32 16, i32 %51, i32 %52)
  store %struct.bhnd_core_info* %53, %struct.bhnd_core_info** %8, align 8
  %54 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %55 = icmp eq %struct.bhnd_core_info* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @ENOMEM, align 4
  store i32 %57, i32* %11, align 4
  br label %125

58:                                               ; preds = %49
  %59 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %60 = call i32 @bcma_erom_reset(%struct.bcma_erom* %59)
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %121, %58
  %62 = load i64, i64* %13, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp slt i64 %62, %63
  br i1 %64, label %65, label %124

65:                                               ; preds = %61
  %66 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %67 = load i32, i32* @BCMA_EROM_ENTRY_TYPE_CORE, align 4
  %68 = call i32 @bcma_erom_seek_next(%struct.bcma_erom* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %125

72:                                               ; preds = %65
  %73 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %74 = call i32 @bcma_erom_parse_core(%struct.bcma_erom* %73, %struct.bcma_erom_core* %14)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %125

78:                                               ; preds = %72
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  br label %79

79:                                               ; preds = %111, %78
  %80 = load i64, i64* %16, align 8
  %81 = load i64, i64* %13, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %114

83:                                               ; preds = %79
  %84 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %84, i64 %85
  %87 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %90 = load i64, i64* %16, align 8
  %91 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %89, i64 %90
  %92 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp eq i64 %88, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %83
  %96 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %97 = load i64, i64* %13, align 8
  %98 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %96, i64 %97
  %99 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %102 = load i64, i64* %16, align 8
  %103 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %101, i64 %102
  %104 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %100, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %95
  %108 = load i32, i32* %15, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %15, align 4
  br label %110

110:                                              ; preds = %107, %95, %83
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %16, align 8
  %113 = add nsw i64 %112, 1
  store i64 %113, i64* %16, align 8
  br label %79

114:                                              ; preds = %79
  %115 = load i64, i64* %13, align 8
  %116 = load i32, i32* %15, align 4
  %117 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %118 = load i64, i64* %13, align 8
  %119 = getelementptr inbounds %struct.bhnd_core_info, %struct.bhnd_core_info* %117, i64 %118
  %120 = call i32 @bcma_erom_to_core_info(%struct.bcma_erom_core* %14, i64 %115, i32 %116, %struct.bhnd_core_info* %119)
  br label %121

121:                                              ; preds = %114
  %122 = load i64, i64* %13, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %13, align 8
  br label %61

124:                                              ; preds = %61
  br label %125

125:                                              ; preds = %124, %77, %71, %56, %44, %38
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %125
  %129 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %130 = load %struct.bhnd_core_info**, %struct.bhnd_core_info*** %5, align 8
  store %struct.bhnd_core_info* %129, %struct.bhnd_core_info** %130, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i64*, i64** %6, align 8
  store i64 %131, i64* %132, align 8
  br label %141

133:                                              ; preds = %125
  %134 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %135 = icmp ne %struct.bhnd_core_info* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %8, align 8
  %138 = load i32, i32* @M_BHND, align 4
  %139 = call i32 @free(%struct.bhnd_core_info* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %133
  br label %141

141:                                              ; preds = %140, %128
  %142 = load %struct.bcma_erom*, %struct.bcma_erom** %7, align 8
  %143 = load i32, i32* %9, align 4
  %144 = call i32 @bcma_erom_seek(%struct.bcma_erom* %142, i32 %143)
  %145 = load i32, i32* %11, align 4
  ret i32 %145
}

declare dso_local i32 @bcma_erom_tell(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_reset(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_seek_next(%struct.bcma_erom*, i32) #1

declare dso_local i32 @bcma_erom_parse_core(%struct.bcma_erom*, %struct.bcma_erom_core*) #1

declare dso_local %struct.bhnd_core_info* @mallocarray(i64, i32, i32, i32) #1

declare dso_local i32 @bcma_erom_to_core_info(%struct.bcma_erom_core*, i64, i32, %struct.bhnd_core_info*) #1

declare dso_local i32 @free(%struct.bhnd_core_info*, i32) #1

declare dso_local i32 @bcma_erom_seek(%struct.bcma_erom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
