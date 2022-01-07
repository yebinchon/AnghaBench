; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_device_desc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/template/extr_usb_template.c_usb_make_device_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_temp_setup = type { i32, i32, i32, i32, i64 }
%struct.usb_temp_device_desc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.usb_temp_config_desc** }
%struct.usb_temp_config_desc = type { i32 }
%struct.usb_temp_data = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.usb_temp_device_desc* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i32, i64, i32, i32, i32, i32 }

@UDESC_DEVICE = common dso_local global i32 0, align 4
@UDESC_DEVICE_QUALIFIER = common dso_local global i32 0, align 4
@USB_ERR_INVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_temp_setup*, %struct.usb_temp_device_desc*)* @usb_make_device_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb_make_device_desc(%struct.usb_temp_setup* %0, %struct.usb_temp_device_desc* %1) #0 {
  %3 = alloca %struct.usb_temp_setup*, align 8
  %4 = alloca %struct.usb_temp_device_desc*, align 8
  %5 = alloca %struct.usb_temp_data*, align 8
  %6 = alloca %struct.usb_temp_config_desc**, align 8
  %7 = alloca i32, align 4
  store %struct.usb_temp_setup* %0, %struct.usb_temp_setup** %3, align 8
  store %struct.usb_temp_device_desc* %1, %struct.usb_temp_device_desc** %4, align 8
  %8 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %9 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %12 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = add i64 %14, 112
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 8
  %17 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %18 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %17, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %20 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %19, i32 0, i32 9
  %21 = load %struct.usb_temp_config_desc**, %struct.usb_temp_config_desc*** %20, align 8
  store %struct.usb_temp_config_desc** %21, %struct.usb_temp_config_desc*** %6, align 8
  %22 = load %struct.usb_temp_config_desc**, %struct.usb_temp_config_desc*** %6, align 8
  %23 = icmp ne %struct.usb_temp_config_desc** %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %29, %24
  %26 = load %struct.usb_temp_config_desc**, %struct.usb_temp_config_desc*** %6, align 8
  %27 = load %struct.usb_temp_config_desc*, %struct.usb_temp_config_desc** %26, align 8
  %28 = icmp ne %struct.usb_temp_config_desc* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %25
  %30 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %31 = load %struct.usb_temp_config_desc**, %struct.usb_temp_config_desc*** %6, align 8
  %32 = load %struct.usb_temp_config_desc*, %struct.usb_temp_config_desc** %31, align 8
  %33 = call i32 @usb_make_config_desc(%struct.usb_temp_setup* %30, %struct.usb_temp_config_desc* %32)
  %34 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %35 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.usb_temp_config_desc**, %struct.usb_temp_config_desc*** %6, align 8
  %39 = getelementptr inbounds %struct.usb_temp_config_desc*, %struct.usb_temp_config_desc** %38, i32 1
  store %struct.usb_temp_config_desc** %39, %struct.usb_temp_config_desc*** %6, align 8
  br label %25

40:                                               ; preds = %25
  br label %41

41:                                               ; preds = %40, %2
  %42 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %43 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %42, i32 0, i32 4
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %218

46:                                               ; preds = %41
  %47 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %48 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call %struct.usb_temp_data* @USB_ADD_BYTES(i64 %49, i32 %50)
  store %struct.usb_temp_data* %51, %struct.usb_temp_data** %5, align 8
  %52 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %53 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %54 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %53, i32 0, i32 2
  store %struct.usb_temp_device_desc* %52, %struct.usb_temp_device_desc** %54, align 8
  %55 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %56 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 56, i32* %57, align 8
  %58 = load i32, i32* @UDESC_DEVICE, align 4
  %59 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %60 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 13
  store i32 %58, i32* %61, align 4
  %62 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %63 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %66 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 12
  store i32 %64, i32* %67, align 8
  %68 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %69 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %72 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 11
  store i32 %70, i32* %73, align 4
  %74 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %75 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %78 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 10
  store i32 %76, i32* %79, align 8
  %80 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %81 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 9
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %85 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @USETW(i32 %83, i32 %86)
  %88 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %89 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 8
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %93 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @USETW(i32 %91, i32 %94)
  %96 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %97 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %101 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @USETW(i32 %99, i32 %102)
  %104 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %105 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %108 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 6
  store i32 %106, i32* %109, align 8
  %110 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %111 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %110, i32 0, i32 7
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %114 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 5
  store i32 %112, i32* %115, align 4
  %116 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %117 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %120 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 4
  store i32 %118, i32* %121, align 8
  %122 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %123 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = sub nsw i32 %124, 1
  %126 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %127 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 1
  store i32 %125, i32* %128, align 4
  %129 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %130 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 0
  store i32 48, i32* %131, align 8
  %132 = load i32, i32* @UDESC_DEVICE_QUALIFIER, align 4
  %133 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %134 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 7
  store i32 %132, i32* %135, align 4
  %136 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %137 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %140 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 6
  store i32 %138, i32* %141, align 8
  %142 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %143 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %146 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 5
  store i32 %144, i32* %147, align 4
  %148 = load %struct.usb_temp_device_desc*, %struct.usb_temp_device_desc** %4, align 8
  %149 = getelementptr inbounds %struct.usb_temp_device_desc, %struct.usb_temp_device_desc* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %152 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 4
  store i32 %150, i32* %153, align 8
  %154 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %155 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i32 0, i32 3
  store i64 0, i64* %156, align 8
  %157 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %158 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @USETW(i32 %160, i32 512)
  %162 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %163 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %166 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  switch i32 %167, label %213 [
    i32 130, label %168
    i32 132, label %177
    i32 131, label %186
    i32 128, label %195
    i32 129, label %204
  ]

168:                                              ; preds = %46
  %169 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %170 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @USETW(i32 %172, i32 272)
  %174 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %175 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 2
  store i32 8, i32* %176, align 8
  br label %217

177:                                              ; preds = %46
  %178 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %179 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @USETW(i32 %181, i32 272)
  %183 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %184 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 2
  store i32 32, i32* %185, align 8
  br label %217

186:                                              ; preds = %46
  %187 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %188 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @USETW(i32 %190, i32 512)
  %192 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %193 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %193, i32 0, i32 2
  store i32 64, i32* %194, align 8
  br label %217

195:                                              ; preds = %46
  %196 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %197 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @USETW(i32 %199, i32 592)
  %201 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %202 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 2
  store i32 255, i32* %203, align 8
  br label %217

204:                                              ; preds = %46
  %205 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %206 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 3
  %208 = load i32, i32* %207, align 4
  %209 = call i32 @USETW(i32 %208, i32 768)
  %210 = load %struct.usb_temp_data*, %struct.usb_temp_data** %5, align 8
  %211 = getelementptr inbounds %struct.usb_temp_data, %struct.usb_temp_data* %210, i32 0, i32 0
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 2
  store i32 9, i32* %212, align 8
  br label %217

213:                                              ; preds = %46
  %214 = load i32, i32* @USB_ERR_INVAL, align 4
  %215 = load %struct.usb_temp_setup*, %struct.usb_temp_setup** %3, align 8
  %216 = getelementptr inbounds %struct.usb_temp_setup, %struct.usb_temp_setup* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 4
  br label %217

217:                                              ; preds = %213, %204, %195, %186, %177, %168
  br label %218

218:                                              ; preds = %217, %41
  ret void
}

declare dso_local i32 @usb_make_config_desc(%struct.usb_temp_setup*, %struct.usb_temp_config_desc*) #1

declare dso_local %struct.usb_temp_data* @USB_ADD_BYTES(i64, i32) #1

declare dso_local i32 @USETW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
