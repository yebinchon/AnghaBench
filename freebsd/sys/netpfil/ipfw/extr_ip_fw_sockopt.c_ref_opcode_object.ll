; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ref_opcode_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_ref_opcode_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.tid_info = type { i64, i32 }
%struct.obj_idx = type { i64, i32 }
%struct.named_object = type { i64, i32, i32 }
%struct.opcode_obj_rewrite = type { i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, %struct.named_object.1**)*, i32 (i32*, i32)* }
%struct.ip_fw_chain.0 = type opaque
%struct.named_object.1 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.tid_info*, %struct.obj_idx*, i32*)* @ref_opcode_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ref_opcode_object(%struct.ip_fw_chain* %0, i32* %1, %struct.tid_info* %2, %struct.obj_idx* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ip_fw_chain*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.tid_info*, align 8
  %10 = alloca %struct.obj_idx*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.named_object*, align 8
  %13 = alloca %struct.opcode_obj_rewrite*, align 8
  %14 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %7, align 8
  store i32* %1, i32** %8, align 8
  store %struct.tid_info* %2, %struct.tid_info** %9, align 8
  store %struct.obj_idx* %3, %struct.obj_idx** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %17 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %16, i32 0, i32 1
  %18 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %19 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %18, i32 0, i32 0
  %20 = call %struct.opcode_obj_rewrite* @find_op_rw(i32* %15, i32* %17, i64* %19)
  store %struct.opcode_obj_rewrite* %20, %struct.opcode_obj_rewrite** %13, align 8
  %21 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %13, align 8
  %22 = icmp eq %struct.opcode_obj_rewrite* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %75

24:                                               ; preds = %5
  %25 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %26 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %29 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %31 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.obj_idx*, %struct.obj_idx** %10, align 8
  %34 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %13, align 8
  %36 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %35, i32 0, i32 0
  %37 = load i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, %struct.named_object.1**)*, i32 (%struct.ip_fw_chain.0*, %struct.tid_info*, %struct.named_object.1**)** %36, align 8
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %7, align 8
  %39 = bitcast %struct.ip_fw_chain* %38 to %struct.ip_fw_chain.0*
  %40 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %41 = bitcast %struct.named_object** %12 to %struct.named_object.1**
  %42 = call i32 %37(%struct.ip_fw_chain.0* %39, %struct.tid_info* %40, %struct.named_object.1** %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %24
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %75

47:                                               ; preds = %24
  %48 = load %struct.named_object*, %struct.named_object** %12, align 8
  %49 = icmp eq %struct.named_object* %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32*, i32** %11, align 8
  store i32 1, i32* %51, align 4
  store i32 0, i32* %6, align 4
  br label %75

52:                                               ; preds = %47
  %53 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %54 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.named_object*, %struct.named_object** %12, align 8
  %57 = getelementptr inbounds %struct.named_object, %struct.named_object* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %52
  %61 = load i32, i32* @EINVAL, align 4
  store i32 %61, i32* %6, align 4
  br label %75

62:                                               ; preds = %52
  %63 = load %struct.named_object*, %struct.named_object** %12, align 8
  %64 = getelementptr inbounds %struct.named_object, %struct.named_object* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %13, align 8
  %68 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %67, i32 0, i32 1
  %69 = load i32 (i32*, i32)*, i32 (i32*, i32)** %68, align 8
  %70 = load i32*, i32** %8, align 8
  %71 = load %struct.named_object*, %struct.named_object** %12, align 8
  %72 = getelementptr inbounds %struct.named_object, %struct.named_object* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(i32* %70, i32 %73)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %62, %60, %50, %45, %23
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.opcode_obj_rewrite* @find_op_rw(i32*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
