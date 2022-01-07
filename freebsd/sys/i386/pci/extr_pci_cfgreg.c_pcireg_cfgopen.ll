; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pcireg_cfgopen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/pci/extr_pci_cfgreg.c_pcireg_cfgopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONF1_ADDR_PORT = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"pci_open(1):\09mode 1 addr port (0x0cf8) is 0x%08x\0A\00", align 1
@CFGMECH_1 = common dso_local global i32 0, align 4
@cfgmech = common dso_local global i32 0, align 4
@devmax = common dso_local global i32 0, align 4
@CONF1_ENABLE_CHK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"pci_open(1a):\09mode1res=0x%08x (0x%08lx)\0A\00", align 1
@CONF1_ENABLE_CHK1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"pci_open(1b):\09mode1res=0x%08x (0x%08lx)\0A\00", align 1
@CONF1_ENABLE_MSK1 = common dso_local global i32 0, align 4
@CONF1_ENABLE_RES1 = common dso_local global i32 0, align 4
@CONF2_ENABLE_PORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"pci_open(2):\09mode 2 enable port (0x0cf8) is 0x%02x\0A\00", align 1
@CFGMECH_2 = common dso_local global i32 0, align 4
@CONF2_ENABLE_CHK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"pci_open(2a):\09mode2res=0x%02x (0x%02x)\0A\00", align 1
@CONF2_ENABLE_RES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"pci_open(2a):\09now trying mechanism 2\0A\00", align 1
@CFGMECH_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pcireg_cfgopen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcireg_cfgopen() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i64, i64* @bootverbose, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = load i32, i32* %3, align 4
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %10, %0
  %14 = load i32, i32* @CFGMECH_1, align 4
  store i32 %14, i32* @cfgmech, align 4
  store i32 32, i32* @devmax, align 4
  %15 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %16 = load i32, i32* @CONF1_ENABLE_CHK, align 4
  %17 = call i32 @outl(i32 %15, i32 %16)
  %18 = call i32 @DELAY(i32 1)
  %19 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %20 = call i32 @inl(i32 %19)
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @outl(i32 %21, i32 %22)
  %24 = load i64, i64* @bootverbose, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %13
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @CONF1_ENABLE_CHK, align 4
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %13
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = call i64 @pci_cfgcheck(i32 32)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i32, i32* @cfgmech, align 4
  store i32 %37, i32* %1, align 4
  br label %113

38:                                               ; preds = %33
  br label %39

39:                                               ; preds = %38, %30
  %40 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %41 = load i32, i32* @CONF1_ENABLE_CHK1, align 4
  %42 = call i32 @outl(i32 %40, i32 %41)
  %43 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %44 = call i32 @inl(i32 %43)
  store i32 %44, i32* %2, align 4
  %45 = load i32, i32* @CONF1_ADDR_PORT, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @outl(i32 %45, i32 %46)
  %48 = load i64, i64* @bootverbose, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %39
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @CONF1_ENABLE_CHK1, align 4
  %53 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %50, %39
  %55 = load i32, i32* %2, align 4
  %56 = load i32, i32* @CONF1_ENABLE_MSK1, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CONF1_ENABLE_RES1, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = call i64 @pci_cfgcheck(i32 32)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @cfgmech, align 4
  store i32 %64, i32* %1, align 4
  br label %113

65:                                               ; preds = %60
  br label %66

66:                                               ; preds = %65, %54
  %67 = load i32, i32* @CONF2_ENABLE_PORT, align 4
  %68 = call i32 @inb(i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i64, i64* @bootverbose, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load i32, i32* %5, align 4
  %73 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %66
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 240
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load i32, i32* @CFGMECH_2, align 4
  store i32 %79, i32* @cfgmech, align 4
  store i32 16, i32* @devmax, align 4
  %80 = load i32, i32* @CONF2_ENABLE_PORT, align 4
  %81 = load i32, i32* @CONF2_ENABLE_CHK, align 4
  %82 = call i32 @outb(i32 %80, i32 %81)
  %83 = load i32, i32* @CONF2_ENABLE_PORT, align 4
  %84 = call i32 @inb(i32 %83)
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @CONF2_ENABLE_PORT, align 4
  %86 = load i32, i32* %5, align 4
  %87 = call i32 @outb(i32 %85, i32 %86)
  %88 = load i64, i64* @bootverbose, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* @CONF2_ENABLE_CHK, align 4
  %93 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %78
  %95 = load i32, i32* %4, align 4
  %96 = load i32, i32* @CONF2_ENABLE_RES, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %94
  %99 = load i64, i64* @bootverbose, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %98
  %104 = call i64 @pci_cfgcheck(i32 16)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = load i32, i32* @cfgmech, align 4
  store i32 %107, i32* %1, align 4
  br label %113

108:                                              ; preds = %103
  br label %109

109:                                              ; preds = %108, %94
  br label %110

110:                                              ; preds = %109, %74
  %111 = load i32, i32* @CFGMECH_NONE, align 4
  store i32 %111, i32* @cfgmech, align 4
  store i32 0, i32* @devmax, align 4
  %112 = load i32, i32* @cfgmech, align 4
  store i32 %112, i32* %1, align 4
  br label %113

113:                                              ; preds = %110, %106, %63, %36
  %114 = load i32, i32* %1, align 4
  ret i32 %114
}

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @pci_cfgcheck(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
