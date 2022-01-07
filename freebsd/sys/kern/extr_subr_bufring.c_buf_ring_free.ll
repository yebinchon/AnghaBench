; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bufring.c_buf_ring_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_bufring.c_buf_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf_ring = type { i32 }
%struct.malloc_type = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @buf_ring_free(%struct.buf_ring* %0, %struct.malloc_type* %1) #0 {
  %3 = alloca %struct.buf_ring*, align 8
  %4 = alloca %struct.malloc_type*, align 8
  store %struct.buf_ring* %0, %struct.buf_ring** %3, align 8
  store %struct.malloc_type* %1, %struct.malloc_type** %4, align 8
  %5 = load %struct.buf_ring*, %struct.buf_ring** %3, align 8
  %6 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %7 = call i32 @free(%struct.buf_ring* %5, %struct.malloc_type* %6)
  ret void
}

declare dso_local i32 @free(%struct.buf_ring*, %struct.malloc_type*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
