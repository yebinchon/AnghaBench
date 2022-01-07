; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_contains.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_ncpaddr.c_ncprange_contains.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncprange = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ncpaddr = type { i32, %struct.TYPE_10__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@__const.ncprange_contains.masks = private unnamed_addr constant [8 x i32] [i32 128, i32 192, i32 224, i32 240, i32 248, i32 252, i32 254, i32 255], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ncprange_contains(%struct.ncprange* %0, %struct.ncpaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ncprange*, align 8
  %5 = alloca %struct.ncpaddr*, align 8
  %6 = alloca [8 x i32], align 16
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ncprange* %0, %struct.ncprange** %4, align 8
  store %struct.ncpaddr* %1, %struct.ncpaddr** %5, align 8
  %10 = bitcast [8 x i32]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([8 x i32]* @__const.ncprange_contains.masks to i8*), i64 32, i1 false)
  %11 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %12 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %15 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %13, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %86

19:                                               ; preds = %2
  %20 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %21 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %85 [
    i32 129, label %23
    i32 128, label %41
  ]

23:                                               ; preds = %19
  %24 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %25 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %29 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = xor i32 %27, %31
  %33 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %34 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %32, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %86

41:                                               ; preds = %19
  %42 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %43 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %8, align 8
  %47 = load %struct.ncpaddr*, %struct.ncpaddr** %5, align 8
  %48 = getelementptr inbounds %struct.ncpaddr, %struct.ncpaddr* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  store i32* %51, i32** %7, align 8
  %52 = load %struct.ncprange*, %struct.ncprange** %4, align 8
  %53 = getelementptr inbounds %struct.ncprange, %struct.ncprange* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %81, %41
  %56 = load i32, i32* %9, align 4
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %55
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %7, align 8
  %61 = load i32, i32* %59, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = getelementptr inbounds i32, i32* %62, i32 1
  store i32* %63, i32** %8, align 8
  %64 = load i32, i32* %62, align 4
  %65 = xor i32 %61, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp sgt i32 %66, 7
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  br label %72

69:                                               ; preds = %58
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %70, 1
  br label %72

72:                                               ; preds = %69, %68
  %73 = phi i32 [ 7, %68 ], [ %71, %69 ]
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %6, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %65, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %72
  store i32 0, i32* %3, align 4
  br label %86

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %82, 8
  store i32 %83, i32* %9, align 4
  br label %55

84:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %86

85:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %84, %79, %23, %18
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
