; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_attn_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"attn_bits 0x%08x attn_ack 0x%08x asserted 0x%08x deasserted 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"BAD attention state\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_attn_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_attn_int(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32toh(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le32toh(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* %4, align 4
  %27 = xor i32 %26, -1
  %28 = and i32 %25, %27
  %29 = load i32, i32* %5, align 4
  %30 = xor i32 %29, -1
  %31 = and i32 %28, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* %5, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = load i32, i32* @DBG_INTR, align 4
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @BLOGD(%struct.bxe_softc* %38, i32 %39, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %4, align 4
  %47 = xor i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* %5, align 4
  %51 = xor i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %1
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %56 = call i32 @BLOGE(%struct.bxe_softc* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %57

57:                                               ; preds = %54, %1
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @bxe_attn_int_asserted(%struct.bxe_softc* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @bxe_attn_int_deasserted(%struct.bxe_softc* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %64
  ret void
}

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_attn_int_asserted(%struct.bxe_softc*, i32) #1

declare dso_local i32 @bxe_attn_int_deasserted(%struct.bxe_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
