; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_atapi_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32 }

@ATA_SENSE_ILLEGAL_REQUEST = common dso_local global i32 0, align 4
@ATA_S_READY = common dso_local global i32 0, align 4
@ATA_S_ERROR = common dso_local global i32 0, align 4
@ATA_I_CMD = common dso_local global i32 0, align 4
@ATA_I_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"BHYVE\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"BHYVE DVD-ROM\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"001\00", align 1
@ATA_S_DSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @atapi_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atapi_inquiry(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [36 x i32], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 64
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %62

18:                                               ; preds = %3
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  store i32 5, i32* %24, align 16
  %25 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 1
  store i32 0, i32* %25, align 4
  %26 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 3
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 4
  store i32 0, i32* %28, align 16
  %29 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 4, %30
  store i32 %31, i32* %9, align 4
  br label %61

32:                                               ; preds = %18
  %33 = load i32, i32* @ATA_SENSE_ILLEGAL_REQUEST, align 4
  %34 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %35 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %37 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %36, i32 0, i32 1
  store i32 36, i32* %37, align 4
  %38 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %39 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 12
  %42 = load i32, i32* @ATA_S_READY, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @ATA_S_ERROR, align 4
  %45 = or i32 %43, %44
  store i32 %45, i32* %10, align 4
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = and i32 %48, -8
  %50 = load i32, i32* @ATA_I_CMD, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @ATA_I_IN, align 4
  %53 = or i32 %51, %52
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 4
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %56, i32 %57, i32* %58, i32 %59)
  br label %114

61:                                               ; preds = %23
  br label %80

62:                                               ; preds = %3
  %63 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  store i32 5, i32* %63, align 16
  %64 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 1
  store i32 128, i32* %64, align 4
  %65 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 2
  store i32 0, i32* %65, align 8
  %66 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 3
  store i32 33, i32* %66, align 4
  %67 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 4
  store i32 31, i32* %67, align 16
  %68 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 5
  store i32 0, i32* %68, align 4
  %69 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 6
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 7
  store i32 0, i32* %70, align 4
  %71 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %72 = getelementptr inbounds i32, i32* %71, i64 8
  %73 = call i32 @atapi_string(i32* %72, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 8)
  %74 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %75 = getelementptr inbounds i32, i32* %74, i64 16
  %76 = call i32 @atapi_string(i32* %75, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 16)
  %77 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %78 = getelementptr inbounds i32, i32* %77, i64 32
  %79 = call i32 @atapi_string(i32* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 4)
  store i32 144, i32* %9, align 4
  br label %80

80:                                               ; preds = %62, %61
  %81 = load i32, i32* %9, align 4
  %82 = load i32*, i32** %8, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %80
  %87 = load i32*, i32** %8, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 4
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %86, %80
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 4
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, -8
  %95 = load i32, i32* @ATA_I_CMD, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @ATA_I_IN, align 4
  %98 = or i32 %96, %97
  %99 = load i32*, i32** %6, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %102 = load i32, i32* %5, align 4
  %103 = load i32*, i32** %6, align 8
  %104 = getelementptr inbounds [36 x i32], [36 x i32]* %7, i64 0, i64 0
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @write_prdt(%struct.ahci_port* %101, i32 %102, i32* %103, i32* %104, i32 %105)
  %107 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = load i32*, i32** %6, align 8
  %110 = load i32, i32* @ATA_S_READY, align 4
  %111 = load i32, i32* @ATA_S_DSC, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @ahci_write_fis_d2h(%struct.ahci_port* %107, i32 %108, i32* %109, i32 %112)
  br label %114

114:                                              ; preds = %90, %32
  ret void
}

declare dso_local i32 @ahci_write_fis_d2h(%struct.ahci_port*, i32, i32*, i32) #1

declare dso_local i32 @atapi_string(i32*, i8*, i32) #1

declare dso_local i32 @write_prdt(%struct.ahci_port*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
