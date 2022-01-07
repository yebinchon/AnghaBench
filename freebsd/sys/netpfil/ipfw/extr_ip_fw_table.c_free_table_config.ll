; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_free_table_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_table.c_free_table_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.namedobj_instance = type { i32 }
%struct.table_config = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32*)* }

@.str = private unnamed_addr constant [24 x i8] c"free() on linked config\00", align 1
@M_IPFW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.namedobj_instance*, %struct.table_config*)* @free_table_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_table_config(%struct.namedobj_instance* %0, %struct.table_config* %1) #0 {
  %3 = alloca %struct.namedobj_instance*, align 8
  %4 = alloca %struct.table_config*, align 8
  store %struct.namedobj_instance* %0, %struct.namedobj_instance** %3, align 8
  store %struct.table_config* %1, %struct.table_config** %4, align 8
  %5 = load %struct.table_config*, %struct.table_config** %4, align 8
  %6 = getelementptr inbounds %struct.table_config, %struct.table_config* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.table_config*, %struct.table_config** %4, align 8
  %12 = getelementptr inbounds %struct.table_config, %struct.table_config* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (i32, i32*)*, i32 (i32, i32*)** %14, align 8
  %16 = load %struct.table_config*, %struct.table_config** %4, align 8
  %17 = getelementptr inbounds %struct.table_config, %struct.table_config* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.table_config*, %struct.table_config** %4, align 8
  %20 = getelementptr inbounds %struct.table_config, %struct.table_config* %19, i32 0, i32 1
  %21 = call i32 %15(i32 %18, i32* %20)
  %22 = load %struct.table_config*, %struct.table_config** %4, align 8
  %23 = load i32, i32* @M_IPFW, align 4
  %24 = call i32 @free(%struct.table_config* %22, i32 %23)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(%struct.table_config*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
