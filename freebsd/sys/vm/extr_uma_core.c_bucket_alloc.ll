; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_uma_core.c_bucket_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.uma_bucket_zone = type { i64, %struct.TYPE_7__* }

@bucketdisable = common dso_local global i64 0, align 8
@UMA_ZFLAG_BUCKET = common dso_local global i64 0, align 8
@UMA_ZFLAG_CACHEONLY = common dso_local global i64 0, align 8
@M_NOVM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_7__*, i8*, i32)* @bucket_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @bucket_alloc(%struct.TYPE_7__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uma_bucket_zone*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i64, i64* @bucketdisable, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %87

13:                                               ; preds = %3
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UMA_ZFLAG_BUCKET, align 8
  %18 = and i64 %16, %17
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  store i8* %24, i8** %6, align 8
  br label %38

25:                                               ; preds = %13
  %26 = load i8*, i8** %6, align 8
  %27 = ptrtoint i8* %26 to i64
  %28 = load i64, i64* @UMA_ZFLAG_BUCKET, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %4, align 8
  br label %87

32:                                               ; preds = %25
  %33 = load i8*, i8** %6, align 8
  %34 = ptrtoint i8* %33 to i64
  %35 = load i64, i64* @UMA_ZFLAG_BUCKET, align 8
  %36 = or i64 %34, %35
  %37 = inttoptr i64 %36 to i8*
  store i8* %37, i8** %6, align 8
  br label %38

38:                                               ; preds = %32, %20
  %39 = load i8*, i8** %6, align 8
  %40 = ptrtoint i8* %39 to i64
  %41 = load i64, i64* @UMA_ZFLAG_CACHEONLY, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @M_NOVM, align 4
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %7, align 4
  br label %48

48:                                               ; preds = %44, %38
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.uma_bucket_zone* @bucket_zone_lookup(i32 %51)
  store %struct.uma_bucket_zone* %52, %struct.uma_bucket_zone** %8, align 8
  %53 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %8, align 8
  %54 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = icmp eq %struct.TYPE_7__* %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %48
  %59 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %8, align 8
  %60 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %59, i64 1
  %61 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %8, align 8
  %66 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %65, i32 1
  store %struct.uma_bucket_zone* %66, %struct.uma_bucket_zone** %8, align 8
  br label %67

67:                                               ; preds = %64, %58, %48
  %68 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %8, align 8
  %69 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %68, i32 0, i32 1
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.TYPE_8__* @uma_zalloc_arg(%struct.TYPE_7__* %70, i8* %71, i32 %72)
  store %struct.TYPE_8__* %73, %struct.TYPE_8__** %9, align 8
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %75 = icmp ne %struct.TYPE_8__* %74, null
  br i1 %75, label %76, label %85

76:                                               ; preds = %67
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  store i64 0, i64* %78, align 8
  %79 = load %struct.uma_bucket_zone*, %struct.uma_bucket_zone** %8, align 8
  %80 = getelementptr inbounds %struct.uma_bucket_zone, %struct.uma_bucket_zone* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %76, %67
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  store %struct.TYPE_8__* %86, %struct.TYPE_8__** %4, align 8
  br label %87

87:                                               ; preds = %85, %31, %12
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  ret %struct.TYPE_8__* %88
}

declare dso_local %struct.uma_bucket_zone* @bucket_zone_lookup(i32) #1

declare dso_local %struct.TYPE_8__* @uma_zalloc_arg(%struct.TYPE_7__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
