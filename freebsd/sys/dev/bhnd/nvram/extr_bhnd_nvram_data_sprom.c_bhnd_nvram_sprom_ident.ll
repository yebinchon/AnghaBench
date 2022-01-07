; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/nvram/extr_bhnd_nvram_data_sprom.c_bhnd_nvram_sprom_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }
%struct.bhnd_nvram_io = type { i32 }

@BHND_NVRAM_CRC8_INITIAL = common dso_local global i32 0, align 4
@bhnd_sprom_num_layouts = common dso_local global i64 0, align 8
@bhnd_sprom_layouts = common dso_local global %struct.TYPE_5__* null, align 8
@SPROM_LAYOUT_MAGIC_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SPROM layout defined out-of-order\00", align 1
@BHND_NVRAM_CRC8_VALID = common dso_local global i32 0, align 4
@BHND_NV_VERBOSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [54 x i8] c"invalid sprom %hhu signature: 0x%hx (expected 0x%hx)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"sprom %hhu CRC error (crc=%#hhx, expected=%#x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"sprom parsing failed with %zu CRC errors\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bhnd_nvram_io*, %struct.TYPE_5__**)* @bhnd_nvram_sprom_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bhnd_nvram_sprom_ident(%struct.bhnd_nvram_io* %0, %struct.TYPE_5__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bhnd_nvram_io*, align 8
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca [512 x i32*], align 16
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca [2 x i32], align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.bhnd_nvram_io* %0, %struct.bhnd_nvram_io** %4, align 8
  store %struct.TYPE_5__** %1, %struct.TYPE_5__*** %5, align 8
  %20 = load i32, i32* @BHND_NVRAM_CRC8_INITIAL, align 4
  store i32 %20, i32* %6, align 4
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %10, align 8
  br label %21

21:                                               ; preds = %156, %2
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* @bhnd_sprom_num_layouts, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %159

25:                                               ; preds = %21
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** @bhnd_sprom_layouts, align 8
  %27 = load i64, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i64 %27
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %11, align 8
  store i32 1, i32* %17, align 4
  store i32 1, i32* %18, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @SPROM_LAYOUT_MAGIC_NONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 0, i32* %18, align 4
  br label %36

36:                                               ; preds = %35, %25
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ugt i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = call i32 @BHND_NV_PANIC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %36
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %13, align 8
  br label %50

50:                                               ; preds = %79, %44
  %51 = load i64, i64* %13, align 8
  %52 = icmp ugt i64 %51, 0
  br i1 %52, label %53, label %86

53:                                               ; preds = %50
  %54 = load i64, i64* %13, align 8
  %55 = call i64 @bhnd_nv_ummin(i64 %54, i32 4096)
  store i64 %55, i64* %19, align 8
  %56 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %4, align 8
  %57 = load i64, i64* %8, align 8
  %58 = getelementptr inbounds [512 x i32*], [512 x i32*]* %12, i64 0, i64 0
  %59 = load i64, i64* %19, align 8
  %60 = trunc i64 %59 to i32
  %61 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %56, i64 %57, i32** %58, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %170

65:                                               ; preds = %53
  %66 = getelementptr inbounds [512 x i32*], [512 x i32*]* %12, i64 0, i64 0
  %67 = load i64, i64* %19, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @bhnd_nvram_crc8(i32** %66, i64 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @BHND_NVRAM_CRC8_VALID, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  store i32 %73, i32* %17, align 4
  %74 = load i32, i32* %17, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %65
  %77 = load i64, i64* %7, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %76, %65
  %80 = load i64, i64* %19, align 8
  %81 = load i64, i64* %13, align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* %13, align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %8, align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %50

86:                                               ; preds = %50
  %87 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %4, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = bitcast [2 x i32]* %15 to i32**
  %92 = call i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io* %87, i64 %90, i32** %91, i32 8)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %86
  %96 = load i32, i32* %9, align 4
  store i32 %96, i32* %3, align 4
  br label %170

97:                                               ; preds = %86
  %98 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 1
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* %16, align 4
  %106 = icmp eq i32 %105, 16
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  store i32 1, i32* %16, align 4
  br label %108

108:                                              ; preds = %107, %104, %97
  %109 = load i32, i32* %16, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %156

115:                                              ; preds = %108
  %116 = load %struct.bhnd_nvram_io*, %struct.bhnd_nvram_io** %4, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %118 = call i32 @bhnd_nvram_sprom_check_magic(%struct.bhnd_nvram_io* %116, %struct.TYPE_5__* %117, i32* %14)
  store i32 %118, i32* %9, align 4
  %119 = load i32, i32* %9, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %137

121:                                              ; preds = %115
  %122 = load i32, i32* %17, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %121
  %125 = load i64, i64* @BHND_NV_VERBOSE, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %124, %121
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = load i32, i32* %14, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %129, i32 %130, i32 %133)
  %135 = load i32, i32* @ENXIO, align 4
  store i32 %135, i32* %3, align 4
  br label %170

136:                                              ; preds = %124
  br label %156

137:                                              ; preds = %115
  %138 = load i32, i32* %17, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %153, label %140

140:                                              ; preds = %137
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %140
  %144 = load i64, i64* @BHND_NV_VERBOSE, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143, %140
  %147 = load i32, i32* %16, align 4
  %148 = sext i32 %147 to i64
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @BHND_NVRAM_CRC8_VALID, align 4
  %151 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i64 %148, i32 %149, i32 %150)
  br label %152

152:                                              ; preds = %146, %143
  br label %156

153:                                              ; preds = %137
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %155 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  store %struct.TYPE_5__* %154, %struct.TYPE_5__** %155, align 8
  store i32 0, i32* %3, align 4
  br label %170

156:                                              ; preds = %152, %136, %114
  %157 = load i64, i64* %10, align 8
  %158 = add i64 %157, 1
  store i64 %158, i64* %10, align 8
  br label %21

159:                                              ; preds = %21
  %160 = load i64, i64* %7, align 8
  %161 = icmp ugt i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %159
  %163 = load i64, i64* @BHND_NV_VERBOSE, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i64, i64* %7, align 8
  %167 = call i32 (i8*, i64, ...) @BHND_NV_LOG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %166)
  br label %168

168:                                              ; preds = %165, %162, %159
  %169 = load i32, i32* @ENXIO, align 4
  store i32 %169, i32* %3, align 4
  br label %170

170:                                              ; preds = %168, %153, %127, %95, %63
  %171 = load i32, i32* %3, align 4
  ret i32 %171
}

declare dso_local i32 @BHND_NV_PANIC(i8*) #1

declare dso_local i64 @bhnd_nv_ummin(i64, i32) #1

declare dso_local i32 @bhnd_nvram_io_read(%struct.bhnd_nvram_io*, i64, i32**, i32) #1

declare dso_local i32 @bhnd_nvram_crc8(i32**, i64, i32) #1

declare dso_local i32 @bhnd_nvram_sprom_check_magic(%struct.bhnd_nvram_io*, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @BHND_NV_LOG(i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
