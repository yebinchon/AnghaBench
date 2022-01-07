; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_pixel.c_terasic_mtl_pixel_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/terasic/mtl/extr_terasic_mtl_pixel.c_terasic_mtl_pixel_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.terasic_mtl_softc* }
%struct.terasic_mtl_softc = type { i32 }
%struct.uio = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, %struct.uio*, i32)* @terasic_mtl_pixel_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @terasic_mtl_pixel_write(%struct.cdev* %0, %struct.uio* %1, i32 %2) #0 {
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
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %3
  %18 = load %struct.uio*, %struct.uio** %6, align 8
  %19 = getelementptr inbounds %struct.uio, %struct.uio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = srem i32 %20, 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %17
  %24 = load %struct.uio*, %struct.uio** %6, align 8
  %25 = getelementptr inbounds %struct.uio, %struct.uio* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = srem i32 %26, 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %17, %3
  %30 = load i32, i32* @ENODEV, align 4
  store i32 %30, i32* %4, align 4
  br label %72

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
  br label %39

39:                                               ; preds = %63, %31
  %40 = load %struct.uio*, %struct.uio** %6, align 8
  %41 = getelementptr inbounds %struct.uio, %struct.uio* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 0
  br i1 %43, label %44, label %70

44:                                               ; preds = %39
  %45 = load %struct.uio*, %struct.uio** %6, align 8
  %46 = getelementptr inbounds %struct.uio, %struct.uio* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %49, 4
  %51 = load i32, i32* %10, align 4
  %52 = sext i32 %51 to i64
  %53 = icmp ugt i64 %50, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i32, i32* @ENODEV, align 4
  store i32 %55, i32* %4, align 4
  br label %72

56:                                               ; preds = %44
  %57 = load %struct.uio*, %struct.uio** %6, align 8
  %58 = call i32 @uiomove(i32* %11, i32 4, %struct.uio* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = load i32, i32* %12, align 4
  store i32 %62, i32* %4, align 4
  br label %72

63:                                               ; preds = %56
  %64 = load %struct.terasic_mtl_softc*, %struct.terasic_mtl_softc** %8, align 8
  %65 = getelementptr inbounds %struct.terasic_mtl_softc, %struct.terasic_mtl_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @bus_write_4(i32 %66, i32 %67, i32 %68)
  br label %39

70:                                               ; preds = %39
  %71 = load i32, i32* %12, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %70, %61, %54, %29
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @rman_get_size(i32) #1

declare dso_local i32 @uiomove(i32*, i32, %struct.uio*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
