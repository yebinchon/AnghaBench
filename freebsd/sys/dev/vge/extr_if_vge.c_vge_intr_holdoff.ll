; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_intr_holdoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_intr_holdoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i64, i64, i64 }

@VGE_CAMCTL = common dso_local global i32 0, align 4
@VGE_PAGESEL_TXSUPPTHR = common dso_local global i64 0, align 8
@VGE_TXSUPPTHR = common dso_local global i32 0, align 4
@VGE_PAGESEL_RXSUPPTHR = common dso_local global i64 0, align 8
@VGE_RXSUPPTHR = common dso_local global i32 0, align 4
@VGE_INTCTL1 = common dso_local global i32 0, align 4
@VGE_INTCTL_SC_RELOAD = common dso_local global i64 0, align 8
@VGE_INTCTL_HC_RELOAD = common dso_local global i64 0, align 8
@VGE_INTCTL_TXINTSUP_DISABLE = common dso_local global i64 0, align 8
@VGE_INTCTL_RXINTSUP_DISABLE = common dso_local global i64 0, align 8
@VGE_CRC3 = common dso_local global i32 0, align 4
@VGE_CR3_INT_HOLDOFF = common dso_local global i64 0, align 8
@VGE_PAGESEL_INTHLDOFF = common dso_local global i64 0, align 8
@VGE_INTHOLDOFF = common dso_local global i32 0, align 4
@VGE_CRS3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_intr_holdoff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_intr_holdoff(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %4 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %5 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %4)
  %6 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %7 = load i32, i32* @VGE_CAMCTL, align 4
  %8 = load i64, i64* @VGE_PAGESEL_TXSUPPTHR, align 8
  %9 = call i32 @CSR_WRITE_1(%struct.vge_softc* %6, i32 %7, i64 %8)
  %10 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %11 = load i32, i32* @VGE_TXSUPPTHR, align 4
  %12 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @CSR_WRITE_1(%struct.vge_softc* %10, i32 %11, i64 %14)
  %16 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %17 = load i32, i32* @VGE_CAMCTL, align 4
  %18 = load i64, i64* @VGE_PAGESEL_RXSUPPTHR, align 8
  %19 = call i32 @CSR_WRITE_1(%struct.vge_softc* %16, i32 %17, i64 %18)
  %20 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %21 = load i32, i32* @VGE_RXSUPPTHR, align 4
  %22 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %23 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @CSR_WRITE_1(%struct.vge_softc* %20, i32 %21, i64 %24)
  %26 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %27 = load i32, i32* @VGE_INTCTL1, align 4
  %28 = call i64 @CSR_READ_1(%struct.vge_softc* %26, i32 %27)
  store i64 %28, i64* %3, align 8
  %29 = load i64, i64* @VGE_INTCTL_SC_RELOAD, align 8
  %30 = xor i64 %29, -1
  %31 = load i64, i64* %3, align 8
  %32 = and i64 %31, %30
  store i64 %32, i64* %3, align 8
  %33 = load i64, i64* @VGE_INTCTL_HC_RELOAD, align 8
  %34 = load i64, i64* %3, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %3, align 8
  %36 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %37 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load i64, i64* @VGE_INTCTL_TXINTSUP_DISABLE, align 8
  %42 = load i64, i64* %3, align 8
  %43 = or i64 %42, %41
  store i64 %43, i64* %3, align 8
  br label %49

44:                                               ; preds = %1
  %45 = load i64, i64* @VGE_INTCTL_TXINTSUP_DISABLE, align 8
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %3, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %3, align 8
  br label %49

49:                                               ; preds = %44, %40
  %50 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %51 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp sle i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i64, i64* @VGE_INTCTL_RXINTSUP_DISABLE, align 8
  %56 = load i64, i64* %3, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %3, align 8
  br label %63

58:                                               ; preds = %49
  %59 = load i64, i64* @VGE_INTCTL_RXINTSUP_DISABLE, align 8
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %3, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %3, align 8
  br label %63

63:                                               ; preds = %58, %54
  %64 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %65 = load i32, i32* @VGE_INTCTL1, align 4
  %66 = load i64, i64* %3, align 8
  %67 = call i32 @CSR_WRITE_1(%struct.vge_softc* %64, i32 %65, i64 %66)
  %68 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %69 = load i32, i32* @VGE_CRC3, align 4
  %70 = load i64, i64* @VGE_CR3_INT_HOLDOFF, align 8
  %71 = call i32 @CSR_WRITE_1(%struct.vge_softc* %68, i32 %69, i64 %70)
  %72 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %73 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp sgt i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %63
  %77 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %78 = load i32, i32* @VGE_CAMCTL, align 4
  %79 = load i64, i64* @VGE_PAGESEL_INTHLDOFF, align 8
  %80 = call i32 @CSR_WRITE_1(%struct.vge_softc* %77, i32 %78, i64 %79)
  %81 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %82 = load i32, i32* @VGE_INTHOLDOFF, align 4
  %83 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %84 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = call i64 @VGE_INT_HOLDOFF_USEC(i64 %85)
  %87 = call i32 @CSR_WRITE_1(%struct.vge_softc* %81, i32 %82, i64 %86)
  %88 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %89 = load i32, i32* @VGE_CRS3, align 4
  %90 = load i64, i64* @VGE_CR3_INT_HOLDOFF, align 8
  %91 = call i32 @CSR_WRITE_1(%struct.vge_softc* %88, i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %76, %63
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i64) #1

declare dso_local i64 @CSR_READ_1(%struct.vge_softc*, i32) #1

declare dso_local i64 @VGE_INT_HOLDOFF_USEC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
