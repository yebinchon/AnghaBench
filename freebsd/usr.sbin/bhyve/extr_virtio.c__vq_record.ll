; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c__vq_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_virtio.c__vq_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_desc = type { i32, i32, i32 }
%struct.vmctx = type { i32 }
%struct.iovec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.virtio_desc*, %struct.vmctx*, %struct.iovec*, i32, i32*)* @_vq_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vq_record(i32 %0, %struct.virtio_desc* %1, %struct.vmctx* %2, %struct.iovec* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.virtio_desc*, align 8
  %9 = alloca %struct.vmctx*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.virtio_desc* %1, %struct.virtio_desc** %8, align 8
  store %struct.vmctx* %2, %struct.vmctx** %9, align 8
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %49

17:                                               ; preds = %6
  %18 = load %struct.vmctx*, %struct.vmctx** %9, align 8
  %19 = load %struct.virtio_desc*, %struct.virtio_desc** %8, align 8
  %20 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %19, i32 0, i32 2
  %21 = load volatile i32, i32* %20, align 4
  %22 = load %struct.virtio_desc*, %struct.virtio_desc** %8, align 8
  %23 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %22, i32 0, i32 1
  %24 = load volatile i32, i32* %23, align 4
  %25 = call i32 @paddr_guest2host(%struct.vmctx* %18, i32 %21, i32 %24)
  %26 = load %struct.iovec*, %struct.iovec** %10, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.iovec, %struct.iovec* %26, i64 %28
  %30 = getelementptr inbounds %struct.iovec, %struct.iovec* %29, i32 0, i32 1
  store i32 %25, i32* %30, align 4
  %31 = load %struct.virtio_desc*, %struct.virtio_desc** %8, align 8
  %32 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %31, i32 0, i32 1
  %33 = load volatile i32, i32* %32, align 4
  %34 = load %struct.iovec*, %struct.iovec** %10, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.iovec, %struct.iovec* %34, i64 %36
  %38 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i32 0, i32 0
  store i32 %33, i32* %38, align 4
  %39 = load i32*, i32** %12, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %17
  %42 = load %struct.virtio_desc*, %struct.virtio_desc** %8, align 8
  %43 = getelementptr inbounds %struct.virtio_desc, %struct.virtio_desc* %42, i32 0, i32 0
  %44 = load volatile i32, i32* %43, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  store i32 %44, i32* %48, align 4
  br label %49

49:                                               ; preds = %16, %41, %17
  ret void
}

declare dso_local i32 @paddr_guest2host(%struct.vmctx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
