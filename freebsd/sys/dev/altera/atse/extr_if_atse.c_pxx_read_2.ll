; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_pxx_read_2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_pxx_read_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"[%s:%d] %s R %s 0x%08x (0x%08jx) = 0x%04x\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"atse_mem_res\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atse_softc*, i32, i32, i8*, i32, i8*)* @pxx_read_2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxx_read_2(%struct.atse_softc* %0, i32 %1, i32 %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca %struct.atse_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.atse_softc* %0, %struct.atse_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8* %5, i8** %12, align 8
  %15 = load %struct.atse_softc*, %struct.atse_softc** %7, align 8
  %16 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = add nsw i32 %18, %19
  %21 = mul nsw i32 %20, 4
  %22 = call i32 @bus_read_4(i32 %17, i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @le32toh(i32 %23)
  %25 = and i32 %24, 65535
  store i32 %25, i32* %14, align 4
  %26 = load i8*, i8** %10, align 8
  %27 = load i32, i32* %11, align 4
  %28 = load i8*, i8** %12, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %30, %31
  %33 = mul nsw i32 %32, 4
  %34 = load i32, i32* %14, align 4
  %35 = call i32 @DPRINTF(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %27, i8* %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %33, i32 %34)
  %36 = load i32, i32* %14, align 4
  ret i32 %36
}

declare dso_local i32 @bus_read_4(i32, i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @DPRINTF(i8*, i8*, i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
