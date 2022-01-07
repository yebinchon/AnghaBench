; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_foreach_table_tentry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_ipfw_foreach_table_tentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.namedobj_instance = type { i32 }
%struct.table_config = type { i32, %struct.TYPE_2__, %struct.table_algo* }
%struct.TYPE_2__ = type { i32 }
%struct.table_algo = type { i32 (i32, i32, i32, %struct.dump_args*)* }
%struct.dump_args = type opaque
%struct.dump_args.0 = type { i32, i8*, i32*, %struct.table_config*, %struct.ip_fw_chain* }

@ESRCH = common dso_local global i32 0, align 4
@prepare_table_tentry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipfw_foreach_table_tentry(%struct.ip_fw_chain* %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ip_fw_chain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.namedobj_instance*, align 8
  %11 = alloca %struct.table_config*, align 8
  %12 = alloca %struct.table_algo*, align 8
  %13 = alloca %struct.dump_args.0, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %14 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %15 = call %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain* %14)
  store %struct.namedobj_instance* %15, %struct.namedobj_instance** %10, align 8
  %16 = load %struct.namedobj_instance*, %struct.namedobj_instance** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance* %16, i32 %17)
  %19 = inttoptr i64 %18 to %struct.table_config*
  store %struct.table_config* %19, %struct.table_config** %11, align 8
  %20 = load %struct.table_config*, %struct.table_config** %11, align 8
  %21 = icmp eq %struct.table_config* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* @ESRCH, align 4
  store i32 %23, i32* %5, align 4
  br label %55

24:                                               ; preds = %4
  %25 = load %struct.table_config*, %struct.table_config** %11, align 8
  %26 = getelementptr inbounds %struct.table_config, %struct.table_config* %25, i32 0, i32 2
  %27 = load %struct.table_algo*, %struct.table_algo** %26, align 8
  store %struct.table_algo* %27, %struct.table_algo** %12, align 8
  %28 = call i32 @memset(%struct.dump_args.0* %13, i32 0, i32 40)
  %29 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %30 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 4
  store %struct.ip_fw_chain* %29, %struct.ip_fw_chain** %30, align 8
  %31 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %6, align 8
  %32 = load %struct.table_config*, %struct.table_config** %11, align 8
  %33 = getelementptr inbounds %struct.table_config, %struct.table_config* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @KIDX_TO_TI(%struct.ip_fw_chain* %31, i32 %35)
  %37 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 0
  store i32 %36, i32* %37, align 8
  %38 = load %struct.table_config*, %struct.table_config** %11, align 8
  %39 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 3
  store %struct.table_config* %38, %struct.table_config** %39, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 1
  store i8* %42, i8** %43, align 8
  %44 = load %struct.table_algo*, %struct.table_algo** %12, align 8
  %45 = getelementptr inbounds %struct.table_algo, %struct.table_algo* %44, i32 0, i32 0
  %46 = load i32 (i32, i32, i32, %struct.dump_args*)*, i32 (i32, i32, i32, %struct.dump_args*)** %45, align 8
  %47 = load %struct.table_config*, %struct.table_config** %11, align 8
  %48 = getelementptr inbounds %struct.table_config, %struct.table_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.dump_args.0, %struct.dump_args.0* %13, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @prepare_table_tentry, align 4
  %53 = bitcast %struct.dump_args.0* %13 to %struct.dump_args*
  %54 = call i32 %46(i32 %49, i32 %51, i32 %52, %struct.dump_args* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %24, %22
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local %struct.namedobj_instance* @CHAIN_TO_NI(%struct.ip_fw_chain*) #1

declare dso_local i64 @ipfw_objhash_lookup_kidx(%struct.namedobj_instance*, i32) #1

declare dso_local i32 @memset(%struct.dump_args.0*, i32, i32) #1

declare dso_local i32 @KIDX_TO_TI(%struct.ip_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
