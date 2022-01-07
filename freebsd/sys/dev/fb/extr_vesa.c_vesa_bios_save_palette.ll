; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_save_palette.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_save_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@vesa_palette_offs = common dso_local global i32 0, align 4
@vesa_lock = common dso_local global i32 0, align 4
@vesa_palette = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @vesa_bios_save_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_bios_save_palette(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = call i32 @x86bios_init_regs(%struct.TYPE_4__* %10)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 20233, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  store i32 %17, i32* %18, align 4
  %19 = load i32, i32* @vesa_palette_offs, align 4
  %20 = call i32 @X86BIOS_PHYSTOSEG(i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 5
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @vesa_palette_offs, align 4
  %23 = call i32 @X86BIOS_PHYSTOOFF(i32 %22)
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 4
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sub nsw i32 8, %25
  store i32 %26, i32* %9, align 4
  %27 = call i32 @mtx_lock(i32* @vesa_lock)
  %28 = call i32 @x86bios_intr(%struct.TYPE_4__* %10, i32 16)
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 79
  br i1 %31, label %32, label %34

32:                                               ; preds = %4
  %33 = call i32 @mtx_unlock(i32* @vesa_lock)
  store i32 1, i32* %5, align 4
  br label %88

34:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %35

35:                                               ; preds = %83, %34
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %86

39:                                               ; preds = %35
  %40 = load i32*, i32** @vesa_palette, align 8
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 4
  %43 = add nsw i32 %42, 2
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %40, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %46, %47
  %49 = load i32*, i32** %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = mul nsw i32 %50, 3
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 %48, i32* %53, align 4
  %54 = load i32*, i32** @vesa_palette, align 8
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %9, align 4
  %62 = shl i32 %60, %61
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %64, 3
  %66 = add nsw i32 %65, 1
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  store i32 %62, i32* %68, align 4
  %69 = load i32*, i32** @vesa_palette, align 8
  %70 = load i32, i32* %11, align 4
  %71 = mul nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %74, %75
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %78, 3
  %80 = add nsw i32 %79, 2
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %77, i64 %81
  store i32 %76, i32* %82, align 4
  br label %83

83:                                               ; preds = %39
  %84 = load i32, i32* %11, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %11, align 4
  br label %35

86:                                               ; preds = %35
  %87 = call i32 @mtx_unlock(i32* @vesa_lock)
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %86, %32
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @x86bios_init_regs(%struct.TYPE_4__*) #1

declare dso_local i32 @X86BIOS_PHYSTOSEG(i32) #1

declare dso_local i32 @X86BIOS_PHYSTOOFF(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @x86bios_intr(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
