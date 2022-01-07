; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_gpi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_gpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c" GPI%d:%s%s%s state=%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c" sticky\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" unsol\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c" wake\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_dump_gpi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_gpi(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %9 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %10 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %3, align 4
  %12 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %13 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @HDA_PARAM_GPIO_COUNT_NUM_GPI(i32 %14)
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %82

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %20 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @HDA_CMD_GET_GPI_DATA(i32 0, i32 %21)
  %23 = call i32 @hda_command(i32 %18, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %26 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @HDA_CMD_GET_GPI_WAKE_ENABLE_MASK(i32 0, i32 %27)
  %29 = call i32 @hda_command(i32 %24, i32 %28)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %32 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @HDA_CMD_GET_GPI_UNSOLICITED_ENABLE_MASK(i32 0, i32 %33)
  %35 = call i32 @hda_command(i32 %30, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %38 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @HDA_CMD_GET_GPI_STICKY_MASK(i32 0, i32 %39)
  %41 = call i32 @hda_command(i32 %36, i32 %40)
  store i32 %41, i32* %8, align 4
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %78, %17
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %45 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @HDA_PARAM_GPIO_COUNT_NUM_GPI(i32 %46)
  %48 = icmp slt i32 %43, %47
  br i1 %48, label %49, label %81

49:                                               ; preds = %42
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %4, align 4
  %54 = shl i32 1, %53
  %55 = and i32 %52, %54
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %4, align 4
  %61 = shl i32 1, %60
  %62 = and i32 %59, %61
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %4, align 4
  %68 = shl i32 1, %67
  %69 = and i32 %66, %68
  %70 = icmp ne i32 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = ashr i32 %73, %74
  %76 = and i32 %75, 1
  %77 = call i32 @device_printf(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %58, i8* %65, i8* %72, i32 %76)
  br label %78

78:                                               ; preds = %49
  %79 = load i32, i32* %4, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %4, align 4
  br label %42

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81, %1
  ret void
}

declare dso_local i32 @HDA_PARAM_GPIO_COUNT_NUM_GPI(i32) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPI_DATA(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPI_WAKE_ENABLE_MASK(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPI_UNSOLICITED_ENABLE_MASK(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPI_STICKY_MASK(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
