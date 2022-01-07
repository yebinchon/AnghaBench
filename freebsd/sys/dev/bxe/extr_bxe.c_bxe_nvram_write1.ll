; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_write1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_nvram_write1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [66 x i8] c"Invalid parameter, offset 0x%x + buf_size 0x%x > flash_size 0x%x\0A\00", align 1
@MCPR_NVM_COMMAND_FIRST = common dso_local global i64 0, align 8
@MCPR_NVM_COMMAND_LAST = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i64, i64*, i32)* @bxe_nvram_write1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_nvram_write1(%struct.bxe_softc* %0, i64 %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %7, align 8
  %15 = load i32, i32* %9, align 4
  %16 = sext i32 %15 to i64
  %17 = add nsw i64 %14, %16
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %19 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %17, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %28 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @BLOGE(%struct.bxe_softc* %24, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %25, i32 %26, i64 %30)
  store i32 -1, i32* %5, align 4
  br label %82

32:                                               ; preds = %4
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %34 = call i32 @bxe_acquire_nvram_lock(%struct.bxe_softc* %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %5, align 4
  br label %82

39:                                               ; preds = %32
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %41 = call i32 @bxe_enable_nvram_access(%struct.bxe_softc* %40)
  %42 = load i64, i64* @MCPR_NVM_COMMAND_FIRST, align 8
  %43 = load i64, i64* @MCPR_NVM_COMMAND_LAST, align 8
  %44 = or i64 %42, %43
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %7, align 8
  %46 = and i64 %45, -4
  store i64 %46, i64* %11, align 8
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @bxe_nvram_read_dword(%struct.bxe_softc* %47, i64 %48, i64* %12, i64 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %13, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %76

53:                                               ; preds = %39
  %54 = load i64, i64* %7, align 8
  %55 = call i64 @BYTE_OFFSET(i64 %54)
  %56 = trunc i64 %55 to i32
  %57 = shl i32 255, %56
  %58 = xor i32 %57, -1
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* %12, align 8
  %61 = and i64 %60, %59
  store i64 %61, i64* %12, align 8
  %62 = load i64*, i64** %8, align 8
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @BYTE_OFFSET(i64 %64)
  %66 = shl i64 %63, %65
  %67 = load i64, i64* %12, align 8
  %68 = or i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load i64, i64* %12, align 8
  %70 = call i64 @be32toh(i64 %69)
  store i64 %70, i64* %12, align 8
  %71 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @bxe_nvram_write_dword(%struct.bxe_softc* %71, i64 %72, i64 %73, i64 %74)
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %53, %39
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %78 = call i32 @bxe_disable_nvram_access(%struct.bxe_softc* %77)
  %79 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %80 = call i32 @bxe_release_nvram_lock(%struct.bxe_softc* %79)
  %81 = load i32, i32* %13, align 4
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %76, %37, %23
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i64, i32, i64) #1

declare dso_local i32 @bxe_acquire_nvram_lock(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_enable_nvram_access(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_nvram_read_dword(%struct.bxe_softc*, i64, i64*, i64) #1

declare dso_local i64 @BYTE_OFFSET(i64) #1

declare dso_local i64 @be32toh(i64) #1

declare dso_local i32 @bxe_nvram_write_dword(%struct.bxe_softc*, i64, i64, i64) #1

declare dso_local i32 @bxe_disable_nvram_access(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_release_nvram_lock(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
