; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32 }

@vesa_adp = common dso_local global %struct.TYPE_2__* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@V_ADP_DAC8 = common dso_local global i32 0, align 4
@V_ADP_VESA = common dso_local global i32 0, align 4
@prevvidsw = common dso_local global i32 0, align 4
@vidsw = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vesa_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_unload() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp, align 8
  %4 = icmp eq %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %52

6:                                                ; preds = %0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @VESA_MODE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %6
  %13 = load i32, i32* @EBUSY, align 4
  store i32 %13, i32* %1, align 4
  br label %52

14:                                               ; preds = %6
  %15 = call i32 (...) @vesa_unload_ioctl()
  store i32 %15, i32* %2, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp, align 8
  %19 = icmp ne %struct.TYPE_2__* %18, null
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @V_ADP_DAC8, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %20
  %28 = call i32 @vesa_bios_set_dac(i32 6)
  %29 = load i32, i32* @V_ADP_DAC8, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 8
  br label %35

35:                                               ; preds = %27, %20
  %36 = load i32, i32* @V_ADP_VESA, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i32, i32* @prevvidsw, align 4
  %43 = load i32*, i32** @vidsw, align 8
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @vesa_adp, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  br label %48

48:                                               ; preds = %35, %17
  br label %49

49:                                               ; preds = %48, %14
  %50 = call i32 (...) @vesa_bios_uninit()
  %51 = load i32, i32* %2, align 4
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %49, %12, %5
  %53 = load i32, i32* %1, align 4
  ret i32 %53
}

declare dso_local i64 @VESA_MODE(i32) #1

declare dso_local i32 @vesa_unload_ioctl(...) #1

declare dso_local i32 @vesa_bios_set_dac(i32) #1

declare dso_local i32 @vesa_bios_uninit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
