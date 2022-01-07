; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_hw_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_hw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i8*, i32 }
%struct.ecore_hwfn = type { i32, %struct.ecore_dev* }
%struct.ecore_dev = type { %struct.TYPE_4__* }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PCI_EXT_CAP_ID_SRIOV = common dso_local global i32 0, align 4
@ECORE_MSG_IOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"No PCIe IOV support\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Can't support IOV due to lack of memory\0A\00", align 1
@ECORE_NOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"IOV capabilities, but no VFs are published\0A\00", align 1
@OSAL_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@MAX_NUM_VFS_BB = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [25 x i8] c"First VF in hwfn 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_hw_info(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  %9 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %9, i32 0, i32 1
  %11 = load %struct.ecore_dev*, %struct.ecore_dev** %10, align 8
  store %struct.ecore_dev* %11, %struct.ecore_dev** %4, align 8
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 1
  %14 = load %struct.ecore_dev*, %struct.ecore_dev** %13, align 8
  %15 = call i64 @IS_VF(%struct.ecore_dev* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %18, i32* %2, align 4
  br label %154

19:                                               ; preds = %1
  %20 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %21 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %20, i32 0, i32 1
  %22 = load %struct.ecore_dev*, %struct.ecore_dev** %21, align 8
  %23 = load i32, i32* @PCI_EXT_CAP_ID_SRIOV, align 4
  %24 = call i32 @OSAL_PCI_FIND_EXT_CAPABILITY(%struct.ecore_dev* %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %29 = load i32, i32* @ECORE_MSG_IOV, align 4
  %30 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %28, i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %31, i32* %2, align 4
  br label %154

32:                                               ; preds = %19
  %33 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.TYPE_4__* @OSAL_ZALLOC(%struct.ecore_dev* %33, i32 %34, i32 24)
  %36 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %36, i32 0, i32 0
  store %struct.TYPE_4__* %35, %struct.TYPE_4__** %37, align 8
  %38 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %39 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = icmp ne %struct.TYPE_4__* %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %32
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %44 = call i32 @DP_NOTICE(%struct.ecore_hwfn* %43, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ECORE_NOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %154

46:                                               ; preds = %32
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %49 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %53 = call i32 @ecore_iov_pci_cfg_info(%struct.ecore_dev* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %46
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %2, align 4
  br label %154

58:                                               ; preds = %46
  %59 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %60 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %78, label %65

65:                                               ; preds = %58
  %66 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %67 = load i32, i32* @ECORE_MSG_IOV, align 4
  %68 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %66, i32 %67, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %69 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %70 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %71 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %70, i32 0, i32 0
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = call i32 @OSAL_FREE(%struct.ecore_dev* %69, %struct.TYPE_4__* %72)
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @OSAL_NULL, align 8
  %75 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %76 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %75, i32 0, i32 0
  store %struct.TYPE_4__* %74, %struct.TYPE_4__** %76, align 8
  %77 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %77, i32* %2, align 4
  br label %154

78:                                               ; preds = %58
  %79 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %80 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %79, i32 0, i32 1
  %81 = load %struct.ecore_dev*, %struct.ecore_dev** %80, align 8
  %82 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %81, i32 0, i32 0
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %87 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 256, %88
  %90 = icmp slt i32 %85, %89
  br i1 %90, label %91, label %124

91:                                               ; preds = %78
  %92 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %93 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %92, i32 0, i32 1
  %94 = load %struct.ecore_dev*, %struct.ecore_dev** %93, align 8
  %95 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %100 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %98, %101
  %103 = sub nsw i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  store i8* %105, i8** %7, align 8
  %106 = load i8*, i8** %7, align 8
  %107 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %108 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %107, i32 0, i32 0
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 2
  store i8* %106, i8** %110, align 8
  %111 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %112 = call i64 @ECORE_PATH_ID(%struct.ecore_hwfn* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %123

114:                                              ; preds = %91
  %115 = load i64, i64* @MAX_NUM_VFS_BB, align 8
  %116 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %117 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 2
  %120 = load i8*, i8** %119, align 8
  %121 = sub i64 0, %115
  %122 = getelementptr i8, i8* %120, i64 %121
  store i8* %122, i8** %119, align 8
  br label %123

123:                                              ; preds = %114, %91
  br label %144

124:                                              ; preds = %78
  %125 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %126 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %125, i32 0, i32 1
  %127 = load %struct.ecore_dev*, %struct.ecore_dev** %126, align 8
  %128 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %127, i32 0, i32 0
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %133 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %131, %134
  %136 = sub nsw i32 %135, 256
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  store i8* %138, i8** %8, align 8
  %139 = load i8*, i8** %8, align 8
  %140 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %141 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %140, i32 0, i32 0
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 2
  store i8* %139, i8** %143, align 8
  br label %144

144:                                              ; preds = %124, %123
  %145 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %146 = load i32, i32* @ECORE_MSG_IOV, align 4
  %147 = load %struct.ecore_dev*, %struct.ecore_dev** %4, align 8
  %148 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %147, i32 0, i32 0
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 2
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 (%struct.ecore_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.ecore_hwfn* %145, i32 %146, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i8* %151)
  %153 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %144, %65, %56, %42, %27, %17
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @IS_VF(%struct.ecore_dev*) #1

declare dso_local i32 @OSAL_PCI_FIND_EXT_CAPABILITY(%struct.ecore_dev*, i32) #1

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_4__* @OSAL_ZALLOC(%struct.ecore_dev*, i32, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local i32 @ecore_iov_pci_cfg_info(%struct.ecore_dev*) #1

declare dso_local i32 @OSAL_FREE(%struct.ecore_dev*, %struct.TYPE_4__*) #1

declare dso_local i64 @ECORE_PATH_ID(%struct.ecore_hwfn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
