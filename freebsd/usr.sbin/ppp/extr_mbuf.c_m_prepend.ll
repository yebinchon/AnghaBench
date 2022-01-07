; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_prepend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_prepend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, %struct.mbuf*, i32 }

@MB_UNKNOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_prepend(%struct.mbuf* %0, i8* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %12 = icmp ne %struct.mbuf* %11, null
  br i1 %12, label %13, label %75

13:                                               ; preds = %4
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %75

18:                                               ; preds = %13
  %19 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %20 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %47

24:                                               ; preds = %18
  %25 = load i64, i64* %8, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub i64 %28, %25
  store i64 %29, i64* %27, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %32 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %33, %30
  store i64 %34, i64* %32, align 8
  %35 = load i8*, i8** %7, align 8
  %36 = icmp ne i8* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %24
  %38 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %39 = call i32 @MBUF_CTOP(%struct.mbuf* %38)
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %struct.mbuf*
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @memcpy(%struct.mbuf* %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %37, %24
  %46 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %46, %struct.mbuf** %5, align 8
  br label %113

47:                                               ; preds = %18
  %48 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %49 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = sub i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load i8*, i8** %7, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %55, label %65

55:                                               ; preds = %47
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i64 1
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %62 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @memcpy(%struct.mbuf* %57, i8* %60, i64 %63)
  br label %65

65:                                               ; preds = %55, %47
  %66 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %67 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %70 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = add i64 %71, %68
  store i64 %72, i64* %70, align 8
  %73 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %74 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %65, %13, %4
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = add i64 %76, %77
  %79 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %80 = icmp ne %struct.mbuf* %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %75
  %82 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %83 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  br label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @MB_UNKNOWN, align 4
  br label %87

87:                                               ; preds = %85, %81
  %88 = phi i32 [ %84, %81 ], [ %86, %85 ]
  %89 = call %struct.mbuf* @m_get(i64 %78, i32 %88)
  store %struct.mbuf* %89, %struct.mbuf** %10, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %92 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %95 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, %93
  store i64 %97, i64* %95, align 8
  %98 = load i8*, i8** %7, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %87
  %101 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %102 = call i32 @MBUF_CTOP(%struct.mbuf* %101)
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to %struct.mbuf*
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @memcpy(%struct.mbuf* %104, i8* %105, i64 %106)
  br label %108

108:                                              ; preds = %100, %87
  %109 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %110 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %111 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %110, i32 0, i32 2
  store %struct.mbuf* %109, %struct.mbuf** %111, align 8
  %112 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  store %struct.mbuf* %112, %struct.mbuf** %5, align 8
  br label %113

113:                                              ; preds = %108, %45
  %114 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  ret %struct.mbuf* %114
}

declare dso_local i32 @memcpy(%struct.mbuf*, i8*, i64) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local %struct.mbuf* @m_get(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
