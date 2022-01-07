; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpqcu.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpqcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [33 x i8] c"%-8s %08x  %-8s %08x  %-8s %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Q_TXE\00", align 1
@ah = common dso_local global i32 0, align 4
@AR_Q_TXE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Q_TXD\00", align 1
@AR_Q_TXD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"Q_RDYTIMSHD\00", align 1
@AR_Q_RDYTIMESHDN = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [44 x i8] c"Q_ONESHOTARM_SC %08x  Q_ONESHOTARM_CC %08x\0A\00", align 1
@AR_Q_ONESHOTARM_SC = common dso_local global i32 0, align 4
@AR_Q_ONESHOTARM_CC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [55 x i8] c"Q[%u] TXDP %08x CBR %08x RDYT %08x MISC %08x STS %08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ath_hal_dumpqcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_hal_dumpqcu(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32*, i32** %3, align 8
  %7 = load i32, i32* @ah, align 4
  %8 = load i32, i32* @AR_Q_TXE, align 4
  %9 = call i32 @OS_REG_READ(i32 %7, i32 %8)
  %10 = load i32, i32* @ah, align 4
  %11 = load i32, i32* @AR_Q_TXD, align 4
  %12 = call i32 @OS_REG_READ(i32 %10, i32 %11)
  %13 = load i32, i32* @ah, align 4
  %14 = load i32, i32* @AR_Q_RDYTIMESHDN, align 4
  %15 = call i32 @OS_REG_READ(i32 %13, i32 %14)
  %16 = call i32 (i32*, i8*, ...) @fprintf(i32* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %12, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* @ah, align 4
  %19 = load i32, i32* @AR_Q_ONESHOTARM_SC, align 4
  %20 = call i32 @OS_REG_READ(i32 %18, i32 %19)
  %21 = load i32, i32* @ah, align 4
  %22 = load i32, i32* @AR_Q_ONESHOTARM_CC, align 4
  %23 = call i32 @OS_REG_READ(i32 %21, i32 %22)
  %24 = call i32 (i32*, i8*, ...) @fprintf(i32* %17, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %20, i32 %23)
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %52, %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 10
  br i1 %27, label %28, label %55

28:                                               ; preds = %25
  %29 = load i32*, i32** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ah, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @AR_QTXDP(i32 %32)
  %34 = call i32 @OS_REG_READ(i32 %31, i32 %33)
  %35 = load i32, i32* @ah, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @AR_QCBRCFG(i32 %36)
  %38 = call i32 @OS_REG_READ(i32 %35, i32 %37)
  %39 = load i32, i32* @ah, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @AR_QRDYTIMECFG(i32 %40)
  %42 = call i32 @OS_REG_READ(i32 %39, i32 %41)
  %43 = load i32, i32* @ah, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @AR_QMISC(i32 %44)
  %46 = call i32 @OS_REG_READ(i32 %43, i32 %45)
  %47 = load i32, i32* @ah, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @AR_QSTS(i32 %48)
  %50 = call i32 @OS_REG_READ(i32 %47, i32 %49)
  %51 = call i32 (i32*, i8*, ...) @fprintf(i32* %29, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.5, i64 0, i64 0), i32 %30, i32 %34, i32 %38, i32 %42, i32 %46, i32 %50)
  br label %52

52:                                               ; preds = %28
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %5, align 4
  br label %25

55:                                               ; preds = %25
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

declare dso_local i32 @OS_REG_READ(i32, i32) #1

declare dso_local i32 @AR_QTXDP(i32) #1

declare dso_local i32 @AR_QCBRCFG(i32) #1

declare dso_local i32 @AR_QRDYTIMECFG(i32) #1

declare dso_local i32 @AR_QMISC(i32) #1

declare dso_local i32 @AR_QSTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
