; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_mvfrey_map_ctlcfg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hptiop/extr_hptiop.c_hptiop_mvfrey_map_ctlcfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.hpt_iop_hba = type { i8*, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32, i32*, i32, %struct.mvfrey_outlist_entry*, %struct.mvfrey_inlist_entry* }
%struct.mvfrey_outlist_entry = type { i32 }
%struct.mvfrey_inlist_entry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, i32, i32)* @hptiop_mvfrey_map_ctlcfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hptiop_mvfrey_map_ctlcfg(i8* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hpt_iop_hba*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.hpt_iop_hba*
  store %struct.hpt_iop_hba* %14, %struct.hpt_iop_hba** %9, align 8
  %15 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %16 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = add nsw i32 %23, 31
  %25 = and i32 %24, -32
  store i32 %25, i32* %11, align 4
  %26 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %27 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = add i64 %29, 31
  %31 = and i64 %30, -32
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %10, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %35 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 8
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %38 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2048
  store i8* %40, i8** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 2048
  store i32 %42, i32* %11, align 4
  %43 = load i8*, i8** %10, align 8
  %44 = bitcast i8* %43 to %struct.mvfrey_inlist_entry*
  %45 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %46 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 6
  store %struct.mvfrey_inlist_entry* %44, %struct.mvfrey_inlist_entry** %48, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %51 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = mul i64 %55, 4
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 %56
  store i8* %58, i8** %10, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = load i32, i32* %11, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, %61
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %11, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = bitcast i8* %66 to %struct.mvfrey_outlist_entry*
  %68 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %69 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  store %struct.mvfrey_outlist_entry* %67, %struct.mvfrey_outlist_entry** %71, align 8
  %72 = load i32, i32* %11, align 4
  %73 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %74 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  store i32 %72, i32* %76, align 8
  %77 = load i32, i32* %12, align 4
  %78 = sext i32 %77 to i64
  %79 = mul i64 %78, 4
  %80 = load i8*, i8** %10, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %10, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = load i32, i32* %11, align 4
  %86 = sext i32 %85 to i64
  %87 = add i64 %86, %84
  %88 = trunc i64 %87 to i32
  store i32 %88, i32* %11, align 4
  %89 = load i8*, i8** %10, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %92 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 3
  store i32* %90, i32** %94, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.hpt_iop_hba*, %struct.hpt_iop_hba** %9, align 8
  %97 = getelementptr inbounds %struct.hpt_iop_hba, %struct.hpt_iop_hba* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 4
  store i32 %95, i32* %99, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
