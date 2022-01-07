; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_vpoio.c_vpoio_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32, i32 }

@PPB_DONTWAIT = common dso_local global i32 0, align 4
@disconnect_microseq = common dso_local global i32 0, align 4
@PPB_EPP = common dso_local global i32 0, align 4
@connect_epp_microseq = common dso_local global i32 0, align 4
@PPB_PS2 = common dso_local global i32 0, align 4
@VP0_MODE_PS2 = common dso_local global i32 0, align 4
@PPB_NIBBLE = common dso_local global i32 0, align 4
@VP0_MODE_NIBBLE = common dso_local global i32 0, align 4
@connect_spp_microseq = common dso_local global i32 0, align 4
@VP0_MODE_UNDEFINED = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"can't connect to the drive\0A\00", align 1
@VP0_MODE_EPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"can't disconnect from the drive\0A\00", align 1
@VP0_EINITFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpoio_data*)* @vpoio_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpoio_detect(%struct.vpoio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpoio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %3, align 8
  %7 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %8 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %13 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @PPB_DONTWAIT, align 4
  %16 = call i32 @ppb_request_bus(i32 %11, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %128

20:                                               ; preds = %1
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %23 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @disconnect_microseq, align 4
  %26 = call i32 @ppb_MS_microseq(i32 %21, i32 %24, i32 %25, i32* %6)
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @PPB_EPP, align 4
  %29 = call i32 @ppb_set_mode(i32 %27, i32 %28)
  %30 = icmp ne i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %34 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @connect_epp_microseq, align 4
  %37 = call i32 @ppb_MS_microseq(i32 %32, i32 %35, i32 %36, i32* %6)
  br label %38

38:                                               ; preds = %31, %20
  %39 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %40 = call i64 @vpoio_in_disk_mode(%struct.vpoio_data* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %90, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @PPB_PS2, align 4
  %45 = call i32 @ppb_set_mode(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, -1
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32, i32* @VP0_MODE_PS2, align 4
  %49 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %50 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  br label %61

51:                                               ; preds = %42
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @PPB_NIBBLE, align 4
  %54 = call i32 @ppb_set_mode(i32 %52, i32 %53)
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %121

57:                                               ; preds = %51
  %58 = load i32, i32* @VP0_MODE_NIBBLE, align 4
  %59 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %60 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %57, %47
  %62 = load i32, i32* %4, align 4
  %63 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %64 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @connect_spp_microseq, align 4
  %67 = call i32 @ppb_MS_microseq(i32 %62, i32 %65, i32 %66, i32* %6)
  %68 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %69 = call i64 @vpoio_in_disk_mode(%struct.vpoio_data* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %61
  %72 = load i32, i32* @VP0_MODE_UNDEFINED, align 4
  %73 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %74 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* @bootverbose, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %71
  %78 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %79 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @device_printf(i32 %80, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %71
  %83 = load i32, i32* %4, align 4
  %84 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %85 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @disconnect_microseq, align 4
  %88 = call i32 @ppb_MS_microseq(i32 %83, i32 %86, i32 %87, i32* %6)
  br label %121

89:                                               ; preds = %61
  br label %94

90:                                               ; preds = %38
  %91 = load i32, i32* @VP0_MODE_EPP, align 4
  %92 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %93 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 4
  br label %94

94:                                               ; preds = %90, %89
  %95 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %96 = call i32 @vpoio_reset(%struct.vpoio_data* %95)
  %97 = load i32, i32* %4, align 4
  %98 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %99 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @disconnect_microseq, align 4
  %102 = call i32 @ppb_MS_microseq(i32 %97, i32 %100, i32 %101, i32* %6)
  %103 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %104 = call i64 @vpoio_in_disk_mode(%struct.vpoio_data* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %94
  %107 = load i64, i64* @bootverbose, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %111 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @device_printf(i32 %112, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %114

114:                                              ; preds = %109, %106
  br label %121

115:                                              ; preds = %94
  %116 = load i32, i32* %4, align 4
  %117 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %118 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @ppb_release_bus(i32 %116, i32 %119)
  store i32 0, i32* %2, align 4
  br label %128

121:                                              ; preds = %114, %82, %56
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %124 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @ppb_release_bus(i32 %122, i32 %125)
  %127 = load i32, i32* @VP0_EINITFAILED, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %121, %115, %18
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

declare dso_local i64 @vpoio_in_disk_mode(%struct.vpoio_data*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vpoio_reset(%struct.vpoio_data*) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
