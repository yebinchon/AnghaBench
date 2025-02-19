; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio.c__vq_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio.c__vq_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_desc = type { i32, i32, i32 }
%struct.iovec = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, %struct.vring_desc*, %struct.iovec*, i32, i32*)* @_vq_record to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_vq_record(i32 %0, i32 %1, %struct.vring_desc* %2, %struct.iovec* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vring_desc*, align 8
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.vring_desc* %2, %struct.vring_desc** %9, align 8
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = load i32, i32* %11, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %6
  br label %53

17:                                               ; preds = %6
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.vring_desc*, %struct.vring_desc** %9, align 8
  %20 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %19, i32 0, i32 2
  %21 = load volatile i32, i32* %20, align 4
  %22 = call i32 @be64toh(i32 %21)
  %23 = load %struct.vring_desc*, %struct.vring_desc** %9, align 8
  %24 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %23, i32 0, i32 1
  %25 = load volatile i32, i32* %24, align 4
  %26 = call i32 @be32toh(i32 %25)
  %27 = call i32 @paddr_map(i32 %18, i32 %22, i32 %26)
  %28 = load %struct.iovec*, %struct.iovec** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.iovec, %struct.iovec* %28, i64 %30
  %32 = getelementptr inbounds %struct.iovec, %struct.iovec* %31, i32 0, i32 1
  store i32 %27, i32* %32, align 4
  %33 = load %struct.vring_desc*, %struct.vring_desc** %9, align 8
  %34 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %33, i32 0, i32 1
  %35 = load volatile i32, i32* %34, align 4
  %36 = call i32 @be32toh(i32 %35)
  %37 = load %struct.iovec*, %struct.iovec** %10, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.iovec, %struct.iovec* %37, i64 %39
  %41 = getelementptr inbounds %struct.iovec, %struct.iovec* %40, i32 0, i32 0
  store i32 %36, i32* %41, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %53

44:                                               ; preds = %17
  %45 = load %struct.vring_desc*, %struct.vring_desc** %9, align 8
  %46 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %45, i32 0, i32 0
  %47 = load volatile i32, i32* %46, align 4
  %48 = call i32 @be16toh(i32 %47)
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  store i32 %48, i32* %52, align 4
  br label %53

53:                                               ; preds = %16, %44, %17
  ret void
}

declare dso_local i32 @paddr_map(i32, i32, i32) #1

declare dso_local i32 @be64toh(i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @be16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
