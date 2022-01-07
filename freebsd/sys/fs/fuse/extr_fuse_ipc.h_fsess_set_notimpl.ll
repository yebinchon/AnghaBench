; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fsess_set_notimpl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_ipc.h_fsess_set_notimpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.fuse_data = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mount*, i32)* @fsess_set_notimpl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsess_set_notimpl(%struct.mount* %0, i32 %1) #0 {
  %3 = alloca %struct.mount*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.fuse_data*, align 8
  store %struct.mount* %0, %struct.mount** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mount*, %struct.mount** %3, align 8
  %7 = call %struct.fuse_data* @fuse_get_mpdata(%struct.mount* %6)
  store %struct.fuse_data* %7, %struct.fuse_data** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = load %struct.fuse_data*, %struct.fuse_data** %5, align 8
  %12 = getelementptr inbounds %struct.fuse_data, %struct.fuse_data* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = or i64 %13, %10
  store i64 %14, i64* %12, align 8
  ret void
}

declare dso_local %struct.fuse_data* @fuse_get_mpdata(%struct.mount*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
