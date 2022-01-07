; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vesa_bios = common dso_local global i32* null, align 8
@vesa_bios_int10 = common dso_local global i32 0, align 4
@VESA_BIOS_OFFSET = common dso_local global i32 0, align 4
@vesa_bios_offs = common dso_local global i32 0, align 4
@vesa_bios_size = common dso_local global i64 0, align 8
@vesa_adp_info = common dso_local global i32* null, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@vesa_oemstr = common dso_local global i32* null, align 8
@vesa_venderstr = common dso_local global i32* null, align 8
@vesa_prodstr = common dso_local global i32* null, align 8
@vesa_revstr = common dso_local global i32* null, align 8
@vesa_vmode = common dso_local global i32* null, align 8
@vesa_palette = common dso_local global i32* null, align 8
@VESA_PALETTE_SIZE = common dso_local global i64 0, align 8
@vesa_state_buf_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vesa_bios_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vesa_bios_uninit() #0 {
  %1 = load i32*, i32** @vesa_bios, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %10

3:                                                ; preds = %0
  %4 = load i32, i32* @vesa_bios_int10, align 4
  %5 = call i32 @x86bios_set_intr(i32 16, i32 %4)
  %6 = load i32, i32* @VESA_BIOS_OFFSET, align 4
  store i32 %6, i32* @vesa_bios_offs, align 4
  %7 = load i32*, i32** @vesa_bios, align 8
  %8 = load i64, i64* @vesa_bios_size, align 8
  %9 = call i32 @x86bios_free(i32* %7, i64 %8)
  store i32* null, i32** @vesa_bios, align 8
  br label %10

10:                                               ; preds = %3, %0
  %11 = load i32*, i32** @vesa_adp_info, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  %14 = load i32*, i32** @vesa_adp_info, align 8
  %15 = load i32, i32* @M_DEVBUF, align 4
  %16 = call i32 @free(i32* %14, i32 %15)
  store i32* null, i32** @vesa_adp_info, align 8
  br label %17

17:                                               ; preds = %13, %10
  %18 = load i32*, i32** @vesa_oemstr, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32*, i32** @vesa_oemstr, align 8
  %22 = load i32, i32* @M_DEVBUF, align 4
  %23 = call i32 @free(i32* %21, i32 %22)
  store i32* null, i32** @vesa_oemstr, align 8
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32*, i32** @vesa_venderstr, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i32*, i32** @vesa_venderstr, align 8
  %29 = load i32, i32* @M_DEVBUF, align 4
  %30 = call i32 @free(i32* %28, i32 %29)
  store i32* null, i32** @vesa_venderstr, align 8
  br label %31

31:                                               ; preds = %27, %24
  %32 = load i32*, i32** @vesa_prodstr, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i32*, i32** @vesa_prodstr, align 8
  %36 = load i32, i32* @M_DEVBUF, align 4
  %37 = call i32 @free(i32* %35, i32 %36)
  store i32* null, i32** @vesa_prodstr, align 8
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32*, i32** @vesa_revstr, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load i32*, i32** @vesa_revstr, align 8
  %43 = load i32, i32* @M_DEVBUF, align 4
  %44 = call i32 @free(i32* %42, i32 %43)
  store i32* null, i32** @vesa_revstr, align 8
  br label %45

45:                                               ; preds = %41, %38
  %46 = load i32*, i32** @vesa_vmode, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32*, i32** @vesa_vmode, align 8
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = call i32 @free(i32* %49, i32 %50)
  store i32* null, i32** @vesa_vmode, align 8
  br label %52

52:                                               ; preds = %48, %45
  %53 = load i32*, i32** @vesa_palette, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %61

55:                                               ; preds = %52
  %56 = load i32*, i32** @vesa_palette, align 8
  %57 = load i64, i64* @VESA_PALETTE_SIZE, align 8
  %58 = load i64, i64* @vesa_state_buf_size, align 8
  %59 = add nsw i64 %57, %58
  %60 = call i32 @x86bios_free(i32* %56, i64 %59)
  store i32* null, i32** @vesa_palette, align 8
  br label %61

61:                                               ; preds = %55, %52
  ret void
}

declare dso_local i32 @x86bios_set_intr(i32, i32) #1

declare dso_local i32 @x86bios_free(i32*, i64) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
