; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ref_rule_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ref_rule_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw = type { i32, i32* }
%struct.rule_check_info = type { i64 }
%struct.obj_idx = type { i32 }
%struct.tid_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.ip_fw*, %struct.rule_check_info*, %struct.obj_idx*, %struct.tid_info*)* @ref_rule_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ref_rule_objects(%struct.ip_fw_chain* %0, %struct.ip_fw* %1, %struct.rule_check_info* %2, %struct.obj_idx* %3, %struct.tid_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.ip_fw*, align 8
  %9 = alloca %struct.rule_check_info*, align 8
  %10 = alloca %struct.obj_idx*, align 8
  %11 = alloca %struct.tid_info*, align 8
  %12 = alloca %struct.obj_idx*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store %struct.ip_fw* %1, %struct.ip_fw** %8, align 8
  store %struct.rule_check_info* %2, %struct.rule_check_info** %9, align 8
  store %struct.obj_idx* %3, %struct.obj_idx** %10, align 8
  store %struct.tid_info* %4, %struct.tid_info** %11, align 8
  %18 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  store %struct.obj_idx* %18, %struct.obj_idx** %12, align 8
  %19 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %20 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %16, align 4
  %22 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %23 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %25 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %26 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %25)
  br label %27

27:                                               ; preds = %55, %5
  %28 = load i32, i32* %16, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load i32*, i32** %13, align 8
  %32 = call i32 @F_LEN(i32* %31)
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %17, align 4
  %33 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %36 = load %struct.obj_idx*, %struct.obj_idx** %12, align 8
  %37 = call i32 @ref_opcode_object(%struct.ip_fw_chain* %33, i32* %34, %struct.tid_info* %35, %struct.obj_idx* %36, i32* %17)
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %63

41:                                               ; preds = %30
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %41
  %45 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %46 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %16, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load %struct.obj_idx*, %struct.obj_idx** %12, align 8
  %51 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load %struct.obj_idx*, %struct.obj_idx** %12, align 8
  %53 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %52, i32 1
  store %struct.obj_idx* %53, %struct.obj_idx** %12, align 8
  br label %54

54:                                               ; preds = %44, %41
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %16, align 4
  %58 = sub nsw i32 %57, %56
  store i32 %58, i32* %16, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32*, i32** %13, align 8
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  store i32* %62, i32** %13, align 8
  br label %27

63:                                               ; preds = %40, %27
  %64 = load i32, i32* %15, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %63
  %67 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %68 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %69 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %72 = load %struct.obj_idx*, %struct.obj_idx** %12, align 8
  %73 = call i32 @unref_oib_objects(%struct.ip_fw_chain* %67, i32* %70, %struct.obj_idx* %71, %struct.obj_idx* %72)
  %74 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %75 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %74)
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %6, align 4
  br label %102

77:                                               ; preds = %63
  %78 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %79 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %78)
  %80 = load %struct.obj_idx*, %struct.obj_idx** %12, align 8
  %81 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %82 = icmp ne %struct.obj_idx* %80, %81
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %85 = load %struct.ip_fw*, %struct.ip_fw** %8, align 8
  %86 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %89 = load %struct.obj_idx*, %struct.obj_idx** %12, align 8
  %90 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %91 = call i32 @create_objects_compat(%struct.ip_fw_chain* %84, i32* %87, %struct.obj_idx* %88, %struct.obj_idx* %89, %struct.tid_info* %90)
  store i32 %91, i32* %15, align 4
  br label %92

92:                                               ; preds = %83, %77
  %93 = load %struct.obj_idx*, %struct.obj_idx** %12, align 8
  %94 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %95 = ptrtoint %struct.obj_idx* %93 to i64
  %96 = ptrtoint %struct.obj_idx* %94 to i64
  %97 = sub i64 %95, %96
  %98 = sdiv exact i64 %97, 4
  %99 = load %struct.rule_check_info*, %struct.rule_check_info** %9, align 8
  %100 = getelementptr inbounds %struct.rule_check_info, %struct.rule_check_info* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %6, align 4
  br label %102

102:                                              ; preds = %92, %66
  %103 = load i32, i32* %6, align 4
  ret i32 %103
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @F_LEN(i32*) #1

declare dso_local i32 @ref_opcode_object(%struct.ip_fw_chain*, i32*, %struct.tid_info*, %struct.obj_idx*, i32*) #1

declare dso_local i32 @unref_oib_objects(%struct.ip_fw_chain*, i32*, %struct.obj_idx*, %struct.obj_idx*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @create_objects_compat(%struct.ip_fw_chain*, i32*, %struct.obj_idx*, %struct.obj_idx*, %struct.tid_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
