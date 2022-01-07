; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_add_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mps/extr_mps.c_mps_add_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mps_command = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_8__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32, i64, i32 }
%struct.mps_chain = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@MPS_SGC_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"MPS: Need SGE Error Code\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@chain_link = common dso_local global i32 0, align 4
@MPI2_SGE_FLAGS_CHAIN_ELEMENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mps_command*)* @mps_add_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mps_add_chain(%struct.mps_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mps_command*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.mps_chain*, align 8
  %6 = alloca i32, align 4
  store %struct.mps_command* %0, %struct.mps_command** %3, align 8
  %7 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %8 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @MPS_SGC_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %1
  %15 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %16 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = call %struct.mps_chain* @mps_alloc_chain(%struct.TYPE_8__* %17)
  store %struct.mps_chain* %18, %struct.mps_chain** %5, align 8
  %19 = load %struct.mps_chain*, %struct.mps_chain** %5, align 8
  %20 = icmp eq %struct.mps_chain* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @ENOBUFS, align 4
  store i32 %22, i32* %2, align 4
  br label %64

23:                                               ; preds = %14
  %24 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %25 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %24, i32 0, i32 3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %30 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %29, i32 0, i32 2
  %31 = load %struct.mps_chain*, %struct.mps_chain** %5, align 8
  %32 = load i32, i32* @chain_link, align 4
  %33 = call i32 @TAILQ_INSERT_TAIL(i32* %30, %struct.mps_chain* %31, i32 %32)
  %34 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %35 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = bitcast i32* %37 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %38, %struct.TYPE_7__** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @htole16(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load i32, i32* @MPI2_SGE_FLAGS_CHAIN_ELEMENT, align 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.mps_chain*, %struct.mps_chain** %5, align 8
  %49 = getelementptr inbounds %struct.mps_chain, %struct.mps_chain* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @htole32(i32 %50)
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mps_chain*, %struct.mps_chain** %5, align 8
  %55 = getelementptr inbounds %struct.mps_chain, %struct.mps_chain* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = bitcast i32* %57 to %struct.TYPE_6__*
  %59 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %60 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %59, i32 0, i32 1
  store %struct.TYPE_6__* %58, %struct.TYPE_6__** %60, align 8
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.mps_command*, %struct.mps_command** %3, align 8
  %63 = getelementptr inbounds %struct.mps_command, %struct.mps_command* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %23, %21
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.mps_chain* @mps_alloc_chain(%struct.TYPE_8__*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mps_chain*, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @htole32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
