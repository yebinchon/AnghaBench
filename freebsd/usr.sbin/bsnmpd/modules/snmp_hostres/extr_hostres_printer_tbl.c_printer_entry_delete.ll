; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_printer_tbl.c_printer_entry_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hostres/extr_hostres_printer_tbl.c_printer_entry_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.printer_entry = type { i32 }

@printer_tbl = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.printer_entry*)* @printer_entry_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @printer_entry_delete(%struct.printer_entry* %0) #0 {
  %2 = alloca %struct.printer_entry*, align 8
  store %struct.printer_entry* %0, %struct.printer_entry** %2, align 8
  %3 = load %struct.printer_entry*, %struct.printer_entry** %2, align 8
  %4 = icmp ne %struct.printer_entry* %3, null
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load %struct.printer_entry*, %struct.printer_entry** %2, align 8
  %8 = icmp eq %struct.printer_entry* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %16

10:                                               ; preds = %1
  %11 = load %struct.printer_entry*, %struct.printer_entry** %2, align 8
  %12 = load i32, i32* @link, align 4
  %13 = call i32 @TAILQ_REMOVE(i32* @printer_tbl, %struct.printer_entry* %11, i32 %12)
  %14 = load %struct.printer_entry*, %struct.printer_entry** %2, align 8
  %15 = call i32 @free(%struct.printer_entry* %14)
  br label %16

16:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.printer_entry*, i32) #1

declare dso_local i32 @free(%struct.printer_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
