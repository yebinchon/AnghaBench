; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_opal_console.c_uart_opal_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_opal_softc = type { i64, i32, i32, i32 }

@OPAL_RAW = common dso_local global i64 0, align 8
@OPAL_CONSOLE_WRITE = common dso_local global i32 0, align 4
@VS_DATA_PACKET_HEADER = common dso_local global i8 0, align 1
@OPAL_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_opal_softc*, i8*, i64)* @uart_opal_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uart_opal_put(%struct.uart_opal_softc* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.uart_opal_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [16 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_opal_softc* %0, %struct.uart_opal_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = ptrtoint i32* %8 to i32
  store i32 %13, i32* %11, align 4
  %14 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %15 = ptrtoint i8* %14 to i32
  store i32 %15, i32* %12, align 4
  %16 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %4, align 8
  %17 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @OPAL_RAW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %3
  %22 = load i8*, i8** %5, align 8
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %12, align 4
  %24 = load i64, i64* %6, align 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %8, align 4
  %26 = call i32 @uart_opal_real_map_outbuffer(i32* %12, i32* %11)
  %27 = load i32, i32* @OPAL_CONSOLE_WRITE, align 4
  %28 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %4, align 8
  %29 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @opal_call(i32 %27, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  %34 = call i32 @uart_opal_real_unmap_outbuffer(i32* %8)
  br label %83

35:                                               ; preds = %3
  %36 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %4, align 8
  %37 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %36, i32 0, i32 1
  %38 = call i32 @uart_lock(i32* %37)
  %39 = load i64, i64* %6, align 8
  %40 = icmp ugt i64 %39, 12
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i64 12, i64* %6, align 8
  br label %42

42:                                               ; preds = %41, %35
  %43 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %4, align 8
  %44 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  store i32 %45, i32* %7, align 4
  %47 = load i8, i8* @VS_DATA_PACKET_HEADER, align 1
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  store i8 %47, i8* %48, align 16
  %49 = load i64, i64* %6, align 8
  %50 = add i64 4, %49
  %51 = trunc i64 %50 to i8
  %52 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 1
  store i8 %51, i8* %52, align 1
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = trunc i32 %55 to i8
  %57 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 2
  store i8 %56, i8* %57, align 2
  %58 = load i32, i32* %7, align 4
  %59 = and i32 %58, 255
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 3
  store i8 %60, i8* %61, align 1
  %62 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 4
  %63 = load i8*, i8** %5, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @memcpy(i8* %62, i8* %63, i64 %64)
  %66 = load i64, i64* %6, align 8
  %67 = add i64 4, %66
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %8, align 4
  %69 = call i32 @uart_opal_real_map_outbuffer(i32* %12, i32* %11)
  %70 = load i32, i32* @OPAL_CONSOLE_WRITE, align 4
  %71 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %4, align 8
  %72 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @opal_call(i32 %70, i32 %73, i32 %74, i32 %75)
  store i32 %76, i32* %10, align 4
  %77 = call i32 @uart_opal_real_unmap_outbuffer(i32* %8)
  %78 = load %struct.uart_opal_softc*, %struct.uart_opal_softc** %4, align 8
  %79 = getelementptr inbounds %struct.uart_opal_softc, %struct.uart_opal_softc* %78, i32 0, i32 1
  %80 = call i32 @uart_unlock(i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %81, 4
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %42, %21
  %84 = load i32, i32* %8, align 4
  ret i32 %84
}

declare dso_local i32 @uart_opal_real_map_outbuffer(i32*, i32*) #1

declare dso_local i32 @opal_call(i32, i32, i32, i32) #1

declare dso_local i32 @uart_opal_real_unmap_outbuffer(i32*) #1

declare dso_local i32 @uart_lock(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @uart_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
