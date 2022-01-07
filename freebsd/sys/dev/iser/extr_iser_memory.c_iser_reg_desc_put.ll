; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_reg_desc_put.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iser/extr_iser_memory.c_iser_reg_desc_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_conn = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.fast_reg_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_conn*, %struct.fast_reg_descriptor*)* @iser_reg_desc_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iser_reg_desc_put(%struct.ib_conn* %0, %struct.fast_reg_descriptor* %1) #0 {
  %3 = alloca %struct.ib_conn*, align 8
  %4 = alloca %struct.fast_reg_descriptor*, align 8
  store %struct.ib_conn* %0, %struct.ib_conn** %3, align 8
  store %struct.fast_reg_descriptor* %1, %struct.fast_reg_descriptor** %4, align 8
  %5 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %6 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %5, i32 0, i32 0
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load %struct.fast_reg_descriptor*, %struct.fast_reg_descriptor** %4, align 8
  %9 = getelementptr inbounds %struct.fast_reg_descriptor, %struct.fast_reg_descriptor* %8, i32 0, i32 0
  %10 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %11 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @list_add(i32* %9, i32* %12)
  %14 = load %struct.ib_conn*, %struct.ib_conn** %3, align 8
  %15 = getelementptr inbounds %struct.ib_conn, %struct.ib_conn* %14, i32 0, i32 0
  %16 = call i32 @mtx_unlock(i32* %15)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
