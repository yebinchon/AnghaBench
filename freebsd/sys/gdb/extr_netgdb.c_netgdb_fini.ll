; ModuleID = '/home/carl/AnghaBench/freebsd/sys/gdb/extr_netgdb.c_netgdb_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/gdb/extr_netgdb.c_netgdb_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@netgdb_conn = common dso_local global i32* null, align 8
@netgdb_rxsb = common dso_local global i32 0, align 4
@netgdb_prev_dbgport = common dso_local global i32 0, align 4
@gdb_cur = common dso_local global i32 0, align 4
@netgdb_prev_kdb_inactive = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @netgdb_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netgdb_fini() #0 {
  %1 = load i32*, i32** @netgdb_conn, align 8
  %2 = icmp ne i32* %1, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = load i32*, i32** @netgdb_conn, align 8
  %5 = call i32 @debugnet_free(i32* %4)
  store i32* null, i32** @netgdb_conn, align 8
  br label %6

6:                                                ; preds = %3, %0
  %7 = call i32 @sbuf_delete(i32* @netgdb_rxsb)
  %8 = load i32, i32* @netgdb_prev_dbgport, align 4
  store i32 %8, i32* @gdb_cur, align 4
  %9 = load i32*, i32** @netgdb_prev_kdb_inactive, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = load i32*, i32** @netgdb_prev_kdb_inactive, align 8
  store i32 -1, i32* %12, align 4
  store i32* null, i32** @netgdb_prev_kdb_inactive, align 8
  br label %13

13:                                               ; preds = %11, %6
  ret void
}

declare dso_local i32 @debugnet_free(i32*) #1

declare dso_local i32 @sbuf_delete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
