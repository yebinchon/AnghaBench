; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_check_fhdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sbni/extr_if_sbni.c_check_fhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbni_softc = type { i32 }

@DAT = common dso_local global i32 0, align 4
@SBNI_SIG = common dso_local global i64 0, align 8
@FRAME_ACK_MASK = common dso_local global i32 0, align 4
@FRAME_FIRST = common dso_local global i32 0, align 4
@FRAME_LEN_MASK = common dso_local global i32 0, align 4
@SBNI_MAX_FRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sbni_softc*, i32*, i32*, i32*, i32*, i32*)* @check_fhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_fhdr(%struct.sbni_softc* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sbni_softc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.sbni_softc* %0, %struct.sbni_softc** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %16 = load i32*, i32** %13, align 8
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %14, align 4
  %18 = load %struct.sbni_softc*, %struct.sbni_softc** %8, align 8
  %19 = load i32, i32* @DAT, align 4
  %20 = call i64 @sbni_inb(%struct.sbni_softc* %18, i32 %19)
  %21 = load i64, i64* @SBNI_SIG, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %90

24:                                               ; preds = %6
  %25 = load %struct.sbni_softc*, %struct.sbni_softc** %8, align 8
  %26 = load i32, i32* @DAT, align 4
  %27 = call i64 @sbni_inb(%struct.sbni_softc* %25, i32 %26)
  store i64 %27, i64* %15, align 8
  %28 = load i64, i64* %15, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i64, i64* %15, align 8
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @CRC32(i64 %31, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load %struct.sbni_softc*, %struct.sbni_softc** %8, align 8
  %35 = load i32, i32* @DAT, align 4
  %36 = call i64 @sbni_inb(%struct.sbni_softc* %34, i32 %35)
  store i64 %36, i64* %15, align 8
  %37 = load i64, i64* %15, align 8
  %38 = trunc i64 %37 to i32
  %39 = shl i32 %38, 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %39
  store i32 %42, i32* %40, align 4
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* %14, align 4
  %45 = call i32 @CRC32(i64 %43, i32 %44)
  store i32 %45, i32* %14, align 4
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @FRAME_ACK_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @FRAME_FIRST, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32*, i32** %12, align 8
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* @FRAME_LEN_MASK, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, %58
  store i32 %61, i32* %59, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %69, label %63

63:                                               ; preds = %24
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SBNI_MAX_FRAME, align 4
  %67 = sub nsw i32 %66, 3
  %68 = icmp sgt i32 %65, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63, %24
  store i32 0, i32* %7, align 4
  br label %90

70:                                               ; preds = %63
  %71 = load %struct.sbni_softc*, %struct.sbni_softc** %8, align 8
  %72 = load i32, i32* @DAT, align 4
  %73 = call i64 @sbni_inb(%struct.sbni_softc* %71, i32 %72)
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %15, align 8
  %75 = trunc i64 %74 to i32
  %76 = load i32*, i32** %10, align 8
  store i32 %75, i32* %76, align 4
  %77 = load i64, i64* %15, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @CRC32(i64 %77, i32 %78)
  store i32 %79, i32* %14, align 4
  %80 = load %struct.sbni_softc*, %struct.sbni_softc** %8, align 8
  %81 = load i32, i32* @DAT, align 4
  %82 = call i64 @sbni_inb(%struct.sbni_softc* %80, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = call i32 @CRC32(i64 %82, i32 %83)
  store i32 %84, i32* %14, align 4
  %85 = load i32*, i32** %9, align 8
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 2
  store i32 %87, i32* %85, align 4
  %88 = load i32, i32* %14, align 4
  %89 = load i32*, i32** %13, align 8
  store i32 %88, i32* %89, align 4
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %70, %69, %23
  %91 = load i32, i32* %7, align 4
  ret i32 %91
}

declare dso_local i64 @sbni_inb(%struct.sbni_softc*, i32) #1

declare dso_local i32 @CRC32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
