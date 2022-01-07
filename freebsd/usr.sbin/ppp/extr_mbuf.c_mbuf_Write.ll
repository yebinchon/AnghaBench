; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_mbuf_Write.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_mbuf_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i64, %struct.mbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbuf_Write(%struct.mbuf* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %10 = call i64 @m_length(%struct.mbuf* %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ult i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i64, i64* %7, align 8
  store i64 %15, i64* %6, align 8
  br label %16

16:                                               ; preds = %14, %3
  br label %17

17:                                               ; preds = %32, %16
  %18 = load i64, i64* %6, align 8
  %19 = icmp ugt i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8
  %22 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %23 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ult i64 %21, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i64, i64* %6, align 8
  br label %32

28:                                               ; preds = %20
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  br label %32

32:                                               ; preds = %28, %26
  %33 = phi i64 [ %27, %26 ], [ %31, %28 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %36 = call i32 @MBUF_CTOP(%struct.mbuf* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @memcpy(i32 %36, i8* %37, i32 %38)
  %40 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %41 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %46 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %45, i32 0, i32 1
  %47 = load %struct.mbuf*, %struct.mbuf** %46, align 8
  store %struct.mbuf* %47, %struct.mbuf** %4, align 8
  br label %17

48:                                               ; preds = %17
  ret void
}

declare dso_local i64 @m_length(%struct.mbuf*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @MBUF_CTOP(%struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
