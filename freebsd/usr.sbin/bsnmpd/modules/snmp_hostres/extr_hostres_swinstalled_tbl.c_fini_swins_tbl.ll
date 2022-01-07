; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swinstalled_tbl.c_fini_swins_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_swinstalled_tbl.c_fini_swins_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.swins_map_entry = type { %struct.swins_map_entry*, %struct.swins_map_entry* }

@swins_map = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@swins_tbl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fini_swins_tbl() #0 {
  %1 = alloca %struct.swins_map_entry*, align 8
  br label %2

2:                                                ; preds = %28, %0
  %3 = call %struct.swins_map_entry* @STAILQ_FIRST(i32* @swins_map)
  store %struct.swins_map_entry* %3, %struct.swins_map_entry** %1, align 8
  %4 = icmp ne %struct.swins_map_entry* %3, null
  br i1 %4, label %5, label %35

5:                                                ; preds = %2
  %6 = load i32, i32* @link, align 4
  %7 = call i32 @STAILQ_REMOVE_HEAD(i32* @swins_map, i32 %6)
  %8 = load %struct.swins_map_entry*, %struct.swins_map_entry** %1, align 8
  %9 = getelementptr inbounds %struct.swins_map_entry, %struct.swins_map_entry* %8, i32 0, i32 1
  %10 = load %struct.swins_map_entry*, %struct.swins_map_entry** %9, align 8
  %11 = icmp ne %struct.swins_map_entry* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %5
  %13 = load %struct.swins_map_entry*, %struct.swins_map_entry** %1, align 8
  %14 = getelementptr inbounds %struct.swins_map_entry, %struct.swins_map_entry* %13, i32 0, i32 1
  %15 = load %struct.swins_map_entry*, %struct.swins_map_entry** %14, align 8
  %16 = load i32, i32* @link, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* @swins_tbl, %struct.swins_map_entry* %15, i32 %16)
  %18 = load %struct.swins_map_entry*, %struct.swins_map_entry** %1, align 8
  %19 = getelementptr inbounds %struct.swins_map_entry, %struct.swins_map_entry* %18, i32 0, i32 1
  %20 = load %struct.swins_map_entry*, %struct.swins_map_entry** %19, align 8
  %21 = getelementptr inbounds %struct.swins_map_entry, %struct.swins_map_entry* %20, i32 0, i32 0
  %22 = load %struct.swins_map_entry*, %struct.swins_map_entry** %21, align 8
  %23 = call i32 @free(%struct.swins_map_entry* %22)
  %24 = load %struct.swins_map_entry*, %struct.swins_map_entry** %1, align 8
  %25 = getelementptr inbounds %struct.swins_map_entry, %struct.swins_map_entry* %24, i32 0, i32 1
  %26 = load %struct.swins_map_entry*, %struct.swins_map_entry** %25, align 8
  %27 = call i32 @free(%struct.swins_map_entry* %26)
  br label %28

28:                                               ; preds = %12, %5
  %29 = load %struct.swins_map_entry*, %struct.swins_map_entry** %1, align 8
  %30 = getelementptr inbounds %struct.swins_map_entry, %struct.swins_map_entry* %29, i32 0, i32 0
  %31 = load %struct.swins_map_entry*, %struct.swins_map_entry** %30, align 8
  %32 = call i32 @free(%struct.swins_map_entry* %31)
  %33 = load %struct.swins_map_entry*, %struct.swins_map_entry** %1, align 8
  %34 = call i32 @free(%struct.swins_map_entry* %33)
  br label %2

35:                                               ; preds = %2
  %36 = call i32 @TAILQ_EMPTY(i32* @swins_tbl)
  %37 = call i32 @assert(i32 %36)
  ret void
}

declare dso_local %struct.swins_map_entry* @STAILQ_FIRST(i32*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(i32*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.swins_map_entry*, i32) #1

declare dso_local i32 @free(%struct.swins_map_entry*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
