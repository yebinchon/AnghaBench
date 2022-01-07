; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_vendor.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/pciconf/extr_cap.c_cap_vendor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_conf = type { i32, i32 }

@PCIR_VENDOR_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"vendor (length %d)\00", align 1
@PCIR_VENDOR_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c" Intel cap %d version %d\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"\0A\09\09 features:\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" AMT\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"%s Quick Resume\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"%s SATA RAID-5\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"%s Mobile\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"%s 6 PCI-e x1 slots\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"%s 4 PCI-e x1 slots\00", align 1
@.str.11 = private unnamed_addr constant [20 x i8] c"%s SATA RAID-0/1/10\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c", SATA AHCI\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_conf*, i32)* @cap_vendor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cap_vendor(i32 %0, %struct.pci_conf* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pci_conf* %1, %struct.pci_conf** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %13 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %12, i32 0, i32 1
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @PCIR_VENDOR_LENGTH, align 4
  %16 = add nsw i32 %14, %15
  %17 = call i32 @read_config(i32 %11, i32* %13, i32 %16, i32 1)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %21 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 32902
  br i1 %23, label %24, label %130

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %27 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %26, i32 0, i32 1
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @PCIR_VENDOR_DATA, align 4
  %30 = add nsw i32 %28, %29
  %31 = call i32 @read_config(i32 %25, i32* %27, i32 %30, i32 1)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = ashr i32 %32, 4
  %34 = load i32, i32* %8, align 4
  %35 = and i32 %34, 15
  %36 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = ashr i32 %37, 4
  %39 = icmp eq i32 %38, 1
  br i1 %39, label %40, label %129

40:                                               ; preds = %24
  %41 = load i32, i32* %7, align 4
  %42 = icmp eq i32 %41, 12
  br i1 %42, label %43, label %129

43:                                               ; preds = %40
  store i32 0, i32* %10, align 4
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %46 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %45, i32 0, i32 1
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @PCIR_VENDOR_DATA, align 4
  %49 = add nsw i32 %47, %48
  %50 = add nsw i32 %49, 5
  %51 = call i32 @read_config(i32 %44, i32* %46, i32 %50, i32 4)
  store i32 %51, i32* %9, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %43
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 1, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %43
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.pci_conf*, %struct.pci_conf** %5, align 8
  %61 = getelementptr inbounds %struct.pci_conf, %struct.pci_conf* %60, i32 0, i32 1
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @PCIR_VENDOR_DATA, align 4
  %64 = add nsw i32 %62, %63
  %65 = add nsw i32 %64, 1
  %66 = call i32 @read_config(i32 %59, i32* %61, i32 %65, i32 4)
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 2097152
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  %73 = zext i1 %72 to i64
  %74 = select i1 %72, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %74)
  store i32 1, i32* %10, align 4
  br label %76

76:                                               ; preds = %70, %58
  %77 = load i32, i32* %9, align 4
  %78 = and i32 %77, 262144
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %85 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0), i8* %84)
  store i32 1, i32* %10, align 4
  br label %86

86:                                               ; preds = %80, %76
  %87 = load i32, i32* %9, align 4
  %88 = and i32 %87, 512
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = icmp ne i32 %91, 0
  %93 = zext i1 %92 to i64
  %94 = select i1 %92, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %95 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i8* %94)
  store i32 1, i32* %10, align 4
  br label %96

96:                                               ; preds = %90, %86
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 128
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = icmp ne i32 %101, 0
  %103 = zext i1 %102 to i64
  %104 = select i1 %102, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8* %104)
  store i32 1, i32* %10, align 4
  br label %112

106:                                              ; preds = %96
  %107 = load i32, i32* %10, align 4
  %108 = icmp ne i32 %107, 0
  %109 = zext i1 %108 to i64
  %110 = select i1 %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %111 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i8* %110)
  store i32 1, i32* %10, align 4
  br label %112

112:                                              ; preds = %106, %100
  %113 = load i32, i32* %9, align 4
  %114 = and i32 %113, 32
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %112
  %117 = load i32, i32* %10, align 4
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i64
  %120 = select i1 %118, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0)
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.11, i64 0, i64 0), i8* %120)
  store i32 1, i32* %10, align 4
  br label %122

122:                                              ; preds = %116, %112
  %123 = load i32, i32* %9, align 4
  %124 = and i32 %123, 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  br label %129

129:                                              ; preds = %128, %40, %24
  br label %130

130:                                              ; preds = %129, %3
  ret void
}

declare dso_local i32 @read_config(i32, i32*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
