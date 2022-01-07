; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_unref_rule_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_unref_rule_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.ip_fw = type { i32, i32* }
%struct.opcode_obj_rewrite = type { i32 (%struct.ip_fw_chain.0*, %struct.named_object*)*, %struct.named_object.1* (%struct.ip_fw_chain.2*, i32)* }
%struct.ip_fw_chain.0 = type opaque
%struct.named_object = type opaque
%struct.named_object.1 = type { i64, i32 }
%struct.ip_fw_chain.2 = type opaque

@.str = private unnamed_addr constant [23 x i8] c"object id %d not found\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"wrong type %d (%d) for object id %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"refcount for object %d is %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.ip_fw*)* @unref_rule_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unref_rule_objects(%struct.ip_fw_chain* %0, %struct.ip_fw* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.ip_fw*, align 8
  %5 = alloca %struct.opcode_obj_rewrite*, align 8
  %6 = alloca %struct.named_object.1*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.ip_fw* %1, %struct.ip_fw** %4, align 8
  %12 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %13 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %12)
  %14 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %15 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ip_fw*, %struct.ip_fw** %4, align 8
  %18 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %96, %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %104

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  %25 = call i32 @F_LEN(i32* %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32*, i32** %7, align 8
  %27 = call %struct.opcode_obj_rewrite* @find_op_rw(i32* %26, i32* %10, i64* %11)
  store %struct.opcode_obj_rewrite* %27, %struct.opcode_obj_rewrite** %5, align 8
  %28 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %5, align 8
  %29 = icmp eq %struct.opcode_obj_rewrite* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %96

31:                                               ; preds = %23
  %32 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %5, align 8
  %33 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %32, i32 0, i32 1
  %34 = load %struct.named_object.1* (%struct.ip_fw_chain.2*, i32)*, %struct.named_object.1* (%struct.ip_fw_chain.2*, i32)** %33, align 8
  %35 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %36 = bitcast %struct.ip_fw_chain* %35 to %struct.ip_fw_chain.2*
  %37 = load i32, i32* %10, align 4
  %38 = call %struct.named_object.1* %34(%struct.ip_fw_chain.2* %36, i32 %37)
  store %struct.named_object.1* %38, %struct.named_object.1** %6, align 8
  %39 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %40 = icmp ne %struct.named_object.1* %39, null
  %41 = zext i1 %40 to i32
  %42 = load i32, i32* %10, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @KASSERT(i32 %41, i8* %44)
  %46 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %47 = getelementptr inbounds %struct.named_object.1, %struct.named_object.1* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %53 = getelementptr inbounds %struct.named_object.1, %struct.named_object.1* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %11, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @KASSERT(i32 %51, i8* %58)
  %60 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %61 = getelementptr inbounds %struct.named_object.1, %struct.named_object.1* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = icmp sgt i32 %62, 0
  %64 = zext i1 %63 to i32
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %67 = getelementptr inbounds %struct.named_object.1, %struct.named_object.1* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @KASSERT(i32 %64, i8* %70)
  %72 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %73 = getelementptr inbounds %struct.named_object.1, %struct.named_object.1* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %90

76:                                               ; preds = %31
  %77 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %5, align 8
  %78 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %77, i32 0, i32 0
  %79 = load i32 (%struct.ip_fw_chain.0*, %struct.named_object*)*, i32 (%struct.ip_fw_chain.0*, %struct.named_object*)** %78, align 8
  %80 = icmp ne i32 (%struct.ip_fw_chain.0*, %struct.named_object*)* %79, null
  br i1 %80, label %81, label %90

81:                                               ; preds = %76
  %82 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %5, align 8
  %83 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %82, i32 0, i32 0
  %84 = load i32 (%struct.ip_fw_chain.0*, %struct.named_object*)*, i32 (%struct.ip_fw_chain.0*, %struct.named_object*)** %83, align 8
  %85 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %86 = bitcast %struct.ip_fw_chain* %85 to %struct.ip_fw_chain.0*
  %87 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %88 = bitcast %struct.named_object.1* %87 to %struct.named_object*
  %89 = call i32 %84(%struct.ip_fw_chain.0* %86, %struct.named_object* %88)
  br label %95

90:                                               ; preds = %76, %31
  %91 = load %struct.named_object.1*, %struct.named_object.1** %6, align 8
  %92 = getelementptr inbounds %struct.named_object.1, %struct.named_object.1* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %90, %81
  br label %96

96:                                               ; preds = %95, %30
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* %9, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32*, i32** %7, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  store i32* %103, i32** %7, align 8
  br label %20

104:                                              ; preds = %20
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @F_LEN(i32*) #1

declare dso_local %struct.opcode_obj_rewrite* @find_op_rw(i32*, i32*, i64*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
