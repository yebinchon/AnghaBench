; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pinctrl.c_mtk_pinctrl_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_pinctrl.c_mtk_pinctrl_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [30 x i8] c"Only one pin control allowed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"GPIO mode start: 0x%08x\0A\00", align 1
@SYSCTL_GPIOMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"GPIO mode end  : 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mtk_pinctrl_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pinctrl_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @device_get_unit(i32 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 (i32, i8*, ...) @device_printf(i32 %8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load i64, i64* @bootverbose, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @SYSCTL_GPIOMODE, align 4
  %17 = call i32 @mtk_sysctl_get(i32 %16)
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %15, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %14, %11
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @fdt_pinctrl_register(i32 %20, i32* null)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @fdt_pinctrl_configure_tree(i32 %22)
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @SYSCTL_GPIOMODE, align 4
  %29 = call i32 @mtk_sysctl_get(i32 %28)
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %27, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %26, %19
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @mtk_sysctl_get(i32) #1

declare dso_local i32 @fdt_pinctrl_register(i32, i32*) #1

declare dso_local i32 @fdt_pinctrl_configure_tree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
