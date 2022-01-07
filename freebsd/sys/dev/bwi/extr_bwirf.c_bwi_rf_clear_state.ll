; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_clear_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c_bwi_rf_clear_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_rf = type { i32*, i32, i32, i32, i32, i64, i64, i8**, i64, i32, i32, i32 }

@BWI_RF_CLEAR_FLAGS = common dso_local global i32 0, align 4
@BWI_INVALID_NRSSI = common dso_local global i8* null, align 8
@BWI_NRSSI_TBLSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bwi_rf_clear_state(%struct.bwi_rf* %0) #0 {
  %2 = alloca %struct.bwi_rf*, align 8
  %3 = alloca i32, align 4
  store %struct.bwi_rf* %0, %struct.bwi_rf** %2, align 8
  %4 = load i32, i32* @BWI_RF_CLEAR_FLAGS, align 4
  %5 = xor i32 %4, -1
  %6 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %7 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %6, i32 0, i32 11
  %8 = load i32, i32* %7, align 8
  %9 = and i32 %8, %5
  store i32 %9, i32* %7, align 8
  %10 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %11 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %10, i32 0, i32 10
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bzero(i32 %12, i32 4)
  %14 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %15 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %14, i32 0, i32 9
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @bzero(i32 %16, i32 4)
  %18 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %19 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %18, i32 0, i32 8
  store i64 0, i64* %19, align 8
  %20 = load i8*, i8** @BWI_INVALID_NRSSI, align 8
  %21 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %22 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %21, i32 0, i32 7
  %23 = load i8**, i8*** %22, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 0
  store i8* %20, i8** %24, align 8
  %25 = load i8*, i8** @BWI_INVALID_NRSSI, align 8
  %26 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %27 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %26, i32 0, i32 7
  %28 = load i8**, i8*** %27, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  store i8* %25, i8** %29, align 8
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %42, %1
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @BWI_NRSSI_TBLSZ, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %37 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  br label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %3, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %3, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %47 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %46, i32 0, i32 6
  store i64 0, i64* %47, align 8
  %48 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %49 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %48, i32 0, i32 5
  store i64 0, i64* %49, align 8
  %50 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %51 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %54 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @bcopy(i32 %52, i32 %55, i32 4)
  %57 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %58 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.bwi_rf*, %struct.bwi_rf** %2, align 8
  %61 = getelementptr inbounds %struct.bwi_rf, %struct.bwi_rf* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  ret void
}

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
