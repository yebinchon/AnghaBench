; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_initial_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc.c_fdc_initial_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_data = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@FDO_FRST = common dso_local global i32 0, align 4
@NE7CMD_SPECIFY = common dso_local global i32 0, align 4
@NE7CMD_VERSION = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"ic_type %02x part_id %02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"NEC 765 or clone\00", align 1
@FDC_NE765 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Enhanced floppy controller\00", align 1
@FDC_ENHANCED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Generic floppy controller\00", align 1
@FDC_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdc_initial_reset(i32 %0, %struct.fdc_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.fdc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.fdc_data* %1, %struct.fdc_data** %5, align 8
  %8 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %9 = call i32 @fdsts_rd(%struct.fdc_data* %8)
  %10 = icmp eq i32 %9, 255
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @ENXIO, align 4
  store i32 %12, i32* %3, align 4
  br label %87

13:                                               ; preds = %2
  %14 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %15 = call i32 @fdout_wr(%struct.fdc_data* %14, i32 0)
  %16 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %17 = call i32 @fdout_wr(%struct.fdc_data* %16, i32 0)
  %18 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %19 = call i32 @fdsts_rd(%struct.fdc_data* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %3, align 4
  br label %87

23:                                               ; preds = %13
  %24 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %25 = load i32, i32* @FDO_FRST, align 4
  %26 = call i32 @fdout_wr(%struct.fdc_data* %24, i32 %25)
  %27 = call i32 @DELAY(i32 100)
  %28 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %29 = call i32 @fdsts_rd(%struct.fdc_data* %28)
  %30 = icmp ne i32 %29, 128
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* @ENXIO, align 4
  store i32 %32, i32* %3, align 4
  br label %87

33:                                               ; preds = %23
  %34 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %35 = load i32, i32* @NE7CMD_SPECIFY, align 4
  %36 = call i32 @NE7_SPEC_1(i32 6, i32 240)
  %37 = call i32 @NE7_SPEC_2(i32 31, i32 0)
  %38 = sext i32 %37 to i64
  %39 = inttoptr i64 %38 to i32*
  %40 = call i64 (%struct.fdc_data*, i32, i32, i32, i32*, ...) @fdc_cmd(%struct.fdc_data* %34, i32 3, i32 %35, i32 %36, i32* %39, i32 0)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENXIO, align 4
  store i32 %43, i32* %3, align 4
  br label %87

44:                                               ; preds = %33
  %45 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %46 = load i32, i32* @NE7CMD_VERSION, align 4
  %47 = call i64 (%struct.fdc_data*, i32, i32, i32, i32*, ...) @fdc_cmd(%struct.fdc_data* %45, i32 1, i32 %46, i32 1, i32* %6)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @ENXIO, align 4
  store i32 %50, i32* %3, align 4
  br label %87

51:                                               ; preds = %44
  %52 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %53 = call i64 (%struct.fdc_data*, i32, i32, i32, i32*, ...) @fdc_cmd(%struct.fdc_data* %52, i32 1, i32 24, i32 1, i32* %7)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %3, align 4
  br label %87

57:                                               ; preds = %51
  %58 = load i64, i64* @bootverbose, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 255
  switch i32 %67, label %80 [
    i32 128, label %68
    i32 129, label %74
    i32 144, label %74
  ]

68:                                               ; preds = %65
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @device_set_desc(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i32, i32* @FDC_NE765, align 4
  %72 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %73 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  br label %86

74:                                               ; preds = %65, %65
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @device_set_desc(i32 %75, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %77 = load i32, i32* @FDC_ENHANCED, align 4
  %78 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %79 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 4
  br label %86

80:                                               ; preds = %65
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @device_set_desc(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %83 = load i32, i32* @FDC_UNKNOWN, align 4
  %84 = load %struct.fdc_data*, %struct.fdc_data** %5, align 8
  %85 = getelementptr inbounds %struct.fdc_data, %struct.fdc_data* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  br label %86

86:                                               ; preds = %80, %74, %68
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %55, %49, %42, %31, %21, %11
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @fdsts_rd(%struct.fdc_data*) #1

declare dso_local i32 @fdout_wr(%struct.fdc_data*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @fdc_cmd(%struct.fdc_data*, i32, i32, i32, i32*, ...) #1

declare dso_local i32 @NE7_SPEC_1(i32, i32) #1

declare dso_local i32 @NE7_SPEC_2(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
