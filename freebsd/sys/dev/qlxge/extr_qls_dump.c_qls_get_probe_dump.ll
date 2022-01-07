; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_probe_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxge/extr_qls_dump.c_qls_get_probe_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.qls_get_probe_dump.sys_clock_valid_modules = private unnamed_addr constant <{ [20 x i32], [12 x i32] }> <{ [20 x i32] [i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1, i32 1, i32 1], [12 x i32] zeroinitializer }>, align 16
@__const.qls_get_probe_dump.xgm_clock_valid_modules = private unnamed_addr constant <{ [18 x i32], [14 x i32] }> <{ [18 x i32] [i32 1, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0, i32 1, i32 1], [14 x i32] zeroinitializer }>, align 16
@SYS_CLOCK = common dso_local global i32 0, align 4
@PCI_CLOCK = common dso_local global i32 0, align 4
@XGM_CLOCK = common dso_local global i32 0, align 4
@FC_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @qls_get_probe_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qls_get_probe_dump(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i32], align 16
  %6 = alloca [32 x i32], align 16
  %7 = alloca [32 x i32], align 16
  %8 = alloca [32 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = bitcast [32 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast (<{ [20 x i32], [12 x i32] }>* @__const.qls_get_probe_dump.sys_clock_valid_modules to i8*), i64 128, i1 false)
  %10 = bitcast [32 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 128, i1 false)
  %11 = bitcast i8* %10 to <{ [15 x i32], [17 x i32] }>*
  %12 = getelementptr inbounds <{ [15 x i32], [17 x i32] }>, <{ [15 x i32], [17 x i32] }>* %11, i32 0, i32 0
  %13 = getelementptr inbounds [15 x i32], [15 x i32]* %12, i32 0, i32 0
  store i32 1, i32* %13, align 16
  %14 = getelementptr inbounds [15 x i32], [15 x i32]* %12, i32 0, i32 6
  store i32 1, i32* %14, align 8
  %15 = getelementptr inbounds [15 x i32], [15 x i32]* %12, i32 0, i32 7
  store i32 1, i32* %15, align 4
  %16 = getelementptr inbounds [15 x i32], [15 x i32]* %12, i32 0, i32 14
  store i32 1, i32* %16, align 8
  %17 = bitcast [32 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast (<{ [18 x i32], [14 x i32] }>* @__const.qls_get_probe_dump.xgm_clock_valid_modules to i8*), i64 128, i1 false)
  %18 = bitcast [32 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %18, i8 0, i64 128, i1 false)
  %19 = bitcast i8* %18 to <{ [14 x i32], [18 x i32] }>*
  %20 = getelementptr inbounds <{ [14 x i32], [18 x i32] }>, <{ [14 x i32], [18 x i32] }>* %19, i32 0, i32 0
  %21 = getelementptr inbounds [14 x i32], [14 x i32]* %20, i32 0, i32 0
  store i32 1, i32* %21, align 16
  %22 = getelementptr inbounds [14 x i32], [14 x i32]* %20, i32 0, i32 12
  store i32 1, i32* %22, align 16
  %23 = getelementptr inbounds [14 x i32], [14 x i32]* %20, i32 0, i32 13
  store i32 1, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @qls_wr_mpi_reg(i32* %24, i32 4110, i32 413270016)
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* @SYS_CLOCK, align 4
  %28 = getelementptr inbounds [32 x i32], [32 x i32]* %5, i64 0, i64 0
  %29 = load i32*, i32** %4, align 8
  %30 = call i32* @qls_get_probe(i32* %26, i32 %27, i32* %28, i32* %29)
  store i32* %30, i32** %4, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* @PCI_CLOCK, align 4
  %33 = getelementptr inbounds [32 x i32], [32 x i32]* %6, i64 0, i64 0
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @qls_get_probe(i32* %31, i32 %32, i32* %33, i32* %34)
  store i32* %35, i32** %4, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = load i32, i32* @XGM_CLOCK, align 4
  %38 = getelementptr inbounds [32 x i32], [32 x i32]* %7, i64 0, i64 0
  %39 = load i32*, i32** %4, align 8
  %40 = call i32* @qls_get_probe(i32* %36, i32 %37, i32* %38, i32* %39)
  store i32* %40, i32** %4, align 8
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @FC_CLOCK, align 4
  %43 = getelementptr inbounds [32 x i32], [32 x i32]* %8, i64 0, i64 0
  %44 = load i32*, i32** %4, align 8
  %45 = call i32* @qls_get_probe(i32* %41, i32 %42, i32* %43, i32* %44)
  store i32* %45, i32** %4, align 8
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @qls_wr_mpi_reg(i32*, i32, i32) #2

declare dso_local i32* @qls_get_probe(i32*, i32, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
