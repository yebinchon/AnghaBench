; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci_iov.c_pci_iov_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pci_devinfo* }
%struct.pci_devinfo = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.pcicfg_iov* }
%struct.pcicfg_iov = type { i32, i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32* }

@Giant = common dso_local global i32 0, align 4
@IOV_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Could not disable SR-IOV: failed to detach VF %s\0A\00", align 1
@PCIR_SRIOV_CTL = common dso_local global i32 0, align 4
@PCIM_SRIOV_VF_EN = common dso_local global i32 0, align 4
@PCIM_SRIOV_VF_MSE = common dso_local global i32 0, align 4
@PCIR_SRIOV_NUM_VFS = common dso_local global i32 0, align 4
@PCIR_MAX_BAR_0 = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@IOV_RMAN_INITED = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*)* @pci_iov_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_iov_delete(%struct.cdev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pci_devinfo*, align 8
  %9 = alloca %struct.pcicfg_iov*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %3, align 8
  %14 = call i32 @mtx_lock(i32* @Giant)
  %15 = load %struct.cdev*, %struct.cdev** %3, align 8
  %16 = getelementptr inbounds %struct.cdev, %struct.cdev* %15, i32 0, i32 0
  %17 = load %struct.pci_devinfo*, %struct.pci_devinfo** %16, align 8
  store %struct.pci_devinfo* %17, %struct.pci_devinfo** %8, align 8
  %18 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %19 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %20, align 8
  store %struct.pcicfg_iov* %21, %struct.pcicfg_iov** %9, align 8
  %22 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %23 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @device_get_parent(i32 %26)
  store i32 %27, i32* %4, align 4
  store i32* null, i32** %7, align 8
  %28 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %29 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @IOV_BUSY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %1
  %35 = call i32 @mtx_unlock(i32* @Giant)
  %36 = load i32, i32* @EBUSY, align 4
  store i32 %36, i32* %2, align 4
  br label %214

37:                                               ; preds = %1
  %38 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %39 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = call i32 @mtx_unlock(i32* @Giant)
  %44 = load i32, i32* @ECHILD, align 4
  store i32 %44, i32* %2, align 4
  br label %214

45:                                               ; preds = %37
  %46 = load i32, i32* @IOV_BUSY, align 4
  %47 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %48 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %4, align 4
  %52 = call i32 @device_get_children(i32 %51, i32** %7, i32* %12)
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* %11, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %202

56:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp slt i32 %58, %59
  br i1 %60, label %61, label %86

61:                                               ; preds = %57
  %62 = load i32*, i32** %7, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %6, align 4
  %67 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i64 @pci_iov_is_child_vf(%struct.pcicfg_iov* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %61
  br label %83

72:                                               ; preds = %61
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @device_detach(i32 %73)
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @device_get_nameunit(i32 %79)
  %81 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %80)
  br label %202

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82, %71
  %84 = load i32, i32* %10, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %10, align 4
  br label %57

86:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %87

87:                                               ; preds = %106, %86
  %88 = load i32, i32* %10, align 4
  %89 = load i32, i32* %12, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %109

91:                                               ; preds = %87
  %92 = load i32*, i32** %7, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %6, align 4
  %97 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %98 = load i32, i32* %6, align 4
  %99 = call i64 @pci_iov_is_child_vf(%struct.pcicfg_iov* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %91
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @device_delete_child(i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %91
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %87

109:                                              ; preds = %87
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @PCI_IOV_UNINIT(i32 %110)
  %112 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %113 = load i32, i32* @PCIR_SRIOV_CTL, align 4
  %114 = call i32 @IOV_READ(%struct.pci_devinfo* %112, i32 %113, i32 2)
  store i32 %114, i32* %13, align 4
  %115 = load i32, i32* @PCIM_SRIOV_VF_EN, align 4
  %116 = load i32, i32* @PCIM_SRIOV_VF_MSE, align 4
  %117 = or i32 %115, %116
  %118 = xor i32 %117, -1
  %119 = load i32, i32* %13, align 4
  %120 = and i32 %119, %118
  store i32 %120, i32* %13, align 4
  %121 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %122 = load i32, i32* @PCIR_SRIOV_CTL, align 4
  %123 = load i32, i32* %13, align 4
  %124 = call i32 @IOV_WRITE(%struct.pci_devinfo* %121, i32 %122, i32 %123, i32 2)
  %125 = load %struct.pci_devinfo*, %struct.pci_devinfo** %8, align 8
  %126 = load i32, i32* @PCIR_SRIOV_NUM_VFS, align 4
  %127 = call i32 @IOV_WRITE(%struct.pci_devinfo* %125, i32 %126, i32 0, i32 2)
  %128 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %129 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  store i32 0, i32* %10, align 4
  br label %130

130:                                              ; preds = %181, %109
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @PCIR_MAX_BAR_0, align 4
  %133 = icmp sle i32 %131, %132
  br i1 %133, label %134, label %184

134:                                              ; preds = %130
  %135 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %136 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %135, i32 0, i32 3
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load i32, i32* %10, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 0
  %142 = load i32*, i32** %141, align 8
  %143 = icmp ne i32* %142, null
  br i1 %143, label %144, label %180

144:                                              ; preds = %134
  %145 = load i32, i32* %4, align 4
  %146 = load i32, i32* %5, align 4
  %147 = load i32, i32* @SYS_RES_MEMORY, align 4
  %148 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %149 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %148, i32 0, i32 4
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = call i64 @PCIR_SRIOV_BAR(i32 %151)
  %153 = add nsw i64 %150, %152
  %154 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %155 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %154, i32 0, i32 3
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = load i32, i32* %10, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @pci_release_resource(i32 %145, i32 %146, i32 %147, i64 %153, i32* %161)
  %163 = load i32, i32* %4, align 4
  %164 = load i32, i32* %5, align 4
  %165 = load i32, i32* @SYS_RES_MEMORY, align 4
  %166 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %167 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %10, align 4
  %170 = call i64 @PCIR_SRIOV_BAR(i32 %169)
  %171 = add nsw i64 %168, %170
  %172 = call i32 @pci_delete_resource(i32 %163, i32 %164, i32 %165, i64 %171)
  %173 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %174 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %173, i32 0, i32 3
  %175 = load %struct.TYPE_4__*, %struct.TYPE_4__** %174, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  store i32* null, i32** %179, align 8
  br label %180

180:                                              ; preds = %144, %134
  br label %181

181:                                              ; preds = %180
  %182 = load i32, i32* %10, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %10, align 4
  br label %130

184:                                              ; preds = %130
  %185 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %186 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @IOV_RMAN_INITED, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %201

191:                                              ; preds = %184
  %192 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %193 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %192, i32 0, i32 2
  %194 = call i32 @rman_fini(i32* %193)
  %195 = load i32, i32* @IOV_RMAN_INITED, align 4
  %196 = xor i32 %195, -1
  %197 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %198 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = and i32 %199, %196
  store i32 %200, i32* %198, align 8
  br label %201

201:                                              ; preds = %191, %184
  store i32 0, i32* %11, align 4
  br label %202

202:                                              ; preds = %201, %77, %55
  %203 = load i32*, i32** %7, align 8
  %204 = load i32, i32* @M_TEMP, align 4
  %205 = call i32 @free(i32* %203, i32 %204)
  %206 = load i32, i32* @IOV_BUSY, align 4
  %207 = xor i32 %206, -1
  %208 = load %struct.pcicfg_iov*, %struct.pcicfg_iov** %9, align 8
  %209 = getelementptr inbounds %struct.pcicfg_iov, %struct.pcicfg_iov* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = and i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = call i32 @mtx_unlock(i32* @Giant)
  %213 = load i32, i32* %11, align 4
  store i32 %213, i32* %2, align 4
  br label %214

214:                                              ; preds = %202, %42, %34
  %215 = load i32, i32* %2, align 4
  ret i32 %215
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @device_get_children(i32, i32**, i32*) #1

declare dso_local i64 @pci_iov_is_child_vf(%struct.pcicfg_iov*, i32) #1

declare dso_local i32 @device_detach(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @device_delete_child(i32, i32) #1

declare dso_local i32 @PCI_IOV_UNINIT(i32) #1

declare dso_local i32 @IOV_READ(%struct.pci_devinfo*, i32, i32) #1

declare dso_local i32 @IOV_WRITE(%struct.pci_devinfo*, i32, i32, i32) #1

declare dso_local i32 @pci_release_resource(i32, i32, i32, i64, i32*) #1

declare dso_local i64 @PCIR_SRIOV_BAR(i32) #1

declare dso_local i32 @pci_delete_resource(i32, i32, i32, i64) #1

declare dso_local i32 @rman_fini(i32*) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
