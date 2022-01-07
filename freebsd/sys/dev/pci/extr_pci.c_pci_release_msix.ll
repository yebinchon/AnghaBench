; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_release_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_release_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pcicfg_msix }
%struct.pcicfg_msix = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_4__*, i32, i64 }
%struct.TYPE_4__ = type { i64, i64, i32 }
%struct.resource_list_entry = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"missing resource\00", align 1
@PCIM_MSIXCTRL_MSIX_ENABLE = common dso_local global i32 0, align 4
@PCIR_MSIX_CTRL = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pci_release_msix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_release_msix(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_devinfo*, align 8
  %7 = alloca %struct.pcicfg_msix*, align 8
  %8 = alloca %struct.resource_list_entry*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.pci_devinfo* @device_get_ivars(i32 %10)
  store %struct.pci_devinfo* %11, %struct.pci_devinfo** %6, align 8
  %12 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %13 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.pcicfg_msix* %14, %struct.pcicfg_msix** %7, align 8
  %15 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %16 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %3, align 4
  br label %154

21:                                               ; preds = %2
  store i32 0, i32* %9, align 4
  br label %22

22:                                               ; preds = %69, %21
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %25 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %72

28:                                               ; preds = %22
  %29 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %30 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %29, i32 0, i32 3
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %28
  br label %69

39:                                               ; preds = %28
  %40 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %41 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %40, i32 0, i32 3
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp sgt i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @EBUSY, align 4
  store i32 %50, i32* %3, align 4
  br label %154

51:                                               ; preds = %39
  %52 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %53 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %52, i32 0, i32 0
  %54 = load i32, i32* @SYS_RES_IRQ, align 4
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  %57 = call %struct.resource_list_entry* @resource_list_find(i32* %53, i32 %54, i32 %56)
  store %struct.resource_list_entry* %57, %struct.resource_list_entry** %8, align 8
  %58 = load %struct.resource_list_entry*, %struct.resource_list_entry** %8, align 8
  %59 = icmp ne %struct.resource_list_entry* %58, null
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %62 = load %struct.resource_list_entry*, %struct.resource_list_entry** %8, align 8
  %63 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @EBUSY, align 4
  store i32 %67, i32* %3, align 4
  br label %154

68:                                               ; preds = %51
  br label %69

69:                                               ; preds = %68, %38
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %22

72:                                               ; preds = %22
  %73 = load i32, i32* @PCIM_MSIXCTRL_MSIX_ENABLE, align 4
  %74 = xor i32 %73, -1
  %75 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %76 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, %74
  store i32 %78, i32* %76, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %81 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @PCIR_MSIX_CTRL, align 8
  %84 = add nsw i64 %82, %83
  %85 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %86 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @pci_write_config(i32 %79, i64 %84, i32 %87, i32 2)
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %113, %72
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %92 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  %96 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %97 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %96, i32 0, i32 3
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %95
  br label %113

106:                                              ; preds = %95
  %107 = load %struct.pci_devinfo*, %struct.pci_devinfo** %6, align 8
  %108 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %107, i32 0, i32 0
  %109 = load i32, i32* @SYS_RES_IRQ, align 4
  %110 = load i32, i32* %9, align 4
  %111 = add nsw i32 %110, 1
  %112 = call i32 @resource_list_delete(i32* %108, i32 %109, i32 %111)
  br label %113

113:                                              ; preds = %106, %105
  %114 = load i32, i32* %9, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %9, align 4
  br label %89

116:                                              ; preds = %89
  %117 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %118 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %117, i32 0, i32 3
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* @M_DEVBUF, align 4
  %121 = call i32 @free(%struct.TYPE_4__* %119, i32 %120)
  %122 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %123 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %122, i32 0, i32 1
  store i32 0, i32* %123, align 4
  store i32 0, i32* %9, align 4
  br label %124

124:                                              ; preds = %143, %116
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %127 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %124
  %131 = load i32, i32* %4, align 4
  %132 = call i32 @device_get_parent(i32 %131)
  %133 = load i32, i32* %5, align 4
  %134 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %135 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @PCIB_RELEASE_MSIX(i32 %132, i32 %133, i32 %141)
  br label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %9, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %9, align 4
  br label %124

146:                                              ; preds = %124
  %147 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %148 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %147, i32 0, i32 2
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = load i32, i32* @M_DEVBUF, align 4
  %151 = call i32 @free(%struct.TYPE_4__* %149, i32 %150)
  %152 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %7, align 8
  %153 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %152, i32 0, i32 0
  store i32 0, i32* %153, align 8
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %146, %66, %49, %19
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i64, i32, i32) #1

declare dso_local i32 @resource_list_delete(i32*, i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PCIB_RELEASE_MSIX(i32, i32, i32) #1

declare dso_local i32 @device_get_parent(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
