; ModuleID = '/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/i386/i386/extr_k6_mem.c_k6_mrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_softc = type { i32, %struct.mem_range_desc* }
%struct.mem_range_desc = type { i32, i32 }

@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@UWCCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_range_softc*, %struct.mem_range_desc*, i32*)* @k6_mrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @k6_mrset(%struct.mem_range_softc* %0, %struct.mem_range_desc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_range_softc*, align 8
  %6 = alloca %struct.mem_range_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_range_softc* %0, %struct.mem_range_softc** %5, align 8
  store %struct.mem_range_desc* %1, %struct.mem_range_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %129 [
    i32 128, label %14
    i32 129, label %82
  ]

14:                                               ; preds = %3
  %15 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %16 = call i32 @k6_mrmake(%struct.mem_range_desc* %15, i32* %9)
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %10, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %10, align 4
  store i32 %20, i32* %4, align 4
  br label %153

21:                                               ; preds = %14
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %77, %21
  %23 = load i32, i32* %11, align 4
  %24 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %25 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %80

28:                                               ; preds = %22
  %29 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %30 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %29, i32 0, i32 1
  %31 = load %struct.mem_range_desc*, %struct.mem_range_desc** %30, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %31, i64 %33
  %35 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %28
  %39 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %40 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %39, i32 0, i32 1
  %41 = load %struct.mem_range_desc*, %struct.mem_range_desc** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %41, i64 %43
  %45 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %46 = bitcast %struct.mem_range_desc* %44 to i8*
  %47 = bitcast %struct.mem_range_desc* %45 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %46, i8* align 4 %47, i64 8, i1 false)
  br label %131

48:                                               ; preds = %28
  %49 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %50 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %49, i32 0, i32 1
  %51 = load %struct.mem_range_desc*, %struct.mem_range_desc** %50, align 8
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %51, i64 %53
  %55 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %58 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %76

61:                                               ; preds = %48
  %62 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %63 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %62, i32 0, i32 1
  %64 = load %struct.mem_range_desc*, %struct.mem_range_desc** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %64, i64 %66
  %68 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %71 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %61
  %75 = load i32, i32* @EEXIST, align 4
  store i32 %75, i32* %4, align 4
  br label %153

76:                                               ; preds = %61, %48
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %22

80:                                               ; preds = %22
  %81 = load i32, i32* @ENOSPC, align 4
  store i32 %81, i32* %4, align 4
  br label %153

82:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %83

83:                                               ; preds = %124, %82
  %84 = load i32, i32* %11, align 4
  %85 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %86 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %127

89:                                               ; preds = %83
  %90 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %91 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %90, i32 0, i32 1
  %92 = load %struct.mem_range_desc*, %struct.mem_range_desc** %91, align 8
  %93 = load i32, i32* %11, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %92, i64 %94
  %96 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %99 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %97, %100
  br i1 %101, label %102, label %123

102:                                              ; preds = %89
  %103 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %104 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %103, i32 0, i32 1
  %105 = load %struct.mem_range_desc*, %struct.mem_range_desc** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %105, i64 %107
  %109 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %112 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %110, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %102
  %116 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %117 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %116, i32 0, i32 1
  %118 = load %struct.mem_range_desc*, %struct.mem_range_desc** %117, align 8
  %119 = load i32, i32* %11, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %118, i64 %120
  %122 = call i32 @bzero(%struct.mem_range_desc* %121, i32 8)
  br label %131

123:                                              ; preds = %102, %89
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %11, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %11, align 4
  br label %83

127:                                              ; preds = %83
  %128 = load i32, i32* @ENOENT, align 4
  store i32 %128, i32* %4, align 4
  br label %153

129:                                              ; preds = %3
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %130, i32* %4, align 4
  br label %153

131:                                              ; preds = %115, %38
  %132 = call i32 (...) @disable_intr()
  %133 = call i32 (...) @wbinvd()
  %134 = load i32, i32* @UWCCR, align 4
  %135 = call i32 @rdmsr(i32 %134)
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 32, %136
  %138 = shl i32 -1, %137
  %139 = xor i32 %138, -1
  %140 = load i32, i32* %8, align 4
  %141 = and i32 %140, %139
  store i32 %141, i32* %8, align 4
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* %11, align 4
  %144 = mul nsw i32 32, %143
  %145 = shl i32 %142, %144
  %146 = load i32, i32* %8, align 4
  %147 = or i32 %146, %145
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* @UWCCR, align 4
  %149 = load i32, i32* %8, align 4
  %150 = call i32 @wrmsr(i32 %148, i32 %149)
  %151 = call i32 (...) @wbinvd()
  %152 = call i32 (...) @enable_intr()
  store i32 0, i32* %4, align 4
  br label %153

153:                                              ; preds = %131, %129, %127, %80, %74, %19
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @k6_mrmake(%struct.mem_range_desc*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(%struct.mem_range_desc*, i32) #1

declare dso_local i32 @disable_intr(...) #1

declare dso_local i32 @wbinvd(...) #1

declare dso_local i32 @rdmsr(i32) #1

declare dso_local i32 @wrmsr(i32, i32) #1

declare dso_local i32 @enable_intr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
