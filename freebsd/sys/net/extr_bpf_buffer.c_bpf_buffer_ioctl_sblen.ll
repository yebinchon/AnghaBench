; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_buffer.c_bpf_buffer_ioctl_sblen.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_buffer.c_bpf_buffer_ioctl_sblen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bpf_d = type { i8*, i8*, i64, i64, i32*, i64, i32* }

@bpf_maxbufsize = common dso_local global i64 0, align 8
@BPF_MINBUFSIZE = common dso_local global i64 0, align 8
@M_BPF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_buffer_ioctl_sblen(%struct.bpf_d* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bpf_d*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.bpf_d* %0, %struct.bpf_d** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i64*, i64** %5, align 8
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load i64, i64* @bpf_maxbufsize, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i64, i64* @bpf_maxbufsize, align 8
  store i64 %15, i64* %6, align 8
  %16 = load i64*, i64** %5, align 8
  store i64 %15, i64* %16, align 8
  br label %25

17:                                               ; preds = %2
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* @BPF_MINBUFSIZE, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* @BPF_MINBUFSIZE, align 8
  store i64 %22, i64* %6, align 8
  %23 = load i64*, i64** %5, align 8
  store i64 %22, i64* %23, align 8
  br label %24

24:                                               ; preds = %21, %17
  br label %25

25:                                               ; preds = %24, %14
  %26 = load i64, i64* %6, align 8
  %27 = load i32, i32* @M_BPF, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = call i64 @malloc(i64 %26, i32 %27, i32 %28)
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %7, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load i32, i32* @M_BPF, align 4
  %33 = load i32, i32* @M_WAITOK, align 4
  %34 = call i64 @malloc(i64 %31, i32 %32, i32 %33)
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %8, align 8
  %36 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %37 = call i32 @BPFD_LOCK(%struct.bpf_d* %36)
  %38 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %39 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %38, i32 0, i32 6
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %25
  %43 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %44 = call i32 @BPFD_UNLOCK(%struct.bpf_d* %43)
  %45 = load i8*, i8** %7, align 8
  %46 = load i32, i32* @M_BPF, align 4
  %47 = call i32 @free(i8* %45, i32 %46)
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* @M_BPF, align 4
  %50 = call i32 @free(i8* %48, i32 %49)
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %3, align 4
  br label %92

52:                                               ; preds = %25
  %53 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %54 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %59 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i32, i32* @M_BPF, align 4
  %62 = call i32 @free(i8* %60, i32 %61)
  br label %63

63:                                               ; preds = %57, %52
  %64 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %65 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %64, i32 0, i32 1
  %66 = load i8*, i8** %65, align 8
  %67 = icmp ne i8* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %70 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = load i32, i32* @M_BPF, align 4
  %73 = call i32 @free(i8* %71, i32 %72)
  br label %74

74:                                               ; preds = %68, %63
  %75 = load i64, i64* %6, align 8
  %76 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %77 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %76, i32 0, i32 5
  store i64 %75, i64* %77, align 8
  %78 = load i8*, i8** %7, align 8
  %79 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %80 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = load i8*, i8** %8, align 8
  %82 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %83 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %85 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %84, i32 0, i32 4
  store i32* null, i32** %85, align 8
  %86 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %87 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %86, i32 0, i32 3
  store i64 0, i64* %87, align 8
  %88 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %89 = getelementptr inbounds %struct.bpf_d, %struct.bpf_d* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.bpf_d*, %struct.bpf_d** %4, align 8
  %91 = call i32 @BPFD_UNLOCK(%struct.bpf_d* %90)
  store i32 0, i32* %3, align 4
  br label %92

92:                                               ; preds = %74, %42
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @malloc(i64, i32, i32) #1

declare dso_local i32 @BPFD_LOCK(%struct.bpf_d*) #1

declare dso_local i32 @BPFD_UNLOCK(%struct.bpf_d*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
