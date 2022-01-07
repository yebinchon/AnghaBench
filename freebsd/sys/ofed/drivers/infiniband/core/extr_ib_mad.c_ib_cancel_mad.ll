; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_cancel_mad.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_ib_cancel_mad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent = type { i32 }
%struct.ib_mad_send_buf = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ib_cancel_mad(%struct.ib_mad_agent* %0, %struct.ib_mad_send_buf* %1) #0 {
  %3 = alloca %struct.ib_mad_agent*, align 8
  %4 = alloca %struct.ib_mad_send_buf*, align 8
  store %struct.ib_mad_agent* %0, %struct.ib_mad_agent** %3, align 8
  store %struct.ib_mad_send_buf* %1, %struct.ib_mad_send_buf** %4, align 8
  %5 = load %struct.ib_mad_agent*, %struct.ib_mad_agent** %3, align 8
  %6 = load %struct.ib_mad_send_buf*, %struct.ib_mad_send_buf** %4, align 8
  %7 = call i32 @ib_modify_mad(%struct.ib_mad_agent* %5, %struct.ib_mad_send_buf* %6, i32 0)
  ret void
}

declare dso_local i32 @ib_modify_mad(%struct.ib_mad_agent*, %struct.ib_mad_send_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
