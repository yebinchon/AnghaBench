; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_load_palette.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_load_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@vesa_palette_offs = common dso_local global i32 0, align 4
@vesa_lock = common dso_local global i32 0, align 4
@vesa_palette = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32)* @vesa_bios_load_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_bios_load_palette(i32 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 @x86bios_init_regs(%struct.TYPE_4__* %9)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 20233, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* %5, align 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @vesa_palette_offs, align 4
  %18 = call i32 @X86BIOS_PHYSTOSEG(i32 %17)
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @vesa_palette_offs, align 4
  %21 = call i32 @X86BIOS_PHYSTOOFF(i32 %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %8, align 4
  %24 = sub nsw i32 8, %23
  store i32 %24, i32* %8, align 4
  %25 = call i32 @mtx_lock(i32* @vesa_lock)
  store i32 0, i32* %10, align 4
  br label %26

26:                                               ; preds = %80, %4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %83

30:                                               ; preds = %26
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = mul nsw i32 %32, 3
  %34 = add nsw i32 %33, 2
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %8, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32*, i32** @vesa_palette, align 8
  %41 = load i32, i32* %10, align 4
  %42 = mul nsw i32 %41, 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = mul nsw i32 %46, 3
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = ashr i32 %51, %52
  %54 = load i32*, i32** @vesa_palette, align 8
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %55, 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %10, align 4
  %62 = mul nsw i32 %61, 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %60, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = ashr i32 %65, %66
  %68 = load i32*, i32** @vesa_palette, align 8
  %69 = load i32, i32* %10, align 4
  %70 = mul nsw i32 %69, 4
  %71 = add nsw i32 %70, 2
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %68, i64 %72
  store i32 %67, i32* %73, align 4
  %74 = load i32*, i32** @vesa_palette, align 8
  %75 = load i32, i32* %10, align 4
  %76 = mul nsw i32 %75, 4
  %77 = add nsw i32 %76, 3
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %74, i64 %78
  store i32 0, i32* %79, align 4
  br label %80

80:                                               ; preds = %30
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %26

83:                                               ; preds = %26
  %84 = call i32 @x86bios_intr(%struct.TYPE_4__* %9, i32 16)
  %85 = call i32 @mtx_unlock(i32* @vesa_lock)
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp ne i32 %87, 79
  %89 = zext i1 %88 to i32
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
