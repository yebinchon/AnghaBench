; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_pixel.c_terasic_mtl_pixel_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_pixel.c_terasic_mtl_pixel_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.terasic_mtl_softc* }
%struct.terasic_mtl_softc = type { i32 }
%struct.uio = type { i64, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @terasic_mtl_pixel_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terasic_mtl_pixel_read(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca %struct.uio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.terasic_mtl_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store %struct.uio* %1, %struct.uio** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.uio*, %struct.uio** %6, align 8
  %14 = getelementptr inbounds %struct.uio, %struct.uio* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = srem i64 %20, 4
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = srem i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17, %3
  %30 = load i32, i32* @ENODEV, align 4
  store i32 %30, i32* %4, align 4
  br label %96

31:                                               ; preds = %23
  %32 = load %struct.cdev*, %struct.cdev** %5, align 8
  %33 = getelementptr inbounds %struct.cdev, %struct.cdev* %32, i32 0, i32 0
  %34 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %33, align 8
  store %struct.terasic_mtl_softc* %34, %struct.terasic_mtl_softc** %8, align 8
  %35 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %8, align 8
  %36 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @rman_get_size(i32 %37)
  store i32 %38, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %39 = load %struct.uio*, %struct.uio** %6, align 8
  %40 = getelementptr inbounds %struct.uio, %struct.uio* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.uio*, %struct.uio** %6, align 8
  %43 = getelementptr inbounds %struct.uio, %struct.uio* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %41, %45
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %60, label %48

48:                                               ; preds = %31
  %49 = load %struct.uio*, %struct.uio** %6, align 8
  %50 = getelementptr inbounds %struct.uio, %struct.uio* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.uio*, %struct.uio** %6, align 8
  %53 = getelementptr inbounds %struct.uio, %struct.uio* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %51, %55
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %48, %31
  %61 = load i32, i32* @ENODEV, align 4
  store i32 %61, i32* %4, align 4
  br label %96

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %93, %62
  %64 = load %struct.uio*, %struct.uio** %6, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %94

68:                                               ; preds = %63
  %69 = load %struct.uio*, %struct.uio** %6, align 8
  %70 = getelementptr inbounds %struct.uio, %struct.uio* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %9, align 4
  %73 = load i32, i32* %9, align 4
  %74 = sext i32 %73 to i64
  %75 = add i64 %74, 4
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ugt i64 %75, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %68
  %80 = load i32, i32* @ENODEV, align 4
  store i32 %80, i32* %4, align 4
  br label %96

81:                                               ; preds = %68
  %82 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %8, align 8
  %83 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @bus_read_4(i32 %84, i32 %85)
  store i32 %86, i32* %11, align 4
  %87 = load %struct.uio*, %struct.uio** %6, align 8
  %88 = call i32 @uiomove(i32* %11, i32 4, %struct.uio* %87)
  store i32 %88, i32* %12, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %81
  %92 = load i32, i32* %12, align 4
  store i32 %92, i32* %4, align 4
  br label %96

93:                                               ; preds = %81
  br label %63

94:                                               ; preds = %63
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %4, align 4
  br label %96

96:                                               ; preds = %94, %91, %79, %60, %29
  %97 = load i32, i32* %4, align 4
  ret i32 %97
}

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
