; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_chain.c_feeder_build_formatne.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder_chain.c_feeder_build_formatne.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_channel = type { i32 }
%struct.feeder_chain_desc = type { i64, %struct.feeder_chain_state, %struct.feeder_chain_state }
%struct.feeder_chain_state = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcm_channel*, %struct.feeder_chain_desc*)* @feeder_build_formatne to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @feeder_build_formatne(%struct.pcm_channel* %0, %struct.feeder_chain_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcm_channel*, align 8
  %5 = alloca %struct.feeder_chain_desc*, align 8
  %6 = alloca %struct.feeder_chain_state, align 8
  %7 = alloca i32, align 4
  store %struct.pcm_channel* %0, %struct.pcm_channel** %4, align 8
  store %struct.feeder_chain_desc* %1, %struct.feeder_chain_desc** %5, align 8
  %8 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %9 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %14 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.feeder_chain_state, %struct.feeder_chain_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @AFMT_ENCODING(i32 %16)
  %18 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %19 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %65

23:                                               ; preds = %12
  %24 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %25 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %24, i32 0, i32 1
  %26 = bitcast %struct.feeder_chain_state* %6 to i8*
  %27 = bitcast %struct.feeder_chain_state* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  %28 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %29 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %28, i32 0, i32 1
  %30 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %31 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %30, i32 0, i32 2
  %32 = bitcast %struct.feeder_chain_state* %29 to i8*
  %33 = bitcast %struct.feeder_chain_state* %31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false)
  %34 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %35 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %38 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.feeder_chain_state, %struct.feeder_chain_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %44 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.feeder_chain_state, %struct.feeder_chain_state* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @SND_FORMAT(i64 %36, i32 %42, i32 %48)
  %50 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %51 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.feeder_chain_state, %struct.feeder_chain_state* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 8
  %53 = load %struct.pcm_channel*, %struct.pcm_channel** %4, align 8
  %54 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %55 = call i32 @feeder_build_format(%struct.pcm_channel* %53, %struct.feeder_chain_desc* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %23
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %23
  %61 = load %struct.feeder_chain_desc*, %struct.feeder_chain_desc** %5, align 8
  %62 = getelementptr inbounds %struct.feeder_chain_desc, %struct.feeder_chain_desc* %61, i32 0, i32 1
  %63 = bitcast %struct.feeder_chain_state* %62 to i8*
  %64 = bitcast %struct.feeder_chain_state* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 16, i1 false)
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %58, %22
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @AFMT_ENCODING(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @SND_FORMAT(i64, i32, i32) #1

declare dso_local i32 @feeder_build_format(%struct.pcm_channel*, %struct.feeder_chain_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
