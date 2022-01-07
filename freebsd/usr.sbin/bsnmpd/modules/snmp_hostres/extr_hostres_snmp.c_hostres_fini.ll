; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_snmp.c_hostres_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_snmp.c_hostres_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hr_kd = common dso_local global i32* null, align 8
@host_registration_id = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"done.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @hostres_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hostres_fini() #0 {
  %1 = load i32*, i32** @hr_kd, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @hr_kd, align 8
  %5 = call i32 @kvm_close(i32* %4)
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 (...) @fini_storage_tbl()
  %8 = call i32 (...) @fini_fs_tbl()
  %9 = call i32 (...) @fini_processor_tbl()
  %10 = call i32 (...) @fini_disk_storage_tbl()
  %11 = call i32 (...) @fini_device_tbl()
  %12 = call i32 (...) @fini_partition_tbl()
  %13 = call i32 (...) @fini_network_tbl()
  %14 = call i32 (...) @fini_printer_tbl()
  %15 = call i32 (...) @fini_swrun_tbl()
  %16 = call i32 (...) @fini_swins_tbl()
  %17 = call i32 (...) @fini_scalars()
  %18 = load i64, i64* @host_registration_id, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %6
  %21 = load i64, i64* @host_registration_id, align 8
  %22 = call i32 @or_unregister(i64 %21)
  br label %23

23:                                               ; preds = %20, %6
  %24 = call i32 @HRDBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @kvm_close(i32*) #1

declare dso_local i32 @fini_storage_tbl(...) #1

declare dso_local i32 @fini_fs_tbl(...) #1

declare dso_local i32 @fini_processor_tbl(...) #1

declare dso_local i32 @fini_disk_storage_tbl(...) #1

declare dso_local i32 @fini_device_tbl(...) #1

declare dso_local i32 @fini_partition_tbl(...) #1

declare dso_local i32 @fini_network_tbl(...) #1

declare dso_local i32 @fini_printer_tbl(...) #1

declare dso_local i32 @fini_swrun_tbl(...) #1

declare dso_local i32 @fini_swins_tbl(...) #1

declare dso_local i32 @fini_scalars(...) #1

declare dso_local i32 @or_unregister(i64) #1

declare dso_local i32 @HRDBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
