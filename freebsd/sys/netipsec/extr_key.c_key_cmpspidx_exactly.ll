; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cmpspidx_exactly.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netipsec/extr_key.c_key_cmpspidx_exactly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secpolicyindex = type { i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secpolicyindex*, %struct.secpolicyindex*)* @key_cmpspidx_exactly to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_cmpspidx_exactly(%struct.secpolicyindex* %0, %struct.secpolicyindex* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.secpolicyindex*, align 8
  %5 = alloca %struct.secpolicyindex*, align 8
  store %struct.secpolicyindex* %0, %struct.secpolicyindex** %4, align 8
  store %struct.secpolicyindex* %1, %struct.secpolicyindex** %5, align 8
  %6 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %7 = icmp eq %struct.secpolicyindex* %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %10 = icmp eq %struct.secpolicyindex* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  store i32 1, i32* %3, align 4
  br label %73

12:                                               ; preds = %8, %2
  %13 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %14 = icmp eq %struct.secpolicyindex* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %17 = icmp eq %struct.secpolicyindex* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12
  store i32 0, i32* %3, align 4
  br label %73

19:                                               ; preds = %15
  %20 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %21 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %24 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %22, %25
  br i1 %26, label %51, label %27

27:                                               ; preds = %19
  %28 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %29 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %32 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %51, label %35

35:                                               ; preds = %27
  %36 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %37 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %40 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %45 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %48 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35, %27, %19
  store i32 0, i32* %3, align 4
  br label %73

52:                                               ; preds = %43
  %53 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %54 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %57 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = call i64 @key_sockaddrcmp(i32* %55, i32* %58, i32 1)
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %52
  %62 = load %struct.secpolicyindex*, %struct.secpolicyindex** %4, align 8
  %63 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load %struct.secpolicyindex*, %struct.secpolicyindex** %5, align 8
  %66 = getelementptr inbounds %struct.secpolicyindex, %struct.secpolicyindex* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i64 @key_sockaddrcmp(i32* %64, i32* %67, i32 1)
  %69 = icmp eq i64 %68, 0
  br label %70

70:                                               ; preds = %61, %52
  %71 = phi i1 [ false, %52 ], [ %69, %61 ]
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %70, %51, %18, %11
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i64 @key_sockaddrcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
