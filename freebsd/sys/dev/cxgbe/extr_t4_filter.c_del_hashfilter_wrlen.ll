; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_del_hashfilter_wrlen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_del_hashfilter_wrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LEN__SET_TCB_FIELD_ULP = common dso_local global i32 0, align 4
@LEN__ABORT_REQ_ULP = common dso_local global i32 0, align 4
@LEN__ABORT_RPL_ULP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @del_hashfilter_wrlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_hashfilter_wrlen() #0 {
  %1 = load i32, i32* @LEN__SET_TCB_FIELD_ULP, align 4
  %2 = call i32 @roundup2(i32 %1, i32 16)
  %3 = sext i32 %2 to i64
  %4 = add i64 4, %3
  %5 = load i32, i32* @LEN__ABORT_REQ_ULP, align 4
  %6 = call i32 @roundup2(i32 %5, i32 16)
  %7 = sext i32 %6 to i64
  %8 = add i64 %4, %7
  %9 = load i32, i32* @LEN__ABORT_RPL_ULP, align 4
  %10 = call i32 @roundup2(i32 %9, i32 16)
  %11 = sext i32 %10 to i64
  %12 = add i64 %8, %11
  %13 = trunc i64 %12 to i32
  ret i32 %13
}

declare dso_local i32 @roundup2(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
