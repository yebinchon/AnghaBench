; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_named_objects.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_sockopt.c_dump_named_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.dump_args = type { i32, i32 }
%struct.sockopt_data = type { i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IPFW_TLV_TBLNAME_LIST = common dso_local global i32 0, align 4
@IPFW_TABLES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.dump_args*, %struct.sockopt_data*)* @dump_named_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_named_objects(%struct.ip_fw_chain* %0, %struct.dump_args* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.dump_args*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.dump_args* %1, %struct.dump_args** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %10 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %11 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i32 @MPASS(i32 %14)
  %16 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %17 = call i64 @ipfw_get_sopt_space(%struct.sockopt_data* %16, i32 16)
  %18 = inttoptr i64 %17 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %18, %struct.TYPE_4__** %8, align 8
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %4, align 4
  br label %66

23:                                               ; preds = %3
  %24 = load i32, i32* @IPFW_TLV_TBLNAME_LIST, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i32 %24, i32* %27, align 4
  %28 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %29 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = add i64 %32, 16
  %34 = trunc i64 %33 to i32
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %39 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 4, i32* %44, align 4
  %45 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %46 = call i32 @ipfw_get_table_objhash(%struct.ip_fw_chain* %45)
  %47 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %48 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %49 = call i32 @export_named_objects(i32 %46, %struct.dump_args* %47, %struct.sockopt_data* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %23
  %53 = load i32, i32* %9, align 4
  store i32 %53, i32* %4, align 4
  br label %66

54:                                               ; preds = %23
  %55 = load i32, i32* @IPFW_TABLES_MAX, align 4
  %56 = sdiv i32 %55, 32
  %57 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %58 = getelementptr inbounds %struct.dump_args, %struct.dump_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %62 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %61)
  %63 = load %struct.dump_args*, %struct.dump_args** %6, align 8
  %64 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %65 = call i32 @export_named_objects(i32 %62, %struct.dump_args* %63, %struct.sockopt_data* %64)
  store i32 %65, i32* %4, align 4
  br label %66

66:                                               ; preds = %54, %52, %21
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @ipfw_get_sopt_space(%struct.sockopt_data*, i32) #1

declare dso_local i32 @export_named_objects(i32, %struct.dump_args*, %struct.sockopt_data*) #1

declare dso_local i32 @ipfw_get_table_objhash(%struct.ip_fw_chain*) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
