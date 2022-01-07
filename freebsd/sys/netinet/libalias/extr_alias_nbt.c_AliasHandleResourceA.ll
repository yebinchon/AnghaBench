; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleResourceA.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_nbt.c_AliasHandleResourceA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64*, i64, i64 }
%struct.TYPE_6__ = type { i64 }

@SizeOfResourceA = common dso_local global i64 0, align 8
@INET_ADDRSTRLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_7__*, i8*, %struct.TYPE_8__*)* @AliasHandleResourceA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @AliasHandleResourceA(%struct.TYPE_7__* %0, i8* %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %13 = icmp eq %struct.TYPE_7__* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i64 1
  %17 = bitcast %struct.TYPE_7__* %16 to i8*
  %18 = load i8*, i8** %6, align 8
  %19 = icmp ugt i8* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %14, %3
  store i32* null, i32** %4, align 8
  br label %115

21:                                               ; preds = %14
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = bitcast %struct.TYPE_7__* %22 to i32*
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  %25 = bitcast i32* %24 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %25, %struct.TYPE_6__** %8, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @ntohs(i32 %28)
  store i64 %29, i64* %9, align 8
  br label %30

30:                                               ; preds = %96, %21
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %102

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = icmp eq %struct.TYPE_6__* %34, null
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 1
  %39 = bitcast %struct.TYPE_6__* %38 to i8*
  %40 = load i8*, i8** %6, align 8
  %41 = icmp ugt i8* %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %33
  store i32* null, i32** %4, align 8
  br label %115

43:                                               ; preds = %36
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = call i32 @bcmp(i64* %45, i64* %47, i32 4)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %96, label %50

50:                                               ; preds = %43
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i64* %58, i64** %11, align 8
  %59 = load i64*, i64** %11, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %11, align 8
  %61 = load i64, i64* %59, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %10, align 4
  %63 = load i64*, i64** %11, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = add nsw i64 %66, %64
  %68 = trunc i64 %67 to i32
  store i32 %68, i32* %10, align 4
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i64* %70, i64** %11, align 8
  %71 = load i64*, i64** %11, align 8
  %72 = getelementptr inbounds i64, i64* %71, i32 1
  store i64* %72, i64** %11, align 8
  %73 = load i64, i64* %71, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = sub nsw i64 %75, %73
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %10, align 4
  %78 = load i64*, i64** %11, align 8
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = sub nsw i64 %81, %79
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %10, align 4
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @ADJUST_CHECKSUM(i32 %84, i64 %88)
  br label %90

90:                                               ; preds = %56, %50
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %96

96:                                               ; preds = %90, %43
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 1
  store %struct.TYPE_6__* %98, %struct.TYPE_6__** %8, align 8
  %99 = load i64, i64* @SizeOfResourceA, align 8
  %100 = load i64, i64* %9, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %9, align 8
  br label %30

102:                                              ; preds = %30
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %104 = icmp eq %struct.TYPE_6__* %103, null
  br i1 %104, label %111, label %105

105:                                              ; preds = %102
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 1
  %108 = bitcast %struct.TYPE_6__* %107 to i8*
  %109 = load i8*, i8** %6, align 8
  %110 = icmp ugt i8* %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %105, %102
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  br label %112

112:                                              ; preds = %111, %105
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %114 = bitcast %struct.TYPE_6__* %113 to i32*
  store i32* %114, i32** %4, align 8
  br label %115

115:                                              ; preds = %112, %42, %20
  %116 = load i32*, i32** %4, align 8
  ret i32* %116
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @bcmp(i64*, i64*, i32) #1

declare dso_local i32 @ADJUST_CHECKSUM(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
