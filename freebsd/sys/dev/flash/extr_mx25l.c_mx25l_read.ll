; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/flash/extr_mx25l.c_mx25l_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mx25l_softc = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_command = type { i32, i32, i32*, i32*, i32, i32, i8*, i8* }

@EIO = common dso_local global i32 0, align 4
@CMD_FAST_READ = common dso_local global i32 0, align 4
@FL_ENABLE_4B_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mx25l_softc*, i32, i8*, i32)* @mx25l_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mx25l_read(%struct.mx25l_softc* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mx25l_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [8 x i32], align 16
  %11 = alloca [8 x i32], align 16
  %12 = alloca %struct.spi_command, align 8
  %13 = alloca i32, align 4
  store %struct.mx25l_softc* %0, %struct.mx25l_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %16 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = srem i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %25 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = srem i32 %23, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22, %4
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %5, align 4
  br label %97

33:                                               ; preds = %22
  %34 = load i32, i32* @CMD_FAST_READ, align 4
  %35 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %37 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FL_ENABLE_4B_ADDR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 0
  store i32 6, i32* %43, align 8
  %44 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 1
  store i32 6, i32* %44, align 4
  %45 = load i32, i32* %7, align 4
  %46 = ashr i32 %45, 24
  %47 = and i32 %46, 255
  %48 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = ashr i32 %49, 16
  %51 = and i32 %50, 255
  %52 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* %7, align 4
  %54 = ashr i32 %53, 8
  %55 = and i32 %54, 255
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* %7, align 4
  %58 = and i32 %57, 255
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 %58, i32* %59, align 16
  %60 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  store i32 0, i32* %60, align 4
  br label %76

61:                                               ; preds = %33
  %62 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 0
  store i32 5, i32* %62, align 8
  %63 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 1
  store i32 5, i32* %63, align 4
  %64 = load i32, i32* %7, align 4
  %65 = ashr i32 %64, 16
  %66 = and i32 %65, 255
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %7, align 4
  %69 = ashr i32 %68, 8
  %70 = and i32 %69, 255
  %71 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  store i32 %70, i32* %71, align 8
  %72 = load i32, i32* %7, align 4
  %73 = and i32 %72, 255
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  store i32 %73, i32* %74, align 4
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  store i32 0, i32* %75, align 16
  br label %76

76:                                               ; preds = %61, %42
  %77 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %78 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 2
  store i32* %77, i32** %78, align 8
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %11, i64 0, i64 0
  %80 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 3
  store i32* %79, i32** %80, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 7
  store i8* %81, i8** %82, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 6
  store i8* %83, i8** %84, align 8
  %85 = load i32, i32* %9, align 4
  %86 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 4
  store i32 %85, i32* %86, align 8
  %87 = load i32, i32* %9, align 4
  %88 = getelementptr inbounds %struct.spi_command, %struct.spi_command* %12, i32 0, i32 5
  store i32 %87, i32* %88, align 4
  %89 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %90 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.mx25l_softc*, %struct.mx25l_softc** %6, align 8
  %93 = getelementptr inbounds %struct.mx25l_softc, %struct.mx25l_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @SPIBUS_TRANSFER(i32 %91, i32 %94, %struct.spi_command* %12)
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %13, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %76, %31
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i32 @SPIBUS_TRANSFER(i32, i32, %struct.spi_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
