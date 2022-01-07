; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_fini_device_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_device_tbl.c_fini_device_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_map_entry = type { %struct.device_map_entry*, %struct.device_map_entry*, i32* }

@devd_fd = common dso_local global i32* null, align 8
@devd_sock = common dso_local global i32 0, align 4
@device_map = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@device_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fini_device_tbl() #0 {
  %1 = alloca %struct.device_map_entry*, align 8
  %2 = load i32*, i32** @devd_fd, align 8
  %3 = icmp ne i32* %2, null
  br i1 %3, label %4, label %7

4:                                                ; preds = %0
  %5 = load i32*, i32** @devd_fd, align 8
  %6 = call i32 @fd_deselect(i32* %5)
  br label %7

7:                                                ; preds = %4, %0
  %8 = load i32, i32* @devd_sock, align 4
  %9 = icmp ne i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @devd_sock, align 4
  %12 = call i32 @close(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  %14 = call i32 (...) @devinfo_free()
  br label %15

15:                                               ; preds = %35, %13
  %16 = call %struct.device_map_entry* @STAILQ_FIRST(i32* @device_map)
  store %struct.device_map_entry* %16, %struct.device_map_entry** %1, align 8
  %17 = icmp ne %struct.device_map_entry* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = load i32, i32* @link, align 4
  %20 = call i32 @STAILQ_REMOVE_HEAD(i32* @device_map, i32 %19)
  %21 = load %struct.device_map_entry*, %struct.device_map_entry** %1, align 8
  %22 = getelementptr inbounds %struct.device_map_entry, %struct.device_map_entry* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.device_map_entry*, %struct.device_map_entry** %1, align 8
  %27 = getelementptr inbounds %struct.device_map_entry, %struct.device_map_entry* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* @link, align 4
  %30 = call i32 @TAILQ_REMOVE(i32* @device_tbl, i32* %28, i32 %29)
  %31 = load %struct.device_map_entry*, %struct.device_map_entry** %1, align 8
  %32 = getelementptr inbounds %struct.device_map_entry, %struct.device_map_entry* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @FREE_DEV_STRUCT(i32* %33)
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.device_map_entry*, %struct.device_map_entry** %1, align 8
  %37 = getelementptr inbounds %struct.device_map_entry, %struct.device_map_entry* %36, i32 0, i32 1
  %38 = load %struct.device_map_entry*, %struct.device_map_entry** %37, align 8
  %39 = call i32 @free(%struct.device_map_entry* %38)
  %40 = load %struct.device_map_entry*, %struct.device_map_entry** %1, align 8
  %41 = getelementptr inbounds %struct.device_map_entry, %struct.device_map_entry* %40, i32 0, i32 0
  %42 = load %struct.device_map_entry*, %struct.device_map_entry** %41, align 8
  %43 = call i32 @free(%struct.device_map_entry* %42)
  %44 = load %struct.device_map_entry*, %struct.device_map_entry** %1, align 8
  %45 = call i32 @free(%struct.device_map_entry* %44)
  br label %15

46:                                               ; preds = %15
  %47 = call i32 @TAILQ_EMPTY(i32* @device_tbl)
  %48 = call i32 @assert(i32 %47)
  ret void
}

declare dso_local i32 @fd_deselect(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @devinfo_free(...) #1

declare dso_local %struct.device_map_entry* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, i32*, i32) #1

declare dso_local i32 @FREE_DEV_STRUCT(i32*) #1

declare dso_local i32 @free(%struct.device_map_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
