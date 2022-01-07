; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_nmi.c_isa_nmi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_nmi.c_isa_nmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOG_CRIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"NMI ISA %x, EISA %x\0A\00", align 1
@NMI_PARITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"RAM parity error, likely hardware failure.\00", align 1
@NMI_IOCHAN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"I/O channel check, likely hardware failure.\00", align 1
@ENMI_WATCHDOG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"EISA watchdog timer expired, likely hardware failure.\00", align 1
@ENMI_BUSTIMER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"EISA bus timeout, likely hardware failure.\00", align 1
@ENMI_IOSTATUS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"EISA I/O port status error.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isa_nmi(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %7 = call i32 @inb(i32 97)
  store i32 %7, i32* %5, align 4
  %8 = call i32 @inb(i32 1121)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @LOG_CRIT, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 (i32, i8*, ...) @log(i32 %9, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %11)
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @NMI_PARITY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load i32, i32* @LOG_CRIT, align 4
  %19 = call i32 (i32, i8*, ...) @log(i32 %18, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %17, %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @NMI_IOCHAN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @LOG_CRIT, align 4
  %27 = call i32 (i32, i8*, ...) @log(i32 %26, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %20
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %29, 255
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %59

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ENMI_WATCHDOG, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @LOG_CRIT, align 4
  %40 = call i32 (i32, i8*, ...) @log(i32 %39, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ENMI_BUSTIMER, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @LOG_CRIT, align 4
  %48 = call i32 (i32, i8*, ...) @log(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ENMI_IOSTATUS, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load i32, i32* @LOG_CRIT, align 4
  %56 = call i32 (i32, i8*, ...) @log(i32 %55, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 1, i32* %4, align 4
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %31
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @log(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
