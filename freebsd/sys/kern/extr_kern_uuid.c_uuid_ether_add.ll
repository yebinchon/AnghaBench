; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_uuid_ether_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_uuid.c_uuid_ether_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UUID_NODE_LEN = common dso_local global i32 0, align 4
@uuid_mutex = common dso_local global i32 0, align 4
@UUID_NETHER = common dso_local global i32 0, align 4
@uuid_ether = common dso_local global %struct.TYPE_2__* null, align 8
@UUID_ETHER_UNIQUE = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@UUID_ETHER_RANDOM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uuid_ether_add(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 3
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  store i32 %12, i32* %2, align 4
  br label %118

13:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %26, %13
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @UUID_NODE_LEN, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %14

29:                                               ; preds = %14
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %2, align 4
  br label %118

34:                                               ; preds = %29
  %35 = call i32 @mtx_lock(i32* @uuid_mutex)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %65, %34
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @UUID_NETHER, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %49

40:                                               ; preds = %36
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @UUID_ETHER_UNIQUE, align 8
  %48 = icmp eq i64 %46, %47
  br label %49

49:                                               ; preds = %40, %36
  %50 = phi i1 [ false, %36 ], [ %48, %40 ]
  br i1 %50, label %51, label %68

51:                                               ; preds = %49
  %52 = load i32*, i32** %3, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @UUID_NODE_LEN, align 4
  %60 = call i32 @bcmp(i32* %52, i32 %58, i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %51
  %63 = call i32 @mtx_unlock(i32* @uuid_mutex)
  %64 = load i32, i32* @EEXIST, align 4
  store i32 %64, i32* %2, align 4
  br label %118

65:                                               ; preds = %51
  %66 = load i32, i32* %4, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %4, align 4
  br label %36

68:                                               ; preds = %49
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @UUID_NETHER, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = call i32 @mtx_unlock(i32* @uuid_mutex)
  %74 = load i32, i32* @ENOSPC, align 4
  store i32 %74, i32* %2, align 4
  br label %118

75:                                               ; preds = %68
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %77 = load i32, i32* %4, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @UUID_ETHER_RANDOM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %101

84:                                               ; preds = %75
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @UUID_NETHER, align 4
  %87 = sub nsw i32 %86, 1
  %88 = icmp slt i32 %85, %87
  br i1 %88, label %89, label %101

89:                                               ; preds = %84
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %91 = load i32, i32* %4, align 4
  %92 = add nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i64 %93
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %96 = load i32, i32* %4, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 %97
  %99 = bitcast %struct.TYPE_2__* %94 to i8*
  %100 = bitcast %struct.TYPE_2__* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 16, i1 false)
  br label %101

101:                                              ; preds = %89, %84, %75
  %102 = load i64, i64* @UUID_ETHER_UNIQUE, align 8
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %104 = load i32, i32* %4, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i64 %102, i64* %107, align 8
  %108 = load i32*, i32** %3, align 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @uuid_ether, align 8
  %110 = load i32, i32* %4, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @UUID_NODE_LEN, align 4
  %116 = call i32 @bcopy(i32* %108, i32 %114, i32 %115)
  %117 = call i32 @mtx_unlock(i32* @uuid_mutex)
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %101, %72, %62, %32, %11
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @bcmp(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bcopy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
