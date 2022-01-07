; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_makembuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cx/extr_if_cx.c_makembuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.mbuf*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@M_NOWAIT = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@MINCLSIZE = common dso_local global i64 0, align 8
@caddr_t = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (i8*, i64)* @makembuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @makembuf(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.mbuf*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %11 = load i32, i32* @M_NOWAIT, align 4
  %12 = load i32, i32* @MT_DATA, align 4
  %13 = call i32 @MGETHDR(%struct.mbuf* %10, i32 %11, i32 %12)
  %14 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %15 = icmp ne %struct.mbuf* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %104

17:                                               ; preds = %2
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @MINCLSIZE, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %23 = load i32, i32* @M_NOWAIT, align 4
  %24 = call i32 @MCLGET(%struct.mbuf* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %5, align 8
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %31 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %32, %struct.mbuf** %8, align 8
  br label %33

33:                                               ; preds = %80, %25
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %102

36:                                               ; preds = %33
  %37 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %38 = call i64 @M_TRAILINGSPACE(%struct.mbuf* %37)
  store i64 %38, i64* %9, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp sgt i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %9, align 8
  br label %44

44:                                               ; preds = %42, %36
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %80, label %47

47:                                               ; preds = %44
  %48 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  store %struct.mbuf* %48, %struct.mbuf** %7, align 8
  %49 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %50 = load i32, i32* @M_NOWAIT, align 4
  %51 = load i32, i32* @MT_DATA, align 4
  %52 = call i32 @MGET(%struct.mbuf* %49, i32 %50, i32 %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %54 = icmp ne %struct.mbuf* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %57 = call i32 @m_freem(%struct.mbuf* %56)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %104

58:                                               ; preds = %47
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @MINCLSIZE, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %64 = load i32, i32* @M_NOWAIT, align 4
  %65 = call i32 @MCLGET(%struct.mbuf* %63, i32 %64)
  br label %66

66:                                               ; preds = %62, %58
  %67 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %68 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %67, i32 0, i32 0
  store i64 0, i64* %68, align 8
  %69 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %70 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %71 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %70, i32 0, i32 1
  store %struct.mbuf* %69, %struct.mbuf** %71, align 8
  %72 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %73 = call i64 @M_TRAILINGSPACE(%struct.mbuf* %72)
  store i64 %73, i64* %9, align 8
  %74 = load i64, i64* %9, align 8
  %75 = load i64, i64* %5, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i64, i64* %5, align 8
  store i64 %78, i64* %9, align 8
  br label %79

79:                                               ; preds = %77, %66
  br label %80

80:                                               ; preds = %79, %44
  %81 = load i8*, i8** %4, align 8
  %82 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %83 = load i32, i32* @caddr_t, align 4
  %84 = call i64 @mtod(%struct.mbuf* %82, i32 %83)
  %85 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %86 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = load i64, i64* %9, align 8
  %90 = call i32 @bcopy(i8* %81, i64 %88, i64 %89)
  %91 = load i64, i64* %9, align 8
  %92 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %93 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, %91
  store i64 %95, i64* %93, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i8*, i8** %4, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 %96
  store i8* %98, i8** %4, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %5, align 8
  %101 = sub nsw i64 %100, %99
  store i64 %101, i64* %5, align 8
  br label %33

102:                                              ; preds = %33
  %103 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  store %struct.mbuf* %103, %struct.mbuf** %3, align 8
  br label %104

104:                                              ; preds = %102, %55, %16
  %105 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %105
}

declare dso_local i32 @MGETHDR(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @MCLGET(%struct.mbuf*, i32) #1

declare dso_local i64 @M_TRAILINGSPACE(%struct.mbuf*) #1

declare dso_local i32 @MGET(%struct.mbuf*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i8*, i64, i64) #1

declare dso_local i64 @mtod(%struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
