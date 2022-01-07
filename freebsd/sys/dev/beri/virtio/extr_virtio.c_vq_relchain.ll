; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio.c_vq_relchain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio.c_vq_relchain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vqueue_info = type { i64, i32, %struct.TYPE_2__*, %struct.vring_used* }
%struct.TYPE_2__ = type { i32* }
%struct.vring_used = type { i32, %struct.vring_used_elem* }
%struct.vring_used_elem = type { i8*, i8* }
%struct.iovec = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vq_relchain(%struct.vqueue_info* %0, %struct.iovec* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.vqueue_info*, align 8
  %6 = alloca %struct.iovec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.vring_used_elem*, align 8
  %10 = alloca %struct.vring_used*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.vqueue_info* %0, %struct.vqueue_info** %5, align 8
  store %struct.iovec* %1, %struct.iovec** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %15 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %16 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %17, 1
  store i64 %18, i64* %13, align 8
  %19 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %20 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %19, i32 0, i32 3
  %21 = load %struct.vring_used*, %struct.vring_used** %20, align 8
  store %struct.vring_used* %21, %struct.vring_used** %10, align 8
  %22 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %23 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.vqueue_info*, %struct.vqueue_info** %5, align 8
  %28 = getelementptr inbounds %struct.vqueue_info, %struct.vqueue_info* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 8
  %31 = sext i32 %29 to i64
  %32 = load i64, i64* %13, align 8
  %33 = and i64 %31, %32
  %34 = getelementptr inbounds i32, i32* %26, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @be16toh(i32 %35)
  store i64 %36, i64* %11, align 8
  %37 = load %struct.vring_used*, %struct.vring_used** %10, align 8
  %38 = getelementptr inbounds %struct.vring_used, %struct.vring_used* %37, i32 0, i32 0
  %39 = load volatile i32, i32* %38, align 8
  %40 = call i64 @be16toh(i32 %39)
  store i64 %40, i64* %12, align 8
  %41 = load %struct.vring_used*, %struct.vring_used** %10, align 8
  %42 = getelementptr inbounds %struct.vring_used, %struct.vring_used* %41, i32 0, i32 1
  %43 = load volatile %struct.vring_used_elem*, %struct.vring_used_elem** %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = add i64 %44, 1
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %13, align 8
  %47 = and i64 %44, %46
  %48 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %43, i64 %47
  store %struct.vring_used_elem* %48, %struct.vring_used_elem** %9, align 8
  %49 = load i64, i64* %11, align 8
  %50 = call i8* @htobe32(i64 %49)
  %51 = load %struct.vring_used_elem*, %struct.vring_used_elem** %9, align 8
  %52 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %51, i32 0, i32 1
  store volatile i8* %50, i8** %52, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i8* @htobe32(i64 %53)
  %55 = load %struct.vring_used_elem*, %struct.vring_used_elem** %9, align 8
  %56 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %55, i32 0, i32 0
  store volatile i8* %54, i8** %56, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @htobe16(i64 %57)
  %59 = load %struct.vring_used*, %struct.vring_used** %10, align 8
  %60 = getelementptr inbounds %struct.vring_used, %struct.vring_used* %59, i32 0, i32 0
  store volatile i32 %58, i32* %60, align 8
  store i32 0, i32* %14, align 4
  br label %61

61:                                               ; preds = %80, %4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %61
  %66 = load %struct.iovec*, %struct.iovec** %6, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.iovec, %struct.iovec* %66, i64 %68
  %70 = getelementptr inbounds %struct.iovec, %struct.iovec* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %struct.iovec*, %struct.iovec** %6, align 8
  %74 = load i32, i32* %14, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.iovec, %struct.iovec* %73, i64 %75
  %77 = getelementptr inbounds %struct.iovec, %struct.iovec* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @paddr_unmap(i8* %72, i32 %78)
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %14, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %14, align 4
  br label %61

83:                                               ; preds = %61
  ret void
}

declare dso_local i64 @be16toh(i32) #1

declare dso_local i8* @htobe32(i64) #1

declare dso_local i32 @htobe16(i64) #1

declare dso_local i32 @paddr_unmap(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
