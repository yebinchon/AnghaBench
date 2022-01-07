; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_gpo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/hda/extr_hdaa.c_hdaa_dump_gpo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdaa_devinfo = type { i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c" GPO%d: state=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdaa_devinfo*)* @hdaa_dump_gpo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdaa_dump_gpo(%struct.hdaa_devinfo* %0) #0 {
  %2 = alloca %struct.hdaa_devinfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdaa_devinfo* %0, %struct.hdaa_devinfo** %2, align 8
  %6 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %7 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  %9 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %10 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @HDA_PARAM_GPIO_COUNT_NUM_GPO(i32 %11)
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %40

14:                                               ; preds = %1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %17 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @HDA_CMD_GET_GPO_DATA(i32 0, i32 %18)
  %20 = call i32 @hda_command(i32 %15, i32 %19)
  store i32 %20, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %21

21:                                               ; preds = %36, %14
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.hdaa_devinfo*, %struct.hdaa_devinfo** %2, align 8
  %24 = getelementptr inbounds %struct.hdaa_devinfo, %struct.hdaa_devinfo* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @HDA_PARAM_GPIO_COUNT_NUM_GPO(i32 %25)
  %27 = icmp slt i32 %22, %26
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %4, align 4
  %33 = ashr i32 %31, %32
  %34 = and i32 %33, 1
  %35 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %34)
  br label %36

36:                                               ; preds = %28
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %21

39:                                               ; preds = %21
  br label %40

40:                                               ; preds = %39, %1
  ret void
}

declare dso_local i32 @HDA_PARAM_GPIO_COUNT_NUM_GPO(i32) #1

declare dso_local i32 @hda_command(i32, i32) #1

declare dso_local i32 @HDA_CMD_GET_GPO_DATA(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
