; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_nrssi_thr_11g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_set_nrssi_thr_11g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BWI_PHY_F_LINKED = common dso_local global i32 0, align 4
@BWI_CARD_F_SW_NRSSI = common dso_local global i32 0, align 4
@BWI_PHYR_NRSSI_THR_11G = common dso_local global i32 0, align 4
@NRSSI_THR1_MASK = common dso_local global i32 0, align 4
@NRSSI_THR2_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_rf_set_nrssi_thr_11g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_rf_set_nrssi_thr_11g(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @BWI_PHY_F_LINKED, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %16 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BWI_CARD_F_SW_NRSSI, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %14, %1
  %24 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %25 = call i32 @bwi_nrssi_read(%struct.bwi_mac* %24, i32 32)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp sge i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, 64
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %28, %23
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %32, 3
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 43, i32* %3, align 4
  store i32 39, i32* %4, align 4
  br label %36

35:                                               ; preds = %31
  store i32 45, i32* %3, align 4
  store i32 43, i32* %4, align 4
  br label %36

36:                                               ; preds = %35, %34
  br label %44

37:                                               ; preds = %14
  %38 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %39 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %38, i32 0, i32 0
  %40 = call i32 @_nrssi_threshold(i32* %39, i32 17)
  store i32 %40, i32* %3, align 4
  %41 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %42 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %41, i32 0, i32 0
  %43 = call i32 @_nrssi_threshold(i32* %42, i32 14)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %37, %36
  %45 = load i32, i32* %3, align 4
  %46 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__BITS to i32 (i32, i32, ...)*)(i32 5, i32 0)
  %47 = call i32 @__SHIFTIN(i32 %45, i32 %46)
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i32, i32, ...) bitcast (i32 (...)* @__BITS to i32 (i32, i32, ...)*)(i32 11, i32 6)
  %50 = call i32 @__SHIFTIN(i32 %48, i32 %49)
  %51 = or i32 %47, %50
  store i32 %51, i32* %5, align 4
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %53 = load i32, i32* @BWI_PHYR_NRSSI_THR_11G, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @PHY_FILT_SETBITS(%struct.bwi_mac* %52, i32 %53, i32 61440, i32 %54)
  ret void
}

declare dso_local i32 @bwi_nrssi_read(%struct.bwi_mac*, i32) #1

declare dso_local i32 @_nrssi_threshold(i32*, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i32 @__BITS(...) #1

declare dso_local i32 @PHY_FILT_SETBITS(%struct.bwi_mac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
