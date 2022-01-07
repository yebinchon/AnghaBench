; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_export_tables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_export_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.sockopt_data = type { i32 }
%struct.dump_table_args = type { %struct.sockopt_data*, %struct.ip_fw_chain* }

@ENOMEM = common dso_local global i32 0, align 4
@export_table_internal = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, %struct.TYPE_3__*, %struct.sockopt_data*)* @export_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_tables(%struct.ip_fw_chain* %0, %struct.TYPE_3__* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dump_table_args, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %11 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %12 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %11)
  %13 = call i32 @ipfw_objhash_count(i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 4
  %17 = add i64 %16, 12
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 4, i32* %23, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp sgt i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %4, align 4
  br label %46

34:                                               ; preds = %3
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %39 = getelementptr inbounds %struct.dump_table_args, %struct.dump_table_args* %10, i32 0, i32 1
  store %struct.ip_fw_chain* %38, %struct.ip_fw_chain** %39, align 8
  %40 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %41 = getelementptr inbounds %struct.dump_table_args, %struct.dump_table_args* %10, i32 0, i32 0
  store %struct.sockopt_data* %40, %struct.sockopt_data** %41, align 8
  %42 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %43 = call i32 @CHAIN_TO_NI(%struct.ip_fw_chain* %42)
  %44 = load i32, i32* @export_table_internal, align 4
  %45 = call i32 @ipfw_objhash_foreach(i32 %43, i32 %44, %struct.dump_table_args* %10)
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %34, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @ipfw_objhash_count(i32) #1

declare dso_local i32 @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_foreach(i32, i32, %struct.dump_table_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
