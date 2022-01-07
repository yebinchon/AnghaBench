; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_nic_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_nic_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_dev = type { i32, %struct.ecore_hwfn* }
%struct.ecore_hwfn = type { i32, %struct.ecore_pf_params }
%struct.ecore_pf_params = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_dev*, %struct.ecore_pf_params*)* @qlnx_nic_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_nic_setup(%struct.ecore_dev* %0, %struct.ecore_pf_params* %1) #0 {
  %3 = alloca %struct.ecore_dev*, align 8
  %4 = alloca %struct.ecore_pf_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ecore_hwfn*, align 8
  store %struct.ecore_dev* %0, %struct.ecore_dev** %3, align 8
  store %struct.ecore_pf_params* %1, %struct.ecore_pf_params** %4, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %11 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %16 = getelementptr inbounds %struct.ecore_dev, %struct.ecore_dev* %15, i32 0, i32 1
  %17 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %17, i64 %19
  store %struct.ecore_hwfn* %20, %struct.ecore_hwfn** %7, align 8
  %21 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %22 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %21, i32 0, i32 1
  %23 = load %struct.ecore_pf_params*, %struct.ecore_pf_params** %4, align 8
  %24 = bitcast %struct.ecore_pf_params* %22 to i8*
  %25 = bitcast %struct.ecore_pf_params* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  br label %26

26:                                               ; preds = %14
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %31 = call i32 @ecore_resc_alloc(%struct.ecore_dev* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %38

35:                                               ; preds = %29
  %36 = load %struct.ecore_dev*, %struct.ecore_dev** %3, align 8
  %37 = call i32 @ecore_resc_setup(%struct.ecore_dev* %36)
  br label %38

38:                                               ; preds = %35, %34
  %39 = load i32, i32* %5, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ecore_resc_alloc(%struct.ecore_dev*) #2

declare dso_local i32 @ecore_resc_setup(%struct.ecore_dev*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
