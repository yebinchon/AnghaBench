; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpdcu.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/ath/athregs/extr_dumpregs.c_ath_hal_dumpdcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [56 x i8] c"D[%u] MASK %08x IFS %08x RTRY %08x CHNT %08x MISC %06x\0A\00", align 1
@ah = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @ath_hal_dumpdcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_hal_dumpdcu(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %33, %2
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 10
  br i1 %8, label %9, label %36

9:                                                ; preds = %6
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ah, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @AR_DQCUMASK(i32 %13)
  %15 = call i32 @OS_REG_READ(i32 %12, i32 %14)
  %16 = load i32, i32* @ah, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @AR_DLCL_IFS(i32 %17)
  %19 = call i32 @OS_REG_READ(i32 %16, i32 %18)
  %20 = load i32, i32* @ah, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @AR_DRETRY_LIMIT(i32 %21)
  %23 = call i32 @OS_REG_READ(i32 %20, i32 %22)
  %24 = load i32, i32* @ah, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @AR_DCHNTIME(i32 %25)
  %27 = call i32 @OS_REG_READ(i32 %24, i32 %26)
  %28 = load i32, i32* @ah, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @AR_DMISC(i32 %29)
  %31 = call i32 @OS_REG_READ(i32 %28, i32 %30)
  %32 = call i32 @fprintf(i32* %10, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %19, i32 %23, i32 %27, i32 %31)
  br label %33

33:                                               ; preds = %9
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  br label %6

36:                                               ; preds = %6
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @OS_REG_READ(i32, i32) #1

declare dso_local i32 @AR_DQCUMASK(i32) #1

declare dso_local i32 @AR_DLCL_IFS(i32) #1

declare dso_local i32 @AR_DRETRY_LIMIT(i32) #1

declare dso_local i32 @AR_DCHNTIME(i32) #1

declare dso_local i32 @AR_DMISC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
