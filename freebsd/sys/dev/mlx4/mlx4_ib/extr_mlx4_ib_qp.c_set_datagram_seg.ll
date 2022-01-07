; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_set_datagram_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_qp.c_set_datagram_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_wqe_datagram_seg = type { i32, i32, i8*, i8*, i32 }
%struct.ib_ud_wr = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_6__*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_wqe_datagram_seg*, %struct.ib_ud_wr*)* @set_datagram_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_datagram_seg(%struct.mlx4_wqe_datagram_seg* %0, %struct.ib_ud_wr* %1) #0 {
  %3 = alloca %struct.mlx4_wqe_datagram_seg*, align 8
  %4 = alloca %struct.ib_ud_wr*, align 8
  store %struct.mlx4_wqe_datagram_seg* %0, %struct.mlx4_wqe_datagram_seg** %3, align 8
  store %struct.ib_ud_wr* %1, %struct.ib_ud_wr** %4, align 8
  %5 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %6 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %4, align 8
  %9 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_5__* @to_mah(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = call i32 @memcpy(i32 %7, %struct.TYPE_6__* %12, i32 4)
  %14 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %4, align 8
  %15 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i8* @cpu_to_be32(i32 %16)
  %18 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %19 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %18, i32 0, i32 3
  store i8* %17, i8** %19, align 8
  %20 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %4, align 8
  %21 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @cpu_to_be32(i32 %22)
  %24 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %4, align 8
  %27 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.TYPE_5__* @to_mah(i32 %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.mlx4_wqe_datagram_seg*, %struct.mlx4_wqe_datagram_seg** %3, align 8
  %37 = getelementptr inbounds %struct.mlx4_wqe_datagram_seg, %struct.mlx4_wqe_datagram_seg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ib_ud_wr*, %struct.ib_ud_wr** %4, align 8
  %40 = getelementptr inbounds %struct.ib_ud_wr, %struct.ib_ud_wr* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call %struct.TYPE_5__* @to_mah(i32 %41)
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @memcpy(i32 %38, %struct.TYPE_6__* %46, i32 6)
  ret void
}

declare dso_local i32 @memcpy(i32, %struct.TYPE_6__*, i32) #1

declare dso_local %struct.TYPE_5__* @to_mah(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
