; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_skinny.c_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i64 }
%struct.alias_data = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.alias_data*)* @fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fingerprint(%struct.libalias* %0, %struct.alias_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.alias_data*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.alias_data* %1, %struct.alias_data** %5, align 8
  %6 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %7 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %12 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %17 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %10, %2
  store i32 -1, i32* %3, align 4
  br label %48

21:                                               ; preds = %15
  %22 = load %struct.libalias*, %struct.libalias** %4, align 8
  %23 = getelementptr inbounds %struct.libalias, %struct.libalias* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %28 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @ntohs(i32 %30)
  %32 = load %struct.libalias*, %struct.libalias** %4, align 8
  %33 = getelementptr inbounds %struct.libalias, %struct.libalias* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %26
  %37 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %38 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @ntohs(i32 %40)
  %42 = load %struct.libalias*, %struct.libalias** %4, align 8
  %43 = getelementptr inbounds %struct.libalias, %struct.libalias* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp eq i64 %41, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %36, %26
  store i32 0, i32* %3, align 4
  br label %48

47:                                               ; preds = %36, %21
  store i32 -1, i32* %3, align 4
  br label %48

48:                                               ; preds = %47, %46, %20
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
