; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_export_table_ntlv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_export_table_ntlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"invalid table kidx passed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IPFW_TLV_TBL_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_export_table_ntlv(%struct.ip_fw_chain* %0, i32 %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.namedobj_instance*, align 8
  %9 = alloca %struct.named_object*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %12 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %11)
  store %struct.namedobj_instance* %12, %struct.namedobj_instance** %8, align 8
  %13 = load %struct.namedobj_instance*, %struct.namedobj_instance** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %13, i32 %14)
  store %struct.named_object* %15, %struct.named_object** %9, align 8
  %16 = load %struct.named_object*, %struct.named_object** %9, align 8
  %17 = icmp ne %struct.named_object* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %21 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %20, i32 16)
  %22 = inttoptr i64 %21 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %22, %struct.TYPE_4__** %10, align 8
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %24 = icmp eq %struct.TYPE_4__* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  store i32 %26, i32* %4, align 4
  br label %47

27:                                               ; preds = %3
  %28 = load i32, i32* @IPFW_TLV_TBL_NAME, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 16, i32* %34, align 4
  %35 = load %struct.named_object*, %struct.named_object** %9, align 8
  %36 = getelementptr inbounds %struct.named_object, %struct.named_object* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.named_object*, %struct.named_object** %9, align 8
  %44 = getelementptr inbounds %struct.named_object, %struct.named_object* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @strlcpy(i32 %42, i32 %45, i32 4)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %27, %25
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local %struct.named_object* @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
