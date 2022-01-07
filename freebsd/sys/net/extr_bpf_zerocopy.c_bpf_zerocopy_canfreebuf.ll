; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_canfreebuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_canfreebuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64, i64 }
%struct.zbuf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@BPF_BUFMODE_ZBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"bpf_zerocopy_canfreebuf: not in zbuf mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_zerocopy_canfreebuf(%struct.bpf_d* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bpf_d*, align 8
  %4 = alloca %struct.zbuf*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %3, align 8
  %5 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %6 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @BPF_BUFMODE_ZBUF, align 8
  %9 = icmp eq i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.bpf_d*, %struct.bpf_d** %3, align 8
  %13 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.zbuf*
  store %struct.zbuf* %15, %struct.zbuf** %4, align 8
  %16 = load %struct.zbuf*, %struct.zbuf** %4, align 8
  %17 = icmp eq %struct.zbuf* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

19:                                               ; preds = %1
  %20 = load %struct.zbuf*, %struct.zbuf** %4, align 8
  %21 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.zbuf*, %struct.zbuf** %4, align 8
  %26 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = call i64 @atomic_load_acq_int(i32* %28)
  %30 = icmp eq i64 %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %33

32:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %31, %18
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
