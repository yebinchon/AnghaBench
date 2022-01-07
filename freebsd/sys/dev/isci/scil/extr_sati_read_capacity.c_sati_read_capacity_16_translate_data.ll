; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_capacity.c_sati_read_capacity_16_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati_read_capacity.c_sati_read_capacity_16_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32 }

@ATA_IDENTIFY_LOGICAL_SECTOR_PER_PHYSICAL_SECTOR_ENABLE = common dso_local global i32 0, align 4
@ATA_IDENTIFY_LOGICAL_SECTOR_PER_PHYSICAL_SECTOR_MASK = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_DSM_TRIM_SUPPORT = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_DETERMINISTIC_READ_AFTER_TRIM = common dso_local global i32 0, align 4
@SATI_DEVICE_CAP_READ_ZERO_AFTER_TRIM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sati_read_capacity_16_translate_data(%struct.TYPE_8__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %18, %struct.TYPE_9__** %10, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.TYPE_9__*
  %21 = call i32 @sati_ata_identify_device_get_sector_info(%struct.TYPE_9__* %20, i32* %8, i32* %7, i32* %9)
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %3
  %25 = load i32, i32* %8, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 %28, 1
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24, %3
  %31 = load i32, i32* %7, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = ashr i32 %35, 24
  %37 = and i32 %36, 255
  %38 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %33, i8* %34, i32 0, i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %8, align 4
  %42 = ashr i32 %41, 16
  %43 = and i32 %42, 255
  %44 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %39, i8* %40, i32 1, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* %8, align 4
  %48 = ashr i32 %47, 8
  %49 = and i32 %48, 255
  %50 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %45, i8* %46, i32 2, i32 %49)
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = and i32 %53, 255
  %55 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %51, i8* %52, i32 3, i32 %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 24
  %60 = and i32 %59, 255
  %61 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %56, i8* %57, i32 4, i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %62, i8* %63, i32 5, i32 %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 255
  %73 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %68, i8* %69, i32 6, i32 %72)
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32, i32* %7, align 4
  %77 = and i32 %76, 255
  %78 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %74, i8* %75, i32 7, i32 %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load i32, i32* %9, align 4
  %82 = ashr i32 %81, 24
  %83 = and i32 %82, 255
  %84 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %79, i8* %80, i32 8, i32 %83)
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = ashr i32 %87, 16
  %89 = and i32 %88, 255
  %90 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %85, i8* %86, i32 9, i32 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %92 = load i8*, i8** %6, align 8
  %93 = load i32, i32* %9, align 4
  %94 = ashr i32 %93, 8
  %95 = and i32 %94, 255
  %96 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %91, i8* %92, i32 10, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %98 = load i8*, i8** %6, align 8
  %99 = load i32, i32* %9, align 4
  %100 = and i32 %99, 255
  %101 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %97, i8* %98, i32 11, i32 %100)
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %102, i8* %103, i32 12, i32 0)
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @ATA_IDENTIFY_LOGICAL_SECTOR_PER_PHYSICAL_SECTOR_ENABLE, align 4
  %109 = and i32 %107, %108
  store i32 %109, i32* %11, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ATA_IDENTIFY_LOGICAL_SECTOR_PER_PHYSICAL_SECTOR_MASK, align 4
  %114 = and i32 %112, %113
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = shl i32 1, %115
  store i32 %116, i32* %13, align 4
  %117 = load i32, i32* %11, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %30
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %121 = load i8*, i8** %6, align 8
  %122 = load i32, i32* %12, align 4
  %123 = and i32 %122, 255
  %124 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %120, i8* %121, i32 13, i32 %123)
  br label %129

125:                                              ; preds = %30
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %127 = load i8*, i8** %6, align 8
  %128 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %126, i8* %127, i32 13, i32 0)
  br label %129

129:                                              ; preds = %125, %119
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  store i32 %132, i32* %14, align 4
  %133 = load i32, i32* %14, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  store i32 0, i32* %15, align 4
  br label %142

136:                                              ; preds = %129
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* %14, align 4
  %139 = sub nsw i32 %137, %138
  %140 = load i32, i32* %13, align 4
  %141 = srem i32 %139, %140
  store i32 %141, i32* %15, align 4
  br label %142

142:                                              ; preds = %136, %135
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @SATI_DEVICE_CAP_DSM_TRIM_SUPPORT, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %175

151:                                              ; preds = %142
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 0
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @SATI_DEVICE_CAP_DETERMINISTIC_READ_AFTER_TRIM, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %151
  %161 = load i32, i32* %16, align 4
  %162 = or i32 %161, 128
  store i32 %162, i32* %16, align 4
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load %struct.TYPE_7__*, %struct.TYPE_7__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @SATI_DEVICE_CAP_READ_ZERO_AFTER_TRIM, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %160
  %172 = load i32, i32* %16, align 4
  %173 = or i32 %172, 64
  store i32 %173, i32* %16, align 4
  br label %174

174:                                              ; preds = %171, %160
  br label %175

175:                                              ; preds = %174, %151, %142
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %177 = load i8*, i8** %6, align 8
  %178 = load i32, i32* %15, align 4
  %179 = ashr i32 %178, 8
  %180 = and i32 %179, 63
  %181 = load i32, i32* %16, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %176, i8* %177, i32 14, i32 %182)
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = load i32, i32* %15, align 4
  %187 = and i32 %186, 255
  %188 = call i32 @sati_set_data_byte(%struct.TYPE_8__* %184, i8* %185, i32 15, i32 %187)
  ret void
}

declare dso_local i32 @sati_ata_identify_device_get_sector_info(%struct.TYPE_9__*, i32*, i32*, i32*) #1

declare dso_local i32 @sati_set_data_byte(%struct.TYPE_8__*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
