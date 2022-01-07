; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pci_cfgregopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pci_cfgregopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pci_cfgregopen.opened = internal global i32 0, align 4
@cfgmech = common dso_local global i64 0, align 8
@CFGMECH_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"pcibios: BIOS version %x.%02x\0A\00", align 1
@pcicfg_mtx = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"pcicfg\00", align 1
@MTX_SPIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pci_cfgregopen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @pci_cfgregopen.opened, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 1, i32* %1, align 4
  br label %35

6:                                                ; preds = %0
  %7 = load i64, i64* @cfgmech, align 8
  %8 = load i64, i64* @CFGMECH_NONE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %6
  %11 = call i64 (...) @pcireg_cfgopen()
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  store i32 0, i32* %1, align 4
  br label %35

14:                                               ; preds = %10, %6
  %15 = call i32 (...) @pcibios_get_version()
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load i32, i32* %2, align 4
  %20 = and i32 %19, 65280
  %21 = ashr i32 %20, 8
  %22 = load i32, i32* %2, align 4
  %23 = and i32 %22, 255
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @PRVERB(i8* %25)
  br label %27

27:                                               ; preds = %18, %14
  %28 = load i32, i32* @MTX_SPIN, align 4
  %29 = call i32 @mtx_init(i32* @pcicfg_mtx, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %28)
  store i32 1, i32* @pci_cfgregopen.opened, align 4
  %30 = load i32, i32* %2, align 4
  %31 = icmp sge i32 %30, 528
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = call i32 (...) @pci_pir_open()
  br label %34

34:                                               ; preds = %32, %27
  store i32 1, i32* %1, align 4
  br label %35

35:                                               ; preds = %34, %13, %5
  %36 = load i32, i32* %1, align 4
  ret i32 %36
}

declare dso_local i64 @pcireg_cfgopen(...) #1

declare dso_local i32 @pcibios_get_version(...) #1

declare dso_local i32 @PRVERB(i8*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @pci_pir_open(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
