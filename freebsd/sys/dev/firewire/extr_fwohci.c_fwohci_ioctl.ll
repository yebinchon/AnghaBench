; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/firewire/extr_fwohci.c_fwohci_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.firewire_softc = type { i64 }
%struct.fwohci_softc = type { i32 }
%struct.fw_reg_req_t = type { i8*, i32 }

@firewire_devclass = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OHCI_MAX_DMA_CH = common dso_local global i32 0, align 4
@OHCI_MAX_PHY_REG = common dso_local global i32 0, align 4
@OHCI_MAX_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fwohci_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.firewire_softc*, align 8
  %13 = alloca %struct.fwohci_softc*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.fw_reg_req_t*, align 8
  %17 = alloca i32*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.cdev*, %struct.cdev** %7, align 8
  %19 = call i32 @DEV2UNIT(%struct.cdev* %18)
  store i32 %19, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* %9, align 8
  %21 = inttoptr i64 %20 to %struct.fw_reg_req_t*
  store %struct.fw_reg_req_t* %21, %struct.fw_reg_req_t** %16, align 8
  %22 = load i64, i64* %9, align 8
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %17, align 8
  %24 = load i32, i32* @firewire_devclass, align 4
  %25 = load i32, i32* %14, align 4
  %26 = call %struct.firewire_softc* @devclass_get_softc(i32 %24, i32 %25)
  store %struct.firewire_softc* %26, %struct.firewire_softc** %12, align 8
  %27 = load %struct.firewire_softc*, %struct.firewire_softc** %12, align 8
  %28 = icmp eq %struct.firewire_softc* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %138

31:                                               ; preds = %5
  %32 = load %struct.firewire_softc*, %struct.firewire_softc** %12, align 8
  %33 = getelementptr inbounds %struct.firewire_softc, %struct.firewire_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.fwohci_softc*
  store %struct.fwohci_softc* %35, %struct.fwohci_softc** %13, align 8
  %36 = load i64, i64* %9, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %31
  %39 = load i32, i32* @EINVAL, align 4
  store i32 %39, i32* %6, align 4
  br label %138

40:                                               ; preds = %31
  %41 = load i32, i32* %8, align 4
  switch i32 %41, label %134 [
    i32 128, label %42
    i32 130, label %66
    i32 132, label %82
    i32 131, label %99
    i32 129, label %115
  ]

42:                                               ; preds = %40
  %43 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %44 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp sle i32 %45, 2048
  br i1 %46, label %47, label %63

47:                                               ; preds = %42
  %48 = load %struct.fwohci_softc*, %struct.fwohci_softc** %13, align 8
  %49 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %50 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %53 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @OWRITE(%struct.fwohci_softc* %48, i32 %51, i8* %54)
  %56 = load %struct.fwohci_softc*, %struct.fwohci_softc** %13, align 8
  %57 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %58 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i8* @OREAD(%struct.fwohci_softc* %56, i32 %59)
  %61 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %62 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %61, i32 0, i32 0
  store i8* %60, i8** %62, align 8
  br label %65

63:                                               ; preds = %42
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %63, %47
  br label %136

66:                                               ; preds = %40
  %67 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %68 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = icmp sle i32 %69, 2048
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.fwohci_softc*, %struct.fwohci_softc** %13, align 8
  %73 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %74 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i8* @OREAD(%struct.fwohci_softc* %72, i32 %75)
  %77 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %78 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %81

79:                                               ; preds = %66
  %80 = load i32, i32* @EINVAL, align 4
  store i32 %80, i32* %15, align 4
  br label %81

81:                                               ; preds = %79, %71
  br label %136

82:                                               ; preds = %40
  %83 = load i32*, i32** %17, align 8
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @OHCI_MAX_DMA_CH, align 4
  %86 = icmp sle i32 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %82
  %88 = load %struct.fwohci_softc*, %struct.fwohci_softc** %13, align 8
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dump_dma(%struct.fwohci_softc* %88, i32 %90)
  %92 = load %struct.fwohci_softc*, %struct.fwohci_softc** %13, align 8
  %93 = load i32*, i32** %17, align 8
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dump_db(%struct.fwohci_softc* %92, i32 %94)
  br label %98

96:                                               ; preds = %82
  %97 = load i32, i32* @EINVAL, align 4
  store i32 %97, i32* %15, align 4
  br label %98

98:                                               ; preds = %96, %87
  br label %136

99:                                               ; preds = %40
  %100 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %101 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sle i32 %102, 15
  br i1 %103, label %104, label %112

104:                                              ; preds = %99
  %105 = load %struct.fwohci_softc*, %struct.fwohci_softc** %13, align 8
  %106 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %107 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @fwphy_rddata(%struct.fwohci_softc* %105, i32 %108)
  %110 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %111 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %114

112:                                              ; preds = %99
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %112, %104
  br label %136

115:                                              ; preds = %40
  %116 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %117 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = icmp sle i32 %118, 15
  br i1 %119, label %120, label %131

120:                                              ; preds = %115
  %121 = load %struct.fwohci_softc*, %struct.fwohci_softc** %13, align 8
  %122 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %123 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %126 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = call i8* @fwphy_wrdata(%struct.fwohci_softc* %121, i32 %124, i8* %127)
  %129 = load %struct.fw_reg_req_t*, %struct.fw_reg_req_t** %16, align 8
  %130 = getelementptr inbounds %struct.fw_reg_req_t, %struct.fw_reg_req_t* %129, i32 0, i32 0
  store i8* %128, i8** %130, align 8
  br label %133

131:                                              ; preds = %115
  %132 = load i32, i32* @EINVAL, align 4
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %131, %120
  br label %136

134:                                              ; preds = %40
  %135 = load i32, i32* @EINVAL, align 4
  store i32 %135, i32* %15, align 4
  br label %136

136:                                              ; preds = %134, %133, %114, %98, %81, %65
  %137 = load i32, i32* %15, align 4
  store i32 %137, i32* %6, align 4
  br label %138

138:                                              ; preds = %136, %38, %29
  %139 = load i32, i32* %6, align 4
  ret i32 %139
}

declare dso_local i32 @DEV2UNIT(%struct.cdev*) #1

declare dso_local %struct.firewire_softc* @devclass_get_softc(i32, i32) #1

declare dso_local i32 @OWRITE(%struct.fwohci_softc*, i32, i8*) #1

declare dso_local i8* @OREAD(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @dump_dma(%struct.fwohci_softc*, i32) #1

declare dso_local i32 @dump_db(%struct.fwohci_softc*, i32) #1

declare dso_local i8* @fwphy_rddata(%struct.fwohci_softc*, i32) #1

declare dso_local i8* @fwphy_wrdata(%struct.fwohci_softc*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
