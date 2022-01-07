; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_uuid_ether_del.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_uuid_ether_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@uuid_mutex = common dso_local global i32 0, align 4
@UUID_NETHER = common dso_local global i32 0, align 4
@uuid_ether = common dso_local global %struct.TYPE_2__* null, align 8
@UUID_ETHER_UNIQUE = common dso_local global i64 0, align 8
@UUID_NODE_LEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@UUID_ETHER_EMPTY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uuid_ether_del(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %5 = call i32 @mtx_lock(i32* @uuid_mutex)
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @UUID_NETHER, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %30

10:                                               ; preds = %6
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UUID_ETHER_UNIQUE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %10
  %20 = load i32*, i32** %3, align 8
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @UUID_NODE_LEN, align 4
  %28 = call i64 @bcmp(i32* %20, i32 %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %19, %10, %6
  %31 = phi i1 [ false, %10 ], [ false, %6 ], [ %29, %19 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @UUID_NETHER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @UUID_ETHER_UNIQUE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %39, %35
  %49 = call i32 @mtx_unlock(i32* @uuid_mutex)
  %50 = load i32, i32* @ENOENT, align 4
  store i32 %50, i32* %2, align 4
  br label %108

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %68, %51
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @UUID_NETHER, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp slt i32 %53, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UUID_ETHER_EMPTY, align 8
  %65 = icmp ne i64 %63, %64
  br label %66

66:                                               ; preds = %57, %52
  %67 = phi i1 [ false, %52 ], [ %65, %57 ]
  br i1 %67, label %68, label %82

68:                                               ; preds = %66
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %76
  %78 = bitcast %struct.TYPE_2__* %72 to i8*
  %79 = bitcast %struct.TYPE_2__* %77 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %78, i8* align 8 %79, i64 16, i1 false)
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %52

82:                                               ; preds = %66
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UUID_ETHER_EMPTY, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %106

91:                                               ; preds = %82
  %92 = load i64, i64* @UUID_ETHER_EMPTY, align 8
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i64 %92, i64* %97, align 8
  %98 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %99 = load i32, i32* %4, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @UUID_NODE_LEN, align 4
  %105 = call i32 @bzero(i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %91, %82
  %107 = call i32 @mtx_unlock(i32* @uuid_mutex)
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %48
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
