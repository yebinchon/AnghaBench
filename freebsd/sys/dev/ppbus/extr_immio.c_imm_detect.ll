; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_detect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ppbus/extr_immio.c_imm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpoio_data = type { i32, i32 }

@PPB_DONTWAIT = common dso_local global i32 0, align 4
@VP0_MODE_UNDEFINED = common dso_local global i32 0, align 4
@PPB_EPP = common dso_local global i32 0, align 4
@PPB_PS2 = common dso_local global i32 0, align 4
@PPB_NIBBLE = common dso_local global i32 0, align 4
@VP0_MODE_NIBBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"NIBBLE mode unavailable!\0A\00", align 1
@VP0_MODE_PS2 = common dso_local global i32 0, align 4
@VP0_MODE_EPP = common dso_local global i32 0, align 4
@reset_microseq = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"can't disconnect from the drive\0A\00", align 1
@VP0_EINITFAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vpoio_data*)* @imm_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imm_detect(%struct.vpoio_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vpoio_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vpoio_data* %0, %struct.vpoio_data** %3, align 8
  %6 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %7 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %12 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @PPB_DONTWAIT, align 4
  %15 = call i32 @ppb_request_bus(i32 %10, i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %107

19:                                               ; preds = %1
  %20 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %21 = call i32 @imm_disconnect(%struct.vpoio_data* %20, i32* null, i32 0)
  %22 = load i32, i32* @VP0_MODE_UNDEFINED, align 4
  %23 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %24 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  store i32 1, i32* %5, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @PPB_EPP, align 4
  %27 = call i32 @ppb_set_mode(i32 %25, i32 %26)
  %28 = icmp ne i32 %27, -1
  br i1 %28, label %29, label %33

29:                                               ; preds = %19
  %30 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %31 = load i32, i32* @PPB_DONTWAIT, align 4
  %32 = call i32 @imm_connect(%struct.vpoio_data* %30, i32 %31, i32* %5, i32 0)
  br label %33

33:                                               ; preds = %29, %19
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %75

36:                                               ; preds = %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @PPB_PS2, align 4
  %39 = call i32 @ppb_set_mode(i32 %37, i32 %38)
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %43 = load i32, i32* @PPB_DONTWAIT, align 4
  %44 = call i32 @imm_connect(%struct.vpoio_data* %42, i32 %43, i32* %5, i32 0)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %45
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @PPB_NIBBLE, align 4
  %51 = call i32 @ppb_set_mode(i32 %49, i32 %50)
  %52 = icmp ne i32 %51, -1
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %55 = load i32, i32* @PPB_DONTWAIT, align 4
  %56 = call i32 @imm_connect(%struct.vpoio_data* %54, i32 %55, i32* %5, i32 0)
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %100

60:                                               ; preds = %53
  %61 = load i32, i32* @VP0_MODE_NIBBLE, align 4
  %62 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %63 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %69

64:                                               ; preds = %48
  %65 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %66 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %100

69:                                               ; preds = %60
  br label %74

70:                                               ; preds = %45
  %71 = load i32, i32* @VP0_MODE_PS2, align 4
  %72 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %73 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %70, %69
  br label %79

75:                                               ; preds = %33
  %76 = load i32, i32* @VP0_MODE_EPP, align 4
  %77 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %78 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  br label %79

79:                                               ; preds = %75, %74
  %80 = load i32, i32* %4, align 4
  %81 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %82 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @reset_microseq, align 4
  %85 = call i32 @ppb_MS_microseq(i32 %80, i32 %83, i32 %84, i32* null)
  %86 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %87 = call i32 @imm_disconnect(%struct.vpoio_data* %86, i32* %5, i32 1)
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %79
  %91 = load i64, i64* @bootverbose, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %95 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %98

98:                                               ; preds = %93, %90
  br label %100

99:                                               ; preds = %79
  store i32 0, i32* %2, align 4
  br label %107

100:                                              ; preds = %98, %64, %59
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.vpoio_data*, %struct.vpoio_data** %3, align 8
  %103 = getelementptr inbounds %struct.vpoio_data, %struct.vpoio_data* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @ppb_release_bus(i32 %101, i32 %104)
  %106 = load i32, i32* @VP0_EINITFAILED, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %100, %99, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ppb_request_bus(i32, i32, i32) #1

declare dso_local i32 @imm_disconnect(%struct.vpoio_data*, i32*, i32) #1

declare dso_local i32 @ppb_set_mode(i32, i32) #1

declare dso_local i32 @imm_connect(%struct.vpoio_data*, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ppb_MS_microseq(i32, i32, i32, i32*) #1

declare dso_local i32 @ppb_release_bus(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
