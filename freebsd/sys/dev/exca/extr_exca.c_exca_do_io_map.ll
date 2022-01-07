; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_do_io_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/exca/extr_exca.c_exca_do_io_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.io_map_index_st = type { i32, i32, i32, i32, i32, i32*, i32 }
%struct.exca_softc = type { %struct.pccard_io_handle* }
%struct.pccard_io_handle = type { i32, i32, i64 }

@io_map_index = common dso_local global %struct.io_map_index_st* null, align 8
@EXCA_IOCTL = common dso_local global i32 0, align 4
@EXCA_ADDRWIN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exca_softc*, i32)* @exca_do_io_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exca_do_io_map(%struct.exca_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.exca_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.io_map_index_st*, align 8
  %6 = alloca %struct.pccard_io_handle*, align 8
  store %struct.exca_softc* %0, %struct.exca_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.io_map_index_st*, %struct.io_map_index_st** @io_map_index, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %7, i64 %9
  store %struct.io_map_index_st* %10, %struct.io_map_index_st** %5, align 8
  %11 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %12 = getelementptr inbounds %struct.exca_softc, %struct.exca_softc* %11, i32 0, i32 0
  %13 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %13, i64 %15
  store %struct.pccard_io_handle* %16, %struct.pccard_io_handle** %6, align 8
  %17 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %18 = load %struct.io_map_index_st*, %struct.io_map_index_st** %5, align 8
  %19 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %6, align 8
  %22 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, 255
  %25 = call i32 @exca_putb(%struct.exca_softc* %17, i32 %20, i32 %24)
  %26 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %27 = load %struct.io_map_index_st*, %struct.io_map_index_st** %5, align 8
  %28 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %6, align 8
  %31 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 8
  %34 = and i32 %33, 255
  %35 = call i32 @exca_putb(%struct.exca_softc* %26, i32 %29, i32 %34)
  %36 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %37 = load %struct.io_map_index_st*, %struct.io_map_index_st** %5, align 8
  %38 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %6, align 8
  %41 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %6, align 8
  %44 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %47, 255
  %49 = call i32 @exca_putb(%struct.exca_softc* %36, i32 %39, i32 %48)
  %50 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %51 = load %struct.io_map_index_st*, %struct.io_map_index_st** %5, align 8
  %52 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %6, align 8
  %55 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %6, align 8
  %58 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %56, %59
  %61 = sub nsw i32 %60, 1
  %62 = ashr i32 %61, 8
  %63 = and i32 %62, 255
  %64 = call i32 @exca_putb(%struct.exca_softc* %50, i32 %53, i32 %63)
  %65 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %66 = load i32, i32* @EXCA_IOCTL, align 4
  %67 = load %struct.io_map_index_st*, %struct.io_map_index_st** %5, align 8
  %68 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @exca_clrb(%struct.exca_softc* %65, i32 %66, i32 %69)
  %71 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %72 = load i32, i32* @EXCA_IOCTL, align 4
  %73 = load %struct.io_map_index_st*, %struct.io_map_index_st** %5, align 8
  %74 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.pccard_io_handle*, %struct.pccard_io_handle** %6, align 8
  %77 = getelementptr inbounds %struct.pccard_io_handle, %struct.pccard_io_handle* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i32, i32* %75, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @exca_setb(%struct.exca_softc* %71, i32 %72, i32 %80)
  %82 = load %struct.exca_softc*, %struct.exca_softc** %3, align 8
  %83 = load i32, i32* @EXCA_ADDRWIN_ENABLE, align 4
  %84 = load %struct.io_map_index_st*, %struct.io_map_index_st** %5, align 8
  %85 = getelementptr inbounds %struct.io_map_index_st, %struct.io_map_index_st* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @exca_setb(%struct.exca_softc* %82, i32 %83, i32 %86)
  ret void
}

declare dso_local i32 @exca_putb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @exca_clrb(%struct.exca_softc*, i32, i32) #1

declare dso_local i32 @exca_setb(%struct.exca_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
