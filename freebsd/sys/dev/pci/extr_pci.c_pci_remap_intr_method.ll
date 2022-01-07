; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_remap_intr_method.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_remap_intr_method.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, %struct.msix_table_entry*, %struct.msix_vector* }
%struct.msix_table_entry = type { i32, i64 }
%struct.msix_vector = type { i64, i8*, i8* }
%struct.TYPE_4__ = type { i32, i64, i8*, i8* }
%struct.resource_list_entry = type { i64 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64)* @pci_remap_intr_method to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_remap_intr_method(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca %struct.resource_list_entry*, align 8
  %11 = alloca %struct.msix_table_entry*, align 8
  %12 = alloca %struct.msix_vector*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.pci_devinfo* @device_get_ivars(i32 %18)
  store %struct.pci_devinfo* %19, %struct.pci_devinfo** %8, align 8
  %20 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %21 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %20, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %9, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %87

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %183

34:                                               ; preds = %27
  store i32 0, i32* %16, align 4
  br label %35

35:                                               ; preds = %82, %34
  %36 = load i32, i32* %16, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %36, %40
  br i1 %41, label %42, label %85

42:                                               ; preds = %35
  %43 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %44 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %43, i32 0, i32 1
  %45 = load i32, i32* @SYS_RES_IRQ, align 4
  %46 = load i32, i32* %16, align 4
  %47 = add nsw i32 %46, 1
  %48 = call %struct.resource_list_entry* @resource_list_find(i32* %44, i32 %45, i32 %47)
  store %struct.resource_list_entry* %48, %struct.resource_list_entry** %10, align 8
  %49 = load %struct.resource_list_entry*, %struct.resource_list_entry** %10, align 8
  %50 = getelementptr inbounds %struct.resource_list_entry, %struct.resource_list_entry* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %81

54:                                               ; preds = %42
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @device_get_parent(i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @PCIB_MAP_MSI(i32 %56, i32 %57, i64 %58, i8** %13, i8** %14)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %4, align 4
  br label %183

64:                                               ; preds = %54
  %65 = load i32, i32* %6, align 4
  %66 = call i32 @pci_disable_msi(i32 %65)
  %67 = load i8*, i8** %13, align 8
  %68 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %69 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 3
  store i8* %67, i8** %71, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %74 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  store i8* %72, i8** %76, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i8*, i8** %13, align 8
  %79 = load i8*, i8** %14, align 8
  %80 = call i32 @pci_enable_msi(i32 %77, i8* %78, i8* %79)
  store i32 0, i32* %4, align 4
  br label %183

81:                                               ; preds = %42
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %16, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %16, align 4
  br label %35

85:                                               ; preds = %35
  %86 = load i32, i32* @ENOENT, align 4
  store i32 %86, i32* %4, align 4
  br label %183

87:                                               ; preds = %3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %181

93:                                               ; preds = %87
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %176, %93
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp slt i32 %95, %99
  br i1 %100, label %101, label %179

101:                                              ; preds = %94
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 3
  %105 = load %struct.msix_vector*, %struct.msix_vector** %104, align 8
  %106 = load i32, i32* %16, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %105, i64 %107
  store %struct.msix_vector* %108, %struct.msix_vector** %12, align 8
  %109 = load %struct.msix_vector*, %struct.msix_vector** %12, align 8
  %110 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %7, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %175

114:                                              ; preds = %101
  %115 = load i32, i32* %5, align 4
  %116 = call i32 @device_get_parent(i32 %115)
  %117 = load i32, i32* %6, align 4
  %118 = load i64, i64* %7, align 8
  %119 = call i32 @PCIB_MAP_MSI(i32 %116, i32 %117, i64 %118, i8** %13, i8** %14)
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* %15, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %114
  %123 = load i32, i32* %15, align 4
  store i32 %123, i32* %4, align 4
  br label %183

124:                                              ; preds = %114
  %125 = load i8*, i8** %13, align 8
  %126 = load %struct.msix_vector*, %struct.msix_vector** %12, align 8
  %127 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** %14, align 8
  %129 = load %struct.msix_vector*, %struct.msix_vector** %12, align 8
  %130 = getelementptr inbounds %struct.msix_vector, %struct.msix_vector* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  store i32 0, i32* %17, align 4
  br label %131

131:                                              ; preds = %171, %124
  %132 = load i32, i32* %17, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = icmp slt i32 %132, %136
  br i1 %137, label %138, label %174

138:                                              ; preds = %131
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 2
  %142 = load %struct.msix_table_entry*, %struct.msix_table_entry** %141, align 8
  %143 = load i32, i32* %17, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %142, i64 %144
  store %struct.msix_table_entry* %145, %struct.msix_table_entry** %11, align 8
  %146 = load %struct.msix_table_entry*, %struct.msix_table_entry** %11, align 8
  %147 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %138
  br label %171

153:                                              ; preds = %138
  %154 = load %struct.msix_table_entry*, %struct.msix_table_entry** %11, align 8
  %155 = getelementptr inbounds %struct.msix_table_entry, %struct.msix_table_entry* %154, i32 0, i32 1
  %156 = load i64, i64* %155, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %153
  br label %171

159:                                              ; preds = %153
  %160 = load i32, i32* %6, align 4
  %161 = load i32, i32* %17, align 4
  %162 = call i32 @pci_mask_msix(i32 %160, i32 %161)
  %163 = load i32, i32* %6, align 4
  %164 = load i32, i32* %17, align 4
  %165 = load i8*, i8** %13, align 8
  %166 = load i8*, i8** %14, align 8
  %167 = call i32 @pci_enable_msix(i32 %163, i32 %164, i8* %165, i8* %166)
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* %17, align 4
  %170 = call i32 @pci_unmask_msix(i32 %168, i32 %169)
  br label %171

171:                                              ; preds = %159, %158, %152
  %172 = load i32, i32* %17, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %17, align 4
  br label %131

174:                                              ; preds = %131
  br label %175

175:                                              ; preds = %174, %101
  br label %176

176:                                              ; preds = %175
  %177 = load i32, i32* %16, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %16, align 4
  br label %94

179:                                              ; preds = %94
  %180 = load i32, i32* @ENOENT, align 4
  store i32 %180, i32* %4, align 4
  br label %183

181:                                              ; preds = %87
  %182 = load i32, i32* @ENOENT, align 4
  store i32 %182, i32* %4, align 4
  br label %183

183:                                              ; preds = %181, %179, %122, %85, %64, %62, %33
  %184 = load i32, i32* %4, align 4
  ret i32 %184
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local %struct.resource_list_entry* @resource_list_find(i32*, i32, i32) #1

declare dso_local i32 @PCIB_MAP_MSI(i32, i32, i64, i8**, i8**) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pci_disable_msi(i32) #1

declare dso_local i32 @pci_enable_msi(i32, i8*, i8*) #1

declare dso_local i32 @pci_mask_msix(i32, i32) #1

declare dso_local i32 @pci_enable_msix(i32, i32, i8*, i8*) #1

declare dso_local i32 @pci_unmask_msix(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
