; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_append_bytes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_append_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i64 }
%struct.zbuf = type { i32, i32, i32* }

@BPF_BUFMODE_ZBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"bpf_zerocopy_append_bytes: not in zbuf mode\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"bpf_zerocopy_append_bytes: NULL buf\00", align 1
@ZBUF_FLAG_ASSIGNED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"bpf_zerocopy_append_bytes: ZBUF_FLAG_ASSIGNED\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"bpf_zerocopy_append_bytes: page overflow (%d p %d np)\0A\00", align 1
@.str.4 = private unnamed_addr constant [53 x i8] c"bpf_zerocopy_append_bytes: page offset overflow (%d)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bpf_zerocopy_append_bytes(%struct.bpf_d* %0, i32* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.bpf_d*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.zbuf*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %17 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BPF_BUFMODE_ZBUF, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i8*, i8** %9, align 8
  %28 = bitcast i8* %27 to i32*
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = bitcast i32* %29 to %struct.zbuf*
  store %struct.zbuf* %30, %struct.zbuf** %15, align 8
  %31 = load %struct.zbuf*, %struct.zbuf** %15, align 8
  %32 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ZBUF_FLAG_ASSIGNED, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  %37 = zext i1 %36 to i32
  %38 = call i32 @KASSERT(i32 %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = add i64 %40, 4
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = sdiv i32 %43, %44
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = srem i32 %46, %47
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %95, %5
  %50 = load i32, i32* %10, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %111

52:                                               ; preds = %49
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.zbuf*, %struct.zbuf** %15, align 8
  %55 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp slt i32 %53, %56
  %58 = zext i1 %57 to i32
  %59 = load i32, i32* %12, align 4
  %60 = load %struct.zbuf*, %struct.zbuf** %15, align 8
  %61 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = call i32 @KASSERT(i32 %58, i8* %64)
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* @PAGE_SIZE, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub nsw i32 %67, %68
  %70 = call i32 @min(i32 %66, i32 %69)
  store i32 %70, i32* %11, align 4
  %71 = load i32*, i32** %14, align 8
  %72 = load %struct.zbuf*, %struct.zbuf** %15, align 8
  %73 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i64 @sf_buf_kva(i32 %78)
  %80 = inttoptr i64 %79 to i32*
  %81 = load i32, i32* %13, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %11, align 4
  %85 = call i32 @bcopy(i32* %71, i32* %83, i32 %84)
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, %86
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @PAGE_SIZE, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %52
  store i32 0, i32* %13, align 4
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  br label %95

95:                                               ; preds = %92, %52
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* @PAGE_SIZE, align 4
  %98 = icmp slt i32 %96, %97
  %99 = zext i1 %98 to i32
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = inttoptr i64 %101 to i8*
  %103 = call i32 @KASSERT(i32 %99, i8* %102)
  %104 = load i32, i32* %11, align 4
  %105 = load i32, i32* %10, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load i32*, i32** %14, align 8
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  store i32* %110, i32** %14, align 8
  br label %49

111:                                              ; preds = %49
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @sf_buf_kva(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
