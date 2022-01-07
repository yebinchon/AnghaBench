; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_geode.c_geode_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_geode.c_geode_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@geode_probe.bios_oem = internal global [80 x i8] zeroinitializer, align 16
@geode_counter = common dso_local global i32 0, align 4
@cba = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Geode CBA@ 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Geode rev: %02x %02x\0A\00", align 1
@geode_timecounter = common dso_local global i32 0, align 4
@watchdog_list = common dso_local global i32 0, align 4
@geode_watchdog = common dso_local global i32 0, align 4
@geode_cputicks = common dso_local global i32 0, align 4
@gpio = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Geode GPIO@ = %x\0A\00", align 1
@bios_soekris = common dso_local global i32 0, align 4
@led1b = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@led1 = common dso_local global i8* null, align 8
@bios_pcengines = common dso_local global i32 0, align 4
@led2b = common dso_local global i32 0, align 4
@led3b = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"led1\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"led2\00", align 1
@led2 = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"led3\00", align 1
@led3 = common dso_local global i8* null, align 8
@.str.7 = private unnamed_addr constant [10 x i8] c"Geode %s\0A\00", align 1
@bios_advantech = common dso_local global i32 0, align 4
@advantech_watchdog = common dso_local global i32 0, align 4
@bios_soekris_55 = common dso_local global i32 0, align 4
@bios_pcengines_55 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [14 x i8] c"Geode LX: %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"MFGPT bar: %jx\0A\00", align 1
@cs5536_watchdog = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BIOS_OEM_MAXLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @geode_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @geode_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call i32 @pci_get_devid(i32 %3)
  switch i32 %4, label %109 [
    i32 85266443, label %5
    i32 84938763, label %40
    i32 16846968, label %71
    i32 545263650, label %80
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @geode_counter, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %5
  %9 = load i32, i32* %2, align 4
  %10 = call i32 @pci_read_config(i32 %9, i32 100, i32 4)
  store i32 %10, i32* @cba, align 4
  %11 = load i32, i32* @bootverbose, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %14 = load i32, i32* @cba, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %8
  %17 = load i32, i32* @cba, align 4
  %18 = add nsw i32 %17, 8
  store i32 %18, i32* @geode_counter, align 4
  %19 = load i32, i32* @cba, align 4
  %20 = add nsw i32 %19, 13
  %21 = call i32 @outl(i32 %20, i32 2)
  %22 = load i32, i32* @bootverbose, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %16
  %25 = load i32, i32* @cba, align 4
  %26 = add nsw i32 %25, 60
  %27 = call i32 @inb(i32 %26)
  %28 = load i32, i32* @cba, align 4
  %29 = add nsw i32 %28, 61
  %30 = call i32 @inb(i32 %29)
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %24, %16
  %33 = call i32 @tc_init(i32* @geode_timecounter)
  %34 = load i32, i32* @watchdog_list, align 4
  %35 = load i32, i32* @geode_watchdog, align 4
  %36 = call i32 @EVENTHANDLER_REGISTER(i32 %34, i32 %35, i32* null, i32 0)
  %37 = load i32, i32* @geode_cputicks, align 4
  %38 = call i32 @set_cputicker(i32 %37, i32 27000000, i32 0)
  br label %39

39:                                               ; preds = %32, %5
  br label %109

40:                                               ; preds = %1
  %41 = load i32, i32* %2, align 4
  %42 = call i32 @PCIR_BAR(i32 0)
  %43 = call i32 @pci_read_config(i32 %41, i32 %42, i32 4)
  store i32 %43, i32* @gpio, align 4
  %44 = load i32, i32* @gpio, align 4
  %45 = and i32 %44, -32
  store i32 %45, i32* @gpio, align 4
  %46 = load i32, i32* @bootverbose, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* @gpio, align 4
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %51

51:                                               ; preds = %48, %40
  %52 = call i32 @bios_oem_strings(i32* @bios_soekris, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0), i32 80)
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  store i32 20, i32* @led1b, align 4
  %55 = call i8* @led_create(i32 (i32*, i32)* @led_func, i32* @led1b, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %55, i8** @led1, align 8
  br label %65

56:                                               ; preds = %51
  %57 = call i32 @bios_oem_strings(i32* @bios_pcengines, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0), i32 80)
  %58 = icmp sgt i32 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  store i32 -2, i32* @led1b, align 4
  store i32 -3, i32* @led2b, align 4
  store i32 -18, i32* @led3b, align 4
  %60 = call i8* @led_create(i32 (i32*, i32)* @led_func, i32* @led1b, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %60, i8** @led1, align 8
  %61 = call i8* @led_create(i32 (i32*, i32)* @led_func, i32* @led2b, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %61, i8** @led2, align 8
  %62 = call i8* @led_create(i32 (i32*, i32)* @led_func, i32* @led3b, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %62, i8** @led3, align 8
  %63 = call i32 @led_func(i32* @led1b, i32 1)
  br label %64

64:                                               ; preds = %59, %56
  br label %65

65:                                               ; preds = %64, %54
  %66 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0), align 16
  %67 = icmp ne i8 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %65
  br label %109

71:                                               ; preds = %1
  %72 = call i32 @bios_oem_strings(i32* @bios_advantech, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0), i32 80)
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0))
  %76 = load i32, i32* @watchdog_list, align 4
  %77 = load i32, i32* @advantech_watchdog, align 4
  %78 = call i32 @EVENTHANDLER_REGISTER(i32 %76, i32 %77, i32* null, i32 0)
  br label %79

