; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_update_tvalue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table_value.c_update_tvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.named_object = type { i32 }
%struct.vdump_args = type { %struct.table_value* }
%struct.table_value = type { i32 }
%struct.table_val_link = type { %struct.TYPE_2__, %struct.table_value* }
%struct.TYPE_2__ = type { i64, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.namedobj_instance*, %struct.named_object*, i8*)* @update_tvalue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_tvalue(%struct.namedobj_instance* %0, %struct.named_object* %1, i8* %2) #0 {
  %4 = alloca %struct.namedobj_instance*, align 8
  %5 = alloca %struct.named_object*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vdump_args*, align 8
  %8 = alloca %struct.table_val_link*, align 8
  %9 = alloca %struct.table_value*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %4, align 8
  store %struct.named_object* %1, %struct.named_object** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.vdump_args*
  store %struct.vdump_args* %11, %struct.vdump_args** %7, align 8
  %12 = load %struct.named_object*, %struct.named_object** %5, align 8
  %13 = bitcast %struct.named_object* %12 to %struct.table_val_link*
  store %struct.table_val_link* %13, %struct.table_val_link** %8, align 8
  %14 = load %struct.vdump_args*, %struct.vdump_args** %7, align 8
  %15 = getelementptr inbounds %struct.vdump_args, %struct.vdump_args* %14, i32 0, i32 0
  %16 = load %struct.table_value*, %struct.table_value** %15, align 8
  store %struct.table_value* %16, %struct.table_value** %9, align 8
  %17 = load %struct.table_value*, %struct.table_value** %9, align 8
  %18 = load %struct.table_val_link*, %struct.table_val_link** %8, align 8
  %19 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.table_value, %struct.table_value* %17, i64 %21
  %23 = load %struct.table_val_link*, %struct.table_val_link** %8, align 8
  %24 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %23, i32 0, i32 1
  store %struct.table_value* %22, %struct.table_value** %24, align 8
  %25 = load %struct.table_value*, %struct.table_value** %9, align 8
  %26 = load %struct.table_val_link*, %struct.table_val_link** %8, align 8
  %27 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.table_value, %struct.table_value* %25, i64 %29
  %31 = bitcast %struct.table_value* %30 to i8*
  %32 = load %struct.table_val_link*, %struct.table_val_link** %8, align 8
  %33 = getelementptr inbounds %struct.table_val_link, %struct.table_val_link* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i8* %31, i8** %34, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
