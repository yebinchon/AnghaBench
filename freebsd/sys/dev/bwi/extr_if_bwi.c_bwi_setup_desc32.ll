; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_setup_desc32.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_if_bwi.c_bwi_setup_desc32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_softc = type { i32 }
%struct.bwi_desc32 = type { i8*, i8* }

@BWI_DESC32_A_ADDR_MASK = common dso_local global i32 0, align 4
@BWI_DESC32_A_FUNC_MASK = common dso_local global i32 0, align 4
@BWI_DESC32_A_FUNC_TXRX = common dso_local global i32 0, align 4
@BWI_DESC32_C_BUFLEN_MASK = common dso_local global i32 0, align 4
@BWI_DESC32_C_ADDRHI_MASK = common dso_local global i32 0, align 4
@BWI_DESC32_C_EOR = common dso_local global i32 0, align 4
@BWI_DESC32_C_FRAME_START = common dso_local global i32 0, align 4
@BWI_DESC32_C_FRAME_END = common dso_local global i32 0, align 4
@BWI_DESC32_C_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_softc*, %struct.bwi_desc32*, i32, i32, i32, i32, i32)* @bwi_setup_desc32 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_setup_desc32(%struct.bwi_softc* %0, %struct.bwi_desc32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.bwi_softc*, align 8
  %9 = alloca %struct.bwi_desc32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.bwi_desc32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.bwi_softc* %0, %struct.bwi_softc** %8, align 8
  store %struct.bwi_desc32* %1, %struct.bwi_desc32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.bwi_desc32*, %struct.bwi_desc32** %9, align 8
  %21 = load i32, i32* %11, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bwi_desc32, %struct.bwi_desc32* %20, i64 %22
  store %struct.bwi_desc32* %23, %struct.bwi_desc32** %15, align 8
  %24 = load i32, i32* %12, align 4
  %25 = load i32, i32* @BWI_DESC32_A_ADDR_MASK, align 4
  %26 = call i32 @__SHIFTOUT(i32 %24, i32 %25)
  store i32 %26, i32* %19, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @BWI_DESC32_A_FUNC_MASK, align 4
  %29 = call i32 @__SHIFTOUT(i32 %27, i32 %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %19, align 4
  %31 = load i32, i32* @BWI_DESC32_A_ADDR_MASK, align 4
  %32 = call i32 @__SHIFTIN(i32 %30, i32 %31)
  %33 = load i32, i32* @BWI_DESC32_A_FUNC_TXRX, align 4
  %34 = load i32, i32* @BWI_DESC32_A_FUNC_MASK, align 4
  %35 = call i32 @__SHIFTIN(i32 %33, i32 %34)
  %36 = or i32 %32, %35
  store i32 %36, i32* %17, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @BWI_DESC32_C_BUFLEN_MASK, align 4
  %39 = call i32 @__SHIFTIN(i32 %37, i32 %38)
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @BWI_DESC32_C_ADDRHI_MASK, align 4
  %42 = call i32 @__SHIFTIN(i32 %40, i32 %41)
  %43 = or i32 %39, %42
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp eq i32 %44, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %7
  %49 = load i32, i32* @BWI_DESC32_C_EOR, align 4
  %50 = load i32, i32* %16, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %16, align 4
  br label %52

52:                                               ; preds = %48, %7
  %53 = load i32, i32* %14, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = load i32, i32* @BWI_DESC32_C_FRAME_START, align 4
  %57 = load i32, i32* @BWI_DESC32_C_FRAME_END, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @BWI_DESC32_C_INTR, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* %16, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %16, align 4
  br label %63

63:                                               ; preds = %55, %52
  %64 = load i32, i32* %17, align 4
  %65 = call i8* @htole32(i32 %64)
  %66 = load %struct.bwi_desc32*, %struct.bwi_desc32** %15, align 8
  %67 = getelementptr inbounds %struct.bwi_desc32, %struct.bwi_desc32* %66, i32 0, i32 1
  store i8* %65, i8** %67, align 8
  %68 = load i32, i32* %16, align 4
  %69 = call i8* @htole32(i32 %68)
  %70 = load %struct.bwi_desc32*, %struct.bwi_desc32** %15, align 8
  %71 = getelementptr inbounds %struct.bwi_desc32, %struct.bwi_desc32* %70, i32 0, i32 0
  store i8* %69, i8** %71, align 8
  ret void
}

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i8* @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
