; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_pciconf.c_print_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32 }
%struct.pci_bar_io = type { i32, i32, i64, i64, i32 }

@PCIOCGETBAR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"I/O Port\00", align 1
@PCIM_BAR_IO_BASE = common dso_local global i32 0, align 4
@PCIM_BAR_MEM_PREFETCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Prefetchable Memory\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Memory\00", align 1
@PCIM_BAR_MEM_TYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"    %s[%02x] = type %s, range %2d, base %#jx, \00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"size %ju, %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @print_bar(i32 %0, %struct.pci_conf* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_conf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.pci_bar_io, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.pci_conf*, %struct.pci_conf** %6, align 8
  %14 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 4
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @PCIOCGETBAR, align 4
  %21 = call i64 @ioctl(i32 %19, i32 %20, %struct.pci_bar_io* %11)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  br label %73

24:                                               ; preds = %4
  %25 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @PCI_BAR_IO(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 32, i32* %12, align 4
  %30 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PCIM_BAR_IO_BASE, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %9, align 4
  br label %55

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCIM_BAR_MEM_PREFETCH, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  br label %42

41:                                               ; preds = %34
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8** %10, align 8
  br label %42

42:                                               ; preds = %41, %40
  %43 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PCIM_BAR_MEM_TYPE, align 4
  %46 = and i32 %44, %45
  switch i32 %46, label %50 [
    i32 129, label %47
    i32 130, label %48
    i32 128, label %49
  ]

47:                                               ; preds = %42
  store i32 32, i32* %12, align 4
  br label %51

48:                                               ; preds = %42
  store i32 20, i32* %12, align 4
  br label %51

49:                                               ; preds = %42
  store i32 64, i32* %12, align 4
  br label %51

50:                                               ; preds = %42
  store i32 -1, i32* %12, align 4
  br label %51

51:                                               ; preds = %50, %49, %48, %47
  %52 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, -16
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %51, %29
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* %8, align 4
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* %56, i32 %57, i8* %58, i32 %59, i32 %60)
  %62 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = getelementptr inbounds %struct.pci_bar_io, %struct.pci_bar_io* %11, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)
  %72 = call i32 (i8*, i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %66, i8* %71)
  br label %73

73:                                               ; preds = %55, %23
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.pci_bar_io*) #1

declare dso_local i64 @PCI_BAR_IO(i32) #1

declare dso_local i32 @printf(i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
