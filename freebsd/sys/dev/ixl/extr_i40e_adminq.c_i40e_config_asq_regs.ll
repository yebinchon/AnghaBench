; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_config_asq_regs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_adminq.c_i40e_config_asq_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@I40E_SUCCESS = common dso_local global i32 0, align 4
@I40E_PF_ATQLEN_ATQENABLE_MASK = common dso_local global i32 0, align 4
@I40E_VF_ATQLEN1_ATQENABLE_MASK = common dso_local global i32 0, align 4
@I40E_ERR_ADMIN_QUEUE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_hw*)* @i40e_config_asq_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_config_asq_regs(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %5 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %6 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %8 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @wr32(%struct.i40e_hw* %6, i32 %11, i32 0)
  %13 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %14 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %15 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @wr32(%struct.i40e_hw* %13, i32 %18, i32 0)
  %20 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %21 = call i64 @i40e_is_vf(%struct.i40e_hw* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %1
  %24 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %25 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %26 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %31 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @I40E_PF_ATQLEN_ATQENABLE_MASK, align 4
  %35 = or i32 %33, %34
  %36 = call i32 @wr32(%struct.i40e_hw* %24, i32 %29, i32 %35)
  br label %37

37:                                               ; preds = %23, %1
  %38 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %39 = call i64 @i40e_is_vf(%struct.i40e_hw* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %43 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %44 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %49 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @I40E_VF_ATQLEN1_ATQENABLE_MASK, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @wr32(%struct.i40e_hw* %42, i32 %47, i32 %53)
  br label %55

55:                                               ; preds = %41, %37
  %56 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %58 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %63 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @I40E_LO_DWORD(i32 %67)
  %69 = call i32 @wr32(%struct.i40e_hw* %56, i32 %61, i32 %68)
  %70 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %71 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %72 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %77 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @I40E_HI_DWORD(i32 %81)
  %83 = call i32 @wr32(%struct.i40e_hw* %70, i32 %75, i32 %82)
  %84 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %85 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %86 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @rd32(%struct.i40e_hw* %84, i32 %89)
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %93 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @I40E_LO_DWORD(i32 %97)
  %99 = icmp ne i32 %91, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %55
  %101 = load i32, i32* @I40E_ERR_ADMIN_QUEUE_ERROR, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %55
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i64 @i40e_is_vf(%struct.i40e_hw*) #1

declare dso_local i32 @I40E_LO_DWORD(i32) #1

declare dso_local i32 @I40E_HI_DWORD(i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
