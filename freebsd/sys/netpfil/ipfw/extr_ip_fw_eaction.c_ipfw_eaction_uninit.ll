; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_ipfw_eaction_uninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_eaction.c_ipfw_eaction_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32 }

@IPFW_TLV_EACTION = common dso_local global i32 0, align 4
@default_eaction_typename = common dso_local global i32 0, align 4
@eaction_opcodes = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"External actions support uninitialized\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipfw_eaction_uninit(%struct.ip_fw_chain* %0, i32 %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.namedobj_instance*, align 8
  %6 = alloca %struct.named_object*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %8 = call %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain* %7)
  store %struct.namedobj_instance* %8, %struct.namedobj_instance** %5, align 8
  %9 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %10 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %9)
  %11 = load %struct.namedobj_instance*, %struct.namedobj_instance** %5, align 8
  %12 = load i32, i32* @IPFW_TLV_EACTION, align 4
  %13 = load i32, i32* @default_eaction_typename, align 4
  %14 = call %struct.named_object* @ipfw_objhash_lookup_name_type(%struct.namedobj_instance* %11, i32 0, i32 %12, i32 %13)
  store %struct.named_object* %14, %struct.named_object** %6, align 8
  %15 = load %struct.named_object*, %struct.named_object** %6, align 8
  %16 = icmp ne %struct.named_object* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %19 = load %struct.named_object*, %struct.named_object** %6, align 8
  %20 = call i32 @destroy_eaction_obj(%struct.ip_fw_chain* %18, %struct.named_object* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %23 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @eaction_opcodes, align 4
  %26 = call i32 @IPFW_DEL_OBJ_REWRITER(i32 %24, i32 %25)
  %27 = call i32 @EACTION_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local %struct.namedobj_instance* @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_name_type(%struct.namedobj_instance*, i32, i32, i32) #1

declare dso_local i32 @destroy_eaction_obj(%struct.ip_fw_chain*, %struct.named_object*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_DEL_OBJ_REWRITER(i32, i32) #1

declare dso_local i32 @EACTION_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
