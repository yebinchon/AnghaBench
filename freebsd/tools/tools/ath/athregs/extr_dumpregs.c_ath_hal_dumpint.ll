; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpint.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"IMR: %08x S0 %08x S1 %08x S2 %08x S3 %08x S4 %08x\0A\00", align 1
@ah = common dso_local global i32 0, align 4
@AR_IMR = common dso_local global i32 0, align 4
@AR_IMR_S0 = common dso_local global i32 0, align 4
@AR_IMR_S1 = common dso_local global i32 0, align 4
@AR_IMR_S2 = common dso_local global i32 0, align 4
@AR_IMR_S3 = common dso_local global i32 0, align 4
@AR_IMR_S4 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ISR: %08x S0 %08x S1 %08x S2 %08x S3 %08x S4 %08x\0A\00", align 1
@AR_ISR = common dso_local global i32 0, align 4
@AR_ISR_S0 = common dso_local global i32 0, align 4
@AR_ISR_S1 = common dso_local global i32 0, align 4
@AR_ISR_S2 = common dso_local global i32 0, align 4
@AR_ISR_S3 = common dso_local global i32 0, align 4
@AR_ISR_S4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ath_hal_dumpint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_hal_dumpint(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @ah, align 4
  %8 = load i32, i32* @AR_IMR, align 4
  %9 = call i32 @OS_REG_READ(i32 %7, i32 %8)
  %10 = load i32, i32* @ah, align 4
  %11 = load i32, i32* @AR_IMR_S0, align 4
  %12 = call i32 @OS_REG_READ(i32 %10, i32 %11)
  %13 = load i32, i32* @ah, align 4
  %14 = load i32, i32* @AR_IMR_S1, align 4
  %15 = call i32 @OS_REG_READ(i32 %13, i32 %14)
  %16 = load i32, i32* @ah, align 4
  %17 = load i32, i32* @AR_IMR_S2, align 4
  %18 = call i32 @OS_REG_READ(i32 %16, i32 %17)
  %19 = load i32, i32* @ah, align 4
  %20 = load i32, i32* @AR_IMR_S3, align 4
  %21 = call i32 @OS_REG_READ(i32 %19, i32 %20)
  %22 = load i32, i32* @ah, align 4
  %23 = load i32, i32* @AR_IMR_S4, align 4
  %24 = call i32 @OS_REG_READ(i32 %22, i32 %23)
  %25 = call i32 @fprintf(i32* %6, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12, i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @ah, align 4
  %28 = load i32, i32* @AR_ISR, align 4
  %29 = call i32 @OS_REG_READ(i32 %27, i32 %28)
  %30 = load i32, i32* @ah, align 4
  %31 = load i32, i32* @AR_ISR_S0, align 4
  %32 = call i32 @OS_REG_READ(i32 %30, i32 %31)
  %33 = load i32, i32* @ah, align 4
  %34 = load i32, i32* @AR_ISR_S1, align 4
  %35 = call i32 @OS_REG_READ(i32 %33, i32 %34)
  %36 = load i32, i32* @ah, align 4
  %37 = load i32, i32* @AR_ISR_S2, align 4
  %38 = call i32 @OS_REG_READ(i32 %36, i32 %37)
  %39 = load i32, i32* @ah, align 4
  %40 = load i32, i32* @AR_ISR_S3, align 4
  %41 = call i32 @OS_REG_READ(i32 %39, i32 %40)
  %42 = load i32, i32* @ah, align 4
  %43 = load i32, i32* @AR_ISR_S4, align 4
  %44 = call i32 @OS_REG_READ(i32 %42, i32 %43)
  %45 = call i32 @fprintf(i32* %26, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %32, i32 %35, i32 %38, i32 %41, i32 %44)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OS_REG_READ(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
