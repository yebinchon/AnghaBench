; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_read_labels.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_read_labels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_dev = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.nvdimm_label_index = type { i64 }

@M_NVDIMM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_dev*)* @read_labels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_labels(%struct.nvdimm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvdimm_dev*, align 8
  %4 = alloca %struct.nvdimm_label_index*, align 8
  %5 = alloca %struct.nvdimm_label_index*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.nvdimm_dev* %0, %struct.nvdimm_dev** %3, align 8
  store i64 256, i64* %7, align 8
  br label %13

13:                                               ; preds = %27, %1
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %14, 8
  %16 = mul i64 8, %15
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %8, align 8
  %19 = mul i64 %18, 4
  %20 = add i64 %17, %19
  %21 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %22 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  br label %30

26:                                               ; preds = %13
  br label %27

27:                                               ; preds = %26
  %28 = load i64, i64* %7, align 8
  %29 = add i64 %28, 256
  store i64 %29, i64* %7, align 8
  br label %13

30:                                               ; preds = %25
  %31 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %33, %34
  %36 = udiv i64 %35, 4
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @roundup2(i64 %37, i32 8)
  %39 = sdiv i32 %38, 8
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = mul i64 2, %41
  %43 = load i32, i32* @M_NVDIMM, align 4
  %44 = load i32, i32* @M_WAITOK, align 4
  %45 = call i8* @malloc(i64 %42, i32 %43, i32 %44)
  %46 = bitcast i8* %45 to %struct.nvdimm_label_index*
  store %struct.nvdimm_label_index* %46, %struct.nvdimm_label_index** %4, align 8
  %47 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %48 = bitcast %struct.nvdimm_label_index* %47 to i32*
  %49 = load i64, i64* %7, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = bitcast i32* %50 to i8*
  %52 = bitcast i8* %51 to %struct.nvdimm_label_index*
  store %struct.nvdimm_label_index* %52, %struct.nvdimm_label_index** %5, align 8
  %53 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %54 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %55 = bitcast %struct.nvdimm_label_index* %54 to i8*
  %56 = load i64, i64* %7, align 8
  %57 = mul i64 2, %56
  %58 = trunc i64 %57 to i32
  %59 = call i32 @read_label_area(%struct.nvdimm_dev* %53, i8* %55, i32 0, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %30
  %63 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %64 = load i32, i32* @M_NVDIMM, align 4
  %65 = call i32 @free(%struct.nvdimm_label_index* %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  store i32 %66, i32* %2, align 4
  br label %166

67:                                               ; preds = %30
  %68 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @label_index_is_valid(%struct.nvdimm_label_index* %68, i64 %69, i64 %70, i32 0)
  store i32 %71, i32* %11, align 4
  %72 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %7, align 8
  %75 = call i32 @label_index_is_valid(%struct.nvdimm_label_index* %72, i64 %73, i64 %74, i32 1)
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %86, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %83 = load i32, i32* @M_NVDIMM, align 4
  %84 = call i32 @free(%struct.nvdimm_label_index* %82, i32 %83)
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %2, align 4
  br label %166

86:                                               ; preds = %78, %67
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %94 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = trunc i64 %95 to i32
  %97 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %5, align 8
  %98 = getelementptr inbounds %struct.nvdimm_label_index, %struct.nvdimm_label_index* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = sub nsw i32 %96, %100
  %102 = add nsw i32 %101, 3
  %103 = srem i32 %102, 3
  %104 = icmp eq i32 %103, 1
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  store i32 0, i32* %12, align 4
  br label %107

106:                                              ; preds = %92
  store i32 0, i32* %11, align 4
  br label %107

107:                                              ; preds = %106, %105
  br label %108

108:                                              ; preds = %107, %89, %86
  %109 = load i64, i64* %7, align 8
  %110 = load i32, i32* @M_NVDIMM, align 4
  %111 = load i32, i32* @M_WAITOK, align 4
  %112 = call i8* @malloc(i64 %109, i32 %110, i32 %111)
  %113 = bitcast i8* %112 to %struct.TYPE_2__*
  %114 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %115 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %114, i32 0, i32 1
  store %struct.TYPE_2__* %113, %struct.TYPE_2__** %115, align 8
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  br label %122

120:                                              ; preds = %108
  %121 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %5, align 8
  br label %122

122:                                              ; preds = %120, %118
  %123 = phi %struct.nvdimm_label_index* [ %119, %118 ], [ %121, %120 ]
  %124 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %125 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %124, i32 0, i32 1
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = load i64, i64* %7, align 8
  %128 = call i32 @bcopy(%struct.nvdimm_label_index* %123, %struct.TYPE_2__* %126, i64 %127)
  %129 = load %struct.nvdimm_label_index*, %struct.nvdimm_label_index** %4, align 8
  %130 = load i32, i32* @M_NVDIMM, align 4
  %131 = call i32 @free(%struct.nvdimm_label_index* %129, i32 %130)
  %132 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %133 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %132, i32 0, i32 1
  %134 = load %struct.TYPE_2__*, %struct.TYPE_2__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %139 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %138, i32 0, i32 1
  %140 = load %struct.TYPE_2__*, %struct.TYPE_2__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @bit_ffc_at(i32* %137, i32 0, i32 %142, i32* %10)
  br label %144

144:                                              ; preds = %147, %122
  %145 = load i32, i32* %10, align 4
  %146 = icmp sge i32 %145, 0
  br i1 %146, label %147, label %165

147:                                              ; preds = %144
  %148 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %149 = load i32, i32* %10, align 4
  %150 = call i32 @read_label(%struct.nvdimm_dev* %148, i32 %149)
  %151 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %152 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %151, i32 0, i32 1
  %153 = load %struct.TYPE_2__*, %struct.TYPE_2__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = inttoptr i64 %155 to i32*
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  %159 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %160 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %159, i32 0, i32 1
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @bit_ffc_at(i32* %156, i32 %158, i32 %163, i32* %10)
  br label %144

165:                                              ; preds = %144
  store i32 0, i32* %2, align 4
  br label %166

166:                                              ; preds = %165, %81, %62
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local i32 @roundup2(i64, i32) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @read_label_area(%struct.nvdimm_dev*, i8*, i32, i32) #1

declare dso_local i32 @free(%struct.nvdimm_label_index*, i32) #1

declare dso_local i32 @label_index_is_valid(%struct.nvdimm_label_index*, i64, i64, i32) #1

declare dso_local i32 @bcopy(%struct.nvdimm_label_index*, %struct.TYPE_2__*, i64) #1

declare dso_local i32 @bit_ffc_at(i32*, i32, i32, i32*) #1

declare dso_local i32 @read_label(%struct.nvdimm_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
