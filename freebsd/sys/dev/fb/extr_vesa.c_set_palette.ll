; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_set_palette.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_set_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@V_ADP_DAC8 = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32, i32, i32*, i32*, i32*, i32*)* @set_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_palette(%struct.TYPE_3__* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %32, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* %10, align 4
  %25 = icmp sge i32 %24, 256
  br i1 %25, label %32, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %11, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %11, align 4
  %31 = icmp sgt i32 %30, 256
  br i1 %31, label %32, label %33

32:                                               ; preds = %29, %26, %23, %7
  store i32 1, i32* %8, align 4
  br label %91

33:                                               ; preds = %29
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = icmp sgt i32 %36, 256
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  store i32 1, i32* %8, align 4
  br label %91

39:                                               ; preds = %33
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @VESA_MODE(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  store i32 1, i32* %8, align 4
  br label %91

46:                                               ; preds = %39
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @V_ADP_DAC8, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 8, i32 6
  store i32 %54, i32* %19, align 4
  %55 = load i32, i32* %11, align 4
  %56 = mul nsw i32 %55, 3
  %57 = load i32, i32* @M_DEVBUF, align 4
  %58 = load i32, i32* @M_WAITOK, align 4
  %59 = call i32* @malloc(i32 %56, i32 %57, i32 %58)
  store i32* %59, i32** %16, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %17, align 8
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  store i32* %67, i32** %18, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %16, align 8
  %70 = load i32, i32* %11, align 4
  %71 = call i32 @copyin(i32* %68, i32* %69, i32 %70)
  %72 = load i32*, i32** %13, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = load i32, i32* %11, align 4
  %75 = call i32 @copyin(i32* %72, i32* %73, i32 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %18, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @copyin(i32* %76, i32* %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %17, align 8
  %84 = load i32*, i32** %18, align 8
  %85 = load i32, i32* %19, align 4
  %86 = call i32 @vesa_bios_load_palette2(i32 %80, i32 %81, i32* %82, i32* %83, i32* %84, i32 %85)
  store i32 %86, i32* %20, align 4
  %87 = load i32*, i32** %16, align 8
  %88 = load i32, i32* @M_DEVBUF, align 4
  %89 = call i32 @free(i32* %87, i32 %88)
  %90 = load i32, i32* %20, align 4
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %46, %45, %38, %32
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @VESA_MODE(i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @copyin(i32*, i32*, i32) #1

declare dso_local i32 @vesa_bios_load_palette2(i32, i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
