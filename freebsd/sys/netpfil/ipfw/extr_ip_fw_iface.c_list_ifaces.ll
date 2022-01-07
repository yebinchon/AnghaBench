; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_list_ifaces.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_iface.c_list_ifaces.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct._ipfw_obj_lheader = type { i32, i32, i32 }
%struct.dump_iface_args = type { %struct.sockopt_data*, %struct.ip_fw_chain* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@export_iface_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @list_ifaces to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_ifaces(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.namedobj_instance*, align 8
  %9 = alloca %struct._ipfw_obj_lheader*, align 8
  %10 = alloca %struct.dump_iface_args, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %13 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %14 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %13, i32 12)
  %15 = inttoptr i64 %14 to %struct._ipfw_obj_lheader*
  store %struct._ipfw_obj_lheader* %15, %struct._ipfw_obj_lheader** %9, align 8
  %16 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %9, align 8
  %17 = icmp eq %struct._ipfw_obj_lheader* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %81

20:                                               ; preds = %3
  %21 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %22 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %9, align 8
  %25 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %81

30:                                               ; preds = %20
  %31 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %32 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %31)
  %33 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %34 = call %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain* %33)
  store %struct.namedobj_instance* %34, %struct.namedobj_instance** %8, align 8
  %35 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %36 = icmp ne %struct.namedobj_instance* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %39 = call i32 @ipfw_objhash_count(%struct.namedobj_instance* %38)
  store i32 %39, i32* %11, align 4
  br label %41

40:                                               ; preds = %30
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = add i64 %44, 4
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %9, align 8
  %49 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %9, align 8
  %51 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %50, i32 0, i32 2
  store i32 4, i32* %51, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %9, align 8
  %54 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %41
  %58 = load i32, i32* %12, align 4
  %59 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %9, align 8
  %60 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %62 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %61)
  %63 = load i32, i32* @ENOMEM, align 4
  store i32 %63, i32* %4, align 4
  br label %81

64:                                               ; preds = %41
  %65 = load i32, i32* %12, align 4
  %66 = load %struct._ipfw_obj_lheader*, %struct._ipfw_obj_lheader** %9, align 8
  %67 = getelementptr inbounds %struct._ipfw_obj_lheader, %struct._ipfw_obj_lheader* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 4
  %68 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %69 = getelementptr inbounds %struct.dump_iface_args, %struct.dump_iface_args* %10, i32 0, i32 1
  store %struct.ip_fw_chain* %68, %struct.ip_fw_chain** %69, align 8
  %70 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %71 = getelementptr inbounds %struct.dump_iface_args, %struct.dump_iface_args* %10, i32 0, i32 0
  store %struct.sockopt_data* %70, %struct.sockopt_data** %71, align 8
  %72 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %73 = icmp ne %struct.namedobj_instance* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %76 = load i32, i32* @export_iface_internal, align 4
  %77 = call i32 @ipfw_objhash_foreach(%struct.namedobj_instance* %75, i32 %76, %struct.dump_iface_args* %10)
  br label %78

78:                                               ; preds = %74, %64
  %79 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %80 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %78, %57, %28, %18
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.namedobj_instance* @CHAIN_TO_II(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_count(%struct.namedobj_instance*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_foreach(%struct.namedobj_instance*, i32, %struct.dump_iface_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
