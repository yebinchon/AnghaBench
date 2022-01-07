; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_load_boot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_load_boot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64 }

@FLASH_FW_START_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"boot image encroaching on firmware region\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@FLASH_FW_START = common dso_local global i32 0, align 4
@BOOT_MIN_SIZE = common dso_local global i32 0, align 4
@BOOT_MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"boot image too small/large\0A\00", align 1
@BOOT_SIGNATURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Boot image missing signature\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCIR_SIGNATURE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"PCI header missing signature\0A\00", align 1
@VENDOR_ID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Vendor ID missing signature\0A\00", align 1
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@SF_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"boot image download failed, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_load_boot(%struct.adapter* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = mul i32 %19, 1024
  store i32 %20, i32* %17, align 4
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.adapter*, %struct.adapter** %6, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = udiv i32 %24, %28
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %17, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %30, %31
  %33 = lshr i32 %32, 16
  %34 = load i32, i32* @FLASH_FW_START_SEC, align 4
  %35 = icmp ugt i32 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load %struct.adapter*, %struct.adapter** %6, align 8
  %38 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %37, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EFBIG, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %5, align 4
  br label %203

41:                                               ; preds = %4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* %9, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @FLASH_FW_START, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @DIV_ROUND_UP(i32 %49, i32 %50)
  store i32 %51, i32* %16, align 4
  %52 = load %struct.adapter*, %struct.adapter** %6, align 8
  %53 = load i32, i32* %17, align 4
  %54 = lshr i32 %53, 16
  %55 = load i32, i32* %17, align 4
  %56 = lshr i32 %55, 16
  %57 = load i32, i32* %16, align 4
  %58 = add i32 %56, %57
  %59 = sub i32 %58, 1
  %60 = call i32 @t4_flash_erase_sectors(%struct.adapter* %52, i32 %54, i32 %59)
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %48
  br label %194

67:                                               ; preds = %63
  %68 = load i32*, i32** %7, align 8
  %69 = bitcast i32* %68 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %10, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le16_to_cpu(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = bitcast i32* %79 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %80, %struct.TYPE_5__** %12, align 8
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @BOOT_MIN_SIZE, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %88, label %84

84:                                               ; preds = %67
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* @BOOT_MAX_SIZE, align 4
  %87 = icmp ugt i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84, %67
  %89 = load %struct.adapter*, %struct.adapter** %6, align 8
  %90 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %89, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @EFBIG, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %203

93:                                               ; preds = %84
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = inttoptr i64 %96 to i32*
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @le16_to_cpu(i32 %98)
  %100 = load i32, i32* @BOOT_SIGNATURE, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %107

102:                                              ; preds = %93
  %103 = load %struct.adapter*, %struct.adapter** %6, align 8
  %104 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %103, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %5, align 4
  br label %203

107:                                              ; preds = %93
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = inttoptr i64 %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @le32_to_cpu(i32 %112)
  %114 = load i64, i64* @PCIR_SIGNATURE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %107
  %117 = load %struct.adapter*, %struct.adapter** %6, align 8
  %118 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %117, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %5, align 4
  br label %203

121:                                              ; preds = %107
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = inttoptr i64 %124 to i32*
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @le16_to_cpu(i32 %126)
  %128 = load i32, i32* @VENDOR_ID, align 4
  %129 = icmp ne i32 %127, %128
  br i1 %129, label %130, label %135

130:                                              ; preds = %121
  %131 = load %struct.adapter*, %struct.adapter** %6, align 8
  %132 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %131, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %133 = load i32, i32* @EINVAL, align 4
  %134 = sub nsw i32 0, %133
  store i32 %134, i32* %5, align 4
  br label %203

135:                                              ; preds = %121
  %136 = load %struct.adapter*, %struct.adapter** %6, align 8
  %137 = load i32, i32* @PCI_DEVICE_ID, align 4
  %138 = call i32 @t4_os_pci_read_cfg2(%struct.adapter* %136, i32 %137, i32* %15)
  %139 = load i32, i32* %15, align 4
  %140 = and i32 %139, 61695
  store i32 %140, i32* %15, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = inttoptr i64 %143 to i32*
  %145 = load i32, i32* %144, align 4
  %146 = call i32 @le16_to_cpu(i32 %145)
  %147 = load i32, i32* %15, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %135
  %150 = load i32, i32* %15, align 4
  %151 = load i32*, i32** %7, align 8
  %152 = call i32 @modify_device_id(i32 %150, i32* %151)
  br label %153

153:                                              ; preds = %149, %135
  %154 = load i32, i32* %17, align 4
  store i32 %154, i32* %14, align 4
  %155 = load i64, i64* @SF_PAGE_SIZE, align 8
  %156 = load i32, i32* %9, align 4
  %157 = zext i32 %156 to i64
  %158 = sub nsw i64 %157, %155
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %9, align 4
  br label %160

160:                                              ; preds = %181, %153
  %161 = load i32, i32* %9, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %187

163:                                              ; preds = %160
  %164 = load i64, i64* @SF_PAGE_SIZE, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %164
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %14, align 4
  %169 = load i64, i64* @SF_PAGE_SIZE, align 8
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 %169
  store i32* %171, i32** %7, align 8
  %172 = load %struct.adapter*, %struct.adapter** %6, align 8
  %173 = load i32, i32* %14, align 4
  %174 = load i64, i64* @SF_PAGE_SIZE, align 8
  %175 = load i32*, i32** %7, align 8
  %176 = call i32 @t4_write_flash(%struct.adapter* %172, i32 %173, i64 %174, i32* %175, i32 0)
  store i32 %176, i32* %13, align 4
  %177 = load i32, i32* %13, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %163
  br label %194

180:                                              ; preds = %163
  br label %181

181:                                              ; preds = %180
  %182 = load i64, i64* @SF_PAGE_SIZE, align 8
  %183 = load i32, i32* %9, align 4
  %184 = zext i32 %183 to i64
  %185 = sub nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %9, align 4
  br label %160

187:                                              ; preds = %160
  %188 = load %struct.adapter*, %struct.adapter** %6, align 8
  %189 = load i32, i32* %17, align 4
  %190 = load i64, i64* @SF_PAGE_SIZE, align 8
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %192 = bitcast %struct.TYPE_6__* %191 to i32*
  %193 = call i32 @t4_write_flash(%struct.adapter* %188, i32 %189, i64 %190, i32* %192, i32 0)
  store i32 %193, i32* %13, align 4
  br label %194

194:                                              ; preds = %187, %179, %66
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %201

197:                                              ; preds = %194
  %198 = load %struct.adapter*, %struct.adapter** %6, align 8
  %199 = load i32, i32* %13, align 4
  %200 = call i32 (%struct.adapter*, i8*, ...) @CH_ERR(%struct.adapter* %198, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %199)
  br label %201

201:                                              ; preds = %197, %194
  %202 = load i32, i32* %13, align 4
  store i32 %202, i32* %5, align 4
  br label %203

203:                                              ; preds = %201, %130, %116, %102, %88, %36
  %204 = load i32, i32* %5, align 4
  ret i32 %204
}

declare dso_local i32 @CH_ERR(%struct.adapter*, i8*, ...) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @t4_flash_erase_sectors(%struct.adapter*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @t4_os_pci_read_cfg2(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @modify_device_id(i32, i32*) #1

declare dso_local i32 @t4_write_flash(%struct.adapter*, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
