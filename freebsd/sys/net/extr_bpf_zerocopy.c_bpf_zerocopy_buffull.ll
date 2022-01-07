; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_buffull.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_buffull.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64, i32, i64 }
%struct.zbuf = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@BPF_BUFMODE_ZBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"bpf_zerocopy_buffull: not in zbuf mode\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"bpf_zerocopy_buffull: zb == NULL\00", align 1
@ZBUF_FLAG_ASSIGNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_zerocopy_buffull(%struct.bpf_d* %0) #0 {
  %2 = alloca %struct.bpf_d*, align 8
  %3 = alloca %struct.zbuf*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %2, align 8
  %4 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %5 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BPF_BUFMODE_ZBUF, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.zbuf*
  store %struct.zbuf* %14, %struct.zbuf** %3, align 8
  %15 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %16 = icmp ne %struct.zbuf* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @KASSERT(i32 %17, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %20 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @ZBUF_FLAG_ASSIGNED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %1
  %26 = load i32, i32* @ZBUF_FLAG_ASSIGNED, align 4
  %27 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %28 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %32 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %35 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i32 %33, i32* %37, align 4
  %38 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %39 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @atomic_add_rel_int(i32* %41, i32 1)
  br label %43

43:                                               ; preds = %25, %1
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_add_rel_int(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
