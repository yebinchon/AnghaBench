; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_save_palette2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_bios_save_palette2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }

@vesa_palette_offs = common dso_local global i32 0, align 4
@vesa_lock = common dso_local global i32 0, align 4
@vesa_palette = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*, i32*, i32*, i32)* @vesa_bios_save_palette2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_bios_save_palette2(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = call i32 @x86bios_init_regs(%struct.TYPE_4__* %14)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 20233, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i32 1, i32* %18, align 4
  %19 = load i32, i32* %9, align 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @vesa_palette_offs, align 4
  %24 = call i32 @X86BIOS_PHYSTOSEG(i32 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 5
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* @vesa_palette_offs, align 4
  %27 = call i32 @X86BIOS_PHYSTOOFF(i32 %26)
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %13, align 4
  %30 = sub nsw i32 8, %29
  store i32 %30, i32* %13, align 4
  %31 = call i32 @mtx_lock(i32* @vesa_lock)
  %32 = call i32 @x86bios_intr(%struct.TYPE_4__* %14, i32 16)
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 79
  br i1 %35, label %36, label %38

36:                                               ; preds = %6
  %37 = call i32 @mtx_unlock(i32* @vesa_lock)
  store i32 1, i32* %7, align 4
  br label %87

38:                                               ; preds = %6
  store i32 0, i32* %15, align 4
  br label %39

39:                                               ; preds = %82, %38
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %85

43:                                               ; preds = %39
  %44 = load i32*, i32** @vesa_palette, align 8
  %45 = load i32, i32* %15, align 4
  %46 = mul nsw i32 %45, 4
  %47 = add nsw i32 %46, 2
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %13, align 4
  %52 = shl i32 %50, %51
  %53 = load i32*, i32** %10, align 8
  %54 = load i32, i32* %15, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32*, i32** @vesa_palette, align 8
  %58 = load i32, i32* %15, align 4
  %59 = mul nsw i32 %58, 4
  %60 = add nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %57, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %13, align 4
  %65 = shl i32 %63, %64
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %15, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %65, i32* %69, align 4
  %70 = load i32*, i32** @vesa_palette, align 8
  %71 = load i32, i32* %15, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %70, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %13, align 4
  %77 = shl i32 %75, %76
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %15, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %43
  %83 = load i32, i32* %15, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %15, align 4
  br label %39

85:                                               ; preds = %39
  %86 = call i32 @mtx_unlock(i32* @vesa_lock)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %85, %36
  %88 = load i32, i32* %7, align 4
  ret i32 %88
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
