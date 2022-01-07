; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_free_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_free_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32 }
%struct.otus_data = type { i32*, i32* }

@M_USBDEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otus_softc*, %struct.otus_data*, i32)* @otus_free_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otus_free_list(%struct.otus_softc* %0, %struct.otus_data* %1, i32 %2) #0 {
  %4 = alloca %struct.otus_softc*, align 8
  %5 = alloca %struct.otus_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.otus_data*, align 8
  store %struct.otus_softc* %0, %struct.otus_softc** %4, align 8
  store %struct.otus_data* %1, %struct.otus_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %43, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %9
  %14 = load %struct.otus_data*, %struct.otus_data** %5, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %14, i64 %16
  store %struct.otus_data* %17, %struct.otus_data** %8, align 8
  %18 = load %struct.otus_data*, %struct.otus_data** %8, align 8
  %19 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %13
  %23 = load %struct.otus_data*, %struct.otus_data** %8, align 8
  %24 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* @M_USBDEV, align 4
  %27 = call i32 @free(i32* %25, i32 %26)
  %28 = load %struct.otus_data*, %struct.otus_data** %8, align 8
  %29 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %28, i32 0, i32 1
  store i32* null, i32** %29, align 8
  br label %30

30:                                               ; preds = %22, %13
  %31 = load %struct.otus_data*, %struct.otus_data** %8, align 8
  %32 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load %struct.otus_data*, %struct.otus_data** %8, align 8
  %37 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ieee80211_free_node(i32* %38)
  %40 = load %struct.otus_data*, %struct.otus_data** %8, align 8
  %41 = getelementptr inbounds %struct.otus_data, %struct.otus_data* %40, i32 0, i32 0
  store i32* null, i32** %41, align 8
  br label %42

42:                                               ; preds = %35, %30
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
