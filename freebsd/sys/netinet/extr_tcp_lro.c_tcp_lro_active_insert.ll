; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_active_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_active_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_ctrl = type { %struct.lro_head }
%struct.lro_head = type { i32 }
%struct.lro_entry = type { i32 }

@next = common dso_local global i32 0, align 4
@hash_next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lro_ctrl*, %struct.lro_head*, %struct.lro_entry*)* @tcp_lro_active_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_lro_active_insert(%struct.lro_ctrl* %0, %struct.lro_head* %1, %struct.lro_entry* %2) #0 {
  %4 = alloca %struct.lro_ctrl*, align 8
  %5 = alloca %struct.lro_head*, align 8
  %6 = alloca %struct.lro_entry*, align 8
  store %struct.lro_ctrl* %0, %struct.lro_ctrl** %4, align 8
  store %struct.lro_head* %1, %struct.lro_head** %5, align 8
  store %struct.lro_entry* %2, %struct.lro_entry** %6, align 8
  %7 = load %struct.lro_ctrl*, %struct.lro_ctrl** %4, align 8
  %8 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %7, i32 0, i32 0
  %9 = load %struct.lro_entry*, %struct.lro_entry** %6, align 8
  %10 = load i32, i32* @next, align 4
  %11 = call i32 @LIST_INSERT_HEAD(%struct.lro_head* %8, %struct.lro_entry* %9, i32 %10)
  %12 = load %struct.lro_head*, %struct.lro_head** %5, align 8
  %13 = load %struct.lro_entry*, %struct.lro_entry** %6, align 8
  %14 = load i32, i32* @hash_next, align 4
  %15 = call i32 @LIST_INSERT_HEAD(%struct.lro_head* %12, %struct.lro_entry* %13, i32 %14)
  ret void
}

declare dso_local i32 @LIST_INSERT_HEAD(%struct.lro_head*, %struct.lro_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
