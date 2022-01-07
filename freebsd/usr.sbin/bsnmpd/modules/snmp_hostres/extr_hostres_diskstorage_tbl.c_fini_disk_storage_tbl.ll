; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_fini_disk_storage_tbl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_diskstorage_tbl.c_fini_disk_storage_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk_entry = type { i32 }

@disk_tbl = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@disk_list = common dso_local global %struct.disk_entry* null, align 8
@md_fd = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"close (/dev/mdctl) failed: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fini_disk_storage_tbl() #0 {
  %1 = alloca %struct.disk_entry*, align 8
  br label %2

2:                                                ; preds = %5, %0
  %3 = call %struct.disk_entry* @TAILQ_FIRST(i32* @disk_tbl)
  store %struct.disk_entry* %3, %struct.disk_entry** %1, align 8
  %4 = icmp ne %struct.disk_entry* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %2
  %6 = load %struct.disk_entry*, %struct.disk_entry** %1, align 8
  %7 = load i32, i32* @link, align 4
  %8 = call i32 @TAILQ_REMOVE(i32* @disk_tbl, %struct.disk_entry* %6, i32 %7)
  %9 = load %struct.disk_entry*, %struct.disk_entry** %1, align 8
  %10 = call i32 @free(%struct.disk_entry* %9)
  br label %2

11:                                               ; preds = %2
  %12 = load %struct.disk_entry*, %struct.disk_entry** @disk_list, align 8
  %13 = call i32 @free(%struct.disk_entry* %12)
  %14 = load i32, i32* @md_fd, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* @md_fd, align 4
  %18 = call i32 @close(i32 %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load i32, i32* @LOG_ERR, align 4
  %22 = call i32 @syslog(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %16
  store i32 -1, i32* @md_fd, align 4
  br label %24

24:                                               ; preds = %23, %11
  ret void
}

declare dso_local %struct.disk_entry* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.disk_entry*, i32) #1

declare dso_local i32 @free(%struct.disk_entry*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @syslog(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
