; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_disk_entry_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_disk_entry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_entry = type { i32 }
%struct.device_entry = type { i32 }

@disk_tbl = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@HR_DEVICE_IMMUTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.disk_entry*)* @disk_entry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @disk_entry_delete(%struct.disk_entry* %0) #0 {
  %2 = alloca %struct.disk_entry*, align 8
  %3 = alloca %struct.device_entry*, align 8
  store %struct.disk_entry* %0, %struct.disk_entry** %2, align 8
  %4 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %5 = icmp ne %struct.disk_entry* %4, null
  %6 = zext i1 %5 to i32
  %7 = call i32 @assert(i32 %6)
  %8 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %9 = load i32, i32* @link, align 4
  %10 = call i32 @TAILQ_REMOVE(i32* @disk_tbl, %struct.disk_entry* %8, i32 %9)
  %11 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %12 = getelementptr inbounds %struct.disk_entry, %struct.disk_entry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.device_entry* @device_find_by_index(i32 %13)
  store %struct.device_entry* %14, %struct.device_entry** %3, align 8
  %15 = load %struct.disk_entry*, %struct.disk_entry** %2, align 8
  %16 = call i32 @free(%struct.disk_entry* %15)
  %17 = load %struct.device_entry*, %struct.device_entry** %3, align 8
  %18 = icmp ne %struct.device_entry* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.device_entry*, %struct.device_entry** %3, align 8
  %21 = getelementptr inbounds %struct.device_entry, %struct.device_entry* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @HR_DEVICE_IMMUTABLE, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @HR_DEVICE_IMMUTABLE, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load %struct.device_entry*, %struct.device_entry** %3, align 8
  %29 = call i32 @device_entry_delete(%struct.device_entry* %28)
  br label %30

30:                                               ; preds = %27, %19, %1
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.disk_entry*, i32) #1

declare dso_local %struct.device_entry* @device_find_by_index(i32) #1

declare dso_local i32 @free(%struct.disk_entry*) #1

declare dso_local i32 @device_entry_delete(%struct.device_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
