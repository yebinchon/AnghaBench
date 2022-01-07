; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_enum_devs.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/pciroms/extr_pciroms.c_pci_enum_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf_io = type { i32, i64, i64, %struct.pci_conf* }
%struct.pci_conf = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@MAX_PCI_DEVS = common dso_local global i32 0, align 4
@PCIOCGETCONF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ioctl PCIOCGETCONF\00", align 1
@PCI_GETCONF_ERROR = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error fetching PCI device list from kernel.\0D\0A\00", align 1
@PCI_GETCONF_MORE_DEVS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [67 x i8] c"More than %d devices exist. Only the first %d will be inspected.\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"Domain %04Xh Bus %02Xh Device %02Xh Function %02Xh: \00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%dKB ROM aperture detected.\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"No ROM present.\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%08X.rom\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Saving %dKB ROM image to %s...\0D\0A\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"Done.\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"An error occurred whilst saving the ROM.\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pci_enum_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_enum_devs(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca %struct.pci_conf_io, align 8
  %9 = alloca %struct.pci_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %14 = load i32, i32* @MAX_PCI_DEVS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %5, align 8
  %17 = alloca %struct.pci_conf, i64 %15, align 16
  store i64 %15, i64* %6, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = call i32 @bzero(%struct.pci_conf_io* %8, i32 32)
  %19 = mul nuw i64 28, %15
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %8, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %8, i32 0, i32 3
  store %struct.pci_conf* %17, %struct.pci_conf** %22, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @PCIOCGETCONF, align 4
  %25 = call i32 @ioctl(i32 %23, i32 %24, %struct.pci_conf_io* %8)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %29

27:                                               ; preds = %2
  %28 = call i32 @perror(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %136

29:                                               ; preds = %2
  %30 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %8, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCI_GETCONF_ERROR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @stderr, align 4
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  br label %136

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %8, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PCI_GETCONF_MORE_DEVS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @stderr, align 4
  %44 = load i32, i32* @MAX_PCI_DEVS, align 4
  %45 = load i32, i32* @MAX_PCI_DEVS, align 4
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %43, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  store %struct.pci_conf* %17, %struct.pci_conf** %9, align 8
  br label %48

48:                                               ; preds = %132, %47
  %49 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %50 = getelementptr inbounds %struct.pci_conf_io, %struct.pci_conf_io* %8, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %17, i64 %51
  %53 = icmp ult %struct.pci_conf* %49, %52
  br i1 %53, label %54, label %135

54:                                               ; preds = %48
  %55 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %56 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  br label %132

60:                                               ; preds = %54
  %61 = load i32, i32* %3, align 4
  %62 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %63 = call i32 @pci_testrombar(i32 %61, %struct.pci_conf* %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %4, align 4
  switch i32 %64, label %131 [
    i32 129, label %65
    i32 128, label %91
  ]

65:                                               ; preds = %60
  %66 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %67 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %66, i32 0, i32 3
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %71 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %75 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %79 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %69, i32 %73, i32 %77, i32 %81)
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  %85 = zext i1 %84 to i64
  %86 = select i1 %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0)
  %87 = load i32, i32* %11, align 4
  %88 = sdiv i32 %87, 1024
  %89 = call i32 (i8*, ...) @printf(i8* %86, i32 %88)
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0))
  br label %131

91:                                               ; preds = %60
  %92 = load i32, i32* %11, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %132

95:                                               ; preds = %91
  %96 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %97 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %98 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = shl i32 %99, 16
  %101 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %102 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %100, %103
  %105 = call i32 @snprintf(i8* %96, i32 16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %11, align 4
  %108 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %109 = call i32 (i32, i8*, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %107, i8* %108)
  %110 = load i32, i32* %3, align 4
  %111 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %112 = call i32 @pci_enable_bars(i32 %110, %struct.pci_conf* %111, i32* %12)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %95
  %115 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @pci_save_rom(i8* %115, i32 %116)
  store i32 %117, i32* %10, align 4
  br label %118

118:                                              ; preds = %114, %95
  %119 = load i32, i32* %3, align 4
  %120 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %121 = call i32 @pci_disable_bars(i32 %119, %struct.pci_conf* %120, i32* %12)
  %122 = load i32, i32* %10, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load i32, i32* @stderr, align 4
  %126 = call i32 (i32, i8*, ...) @fprintf(i32 %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0))
  br label %130

127:                                              ; preds = %118
  %128 = load i32, i32* @stderr, align 4
  %129 = call i32 (i32, i8*, ...) @fprintf(i32 %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.10, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %60, %130, %65
  br label %132

132:                                              ; preds = %131, %94, %59
  %133 = load %struct.pci_conf*, %struct.pci_conf** %9, align 8
  %134 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %133, i32 1
  store %struct.pci_conf* %134, %struct.pci_conf** %9, align 8
  br label %48

135:                                              ; preds = %48
  store i32 0, i32* %13, align 4
  br label %136

136:                                              ; preds = %135, %34, %27
  %137 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %13, align 4
  switch i32 %138, label %140 [
    i32 0, label %139
    i32 1, label %139
  ]

139:                                              ; preds = %136, %136
  ret void

140:                                              ; preds = %136
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bzero(%struct.pci_conf_io*, i32) #2

declare dso_local i32 @ioctl(i32, i32, %struct.pci_conf_io*) #2

declare dso_local i32 @perror(i8*) #2

declare dso_local i32 @fprintf(i32, i8*, ...) #2

declare dso_local i32 @pci_testrombar(i32, %struct.pci_conf*) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @pci_enable_bars(i32, %struct.pci_conf*, i32*) #2

declare dso_local i32 @pci_save_rom(i8*, i32) #2

declare dso_local i32 @pci_disable_bars(i32, %struct.pci_conf*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
