; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_mbuf_Read.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_mbuf_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @mbuf_Read(%struct.mbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %8, align 8
  br label %11

11:                                               ; preds = %69, %3
  %12 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %13 = icmp ne %struct.mbuf* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = icmp ugt i64 %15, 0
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i1 [ false, %11 ], [ %16, %14 ]
  br i1 %18, label %19, label %70

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8
  %21 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %22 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %7, align 4
  br label %33

30:                                               ; preds = %19
  %31 = load i64, i64* %6, align 8
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %25
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %61

36:                                               ; preds = %33
  %37 = load i32*, i32** %8, align 8
  %38 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %39 = call i32 @MBUF_CTOP(%struct.mbuf* %38)
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @memcpy(i32* %37, i32 %39, i32 %40)
  %42 = load i32, i32* %7, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32* %45, i32** %8, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = sub i64 %50, %47
  store i64 %51, i64* %49, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %6, align 8
  %55 = sub i64 %54, %53
  store i64 %55, i64* %6, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %36, %33
  %62 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %63 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %68 = call %struct.mbuf* @m_free(%struct.mbuf* %67)
  store %struct.mbuf* %68, %struct.mbuf** %4, align 8
  br label %69

69:                                               ; preds = %66, %61
  br label %11

70:                                               ; preds = %17
  br label %71

71:                                               ; preds = %81, %70
  %72 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %73 = icmp ne %struct.mbuf* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %71
  %75 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br label %79

79:                                               ; preds = %74, %71
  %80 = phi i1 [ false, %71 ], [ %78, %74 ]
  br i1 %80, label %81, label %84

81:                                               ; preds = %79
  %82 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %83 = call %struct.mbuf* @m_free(%struct.mbuf* %82)
  store %struct.mbuf* %83, %struct.mbuf** %4, align 8
  br label %71

84:                                               ; preds = %79
  %85 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %85
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
