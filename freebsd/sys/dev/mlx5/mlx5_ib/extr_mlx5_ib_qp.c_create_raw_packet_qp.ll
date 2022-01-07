; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_create_raw_packet_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_18__, %struct.TYPE_13__, %struct.TYPE_10__, %struct.mlx5_ib_raw_packet_qp }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.mlx5_ib_raw_packet_qp = type { %struct.mlx5_ib_rq, %struct.mlx5_ib_sq }
%struct.mlx5_ib_rq = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.mlx5_ib_qp* }
%struct.TYPE_16__ = type { i32 }
%struct.mlx5_ib_sq = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__, %struct.mlx5_ib_qp* }
%struct.TYPE_14__ = type { i32 }
%struct.ib_pd = type { %struct.ib_uobject* }
%struct.ib_uobject = type { %struct.ib_ucontext* }
%struct.ib_ucontext = type { i32 }
%struct.mlx5_ib_ucontext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*, i32*, %struct.ib_pd*)* @create_raw_packet_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_raw_packet_qp(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1, i32* %2, %struct.ib_pd* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_qp*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ib_pd*, align 8
  %10 = alloca %struct.mlx5_ib_raw_packet_qp*, align 8
  %11 = alloca %struct.mlx5_ib_sq*, align 8
  %12 = alloca %struct.mlx5_ib_rq*, align 8
  %13 = alloca %struct.ib_uobject*, align 8
  %14 = alloca %struct.ib_ucontext*, align 8
  %15 = alloca %struct.mlx5_ib_ucontext*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.ib_pd* %3, %struct.ib_pd** %9, align 8
  %18 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %18, i32 0, i32 3
  store %struct.mlx5_ib_raw_packet_qp* %19, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %20 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %20, i32 0, i32 1
  store %struct.mlx5_ib_sq* %21, %struct.mlx5_ib_sq** %11, align 8
  %22 = load %struct.mlx5_ib_raw_packet_qp*, %struct.mlx5_ib_raw_packet_qp** %10, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_raw_packet_qp, %struct.mlx5_ib_raw_packet_qp* %22, i32 0, i32 0
  store %struct.mlx5_ib_rq* %23, %struct.mlx5_ib_rq** %12, align 8
  %24 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %25 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %24, i32 0, i32 0
  %26 = load %struct.ib_uobject*, %struct.ib_uobject** %25, align 8
  store %struct.ib_uobject* %26, %struct.ib_uobject** %13, align 8
  %27 = load %struct.ib_uobject*, %struct.ib_uobject** %13, align 8
  %28 = getelementptr inbounds %struct.ib_uobject, %struct.ib_uobject* %27, i32 0, i32 0
  %29 = load %struct.ib_ucontext*, %struct.ib_ucontext** %28, align 8
  store %struct.ib_ucontext* %29, %struct.ib_ucontext** %14, align 8
  %30 = load %struct.ib_ucontext*, %struct.ib_ucontext** %14, align 8
  %31 = call %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %30)
  store %struct.mlx5_ib_ucontext* %31, %struct.mlx5_ib_ucontext** %15, align 8
  %32 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %15, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %17, align 4
  %35 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %63

40:                                               ; preds = %4
  %41 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %42 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %11, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i32 @create_raw_packet_qp_tis(%struct.mlx5_ib_dev* %41, %struct.mlx5_ib_sq* %42, i32 %43)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* %16, align 4
  store i32 %48, i32* %5, align 4
  br label %136

49:                                               ; preds = %40
  %50 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %51 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %11, align 8
  %52 = load i32*, i32** %8, align 8
  %53 = load %struct.ib_pd*, %struct.ib_pd** %9, align 8
  %54 = call i32 @create_raw_packet_qp_sq(%struct.mlx5_ib_dev* %50, %struct.mlx5_ib_sq* %51, i32* %52, %struct.ib_pd* %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %131

58:                                               ; preds = %49
  %59 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %60 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %11, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  store %struct.mlx5_ib_qp* %59, %struct.mlx5_ib_qp** %62, align 8
  br label %63

63:                                               ; preds = %58, %4
  %64 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %65 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %90

69:                                               ; preds = %63
  %70 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %71 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %12, align 8
  %72 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  store %struct.mlx5_ib_qp* %70, %struct.mlx5_ib_qp** %73, align 8
  %74 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %75 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %12, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @create_raw_packet_qp_rq(%struct.mlx5_ib_dev* %74, %struct.mlx5_ib_rq* %75, i32* %76)
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %119

81:                                               ; preds = %69
  %82 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %83 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %12, align 8
  %84 = load i32, i32* %17, align 4
  %85 = call i32 @create_raw_packet_qp_tir(%struct.mlx5_ib_dev* %82, %struct.mlx5_ib_rq* %83, i32 %84)
  store i32 %85, i32* %16, align 4
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %115

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %63
  %91 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %92 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %11, align 8
  %98 = getelementptr inbounds %struct.mlx5_ib_sq, %struct.mlx5_ib_sq* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  br label %108

102:                                              ; preds = %90
  %103 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %12, align 8
  %104 = getelementptr inbounds %struct.mlx5_ib_rq, %struct.mlx5_ib_rq* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  br label %108

108:                                              ; preds = %102, %96
  %109 = phi i32 [ %101, %96 ], [ %107, %102 ]
  %110 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %111 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %109, i32* %114, align 8
  store i32 0, i32* %5, align 4
  br label %136

115:                                              ; preds = %88
  %116 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %117 = load %struct.mlx5_ib_rq*, %struct.mlx5_ib_rq** %12, align 8
  %118 = call i32 @destroy_raw_packet_qp_rq(%struct.mlx5_ib_dev* %116, %struct.mlx5_ib_rq* %117)
  br label %119

119:                                              ; preds = %115, %80
  %120 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %7, align 8
  %121 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %119
  %126 = load i32, i32* %16, align 4
  store i32 %126, i32* %5, align 4
  br label %136

127:                                              ; preds = %119
  %128 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %129 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %11, align 8
  %130 = call i32 @destroy_raw_packet_qp_sq(%struct.mlx5_ib_dev* %128, %struct.mlx5_ib_sq* %129)
  br label %131

131:                                              ; preds = %127, %57
  %132 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %133 = load %struct.mlx5_ib_sq*, %struct.mlx5_ib_sq** %11, align 8
  %134 = call i32 @destroy_raw_packet_qp_tis(%struct.mlx5_ib_dev* %132, %struct.mlx5_ib_sq* %133)
  %135 = load i32, i32* %16, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %131, %125, %108, %47
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @create_raw_packet_qp_tis(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*, i32) #1

declare dso_local i32 @create_raw_packet_qp_sq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*, i32*, %struct.ib_pd*) #1

declare dso_local i32 @create_raw_packet_qp_rq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32*) #1

declare dso_local i32 @create_raw_packet_qp_tir(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*, i32) #1

declare dso_local i32 @destroy_raw_packet_qp_rq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_rq*) #1

declare dso_local i32 @destroy_raw_packet_qp_sq(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*) #1

declare dso_local i32 @destroy_raw_packet_qp_tis(%struct.mlx5_ib_dev*, %struct.mlx5_ib_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
