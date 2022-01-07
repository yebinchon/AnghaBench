; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mem.c_ppc_mrset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powerpc/extr_mem.c_ppc_mrset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_range_softc = type { i32, %struct.mem_range_desc* }
%struct.mem_range_desc = type { i32, i32, i32 }

@MDF_ACTIVE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_range_softc*, %struct.mem_range_desc*, i32*)* @ppc_mrset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ppc_mrset(%struct.mem_range_softc* %0, %struct.mem_range_desc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_range_softc*, align 8
  %6 = alloca %struct.mem_range_desc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mem_range_softc* %0, %struct.mem_range_softc** %5, align 8
  store %struct.mem_range_desc* %1, %struct.mem_range_desc** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %129 [
    i32 128, label %11
    i32 129, label %82
  ]

11:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %77, %11
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %15 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %12
  %19 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %20 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %19, i32 0, i32 1
  %21 = load %struct.mem_range_desc*, %struct.mem_range_desc** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %21, i64 %23
  %25 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %18
  %29 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %30 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %29, i32 0, i32 1
  %31 = load %struct.mem_range_desc*, %struct.mem_range_desc** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %31, i64 %33
  %35 = load %struct.mem_range_desc*, %struct.mem_range_desc** %6, align 8
  %36 = bitcast %struct.mem_range_desc* %34 to i8*
  %37 = bitcast %struct.mem_range_desc* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %36, i8* align 4 %37, i64 12, i1 false)
  %38 = load i32, i32* @MDF_ACTIVE, align 4
  %39 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %40 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %39, i32 0, i32 1
  %41 = load %struct.mem_range_desc*, %struct.mem_range_desc** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %41, i64 %43
  %45 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %38
  store i32 %47, i32* %45, align 4
  store i32 0, i32* %4, align 4
  br label %131

48:                                               ; preds = %18
  %49 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %50 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %49, i32 0, i32 1
  %51 = load %struct.mem_range_desc*, %struct.mem_range_desc** %50, align 8
  %52 = load i32, i32* %8, align 4
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
  %65 = load i32, i32* %8, align 4
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
  br label %131

76:                                               ; preds = %61, %48
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %8, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %8, align 4
  br label %12

80:                                               ; preds = %12
  %81 = load i32, i32* @ENOSPC, align 4
  store i32 %81, i32* %4, align 4
  br label %131

82:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %124, %82
  %84 = load i32, i32* %8, align 4
  %85 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %86 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp slt i32 %84, %87
  br i1 %88, label %89, label %127

89:                                               ; preds = %83
  %90 = load %struct.mem_range_softc*, %struct.mem_range_softc** %5, align 8
  %91 = getelementptr inbounds %struct.mem_range_softc, %struct.mem_range_softc* %90, i32 0, i32 1
  %92 = load %struct.mem_range_desc*, %struct.mem_range_desc** %91, align 8
  %93 = load i32, i32* %8, align 4
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
  %106 = load i32, i32* %8, align 4
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
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.mem_range_desc, %struct.mem_range_desc* %118, i64 %120
  %122 = call i32 @bzero(%struct.mem_range_desc* %121, i32 12)
  store i32 0, i32* %4, align 4
  br label %131

123:                                              ; preds = %102, %89
  br label %124

124:                                              ; preds = %123
  %125 = load i32, i32* %8, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %8, align 4
  br label %83

127:                                              ; preds = %83
  %128 = load i32, i32* @ENOENT, align 4
  store i32 %128, i32* %4, align 4
  br label %131

129:                                              ; preds = %3
  %130 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %130, i32* %4, align 4
  br label %131

131:                                              ; preds = %129, %127, %115, %80, %74, %28
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bzero(%struct.mem_range_desc*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
