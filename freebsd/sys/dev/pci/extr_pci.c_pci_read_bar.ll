; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_read_bar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_read_bar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32 }

@PCIR_COMMAND = common dso_local global i32 0, align 4
@PCIM_CMD_MEMEN = common dso_local global i32 0, align 4
@PCIM_CMD_PORTEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_read_bar(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.pci_devinfo*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.pci_devinfo* @device_get_ivars(i32 %16)
  store %struct.pci_devinfo* %17, %struct.pci_devinfo** %11, align 8
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %11, align 8
  %19 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %18, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  %21 = call i64 @PCIR_IS_BIOS(i32* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %46

23:                                               ; preds = %5
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pci_read_config(i32 %24, i32 %25, i32 4)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @pci_write_config(i32 %27, i32 %28, i32 -2, i32 4)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pci_read_config(i32 %30, i32 %31, i32 4)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @pci_write_config(i32 %33, i32 %34, i32 %35, i32 4)
  %37 = load i32, i32* %12, align 4
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32*, i32** %9, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %23
  %44 = load i32*, i32** %10, align 8
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %23
  br label %133

46:                                               ; preds = %5
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @pci_read_config(i32 %47, i32 %48, i32 4)
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @pci_maprange(i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp eq i32 %52, 64
  br i1 %53, label %54, label %62

54:                                               ; preds = %46
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 4
  %58 = call i32 @pci_read_config(i32 %55, i32 %57, i32 4)
  %59 = shl i32 %58, 32
  %60 = load i32, i32* %12, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %54, %46
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PCIR_COMMAND, align 4
  %65 = call i32 @pci_read_config(i32 %63, i32 %64, i32 2)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @PCIR_COMMAND, align 4
  %68 = load i32, i32* %15, align 4
  %69 = load i32, i32* %12, align 4
  %70 = call i64 @PCI_BAR_MEM(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %62
  %73 = load i32, i32* @PCIM_CMD_MEMEN, align 4
  br label %76

74:                                               ; preds = %62
  %75 = load i32, i32* @PCIM_CMD_PORTEN, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  %78 = xor i32 %77, -1
  %79 = and i32 %68, %78
  %80 = call i32 @pci_write_config(i32 %66, i32 %67, i32 %79, i32 2)
  store i32 0, i32* %13, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @pci_write_config(i32 %81, i32 %82, i32 -1, i32 4)
  %84 = load i32, i32* %14, align 4
  %85 = icmp eq i32 %84, 64
  br i1 %85, label %86, label %98

86:                                               ; preds = %76
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 %88, 4
  %90 = call i32 @pci_write_config(i32 %87, i32 %89, i32 -1, i32 4)
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 4
  %94 = call i32 @pci_read_config(i32 %91, i32 %93, i32 4)
  %95 = shl i32 %94, 32
  %96 = load i32, i32* %13, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %86, %76
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @pci_read_config(i32 %99, i32 %100, i32 4)
  %102 = load i32, i32* %13, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @pci_write_config(i32 %104, i32 %105, i32 %106, i32 4)
  %108 = load i32, i32* %14, align 4
  %109 = icmp eq i32 %108, 64
  br i1 %109, label %110, label %117

110:                                              ; preds = %98
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %7, align 4
  %113 = add nsw i32 %112, 4
  %114 = load i32, i32* %12, align 4
  %115 = ashr i32 %114, 32
  %116 = call i32 @pci_write_config(i32 %111, i32 %113, i32 %115, i32 4)
  br label %117

117:                                              ; preds = %110, %98
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @PCIR_COMMAND, align 4
  %120 = load i32, i32* %15, align 4
  %121 = call i32 @pci_write_config(i32 %118, i32 %119, i32 %120, i32 2)
  %122 = load i32, i32* %12, align 4
  %123 = load i32*, i32** %8, align 8
  store i32 %122, i32* %123, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32*, i32** %9, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32*, i32** %10, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %133

128:                                              ; preds = %117
  %129 = load i32, i32* %14, align 4
  %130 = icmp eq i32 %129, 64
  %131 = zext i1 %130 to i32
  %132 = load i32*, i32** %10, align 8
  store i32 %131, i32* %132, align 4
  br label %133

133:                                              ; preds = %45, %128, %117
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i64 @PCIR_IS_BIOS(i32*, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_maprange(i32) #1

declare dso_local i64 @PCI_BAR_MEM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
