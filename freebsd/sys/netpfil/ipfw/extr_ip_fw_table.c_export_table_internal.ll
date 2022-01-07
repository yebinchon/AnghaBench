; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_export_table_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_export_table_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32 }
%struct.dump_table_args = type { i32, i32 }
%struct.table_config = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"previously checked buffer is not enough\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.named_object*, i8*)* @export_table_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @export_table_internal(%struct.namedobj_instance* %0, %struct.named_object* %1, i8* %2) #0 {
  %4 = alloca %struct.namedobj_instance*, align 8
  %5 = alloca %struct.named_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dump_table_args*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %4, align 8
  store %struct.named_object* %1, %struct.named_object** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.dump_table_args*
  store %struct.dump_table_args* %10, %struct.dump_table_args** %8, align 8
  %11 = load %struct.dump_table_args*, %struct.dump_table_args** %8, align 8
  %12 = getelementptr inbounds %struct.dump_table_args, %struct.dump_table_args* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ipfw_get_sopt_space(i32 %13, i32 4)
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = icmp ne i32* %16, null
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.dump_table_args*, %struct.dump_table_args** %8, align 8
  %21 = getelementptr inbounds %struct.dump_table_args, %struct.dump_table_args* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.named_object*, %struct.named_object** %5, align 8
  %24 = bitcast %struct.named_object* %23 to %struct.table_config*
  %25 = load i32*, i32** %7, align 8
  %26 = call i32 @export_table_info(i32 %22, %struct.table_config* %24, i32* %25)
  ret i32 0
}

declare dso_local i64 @ipfw_get_sopt_space(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @export_table_info(i32, %struct.table_config*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
