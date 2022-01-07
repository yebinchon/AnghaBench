; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aiocb_store_aiocb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_aio.c_aiocb_store_aiocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aiocb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aiocb**, %struct.aiocb*)* @aiocb_store_aiocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aiocb_store_aiocb(%struct.aiocb** %0, %struct.aiocb* %1) #0 {
  %3 = alloca %struct.aiocb**, align 8
  %4 = alloca %struct.aiocb*, align 8
  store %struct.aiocb** %0, %struct.aiocb*** %3, align 8
  store %struct.aiocb* %1, %struct.aiocb** %4, align 8
  %5 = load %struct.aiocb**, %struct.aiocb*** %3, align 8
  %6 = load %struct.aiocb*, %struct.aiocb** %4, align 8
  %7 = ptrtoint %struct.aiocb* %6 to i64
  %8 = call i32 @suword(%struct.aiocb** %5, i64 %7)
  ret i32 %8
}

declare dso_local i32 @suword(%struct.aiocb**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
