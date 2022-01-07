; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_write_fis.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_ahci.c_ahci_write_fis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_port = type { i32, i32, i32, i32* }

@AHCI_P_CMD_FRE = common dso_local global i32 0, align 4
@AHCI_P_IX_DHR = common dso_local global i32 0, align 4
@AHCI_P_IX_SDB = common dso_local global i32 0, align 4
@AHCI_P_IX_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unsupported fis type %d\0A\00", align 1
@ATA_S_ERROR = common dso_local global i32 0, align 4
@AHCI_P_IX_TFE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahci_port*, i32, i32*)* @ahci_write_fis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahci_write_fis(%struct.ahci_port* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.ahci_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ahci_port* %0, %struct.ahci_port** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %11 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %16 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AHCI_P_CMD_FRE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14, %3
  br label %102

22:                                               ; preds = %14
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %57 [
    i32 129, label %24
    i32 128, label %35
    i32 130, label %46
  ]

24:                                               ; preds = %22
  store i32 64, i32* %7, align 4
  store i32 20, i32* %8, align 4
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 64
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* @AHCI_P_IX_DHR, align 4
  br label %33

32:                                               ; preds = %24
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  store i32 %34, i32* %9, align 4
  br label %60

35:                                               ; preds = %22
  store i32 88, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 64
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @AHCI_P_IX_SDB, align 4
  br label %44

43:                                               ; preds = %35
  br label %44

44:                                               ; preds = %43, %41
  %45 = phi i32 [ %42, %41 ], [ 0, %43 ]
  store i32 %45, i32* %9, align 4
  br label %60

46:                                               ; preds = %22
  store i32 32, i32* %7, align 4
  store i32 20, i32* %8, align 4
  %47 = load i32*, i32** %6, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 64
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @AHCI_P_IX_PS, align 4
  br label %55

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %52
  %56 = phi i32 [ %53, %52 ], [ 0, %54 ]
  store i32 %56, i32* %9, align 4
  br label %60

57:                                               ; preds = %22
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @WPRINTF(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %58)
  br label %102

60:                                               ; preds = %55, %44, %33
  %61 = load i32*, i32** %6, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ATA_S_ERROR, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %69 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %68, i32 0, i32 1
  store i32 1, i32* %69, align 4
  %70 = load i32, i32* @AHCI_P_IX_TFE, align 4
  %71 = load i32, i32* %9, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %67, %60
  %74 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %75 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @memcpy(i32* %79, i32* %80, i32 %81)
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %73
  %86 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %87 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = xor i32 %88, -1
  %90 = load i32, i32* %9, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %96 = getelementptr inbounds %struct.ahci_port, %struct.ahci_port* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.ahci_port*, %struct.ahci_port** %4, align 8
  %100 = call i32 @ahci_port_intr(%struct.ahci_port* %99)
  br label %101

101:                                              ; preds = %93, %85
  br label %102

102:                                              ; preds = %21, %57, %101, %73
  ret void
}

declare dso_local i32 @WPRINTF(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ahci_port_intr(%struct.ahci_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
