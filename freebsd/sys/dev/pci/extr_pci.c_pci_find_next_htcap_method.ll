; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_next_htcap_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_find_next_htcap_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PCICAP_ID = common dso_local global i64 0, align 8
@PCIY_HT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"start capability is not HyperTransport capability\00", align 1
@PCIR_HT_COMMAND = common dso_local global i64 0, align 8
@PCIM_HTCAP_SLAVE = common dso_local global i32 0, align 4
@PCIM_HTCAP_HOST = common dso_local global i32 0, align 4
@PCIM_HTCMD_CAP_MASK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_find_next_htcap_method(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sext i32 %15 to i64
  %17 = load i64, i64* @PCICAP_ID, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i64 @pci_read_config(i32 %14, i64 %18, i32 1)
  %20 = load i64, i64* @PCIY_HT, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %10, align 4
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %65, %5
  %26 = load i32, i32* %8, align 4
  %27 = load i64, i64* @PCIY_HT, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call i64 @pci_find_next_cap(i32 %26, i64 %27, i32 %28, i32* %12)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %66

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %12, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64, i64* @PCIR_HT_COMMAND, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i64 @pci_read_config(i32 %33, i64 %37, i32 2)
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @PCIM_HTCAP_SLAVE, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PCIM_HTCAP_HOST, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %43, %32
  %48 = load i32, i32* %13, align 4
  %49 = and i32 %48, 57344
  store i32 %49, i32* %13, align 4
  br label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @PCIM_HTCMD_CAP_MASK, align 4
  %52 = load i32, i32* %13, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %13, align 4
  br label %54

54:                                               ; preds = %50, %47
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %54
  %59 = load i32*, i32** %11, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = load i32*, i32** %11, align 8
  store i32 %62, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %6, align 4
  br label %68

65:                                               ; preds = %54
  br label %25

66:                                               ; preds = %31
  %67 = load i32, i32* @ENOENT, align 4
  store i32 %67, i32* %6, align 4
  br label %68

68:                                               ; preds = %66, %64
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pci_read_config(i32, i64, i32) #1

declare dso_local i64 @pci_find_next_cap(i32, i64, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
