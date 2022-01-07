; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_bar0_reg_dumps.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_nvme.c_pci_nvme_bar0_reg_dumps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"WRITE\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"READ\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"%s %s NVME_CR_CAP_LOW\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s %s NVME_CR_CAP_HI\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"%s %s NVME_CR_VS\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s %s NVME_CR_INTMS\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"%s %s NVME_CR_INTMC\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"%s %s NVME_CR_CC\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"%s %s NVME_CR_CSTS\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s %s NVME_CR_NSSR\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%s %s NVME_CR_AQA\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"%s %s NVME_CR_ASQ_LOW\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"%s %s NVME_CR_ASQ_HI\0D\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"%s %s NVME_CR_ACQ_LOW\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"%s %s NVME_CR_ACQ_HI\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [34 x i8] c"unknown nvme bar-0 offset 0x%lx\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @pci_nvme_bar0_reg_dumps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_nvme_bar0_reg_dumps(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)
  store i8* %11, i8** %7, align 8
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %65 [
    i32 134, label %13
    i32 135, label %17
    i32 128, label %21
    i32 130, label %25
    i32 131, label %29
    i32 133, label %33
    i32 132, label %37
    i32 129, label %41
    i32 138, label %45
    i32 136, label %49
    i32 137, label %53
    i32 139, label %57
    i32 140, label %61
  ]

13:                                               ; preds = %3
  %14 = load i8*, i8** %4, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = call i32 @DPRINTF(i8* %15)
  br label %70

17:                                               ; preds = %3
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i32 @DPRINTF(i8* %19)
  br label %70

21:                                               ; preds = %3
  %22 = load i8*, i8** %4, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @DPRINTF(i8* %23)
  br label %70

25:                                               ; preds = %3
  %26 = load i8*, i8** %4, align 8
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @DPRINTF(i8* %27)
  br label %70

29:                                               ; preds = %3
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @DPRINTF(i8* %31)
  br label %70

33:                                               ; preds = %3
  %34 = load i8*, i8** %4, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = call i32 @DPRINTF(i8* %35)
  br label %70

37:                                               ; preds = %3
  %38 = load i8*, i8** %4, align 8
  %39 = load i8*, i8** %7, align 8
  %40 = call i32 @DPRINTF(i8* %39)
  br label %70

41:                                               ; preds = %3
  %42 = load i8*, i8** %4, align 8
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 @DPRINTF(i8* %43)
  br label %70

45:                                               ; preds = %3
  %46 = load i8*, i8** %4, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @DPRINTF(i8* %47)
  br label %70

49:                                               ; preds = %3
  %50 = load i8*, i8** %4, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = call i32 @DPRINTF(i8* %51)
  br label %70

53:                                               ; preds = %3
  %54 = load i8*, i8** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @DPRINTF(i8* %55)
  br label %70

57:                                               ; preds = %3
  %58 = load i8*, i8** %4, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @DPRINTF(i8* %59)
  br label %70

61:                                               ; preds = %3
  %62 = load i8*, i8** %4, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @DPRINTF(i8* %63)
  br label %70

65:                                               ; preds = %3
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = call i32 @DPRINTF(i8* %68)
  br label %70

70:                                               ; preds = %65, %61, %57, %53, %49, %45, %41, %37, %33, %29, %25, %21, %17, %13
  ret void
}

declare dso_local i32 @DPRINTF(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
