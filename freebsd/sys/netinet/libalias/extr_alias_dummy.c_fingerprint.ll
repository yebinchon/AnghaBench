; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_dummy.c_fingerprint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/libalias/extr_alias_dummy.c_fingerprint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libalias = type { i32 }
%struct.alias_data = type { i64, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libalias*, %struct.alias_data*)* @fingerprint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fingerprint(%struct.libalias* %0, %struct.alias_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libalias*, align 8
  %5 = alloca %struct.alias_data*, align 8
  store %struct.libalias* %0, %struct.libalias** %4, align 8
  store %struct.alias_data* %1, %struct.alias_data** %5, align 8
  %6 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %7 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %25, label %10

10:                                               ; preds = %2
  %11 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %12 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %25, label %15

15:                                               ; preds = %10
  %16 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %17 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %22 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %15, %10, %2
  store i32 -1, i32* %3, align 4
  br label %42

26:                                               ; preds = %20
  %27 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %28 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ntohs(i32 %30)
  %32 = icmp eq i32 %31, 123
  br i1 %32, label %40, label %33

33:                                               ; preds = %26
  %34 = load %struct.alias_data*, %struct.alias_data** %5, align 8
  %35 = getelementptr inbounds %struct.alias_data, %struct.alias_data* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohs(i32 %37)
  %39 = icmp eq i32 %38, 456
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %26
  store i32 0, i32* %3, align 4
  br label %42

41:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %40, %25
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
