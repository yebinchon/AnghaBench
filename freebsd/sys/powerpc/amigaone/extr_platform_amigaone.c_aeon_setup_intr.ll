; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/amigaone/extr_platform_amigaone.c_aeon_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/amigaone/extr_platform_amigaone.c_aeon_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_aeon = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Configuring AmigaOne power button.\0A\00", align 1
@INTR_TRIGGER_EDGE = common dso_local global i32 0, align 4
@INTR_POLARITY_LOW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"power_button\00", align 1
@aeon_pbutton_intr = common dso_local global i32 0, align 4
@INTR_TYPE_MISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @aeon_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aeon_setup_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @is_aeon, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %23

7:                                                ; preds = %1
  %8 = load i64, i64* @bootverbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %7
  store i32 4, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @MAP_IRQ(i32 0, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @INTR_TRIGGER_EDGE, align 4
  %17 = load i32, i32* @INTR_POLARITY_LOW, align 4
  %18 = call i32 @powerpc_config_intr(i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @aeon_pbutton_intr, align 4
  %21 = load i32, i32* @INTR_TYPE_MISC, align 4
  %22 = call i32 @powerpc_setup_intr(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32* null, i32 %20, i32* null, i32 %21, i32* null, i32 0)
  br label %23

23:                                               ; preds = %12, %6
  ret void
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MAP_IRQ(i32, i32) #1

declare dso_local i32 @powerpc_config_intr(i32, i32, i32) #1

declare dso_local i32 @powerpc_setup_intr(i8*, i32, i32*, i32, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
