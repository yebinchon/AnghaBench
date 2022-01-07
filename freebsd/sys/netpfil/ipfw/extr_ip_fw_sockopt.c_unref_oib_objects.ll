; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_unref_oib_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_unref_oib_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.obj_idx = type { i64, i32 }
%struct.opcode_obj_rewrite = type { %struct.named_object* (%struct.ip_fw_chain.0*, i64)* }
%struct.named_object = type { i32 }
%struct.ip_fw_chain.0 = type opaque

@.str = private unnamed_addr constant [33 x i8] c"Unable to find handler for op %d\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Ref'd object %d disappeared\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.TYPE_4__*, %struct.obj_idx*, %struct.obj_idx*)* @unref_oib_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unref_oib_objects(%struct.ip_fw_chain* %0, %struct.TYPE_4__* %1, %struct.obj_idx* %2, %struct.obj_idx* %3) #0 {
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca %struct.obj_idx*, align 8
  %8 = alloca %struct.obj_idx*, align 8
  %9 = alloca %struct.opcode_obj_rewrite*, align 8
  %10 = alloca %struct.named_object*, align 8
  %11 = alloca %struct.obj_idx*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %6, align 8
  store %struct.obj_idx* %2, %struct.obj_idx** %7, align 8
  store %struct.obj_idx* %3, %struct.obj_idx** %8, align 8
  %12 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %13 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %12)
  %14 = load %struct.obj_idx*, %struct.obj_idx** %7, align 8
  store %struct.obj_idx* %14, %struct.obj_idx** %11, align 8
  br label %15

15:                                               ; preds = %68, %4
  %16 = load %struct.obj_idx*, %struct.obj_idx** %11, align 8
  %17 = load %struct.obj_idx*, %struct.obj_idx** %8, align 8
  %18 = icmp ult %struct.obj_idx* %16, %17
  br i1 %18, label %19, label %71

19:                                               ; preds = %15
  %20 = load %struct.obj_idx*, %struct.obj_idx** %11, align 8
  %21 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %68

25:                                               ; preds = %19
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %27 = load %struct.obj_idx*, %struct.obj_idx** %11, align 8
  %28 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %30
  %32 = call %struct.opcode_obj_rewrite* @find_op_rw(%struct.TYPE_4__* %31, i32* null, i32* null)
  store %struct.opcode_obj_rewrite* %32, %struct.opcode_obj_rewrite** %9, align 8
  %33 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  %34 = icmp ne %struct.opcode_obj_rewrite* %33, null
  %35 = zext i1 %34 to i32
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = load %struct.obj_idx*, %struct.obj_idx** %11, align 8
  %38 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @KASSERT(i32 %35, i8* %45)
  %47 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %9, align 8
  %48 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %47, i32 0, i32 0
  %49 = load %struct.named_object* (%struct.ip_fw_chain.0*, i64)*, %struct.named_object* (%struct.ip_fw_chain.0*, i64)** %48, align 8
  %50 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %51 = bitcast %struct.ip_fw_chain* %50 to %struct.ip_fw_chain.0*
  %52 = load %struct.obj_idx*, %struct.obj_idx** %11, align 8
  %53 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call %struct.named_object* %49(%struct.ip_fw_chain.0* %51, i64 %54)
  store %struct.named_object* %55, %struct.named_object** %10, align 8
  %56 = load %struct.named_object*, %struct.named_object** %10, align 8
  %57 = icmp ne %struct.named_object* %56, null
  %58 = zext i1 %57 to i32
  %59 = load %struct.obj_idx*, %struct.obj_idx** %11, align 8
  %60 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  %63 = call i32 @KASSERT(i32 %58, i8* %62)
  %64 = load %struct.named_object*, %struct.named_object** %10, align 8
  %65 = getelementptr inbounds %struct.named_object, %struct.named_object* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %25, %24
  %69 = load %struct.obj_idx*, %struct.obj_idx** %11, align 8
  %70 = getelementptr inbounds %struct.obj_idx, %struct.obj_idx* %69, i32 1
  store %struct.obj_idx* %70, %struct.obj_idx** %11, align 8
  br label %15

71:                                               ; preds = %15
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local %struct.opcode_obj_rewrite* @find_op_rw(%struct.TYPE_4__*, i32*, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
