; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleResourceNB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleResourceNB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@SizeOfNsResource = common dso_local global i32 0, align 4
@SizeOfNsRNB = common dso_local global i32 0, align 4
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*, i8*, %struct.TYPE_8__*)* @AliasHandleResourceNB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AliasHandleResourceNB(%struct.TYPE_6__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = icmp eq %struct.TYPE_6__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i64 1
  %17 = bitcast %struct.TYPE_6__* %16 to i8*
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  store i32* null, i32** %4, align 8
  br label %118

21:                                               ; preds = %14
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohs(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = bitcast %struct.TYPE_6__* %26 to i32*
  %28 = load i32, i32* @SizeOfNsResource, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = bitcast i32* %30 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %31, %struct.TYPE_7__** %8, align 8
  br label %32

32:                                               ; preds = %95, %21
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %34 = icmp ne %struct.TYPE_7__* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi i1 [ false, %32 ], [ %37, %35 ]
  br i1 %39, label %40, label %105

40:                                               ; preds = %38
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 1
  %43 = bitcast %struct.TYPE_7__* %42 to i8*
  %44 = load i8*, i8** %6, align 8
  %45 = icmp ugt i8* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %105

47:                                               ; preds = %40
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = call i32 @bcmp(i64* %49, i64* %51, i32 4)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %95, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i64*, i64** %56, align 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %89

60:                                               ; preds = %54
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = bitcast i64* %62 to i32*
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %11, align 8
  %66 = load i32, i32* %64, align 4
  store i32 %66, i32* %10, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = bitcast i64* %72 to i32*
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %11, align 8
  %75 = getelementptr inbounds i32, i32* %74, i32 1
  store i32* %75, i32** %11, align 8
  %76 = load i32, i32* %74, align 4
  %77 = load i32, i32* %10, align 4
  %78 = sub nsw i32 %77, %76
  store i32 %78, i32* %10, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sub nsw i32 %81, %80
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @ADJUST_CHECKSUM(i32 %83, i64 %87)
  br label %89

89:                                               ; preds = %60, %54
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %47
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = bitcast %struct.TYPE_7__* %96 to i32*
  %98 = load i32, i32* @SizeOfNsRNB, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = bitcast i32* %100 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %101, %struct.TYPE_7__** %8, align 8
  %102 = load i32, i32* @SizeOfNsRNB, align 4
  %103 = load i32, i32* %9, align 4
  %104 = sub nsw i32 %103, %102
  store i32 %104, i32* %9, align 4
  br label %32

105:                                              ; preds = %46, %38
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %107 = icmp eq %struct.TYPE_7__* %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %105
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i64 1
  %111 = bitcast %struct.TYPE_7__* %110 to i8*
  %112 = load i8*, i8** %6, align 8
  %113 = icmp ugt i8* %111, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108, %105
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  br label %115

115:                                              ; preds = %114, %108
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %117 = bitcast %struct.TYPE_7__* %116 to i32*
  store i32* %117, i32** %4, align 8
  br label %118

118:                                              ; preds = %115, %20
  %119 = load i32*, i32** %4, align 8
  ret i32* %119
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @bcmp(i64*, i64*, i32) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
