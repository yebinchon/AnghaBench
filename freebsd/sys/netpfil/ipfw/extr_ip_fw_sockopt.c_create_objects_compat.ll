; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_create_objects_compat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_create_objects_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.obj_idx = type { i64, i32, i32, i32 }
%struct.tid_info = type { i64, i32, i32 }
%struct.opcode_obj_rewrite = type { i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, i64*)* }
%struct.ip_fw_chain.0 = type opaque

@.str = private unnamed_addr constant [33 x i8] c"Unable to find handler for op %d\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @create_objects_compat(%struct.ip_fw_chain* %0, %struct.TYPE_5__* %1, %struct.obj_idx* %2, %struct.obj_idx* %3, %struct.tid_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.obj_idx*, align 8
  %10 = alloca %struct.obj_idx*, align 8
  %11 = alloca %struct.tid_info*, align 8
  %12 = alloca %struct.opcode_obj_rewrite*, align 8
  %13 = alloca %struct.obj_idx*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %8, align 8
  store %struct.obj_idx* %2, %struct.obj_idx** %9, align 8
  store %struct.obj_idx* %3, %struct.obj_idx** %10, align 8
  store %struct.tid_info* %4, %struct.tid_info** %11, align 8
  %16 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  store %struct.obj_idx* %16, %struct.obj_idx** %13, align 8
  br label %17

17:                                               ; preds = %93, %5
  %18 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %19 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %20 = icmp ult %struct.obj_idx* %18, %19
  br i1 %20, label %21, label %96

21:                                               ; preds = %17
  %22 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %23 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %93

27:                                               ; preds = %21
  %28 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %29 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %32 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %34 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %37 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %39 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %38, i32 0, i32 0
  store i64 0, i64* %39, align 8
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %41 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %42 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %44
  %46 = call %struct.opcode_obj_rewrite* @find_op_rw(%struct.TYPE_5__* %45, i32* null, i32* null)
  store %struct.opcode_obj_rewrite* %46, %struct.opcode_obj_rewrite** %12, align 8
  %47 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %12, align 8
  %48 = icmp ne %struct.opcode_obj_rewrite* %47, null
  %49 = zext i1 %48 to i32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %51 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %52 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @KASSERT(i32 %49, i8* %59)
  %61 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %12, align 8
  %62 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %61, i32 0, i32 0
  %63 = load i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, i64*)*, i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, i64*)** %62, align 8
  %64 = icmp eq i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, i64*)* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %27
  %66 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %66, i32* %15, align 4
  br label %75

67:                                               ; preds = %27
  %68 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %12, align 8
  %69 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %68, i32 0, i32 0
  %70 = load i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, i64*)*, i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, i64*)** %69, align 8
  %71 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %72 = bitcast %struct.ip_fw_chain* %71 to %struct.ip_fw_chain.0*
  %73 = load %struct.tid_info*, %struct.tid_info** %11, align 8
  %74 = call i32 %70(%struct.ip_fw_chain.0* %72, %struct.tid_info* %73, i64* %14)
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %67, %65
  %76 = load i32, i32* %15, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* %14, align 8
  %80 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %81 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  br label %93

82:                                               ; preds = %75
  %83 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %84 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %83)
  %85 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %87 = load %struct.obj_idx*, %struct.obj_idx** %9, align 8
  %88 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %89 = call i32 @unref_oib_objects(%struct.ip_fw_chain* %85, %struct.TYPE_5__* %86, %struct.obj_idx* %87, %struct.obj_idx* %88)
  %90 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %91 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %90)
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %6, align 4
  br label %97

93:                                               ; preds = %78, %26
  %94 = load %struct.obj_idx*, %struct.obj_idx** %13, align 8
  %95 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %94, i32 1
  store %struct.obj_idx* %95, %struct.obj_idx** %13, align 8
  br label %17

96:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %82
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local %struct.opcode_obj_rewrite* @find_op_rw(%struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @unref_oib_objects(%struct.ip_fw_chain*, %struct.TYPE_5__*, %struct.obj_idx*, %struct.obj_idx*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
