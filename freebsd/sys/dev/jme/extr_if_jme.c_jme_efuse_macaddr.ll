; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_efuse_macaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/jme/extr_if_jme.c_jme_efuse_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_softc = type { i32 }

@JME_EFUSE_CTL1 = common dso_local global i32 0, align 4
@EFUSE_CTL1_AUTOLOAD_ERR = common dso_local global i32 0, align 4
@EFUSE_CTL1_AUTOLAOD_DONE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@JME_EFUSE_CTL2 = common dso_local global i32 0, align 4
@EFUSE_CTL2_RESET = common dso_local global i32 0, align 4
@EFUSE_CTL1_CMD_MASK = common dso_local global i32 0, align 4
@EFUSE_CTL1_CMD_AUTOLOAD = common dso_local global i32 0, align 4
@EFUSE_CTL1_EXECUTE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"eFuse autoload timed out.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jme_softc*)* @jme_efuse_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jme_efuse_macaddr(%struct.jme_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jme_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jme_softc* %0, %struct.jme_softc** %3, align 8
  %6 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %7 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @JME_EFUSE_CTL1, align 4
  %10 = call i32 @pci_read_config(i32 %8, i32 %9, i32 4)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @EFUSE_CTL1_AUTOLOAD_ERR, align 4
  %13 = load i32, i32* @EFUSE_CTL1_AUTOLAOD_DONE, align 4
  %14 = or i32 %12, %13
  %15 = and i32 %11, %14
  %16 = load i32, i32* @EFUSE_CTL1_AUTOLAOD_DONE, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %2, align 4
  br label %110

20:                                               ; preds = %1
  %21 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %22 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @JME_EFUSE_CTL2, align 4
  %25 = call i32 @pci_read_config(i32 %23, i32 %24, i32 4)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* @EFUSE_CTL2_RESET, align 4
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %30 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @JME_EFUSE_CTL2, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @pci_write_config(i32 %31, i32 %32, i32 %33, i32 4)
  %35 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %36 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @JME_EFUSE_CTL2, align 4
  %39 = call i32 @pci_read_config(i32 %37, i32 %38, i32 4)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* @EFUSE_CTL2_RESET, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  %44 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %45 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @JME_EFUSE_CTL2, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @pci_write_config(i32 %46, i32 %47, i32 %48, i32 4)
  %50 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %51 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @JME_EFUSE_CTL1, align 4
  %54 = call i32 @pci_read_config(i32 %52, i32 %53, i32 4)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @EFUSE_CTL1_CMD_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @EFUSE_CTL1_CMD_AUTOLOAD, align 4
  %60 = load i32, i32* @EFUSE_CTL1_EXECUTE, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* %4, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %4, align 4
  %64 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %65 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @JME_EFUSE_CTL1, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @pci_write_config(i32 %66, i32 %67, i32 %68, i32 4)
  %70 = call i32 @DELAY(i32 110)
  store i32 10, i32* %5, align 4
  br label %71

71:                                               ; preds = %97, %20
  %72 = load i32, i32* %5, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %71
  %75 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %76 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @JME_EFUSE_CTL1, align 4
  %79 = call i32 @pci_read_config(i32 %77, i32 %78, i32 4)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @EFUSE_CTL1_AUTOLOAD_ERR, align 4
  %82 = load i32, i32* @EFUSE_CTL1_AUTOLAOD_DONE, align 4
  %83 = or i32 %81, %82
  %84 = and i32 %80, %83
  %85 = load i32, i32* @EFUSE_CTL1_AUTOLAOD_DONE, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %74
  %88 = call i32 @DELAY(i32 20)
  br label %97

89:                                               ; preds = %74
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @EFUSE_CTL1_EXECUTE, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %100

95:                                               ; preds = %89
  %96 = call i32 @DELAY(i32 20)
  br label %97

97:                                               ; preds = %95, %87
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, -1
  store i32 %99, i32* %5, align 4
  br label %71

100:                                              ; preds = %94, %71
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %100
  %104 = load %struct.jme_softc*, %struct.jme_softc** %3, align 8
  %105 = getelementptr inbounds %struct.jme_softc, %struct.jme_softc* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %108 = load i32, i32* @ETIMEDOUT, align 4
  store i32 %108, i32* %2, align 4
  br label %110

109:                                              ; preds = %100
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %109, %103, %18
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
