; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_zbuf_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_bpf_zerocopy.c_zbuf_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vm_map }
%struct.vm_map = type { i32 }
%struct.zbuf = type { i32, i64, i64, %struct.bpf_zbuf_header*, i32** }
%struct.bpf_zbuf_header = type { i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@BPF_MAX_PAGES = common dso_local global i64 0, align 8
@M_BPF = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, i32, i64, %struct.zbuf**)* @zbuf_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zbuf_setup(%struct.thread* %0, i32 %1, i64 %2, %struct.zbuf** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.zbuf**, align 8
  %10 = alloca %struct.zbuf*, align 8
  %11 = alloca %struct.vm_map*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store %struct.zbuf** %3, %struct.zbuf*** %9, align 8
  %14 = load %struct.zbuf**, %struct.zbuf*** %9, align 8
  store %struct.zbuf* null, %struct.zbuf** %14, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PAGE_MASK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %5, align 4
  br label %132

21:                                               ; preds = %4
  %22 = load i64, i64* %8, align 8
  %23 = load i32, i32* @PAGE_MASK, align 4
  %24 = sext i32 %23 to i64
  %25 = and i64 %22, %24
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %5, align 4
  br label %132

29:                                               ; preds = %21
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @PAGE_SIZE, align 8
  %32 = udiv i64 %30, %31
  %33 = load i64, i64* @BPF_MAX_PAGES, align 8
  %34 = icmp ugt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %5, align 4
  br label %132

37:                                               ; preds = %29
  store i32 0, i32* %12, align 4
  %38 = load i32, i32* @M_BPF, align 4
  %39 = load i32, i32* @M_ZERO, align 4
  %40 = load i32, i32* @M_WAITOK, align 4
  %41 = or i32 %39, %40
  %42 = call i8* @malloc(i32 40, i32 %38, i32 %41)
  %43 = bitcast i8* %42 to %struct.zbuf*
  store %struct.zbuf* %43, %struct.zbuf** %10, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %46 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %49 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @PAGE_SIZE, align 8
  %52 = udiv i64 %50, %51
  %53 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %54 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %56 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = mul i64 8, %57
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* @M_BPF, align 4
  %61 = load i32, i32* @M_ZERO, align 4
  %62 = load i32, i32* @M_WAITOK, align 4
  %63 = or i32 %61, %62
  %64 = call i8* @malloc(i32 %59, i32 %60, i32 %63)
  %65 = bitcast i8* %64 to i32**
  %66 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %67 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %66, i32 0, i32 4
  store i32** %65, i32*** %67, align 8
  %68 = load %struct.thread*, %struct.thread** %6, align 8
  %69 = getelementptr inbounds %struct.thread, %struct.thread* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store %struct.vm_map* %73, %struct.vm_map** %11, align 8
  store i32 0, i32* %13, align 4
  br label %74

74:                                               ; preds = %109, %37
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %78 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = icmp ult i64 %76, %79
  br i1 %80, label %81, label %112

81:                                               ; preds = %74
  %82 = load %struct.vm_map*, %struct.vm_map** %11, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = load i64, i64* @PAGE_SIZE, align 8
  %88 = mul i64 %86, %87
  %89 = add i64 %84, %88
  %90 = trunc i64 %89 to i32
  %91 = call i32* @zbuf_sfbuf_get(%struct.vm_map* %82, i32 %90)
  %92 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %93 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %92, i32 0, i32 4
  %94 = load i32**, i32*** %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32*, i32** %94, i64 %96
  store i32* %91, i32** %97, align 8
  %98 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %99 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %98, i32 0, i32 4
  %100 = load i32**, i32*** %99, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32*, i32** %100, i64 %102
  %104 = load i32*, i32** %103, align 8
  %105 = icmp eq i32* %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %81
  %107 = load i32, i32* @EFAULT, align 4
  store i32 %107, i32* %12, align 4
  br label %128

108:                                              ; preds = %81
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %13, align 4
  br label %74

112:                                              ; preds = %74
  %113 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %114 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %113, i32 0, i32 4
  %115 = load i32**, i32*** %114, align 8
  %116 = getelementptr inbounds i32*, i32** %115, i64 0
  %117 = load i32*, i32** %116, align 8
  %118 = call i64 @sf_buf_kva(i32* %117)
  %119 = inttoptr i64 %118 to %struct.bpf_zbuf_header*
  %120 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %121 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %120, i32 0, i32 3
  store %struct.bpf_zbuf_header* %119, %struct.bpf_zbuf_header** %121, align 8
  %122 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %123 = getelementptr inbounds %struct.zbuf, %struct.zbuf* %122, i32 0, i32 3
  %124 = load %struct.bpf_zbuf_header*, %struct.bpf_zbuf_header** %123, align 8
  %125 = call i32 @bzero(%struct.bpf_zbuf_header* %124, i32 4)
  %126 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %127 = load %struct.zbuf**, %struct.zbuf*** %9, align 8
  store %struct.zbuf* %126, %struct.zbuf** %127, align 8
  store i32 0, i32* %5, align 4
  br label %132

128:                                              ; preds = %106
  %129 = load %struct.zbuf*, %struct.zbuf** %10, align 8
  %130 = call i32 @zbuf_free(%struct.zbuf* %129)
  %131 = load i32, i32* %12, align 4
  store i32 %131, i32* %5, align 4
  br label %132

132:                                              ; preds = %128, %112, %35, %27, %19
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32* @zbuf_sfbuf_get(%struct.vm_map*, i32) #1

declare dso_local i64 @sf_buf_kva(i32*) #1

declare dso_local i32 @bzero(%struct.bpf_zbuf_header*, i32) #1

declare dso_local i32 @zbuf_free(%struct.zbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
