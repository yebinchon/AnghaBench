; ModuleID = '/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_fsync_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/fs/fuse/extr_fuse_internal.c_fuse_internal_fsync_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_ticket = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }
%struct.uio = type { i32 }

@ENOSYS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_internal_fsync_callback(%struct.fuse_ticket* %0, %struct.uio* %1) #0 {
  %3 = alloca %struct.fuse_ticket*, align 8
  %4 = alloca %struct.uio*, align 8
  store %struct.fuse_ticket* %0, %struct.fuse_ticket** %3, align 8
  store %struct.uio* %1, %struct.uio** %4, align 8
  %5 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %6 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ENOSYS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %20

11:                                               ; preds = %2
  %12 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %13 = getelementptr inbounds %struct.fuse_ticket, %struct.fuse_ticket* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fuse_ticket*, %struct.fuse_ticket** %3, align 8
  %18 = call i32 @fticket_opcode(%struct.fuse_ticket* %17)
  %19 = call i32 @fsess_set_notimpl(i32 %16, i32 %18)
  br label %20

20:                                               ; preds = %11, %2
  ret i32 0
}

declare dso_local i32 @fsess_set_notimpl(i32, i32) #1

declare dso_local i32 @fticket_opcode(%struct.fuse_ticket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
