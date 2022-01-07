; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_gpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c" GPIO%d: \00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"input%s%s%s\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c" sticky\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [7 x i8] c" unsol\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c" wake\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c" state=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_dump_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_gpio(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %11 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %12 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %3, align 4
  %14 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %15 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @HDA_PARAM_GPIO_COUNT_NUM_GPIO(i32 %16)
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %115

19:                                               ; preds = %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %22 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @HDA_CMD_GET_GPIO_DATA(i32 0, i32 %23)
  %25 = call i32 @hda_command(i32 %20, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %28 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @HDA_CMD_GET_GPIO_ENABLE_MASK(i32 0, i32 %29)
  %31 = call i32 @hda_command(i32 %26, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %34 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @HDA_CMD_GET_GPIO_DIRECTION(i32 0, i32 %35)
  %37 = call i32 @hda_command(i32 %32, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %40 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @HDA_CMD_GET_GPIO_WAKE_ENABLE_MASK(i32 0, i32 %41)
  %43 = call i32 @hda_command(i32 %38, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %3, align 4
  %45 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %46 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @HDA_CMD_GET_GPIO_UNSOLICITED_ENABLE_MASK(i32 0, i32 %47)
  %49 = call i32 @hda_command(i32 %44, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %52 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @HDA_CMD_GET_GPIO_STICKY_MASK(i32 0, i32 %53)
  %55 = call i32 @hda_command(i32 %50, i32 %54)
  store i32 %55, i32* %10, align 4
  store i32 0, i32* %4, align 4
  br label %56

56:                                               ; preds = %111, %19
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %59 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @HDA_PARAM_GPIO_COUNT_NUM_GPIO(i32 %60)
  %62 = icmp slt i32 %57, %61
  br i1 %62, label %63, label %114

63:                                               ; preds = %56
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* %4, align 4
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 1, %68
  %70 = and i32 %67, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %111

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* %4, align 4
  %77 = shl i32 1, %76
  %78 = and i32 %75, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %103

80:                                               ; preds = %74
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %4, align 4
  %83 = shl i32 1, %82
  %84 = and i32 %81, %83
  %85 = icmp ne i32 %84, 0
  %86 = zext i1 %85 to i64
  %87 = select i1 %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %4, align 4
  %90 = shl i32 1, %89
  %91 = and i32 %88, %90
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %4, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* %87, i8* %94, i8* %101)
  br label %105

103:                                              ; preds = %74
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %80
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %4, align 4
  %108 = ashr i32 %106, %107
  %109 = and i32 %108, 1
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %105, %72
  %112 = load i32, i32* %4, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %4, align 4
  br label %56

114:                                              ; preds = %56
  br label %115

115:                                              ; preds = %114, %1
  ret void
}

declare dso_local i32 @HDA_PARAM_GPIO_COUNT_NUM_GPIO(i32) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPIO_DATA(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPIO_ENABLE_MASK(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPIO_DIRECTION(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPIO_WAKE_ENABLE_MASK(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPIO_UNSOLICITED_ENABLE_MASK(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPIO_STICKY_MASK(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
