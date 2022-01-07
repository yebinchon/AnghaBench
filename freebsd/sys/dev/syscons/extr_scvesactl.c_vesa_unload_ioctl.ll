; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvesactl.c_vesa_unload_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvesactl.c_vesa_unload_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sc_user_ioctl = common dso_local global i64 0, align 8
@vesa_ioctl = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@prev_user_ioctl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vesa_unload_ioctl() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @sc_user_ioctl, align 8
  %3 = load i64, i64* @vesa_ioctl, align 8
  %4 = icmp ne i64 %2, %3
  br i1 %4, label %5, label %7

5:                                                ; preds = %0
  %6 = load i32, i32* @EBUSY, align 4
  store i32 %6, i32* %1, align 4
  br label %10

7:                                                ; preds = %0
  %8 = load i32*, i32** @prev_user_ioctl, align 8
  %9 = ptrtoint i32* %8 to i64
  store i64 %9, i64* @sc_user_ioctl, align 8
  store i32* null, i32** @prev_user_ioctl, align 8
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %7, %5
  %11 = load i32, i32* %1, align 4
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
