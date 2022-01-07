; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashputbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/an/extr_if_an.c_flashputbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.an_softc* }
%struct.an_softc = type { i16*, i32 }

@AN_AUX_PAGE = common dso_local global i32 0, align 4
@AN_AUX_OFFSET = common dso_local global i32 0, align 4
@FLASH_SIZE = common dso_local global i32 0, align 4
@AN_AUX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @flashputbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashputbuf(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca i16*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.an_softc*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.an_softc*, %struct.an_softc** %7, align 8
  store %struct.an_softc* %8, %struct.an_softc** %5, align 8
  %9 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %10 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %9, i32 0, i32 0
  %11 = load i16*, i16** %10, align 8
  store i16* %11, i16** %3, align 8
  %12 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %13 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %43, label %16

16:                                               ; preds = %1
  %17 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %18 = load i32, i32* @AN_AUX_PAGE, align 4
  %19 = call i32 @CSR_WRITE_2(%struct.an_softc* %17, i32 %18, i32 256)
  %20 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %21 = load i32, i32* @AN_AUX_OFFSET, align 4
  %22 = call i32 @CSR_WRITE_2(%struct.an_softc* %20, i32 %21, i32 0)
  store i32 0, i32* %4, align 4
  br label %23

23:                                               ; preds = %39, %16
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @FLASH_SIZE, align 4
  %26 = sdiv i32 %25, 2
  %27 = icmp ne i32 %24, %26
  br i1 %27, label %28, label %42

28:                                               ; preds = %23
  %29 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %30 = load i32, i32* @AN_AUX_DATA, align 4
  %31 = load i16*, i16** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i16, i16* %31, i64 %33
  %35 = load i16, i16* %34, align 2
  %36 = zext i16 %35 to i32
  %37 = and i32 %36, 65535
  %38 = call i32 @CSR_WRITE_2(%struct.an_softc* %29, i32 %30, i32 %37)
  br label %39

39:                                               ; preds = %28
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %23

42:                                               ; preds = %23
  br label %63

43:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %59, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @FLASH_SIZE, align 4
  %47 = sdiv i32 %46, 4
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %44
  %50 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %51 = load i16*, i16** %3, align 8
  %52 = bitcast i16* %51 to i32*
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 65535
  %58 = call i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc* %50, i32 32768, i32 %57)
  br label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %4, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %4, align 4
  br label %44

62:                                               ; preds = %44
  br label %63

63:                                               ; preds = %62, %42
  %64 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %65 = load %struct.an_softc*, %struct.an_softc** %5, align 8
  %66 = getelementptr inbounds %struct.an_softc, %struct.an_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @AN_SW0(i32 %67)
  %69 = call i32 @CSR_WRITE_2(%struct.an_softc* %64, i32 %68, i32 32768)
  ret i32 0
}

declare dso_local i32 @CSR_WRITE_2(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @CSR_MEM_AUX_WRITE_4(%struct.an_softc*, i32, i32) #1

declare dso_local i32 @AN_SW0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
