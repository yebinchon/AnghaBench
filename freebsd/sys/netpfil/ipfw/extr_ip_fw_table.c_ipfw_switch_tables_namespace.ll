; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_switch_tables_namespace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_switch_tables_namespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opcode_obj_rewrite = type { i64, i64 (%struct.TYPE_4__*, i64*, i32*)* }
%struct.TYPE_4__ = type { i64 }
%struct.ip_fw_chain = type { i32, %struct.ip_fw** }
%struct.ip_fw = type { i32, i64, %struct.TYPE_4__* }
%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i64 }

@V_fw_tables_sets = common dso_local global i32 0, align 4
@test_sets_cb = common dso_local global i32 0, align 4
@IPFW_TLV_TBL_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@opcodes = common dso_local global %struct.opcode_obj_rewrite* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_switch_tables_namespace(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_fw_chain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.opcode_obj_rewrite*, align 8
  %7 = alloca %struct.namedobj_instance*, align 8
  %8 = alloca %struct.named_object*, align 8
  %9 = alloca %struct.ip_fw*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %17 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %16)
  %18 = load i32, i32* @V_fw_tables_sets, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %23 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %22)
  store i32 0, i32* %3, align 4
  br label %135

24:                                               ; preds = %2
  %25 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %26 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %25)
  store %struct.namedobj_instance* %26, %struct.namedobj_instance** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %31 = load i32, i32* @test_sets_cb, align 4
  %32 = load i32, i32* @IPFW_TLV_TBL_NAME, align 4
  %33 = call i64 @ipfw_objhash_foreach_type(%struct.namedobj_instance* %30, i32 %31, i32* null, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %37 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %36)
  %38 = load i32, i32* @EBUSY, align 4
  store i32 %38, i32* %3, align 4
  br label %135

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %39, %24
  store i32 0, i32* %12, align 4
  br label %41

41:                                               ; preds = %128, %40
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %44 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %131

47:                                               ; preds = %41
  %48 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %49 = getelementptr inbounds %struct.ip_fw_chain, %struct.ip_fw_chain* %48, i32 0, i32 1
  %50 = load %struct.ip_fw**, %struct.ip_fw*** %49, align 8
  %51 = load i32, i32* %12, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.ip_fw*, %struct.ip_fw** %50, i64 %52
  %54 = load %struct.ip_fw*, %struct.ip_fw** %53, align 8
  store %struct.ip_fw* %54, %struct.ip_fw** %9, align 8
  %55 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %56 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %13, align 4
  %58 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %59 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %61

61:                                               ; preds = %119, %47
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %127

64:                                               ; preds = %61
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = call i32 @F_LEN(%struct.TYPE_4__* %65)
  store i32 %66, i32* %11, align 4
  store i64 0, i64* %14, align 8
  %67 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @opcodes, align 8
  store %struct.opcode_obj_rewrite* %67, %struct.opcode_obj_rewrite** %6, align 8
  br label %68

68:                                               ; preds = %94, %64
  %69 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %70 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @opcodes, align 8
  %71 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** @opcodes, align 8
  %72 = call i32 @nitems(%struct.opcode_obj_rewrite* %71)
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %70, i64 %73
  %75 = icmp ult %struct.opcode_obj_rewrite* %69, %74
  br i1 %75, label %76, label %97

76:                                               ; preds = %68
  %77 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %78 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %79, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %94

85:                                               ; preds = %76
  %86 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %87 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %86, i32 0, i32 1
  %88 = load i64 (%struct.TYPE_4__*, i64*, i32*)*, i64 (%struct.TYPE_4__*, i64*, i32*)** %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %90 = call i64 %88(%struct.TYPE_4__* %89, i64* %14, i32* %15)
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %97

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %84
  %95 = load %struct.opcode_obj_rewrite*, %struct.opcode_obj_rewrite** %6, align 8
  %96 = getelementptr inbounds %struct.opcode_obj_rewrite, %struct.opcode_obj_rewrite* %95, i32 1
  store %struct.opcode_obj_rewrite* %96, %struct.opcode_obj_rewrite** %6, align 8
  br label %68

97:                                               ; preds = %92, %68
  %98 = load i64, i64* %14, align 8
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %119

101:                                              ; preds = %97
  %102 = load %struct.namedobj_instance*, %struct.namedobj_instance** %7, align 8
  %103 = load i64, i64* %14, align 8
  %104 = call %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %102, i64 %103)
  store %struct.named_object* %104, %struct.named_object** %8, align 8
  %105 = load %struct.named_object*, %struct.named_object** %8, align 8
  %106 = getelementptr inbounds %struct.named_object, %struct.named_object* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %101
  %110 = load %struct.ip_fw*, %struct.ip_fw** %9, align 8
  %111 = getelementptr inbounds %struct.ip_fw, %struct.ip_fw* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109, %101
  %115 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %116 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %115)
  %117 = load i32, i32* @EBUSY, align 4
  store i32 %117, i32* %3, align 4
  br label %135

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %100
  %120 = load i32, i32* %11, align 4
  %121 = load i32, i32* %13, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %13, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %125 = sext i32 %123 to i64
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %125
  store %struct.TYPE_4__* %126, %struct.TYPE_4__** %10, align 8
  br label %61

127:                                              ; preds = %61
  br label %128

128:                                              ; preds = %127
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %41

131:                                              ; preds = %41
  %132 = load i32, i32* %5, align 4
  store i32 %132, i32* @V_fw_tables_sets, align 4
  %133 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %4, align 8
  %134 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %133)
  store i32 0, i32* %3, align 4
  br label %135

135:                                              ; preds = %131, %114, %35, %21
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_foreach_type(%struct.namedobj_instance*, i32, i32*, i32) #1

declare dso_local i32 @F_LEN(%struct.TYPE_4__*) #1

declare dso_local i32 @nitems(%struct.opcode_obj_rewrite*) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
