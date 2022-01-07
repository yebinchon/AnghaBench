; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64, i64, i64, i64 }
%struct.zbuf = type { i32 }

@BPF_BUFMODE_ZBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"bpf_zerocopy_free: not in zbuf mode\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_zerocopy_free(%struct.bpf_d* %0) #0 {
  %2 = alloca %struct.bpf_d*, align 8
  %3 = alloca %struct.zbuf*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %2, align 8
  %4 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %5 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @BPF_BUFMODE_ZBUF, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @KASSERT(i32 %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %12 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.zbuf*
  store %struct.zbuf* %14, %struct.zbuf** %3, align 8
  %15 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %16 = icmp ne %struct.zbuf* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %19 = call i32 @zbuf_free(%struct.zbuf* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %22 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.zbuf*
  store %struct.zbuf* %24, %struct.zbuf** %3, align 8
  %25 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %26 = icmp ne %struct.zbuf* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %29 = call i32 @zbuf_free(%struct.zbuf* %28)
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.bpf_d*, %struct.bpf_d** %2, align 8
  %32 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.zbuf*
  store %struct.zbuf* %34, %struct.zbuf** %3, align 8
  %35 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %36 = icmp ne %struct.zbuf* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.zbuf*, %struct.zbuf** %3, align 8
  %39 = call i32 @zbuf_free(%struct.zbuf* %38)
  br label %40

40:                                               ; preds = %37, %30
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @zbuf_free(%struct.zbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
