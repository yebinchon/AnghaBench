; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_warmstart.c_write_warmstart.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_warmstart.c_write_warmstart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPCBFILE = common dso_local global i32 0, align 4
@xdr_rpcblist_ptr = common dso_local global i64 0, align 8
@list_rbl = common dso_local global i32 0, align 4
@PMAPFILE = common dso_local global i32 0, align 4
@list_pml = common dso_local global i32 0, align 4
@xdr_pmaplist_ptr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_warmstart() #0 {
  %1 = load i32, i32* @RPCBFILE, align 4
  %2 = load i64, i64* @xdr_rpcblist_ptr, align 8
  %3 = trunc i64 %2 to i32
  %4 = call i32 @write_struct(i32 %1, i32 %3, i32* @list_rbl)
  ret void
}

declare dso_local i32 @write_struct(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
