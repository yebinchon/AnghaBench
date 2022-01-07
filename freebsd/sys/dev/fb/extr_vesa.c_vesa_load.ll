; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vesa_init_done = common dso_local global i64 0, align 8
@vesa_adp = common dso_local global i32* null, align 8
@bootverbose = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vesa_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_load() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @vesa_init_done, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %20

6:                                                ; preds = %0
  store i32* null, i32** @vesa_adp, align 8
  %7 = call i32 @vesa_configure(i32 0)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %6
  %11 = load i32, i32* @bootverbose, align 4
  %12 = call i32 @vesa_bios_info(i32 %11)
  br label %13

13:                                               ; preds = %10, %6
  %14 = load i32, i32* %2, align 4
  %15 = load i32, i32* @ENODEV, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  store i32* null, i32** @vesa_adp, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %5
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @vesa_configure(i32) #1

declare dso_local i32 @vesa_bios_info(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
