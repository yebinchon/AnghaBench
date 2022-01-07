; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_append.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, i64, %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_append(%struct.mbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.mbuf*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  store %struct.mbuf* %8, %struct.mbuf** %7, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %10 = icmp ne %struct.mbuf* %9, null
  br i1 %10, label %11, label %59

11:                                               ; preds = %3
  br label %12

12:                                               ; preds = %17, %11
  %13 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %14 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %13, i32 0, i32 2
  %15 = load %struct.mbuf*, %struct.mbuf** %14, align 8
  %16 = icmp ne %struct.mbuf* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %19 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %18, i32 0, i32 2
  %20 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  store %struct.mbuf* %20, %struct.mbuf** %7, align 8
  br label %12

21:                                               ; preds = %12
  %22 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %26 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub i64 %24, %27
  %29 = load i64, i64* %6, align 8
  %30 = icmp uge i64 %28, %29
  br i1 %30, label %31, label %51

31:                                               ; preds = %21
  %32 = load i8*, i8** %5, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i64 1
  %37 = bitcast %struct.mbuf* %36 to i8*
  %38 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %39 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i8, i8* %37, i64 %40
  %42 = load i8*, i8** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = call i32 @memcpy(i8* %41, i8* %42, i64 %43)
  br label %45

45:                                               ; preds = %34, %31
  %46 = load i64, i64* %6, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %49, %46
  store i64 %50, i64* %48, align 8
  br label %58

51:                                               ; preds = %21
  %52 = load i8*, i8** %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = call i8* @m_prepend(i32* null, i8* %52, i64 %53, i32 0)
  %55 = bitcast i8* %54 to %struct.mbuf*
  %56 = load %struct.mbuf*, %struct.mbuf** %7, align 8
  %57 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %56, i32 0, i32 2
  store %struct.mbuf* %55, %struct.mbuf** %57, align 8
  br label %58

58:                                               ; preds = %51, %45
  br label %64

59:                                               ; preds = %3
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %6, align 8
  %62 = call i8* @m_prepend(i32* null, i8* %60, i64 %61, i32 0)
  %63 = bitcast i8* %62 to %struct.mbuf*
  store %struct.mbuf* %63, %struct.mbuf** %4, align 8
  br label %64

64:                                               ; preds = %59, %58
  %65 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  ret %struct.mbuf* %65
}

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i8* @m_prepend(i32*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
