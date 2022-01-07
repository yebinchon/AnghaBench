; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_ioctl_getzmax.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_ioctl_getzmax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.bpf_d = type { i64 }

@BPF_BUFMODE_ZBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"bpf_zerocopy_ioctl_getzmax: not in zbuf mode\00", align 1
@BPF_MAX_PAGES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_zerocopy_ioctl_getzmax(%struct.thread* %0, %struct.bpf_d* %1, i64* %2) #0 {
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.bpf_d*, align 8
  %6 = alloca i64*, align 8
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.bpf_d* %1, %struct.bpf_d** %5, align 8
  store i64* %2, i64** %6, align 8
  %7 = load %struct.bpf_d*, %struct.bpf_d** %5, align 8
  %8 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BPF_BUFMODE_ZBUF, align 8
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = load i64, i64* @BPF_MAX_PAGES, align 8
  %15 = load i64, i64* @PAGE_SIZE, align 8
  %16 = mul i64 %14, %15
  %17 = load i64*, i64** %6, align 8
  store i64 %16, i64* %17, align 8
  ret i32 0
}

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
