; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_free_data_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_free_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }
%struct.urtw_data = type { i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urtw_softc*, %struct.urtw_data*, i32, i32)* @urtw_free_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_free_data_list(%struct.urtw_softc* %0, %struct.urtw_data* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.urtw_softc*, align 8
  %6 = alloca %struct.urtw_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.urtw_data*, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %5, align 8
  store %struct.urtw_data* %1, %struct.urtw_data** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %53, %4
  %12 = load i32, i32* %9, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %56

15:                                               ; preds = %11
  %16 = load %struct.urtw_data*, %struct.urtw_data** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %16, i64 %18
  store %struct.urtw_data* %19, %struct.urtw_data** %10, align 8
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %37

22:                                               ; preds = %15
  %23 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %24 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %22
  %28 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %29 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @m_freem(i32* %30)
  %32 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %33 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %32, i32 0, i32 2
  store i32* null, i32** %33, align 8
  %34 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %35 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  br label %36

36:                                               ; preds = %27, %22
  br label %40

37:                                               ; preds = %15
  %38 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %39 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %38, i32 0, i32 1
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %37, %36
  %41 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %42 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %47 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @ieee80211_free_node(i32* %48)
  %50 = load %struct.urtw_data*, %struct.urtw_data** %10, align 8
  %51 = getelementptr inbounds %struct.urtw_data, %struct.urtw_data* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  br label %52

52:                                               ; preds = %45, %40
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %11

56:                                               ; preds = %11
  ret void
}

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
