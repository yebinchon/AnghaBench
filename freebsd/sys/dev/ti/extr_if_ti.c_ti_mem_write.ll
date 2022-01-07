; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_mem_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_mem_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i32 }

@TI_WINLEN = common dso_local global i32 0, align 4
@TI_WINBASE = common dso_local global i32 0, align 4
@TI_WINDOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*, i32, i32, i8*)* @ti_mem_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_mem_write(%struct.ti_softc* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.ti_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.ti_softc* %0, %struct.ti_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %12, align 8
  br label %16

16:                                               ; preds = %31, %4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %66

19:                                               ; preds = %16
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* @TI_WINLEN, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %10, align 4
  br label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @TI_WINLEN, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @TI_WINLEN, align 4
  %29 = srem i32 %27, %28
  %30 = sub nsw i32 %26, %29
  store i32 %30, i32* %10, align 4
  br label %31

31:                                               ; preds = %25, %23
  %32 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %33 = load i32, i32* @TI_WINBASE, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @TI_WINLEN, align 4
  %36 = call i32 @rounddown2(i32 %34, i32 %35)
  %37 = call i32 @CSR_WRITE_4(%struct.ti_softc* %32, i32 %33, i32 %36)
  %38 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %39 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ti_softc*, %struct.ti_softc** %5, align 8
  %42 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i64, i64* @TI_WINDOW, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @TI_WINLEN, align 4
  %47 = sub nsw i32 %46, 1
  %48 = and i32 %45, %47
  %49 = sext i32 %48 to i64
  %50 = add nsw i64 %44, %49
  %51 = load i8*, i8** %12, align 8
  %52 = bitcast i8* %51 to i32*
  %53 = load i32, i32* %10, align 4
  %54 = sdiv i32 %53, 4
  %55 = call i32 @bus_space_write_region_4(i32 %40, i32 %43, i64 %50, i32* %52, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %57, i64 %58
  store i8* %59, i8** %12, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %11, align 4
  %65 = sub nsw i32 %64, %63
  store i32 %65, i32* %11, align 4
  br label %16

66:                                               ; preds = %16
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @rounddown2(i32, i32) #1

declare dso_local i32 @bus_space_write_region_4(i32, i32, i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
