; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_pullup.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_mbuf.c_m_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i32, i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @m_pullup(%struct.mbuf* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca i32*, align 8
  store %struct.mbuf* %0, %struct.mbuf** %2, align 8
  %5 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %6 = icmp ne %struct.mbuf* %5, null
  br i1 %6, label %7, label %63

7:                                                ; preds = %1
  %8 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %9 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %8, i32 0, i32 3
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %14 = call i32 @m_length(%struct.mbuf* %13)
  %15 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %16 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.mbuf* @m_get(i32 %14, i32 %17)
  store %struct.mbuf* %18, %struct.mbuf** %3, align 8
  %19 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  %20 = call i32* @MBUF_CTOP(%struct.mbuf* %19)
  store i32* %20, i32** %4, align 8
  br label %21

21:                                               ; preds = %38, %12
  %22 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %23 = icmp ne %struct.mbuf* %22, null
  br i1 %23, label %24, label %41

24:                                               ; preds = %21
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %27 = call i32* @MBUF_CTOP(%struct.mbuf* %26)
  %28 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %29 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @memcpy(i32* %25, i32* %27, i32 %30)
  %32 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %33 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %24
  %39 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %40 = call %struct.mbuf* @m_free(%struct.mbuf* %39)
  store %struct.mbuf* %40, %struct.mbuf** %2, align 8
  br label %21

41:                                               ; preds = %21
  %42 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  store %struct.mbuf* %42, %struct.mbuf** %2, align 8
  br label %62

43:                                               ; preds = %7
  %44 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %45 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = and i64 %47, 7
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %52 = call i32* @MBUF_CTOP(%struct.mbuf* %51)
  %53 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %54 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %53, i64 1
  %55 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %56 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @bcopy(i32* %52, %struct.mbuf* %54, i32 %57)
  %59 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  %60 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %50, %43
  br label %62

62:                                               ; preds = %61, %41
  br label %63

63:                                               ; preds = %62, %1
  %64 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %64
}

declare dso_local %struct.mbuf* @m_get(i32, i32) #1

declare dso_local i32 @m_length(%struct.mbuf*) #1

declare dso_local i32* @MBUF_CTOP(%struct.mbuf*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local %struct.mbuf* @m_free(%struct.mbuf*) #1

declare dso_local i32 @bcopy(i32*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
