; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_sati.c_sati_translate_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_24__*, i8*, i8*)* @sati_translate_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sati_translate_data(%struct.TYPE_24__* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = call i32 @sati_device_update_capabilities(i32 %9, i32* %11)
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %121 [
    i32 144, label %16
    i32 145, label %21
    i32 146, label %26
    i32 147, label %31
    i32 148, label %36
    i32 129, label %41
    i32 128, label %46
    i32 135, label %51
    i32 132, label %56
    i32 130, label %61
    i32 133, label %66
    i32 134, label %71
    i32 136, label %76
    i32 131, label %81
    i32 138, label %86
    i32 142, label %91
    i32 139, label %96
    i32 137, label %101
    i32 140, label %106
    i32 141, label %111
    i32 143, label %116
  ]

16:                                               ; preds = %3
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @sati_inquiry_standard_translate_data(%struct.TYPE_24__* %17, i8* %18, i8* %19)
  br label %122

21:                                               ; preds = %3
  %22 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @sati_inquiry_serial_number_translate_data(%struct.TYPE_24__* %22, i8* %23, i8* %24)
  br label %122

26:                                               ; preds = %3
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @sati_inquiry_device_id_translate_data(%struct.TYPE_24__* %27, i8* %28, i8* %29)
  br label %122

31:                                               ; preds = %3
  %32 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @sati_inquiry_block_device_translate_data(%struct.TYPE_24__* %32, i8* %33, i8* %34)
  br label %122

36:                                               ; preds = %3
  %37 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = call i32 @sati_inquiry_ata_information_translate_data(%struct.TYPE_24__* %37, i8* %38, i8* %39)
  br label %122

41:                                               ; preds = %3
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %43 = load i8*, i8** %5, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @sati_read_capacity_10_translate_data(%struct.TYPE_24__* %42, i8* %43, i8* %44)
  br label %122

46:                                               ; preds = %3
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i8*, i8** %6, align 8
  %50 = call i32 @sati_read_capacity_16_translate_data(%struct.TYPE_24__* %47, i8* %48, i8* %49)
  br label %122

51:                                               ; preds = %3
  %52 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @sati_mode_sense_6_caching_translate_data(%struct.TYPE_24__* %52, i8* %53, i8* %54)
  br label %122

56:                                               ; preds = %3
  %57 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %58 = load i8*, i8** %5, align 8
  %59 = load i8*, i8** %6, align 8
  %60 = call i32 @sati_mode_sense_6_informational_excp_control_translate_data(%struct.TYPE_24__* %57, i8* %58, i8* %59)
  br label %122

61:                                               ; preds = %3
  %62 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %63 = load i8*, i8** %5, align 8
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @sati_mode_sense_6_read_write_error_translate_data(%struct.TYPE_24__* %62, i8* %63, i8* %64)
  br label %122

66:                                               ; preds = %3
  %67 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i8*, i8** %6, align 8
  %70 = call i32 @sati_mode_sense_6_disconnect_reconnect_translate_data(%struct.TYPE_24__* %67, i8* %68, i8* %69)
  br label %122

71:                                               ; preds = %3
  %72 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %73 = load i8*, i8** %5, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = call i32 @sati_mode_sense_6_control_translate_data(%struct.TYPE_24__* %72, i8* %73, i8* %74)
  br label %122

76:                                               ; preds = %3
  %77 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = load i8*, i8** %6, align 8
  %80 = call i32 @sati_mode_sense_6_all_pages_translate_data(%struct.TYPE_24__* %77, i8* %78, i8* %79)
  br label %122

81:                                               ; preds = %3
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 @sati_mode_sense_6_power_condition_translate_data(%struct.TYPE_24__* %82, i8* %83, i8* %84)
  br label %122

86:                                               ; preds = %3
  %87 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %88 = load i8*, i8** %5, align 8
  %89 = load i8*, i8** %6, align 8
  %90 = call i32 @sati_mode_sense_10_power_condition_translate_data(%struct.TYPE_24__* %87, i8* %88, i8* %89)
  br label %122

91:                                               ; preds = %3
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %6, align 8
  %95 = call i32 @sati_mode_sense_10_caching_translate_data(%struct.TYPE_24__* %92, i8* %93, i8* %94)
  br label %122

96:                                               ; preds = %3
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load i8*, i8** %6, align 8
  %100 = call i32 @sati_mode_sense_10_informational_excp_control_translate_data(%struct.TYPE_24__* %97, i8* %98, i8* %99)
  br label %122

101:                                              ; preds = %3
  %102 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %103 = load i8*, i8** %5, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = call i32 @sati_mode_sense_10_read_write_error_translate_data(%struct.TYPE_24__* %102, i8* %103, i8* %104)
  br label %122

106:                                              ; preds = %3
  %107 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = load i8*, i8** %6, align 8
  %110 = call i32 @sati_mode_sense_10_disconnect_reconnect_translate_data(%struct.TYPE_24__* %107, i8* %108, i8* %109)
  br label %122

111:                                              ; preds = %3
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %113 = load i8*, i8** %5, align 8
  %114 = load i8*, i8** %6, align 8
  %115 = call i32 @sati_mode_sense_10_control_translate_data(%struct.TYPE_24__* %112, i8* %113, i8* %114)
  br label %122

116:                                              ; preds = %3
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %118 = load i8*, i8** %5, align 8
  %119 = load i8*, i8** %6, align 8
  %120 = call i32 @sati_mode_sense_10_all_pages_translate_data(%struct.TYPE_24__* %117, i8* %118, i8* %119)
  br label %122

121:                                              ; preds = %3
  br label %122

122:                                              ; preds = %121, %116, %111, %106, %101, %96, %91, %86, %81, %76, %71, %66, %61, %56, %51, %46, %41, %36, %31, %26, %21, %16
  ret void
}

declare dso_local i32 @sati_device_update_capabilities(i32, i32*) #1

declare dso_local i32 @sati_inquiry_standard_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_inquiry_serial_number_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_inquiry_device_id_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_inquiry_block_device_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_inquiry_ata_information_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_read_capacity_10_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_read_capacity_16_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_6_caching_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_6_informational_excp_control_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_6_read_write_error_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_6_disconnect_reconnect_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_6_control_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_6_all_pages_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_6_power_condition_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_10_power_condition_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_10_caching_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_10_informational_excp_control_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_10_read_write_error_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_10_disconnect_reconnect_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_10_control_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

declare dso_local i32 @sati_mode_sense_10_all_pages_translate_data(%struct.TYPE_24__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
