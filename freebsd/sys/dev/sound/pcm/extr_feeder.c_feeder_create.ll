; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_feeder_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pcm/extr_feeder.c_feeder_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcm_feeder = type { %struct.pcm_feederdesc*, %struct.pcm_feederdesc, %struct.feeder_class*, i32*, i32*, i32 }
%struct.pcm_feederdesc = type { i64, i64, i64, i64, i32 }
%struct.feeder_class = type { i8*, i32 }

@M_FEEDER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@FEEDER_ROOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"feeder_init(%p) on %s returned %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pcm_feeder* (%struct.feeder_class*, %struct.pcm_feederdesc*)* @feeder_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pcm_feeder* @feeder_create(%struct.feeder_class* %0, %struct.pcm_feederdesc* %1) #0 {
  %3 = alloca %struct.pcm_feeder*, align 8
  %4 = alloca %struct.feeder_class*, align 8
  %5 = alloca %struct.pcm_feederdesc*, align 8
  %6 = alloca %struct.pcm_feeder*, align 8
  %7 = alloca i32, align 4
  store %struct.feeder_class* %0, %struct.feeder_class** %4, align 8
  store %struct.pcm_feederdesc* %1, %struct.pcm_feederdesc** %5, align 8
  %8 = load %struct.feeder_class*, %struct.feeder_class** %4, align 8
  %9 = ptrtoint %struct.feeder_class* %8 to i32
  %10 = load i32, i32* @M_FEEDER, align 4
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @kobj_create(i32 %9, i32 %10, i32 %13)
  %15 = inttoptr i64 %14 to %struct.pcm_feeder*
  store %struct.pcm_feeder* %15, %struct.pcm_feeder** %6, align 8
  %16 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %17 = icmp eq %struct.pcm_feeder* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store %struct.pcm_feeder* null, %struct.pcm_feeder** %3, align 8
  br label %83

19:                                               ; preds = %2
  %20 = load %struct.feeder_class*, %struct.feeder_class** %4, align 8
  %21 = getelementptr inbounds %struct.feeder_class, %struct.feeder_class* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %24 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %23, i32 0, i32 5
  store i32 %22, i32* %24, align 8
  %25 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %26 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %25, i32 0, i32 4
  store i32* null, i32** %26, align 8
  %27 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %28 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %27, i32 0, i32 3
  store i32* null, i32** %28, align 8
  %29 = load %struct.feeder_class*, %struct.feeder_class** %4, align 8
  %30 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %31 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %30, i32 0, i32 2
  store %struct.feeder_class* %29, %struct.feeder_class** %31, align 8
  %32 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %33 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %32, i32 0, i32 1
  %34 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %35 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %34, i32 0, i32 0
  store %struct.pcm_feederdesc* %33, %struct.pcm_feederdesc** %35, align 8
  %36 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %5, align 8
  %37 = icmp ne %struct.pcm_feederdesc* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %19
  %39 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %40 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %39, i32 0, i32 0
  %41 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %40, align 8
  %42 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %5, align 8
  %43 = bitcast %struct.pcm_feederdesc* %41 to i8*
  %44 = bitcast %struct.pcm_feederdesc* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 40, i1 false)
  br label %67

45:                                               ; preds = %19
  %46 = load i32, i32* @FEEDER_ROOT, align 4
  %47 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %48 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %47, i32 0, i32 0
  %49 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %48, align 8
  %50 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %49, i32 0, i32 4
  store i32 %46, i32* %50, align 8
  %51 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %52 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %51, i32 0, i32 0
  %53 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %52, align 8
  %54 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %53, i32 0, i32 3
  store i64 0, i64* %54, align 8
  %55 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %56 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %55, i32 0, i32 0
  %57 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %56, align 8
  %58 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %57, i32 0, i32 2
  store i64 0, i64* %58, align 8
  %59 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %60 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %59, i32 0, i32 0
  %61 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %60, align 8
  %62 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %64 = getelementptr inbounds %struct.pcm_feeder, %struct.pcm_feeder* %63, i32 0, i32 0
  %65 = load %struct.pcm_feederdesc*, %struct.pcm_feederdesc** %64, align 8
  %66 = getelementptr inbounds %struct.pcm_feederdesc, %struct.pcm_feederdesc* %65, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %45, %38
  %68 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %69 = call i32 @FEEDER_INIT(%struct.pcm_feeder* %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %67
  %73 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %74 = load %struct.feeder_class*, %struct.feeder_class** %4, align 8
  %75 = getelementptr inbounds %struct.feeder_class, %struct.feeder_class* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.pcm_feeder* %73, i8* %76, i32 %77)
  %79 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  %80 = call i32 @feeder_destroy(%struct.pcm_feeder* %79)
  store %struct.pcm_feeder* null, %struct.pcm_feeder** %3, align 8
  br label %83

81:                                               ; preds = %67
  %82 = load %struct.pcm_feeder*, %struct.pcm_feeder** %6, align 8
  store %struct.pcm_feeder* %82, %struct.pcm_feeder** %3, align 8
  br label %83

83:                                               ; preds = %81, %72, %18
  %84 = load %struct.pcm_feeder*, %struct.pcm_feeder** %3, align 8
  ret %struct.pcm_feeder* %84
}

declare dso_local i64 @kobj_create(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @FEEDER_INIT(%struct.pcm_feeder*) #1

declare dso_local i32 @printf(i8*, %struct.pcm_feeder*, i8*, i32) #1

declare dso_local i32 @feeder_destroy(%struct.pcm_feeder*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
