; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_zone_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32, i32, %struct.uma_hash }
%struct.uma_hash = type { i32 }

@UMA_ZFLAG_CACHE = common dso_local global i32 0, align 4
@UMA_ZONE_HASH = common dso_local global i32 0, align 4
@vm_ndomains = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @zone_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zone_timeout(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uma_hash, align 4
  %6 = alloca %struct.uma_hash, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @UMA_ZFLAG_CACHE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %77

16:                                               ; preds = %1
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %3, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = call i32 @KEG_LOCK(%struct.TYPE_9__* %20)
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UMA_ZONE_HASH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %74

28:                                               ; preds = %16
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %31, %34
  store i32 %35, i32* %4, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.uma_hash, %struct.uma_hash* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sgt i32 %35, %39
  br i1 %40, label %41, label %74

41:                                               ; preds = %28
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = call i32 @KEG_UNLOCK(%struct.TYPE_9__* %42)
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @fls(i32 %44)
  %46 = shl i32 1, %45
  %47 = call i32 @hash_alloc(%struct.uma_hash* %5, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = call i32 @KEG_LOCK(%struct.TYPE_9__* %48)
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %41
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 3
  %55 = call i64 @hash_expand(%struct.uma_hash* %54, %struct.uma_hash* %5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = bitcast %struct.uma_hash* %6 to i8*
  %61 = bitcast %struct.uma_hash* %59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %60, i8* align 4 %61, i64 4, i1 false)
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 3
  %64 = bitcast %struct.uma_hash* %63 to i8*
  %65 = bitcast %struct.uma_hash* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 4, i1 false)
  br label %69

66:                                               ; preds = %52
  %67 = bitcast %struct.uma_hash* %6 to i8*
  %68 = bitcast %struct.uma_hash* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %67, i8* align 4 %68, i64 4, i1 false)
  br label %69

69:                                               ; preds = %66, %57
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %71 = call i32 @KEG_UNLOCK(%struct.TYPE_9__* %70)
  %72 = call i32 @hash_free(%struct.uma_hash* %6)
  br label %98

73:                                               ; preds = %41
  br label %74

74:                                               ; preds = %73, %28, %16
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %76 = call i32 @KEG_UNLOCK(%struct.TYPE_9__* %75)
  br label %77

77:                                               ; preds = %74, %15
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %79 = call i32 @ZONE_LOCK(%struct.TYPE_8__* %78)
  store i32 0, i32* %8, align 4
  br label %80

80:                                               ; preds = %92, %77
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @vm_ndomains, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %80
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = call i32 @zone_domain_update_wss(i32* %90)
  br label %92

92:                                               ; preds = %84
  %93 = load i32, i32* %8, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %8, align 4
  br label %80

95:                                               ; preds = %80
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %97 = call i32 @ZONE_UNLOCK(%struct.TYPE_8__* %96)
  br label %98

98:                                               ; preds = %95, %69
  ret void
}

declare dso_local i32 @KEG_LOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @KEG_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @hash_alloc(%struct.uma_hash*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @hash_expand(%struct.uma_hash*, %struct.uma_hash*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @hash_free(%struct.uma_hash*) #1

declare dso_local i32 @ZONE_LOCK(%struct.TYPE_8__*) #1

declare dso_local i32 @zone_domain_update_wss(i32*) #1

declare dso_local i32 @ZONE_UNLOCK(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