79:                                               ; preds = %74, %71
  br label %109

80:                                               ; preds = %1
  %81 = call i32 @bios_oem_strings(i32* @bios_soekris_55, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0), i32 80)
  %82 = icmp sgt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  store i32 6, i32* @led1b, align 4
  %84 = call i8* @led_create(i32 (i32*, i32)* @cs5536_led_func, i32* @led1b, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  store i8* %84, i8** @led1, align 8
  br label %94

85:                                               ; preds = %80
  %86 = call i32 @bios_oem_strings(i32* @bios_pcengines_55, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0), i32 80)
  %87 = icmp sgt i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %85
  store i32 -6, i32* @led1b, align 4
  store i32 -25, i32* @led2b, align 4
  store i32 -27, i32* @led3b, align 4
  %89 = call i8* @led_create(i32 (i32*, i32)* @cs5536_led_func, i32* @led1b, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %89, i8** @led1, align 8
  %90 = call i8* @led_create(i32 (i32*, i32)* @cs5536_led_func, i32* @led2b, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  store i8* %90, i8** @led2, align 8
  %91 = call i8* @led_create(i32 (i32*, i32)* @cs5536_led_func, i32* @led3b, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  store i8* %91, i8** @led3, align 8
  %92 = call i32 @cs5536_led_func(i32* @led1b, i32 1)
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93, %83
  %95 = load i8, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0), align 16
  %96 = icmp ne i8 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %94
  %98 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([80 x i8], [80 x i8]* @geode_probe.bios_oem, i64 0, i64 0))
  br label %99

99:                                               ; preds = %97, %94
  %100 = load i32, i32* @bootverbose, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = call i8* @rdmsr(i32 1363148813)
  %104 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %99
  %106 = load i32, i32* @watchdog_list, align 4
  %107 = load i32, i32* @cs5536_watchdog, align 4
  %108 = call i32 @EVENTHANDLER_REGISTER(i32 %106, i32 %107, i32* null, i32 0)
  br label %109

109:                                              ; preds = %1, %105, %79, %70, %39
  %110 = load i32, i32* @ENXIO, align 4
  ret i32 %110
}

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @tc_init(i32*) #1

declare dso_local i32 @EVENTHANDLER_REGISTER(i32, i32, i32*, i32) #1

declare dso_local i32 @set_cputicker(i32, i32, i32) #1

declare dso_local i32 @PCIR_BAR(i32) #1

declare dso_local i32 @bios_oem_strings(i32*, i8*, i32) #1

declare dso_local i8* @led_create(i32 (i32*, i32)*, i32*, i8*) #1

declare dso_local i32 @led_func(i32*, i32) #1

declare dso_local i32 @cs5536_led_func(i32*, i32) #1

declare dso_local i8* @rdmsr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
