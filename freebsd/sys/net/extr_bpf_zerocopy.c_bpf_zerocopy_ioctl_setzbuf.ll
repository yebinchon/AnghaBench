; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_ioctl_setzbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_bpf_zerocopy_ioctl_setzbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.bpf_d = type { i64, i64, i64, i64, i32*, i32*, i32*, i32* }
%struct.bpf_zbuf = type { i64, i32*, i32* }
%struct.zbuf = type { i32 }

@BPF_BUFMODE_ZBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"bpf_zerocopy_ioctl_setzbuf: not in zbuf mode\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_zerocopy_ioctl_setzbuf(%struct.thread* %0, %struct.bpf_d* %1, %struct.bpf_zbuf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.bpf_d*, align 8
  %7 = alloca %struct.bpf_zbuf*, align 8
  %8 = alloca %struct.zbuf*, align 8
  %9 = alloca %struct.zbuf*, align 8
  %10 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.bpf_d* %1, %struct.bpf_d** %6, align 8
  store %struct.bpf_zbuf* %2, %struct.bpf_zbuf** %7, align 8
  %11 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %12 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @BPF_BUFMODE_ZBUF, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @KASSERT(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %19 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %3
  %23 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %24 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %29

27:                                               ; preds = %22, %3
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %119

29:                                               ; preds = %22
  %30 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %31 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %4, align 4
  br label %119

36:                                               ; preds = %29
  %37 = load %struct.thread*, %struct.thread** %5, align 8
  %38 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %39 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = ptrtoint i32* %40 to i32
  %42 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %43 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @zbuf_setup(%struct.thread* %37, i32 %41, i64 %44, %struct.zbuf** %8)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %119

50:                                               ; preds = %36
  %51 = load %struct.thread*, %struct.thread** %5, align 8
  %52 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %53 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = ptrtoint i32* %54 to i32
  %56 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %57 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @zbuf_setup(%struct.thread* %51, i32 %55, i64 %58, %struct.zbuf** %9)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.zbuf*, %struct.zbuf** %8, align 8
  %64 = call i32 @zbuf_free(%struct.zbuf* %63)
  %65 = load i32, i32* %10, align 4
  store i32 %65, i32* %4, align 4
  br label %119

66:                                               ; preds = %50
  %67 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %68 = call i32 @BPFD_LOCK(%struct.bpf_d* %67)
  %69 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %70 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %69, i32 0, i32 7
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %88, label %73

73:                                               ; preds = %66
  %74 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %75 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = icmp ne i32* %76, null
  br i1 %77, label %88, label %78

78:                                               ; preds = %73
  %79 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %80 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %79, i32 0, i32 5
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %88, label %83

83:                                               ; preds = %78
  %84 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %85 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %96

88:                                               ; preds = %83, %78, %73, %66
  %89 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %90 = call i32 @BPFD_UNLOCK(%struct.bpf_d* %89)
  %91 = load %struct.zbuf*, %struct.zbuf** %8, align 8
  %92 = call i32 @zbuf_free(%struct.zbuf* %91)
  %93 = load %struct.zbuf*, %struct.zbuf** %9, align 8
  %94 = call i32 @zbuf_free(%struct.zbuf* %93)
  %95 = load i32, i32* @EINVAL, align 4
  store i32 %95, i32* %4, align 4
  br label %119

96:                                               ; preds = %83
  %97 = load %struct.zbuf*, %struct.zbuf** %9, align 8
  %98 = bitcast %struct.zbuf* %97 to i8*
  %99 = bitcast i8* %98 to i32*
  %100 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %101 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %100, i32 0, i32 5
  store i32* %99, i32** %101, align 8
  %102 = load %struct.zbuf*, %struct.zbuf** %8, align 8
  %103 = bitcast %struct.zbuf* %102 to i8*
  %104 = bitcast i8* %103 to i32*
  %105 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %106 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %105, i32 0, i32 4
  store i32* %104, i32** %106, align 8
  %107 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %108 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %107, i32 0, i32 3
  store i64 0, i64* %108, align 8
  %109 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %110 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %109, i32 0, i32 2
  store i64 0, i64* %110, align 8
  %111 = load %struct.bpf_zbuf*, %struct.bpf_zbuf** %7, align 8
  %112 = getelementptr inbounds %struct.bpf_zbuf, %struct.bpf_zbuf* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = sub i64 %113, 4
  %115 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %116 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load %struct.bpf_d*, %struct.bpf_d** %6, align 8
  %118 = call i32 @BPFD_UNLOCK(%struct.bpf_d* %117)
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %96, %88, %62, %48, %34, %27
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @zbuf_setup(%struct.thread*, i32, i64, %struct.zbuf**) #1

declare dso_local i32 @zbuf_free(%struct.zbuf*) #1

declare dso_local i32 @BPFD_LOCK(%struct.bpf_d*) #1

declare dso_local i32 @BPFD_UNLOCK(%struct.bpf_d*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
