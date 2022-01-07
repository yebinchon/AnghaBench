; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetSaCross.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_SetSaCross.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i8, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TAU32_SetSaCross(%struct.TYPE_8__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 4
  %6 = alloca { i64, i32 }, align 4
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i64*, align 8
  %10 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 0
  store i64 %1, i64* %10, align 4
  %11 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %6, i32 0, i32 1
  store i32 %2, i32* %11, align 4
  %12 = bitcast %struct.TYPE_9__* %5 to i8*
  %13 = bitcast { i64, i32 }* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %12, i8* align 4 %13, i64 12, i1 false)
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8 0, i8* %8, align 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ugt i32 %15, 4
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ugt i32 %19, 4
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  br label %23

22:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %122

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %36, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %36, label %35

35:                                               ; preds = %31, %23
  br label %37

36:                                               ; preds = %31, %27
  store i32 0, i32* %4, align 4
  br label %122

37:                                               ; preds = %35
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 2
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %54

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %52, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %47
  br label %53

52:                                               ; preds = %47, %43
  store i32 0, i32* %4, align 4
  br label %122

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53, %42
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %54
  br label %64

59:                                               ; preds = %54
  %60 = load i8, i8* %8, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, 64
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %8, align 1
  br label %64

64:                                               ; preds = %59, %58
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  br label %79

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sub i32 %71, 1
  %73 = shl i32 %72, 0
  %74 = or i32 16, %73
  %75 = load i8, i8* %8, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %8, align 1
  br label %79

79:                                               ; preds = %69, %68
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %79
  br label %94

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sub i32 %86, 1
  %88 = shl i32 %87, 2
  %89 = or i32 32, %88
  %90 = load i8, i8* %8, align 1
  %91 = zext i8 %90 to i32
  %92 = or i32 %91, %89
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %8, align 1
  br label %94

94:                                               ; preds = %84, %83
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i8, i8* %98, align 4
  %100 = zext i8 %99 to i32
  %101 = icmp ne i32 %96, %100
  br i1 %101, label %103, label %102

102:                                              ; preds = %94
  br label %121

103:                                              ; preds = %94
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = call i32 @h2LrH3(i32* %105)
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  store i64* %110, i64** %9, align 8
  %111 = load i64*, i64** %9, align 8
  %112 = load i8, i8* %8, align 1
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 1
  store i8 %112, i8* %114, align 4
  %115 = call i32 @AUUSL3(i64* %111, i32 8, i8 zeroext %112)
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %117 = call i32 @GLE_s4(%struct.TYPE_8__* %116, i32 -1)
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 2
  %120 = call i32 @uYS5N2(i32* %119)
  br label %121

121:                                              ; preds = %103, %102
  store i32 1, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %52, %36, %22
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @h2LrH3(i32*) #2

declare dso_local i32 @AUUSL3(i64*, i32, i8 zeroext) #2

declare dso_local i32 @GLE_s4(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @uYS5N2(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
