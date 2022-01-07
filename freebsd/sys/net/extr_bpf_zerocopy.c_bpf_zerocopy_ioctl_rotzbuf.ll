; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_ioctl_rotzbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_ioctl_rotzbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.bpf_d = type { i64, i32, i32* }
%struct.bpf_zbuf = type { i32, i8* }
%struct.zbuf = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_zerocopy_ioctl_rotzbuf(%struct.thread* %0, %struct.bpf_d* %1, %struct.bpf_zbuf* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.bpf_d*, align 8
  %6 = alloca %struct.bpf_zbuf*, align 8
  %7 = alloca %struct.zbuf*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.bpf_d* %1, %struct.bpf_d** %5, align 8
  store %struct.bpf_zbuf* %2, %struct.bpf_zbuf** %6, align 8
  %8 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %6, align 8
  %9 = call i32 @bzero(%struct.bpf_zbuf* %8, i32 16)
  %10 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %11 = call i32 @BPFD_LOCK(%struct.bpf_d* %10)
  %12 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %13 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %39

16:                                               ; preds = %3
  %17 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %18 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %39

21:                                               ; preds = %16
  %22 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %23 = call i32 @ROTATE_BUFFERS(%struct.bpf_d* %22)
  %24 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %25 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %24, i32 0, i32 2
  %26 = load i32*, i32** %25, align 8
  %27 = bitcast i32* %26 to %struct.zbuf*
  store %struct.zbuf* %27, %struct.zbuf** %7, align 8
  %28 = load %struct.zbuf*, %struct.zbuf** %7, align 8
  %29 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %6, align 8
  %33 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %35 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %6, align 8
  %38 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %21, %16, %3
  %40 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %41 = call i32 @BPFD_UNLOCK(%struct.bpf_d* %40)
  ret i32 0
}

declare dso_local i32 @bzero(%struct.bpf_zbuf*, i32) #1

declare dso_local i32 @BPFD_LOCK(%struct.bpf_d*) #1

declare dso_local i32 @ROTATE_BUFFERS(%struct.bpf_d*) #1

declare dso_local i32 @BPFD_UNLOCK(%struct.bpf_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
