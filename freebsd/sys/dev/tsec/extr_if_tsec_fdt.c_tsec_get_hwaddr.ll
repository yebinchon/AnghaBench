; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_get_hwaddr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec_fdt.c_tsec_get_hwaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }
%union.anon = type { [2 x i64], [8 x i8] }

@.str = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@TSEC_REG_MACSTNADDR1 = common dso_local global i32 0, align 4
@TSEC_REG_MACSTNADDR2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tsec_get_hwaddr(%struct.tsec_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %union.anon, align 8
  %6 = alloca i32, align 4
  store %struct.tsec_softc* %0, %struct.tsec_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = bitcast %union.anon* %5 to [2 x i64]*
  %8 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 0, i64* %8, align 8
  %9 = bitcast %union.anon* %5 to [2 x i64]*
  %10 = getelementptr inbounds [2 x i64], [2 x i64]* %9, i64 0, i64 0
  store i64 0, i64* %10, align 8
  %11 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = bitcast %union.anon* %5 to [6 x i32]*
  %15 = getelementptr inbounds [6 x i32], [6 x i32]* %14, i64 0, i64 0
  %16 = bitcast i32* %15 to i8*
  %17 = call i32 @OF_getprop(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %16, i32 6)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp eq i32 %18, 6
  br i1 %19, label %20, label %35

20:                                               ; preds = %2
  %21 = bitcast %union.anon* %5 to [2 x i64]*
  %22 = getelementptr inbounds [2 x i64], [2 x i64]* %21, i64 0, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = bitcast %union.anon* %5 to [2 x i64]*
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %26, i64 0, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25, %20
  %31 = bitcast %union.anon* %5 to [6 x i32]*
  %32 = getelementptr inbounds [6 x i32], [6 x i32]* %31, i64 0, i64 0
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @bcopy(i32* %32, i32* %33, i32 6)
  br label %90

35:                                               ; preds = %25, %2
  %36 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %37 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = bitcast %union.anon* %5 to [6 x i32]*
  %40 = getelementptr inbounds [6 x i32], [6 x i32]* %39, i64 0, i64 0
  %41 = bitcast i32* %40 to i8*
  %42 = call i32 @OF_getprop(i32 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* %41, i32 6)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp eq i32 %43, 6
  br i1 %44, label %45, label %60

45:                                               ; preds = %35
  %46 = bitcast %union.anon* %5 to [2 x i64]*
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %46, i64 0, i64 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = bitcast %union.anon* %5 to [2 x i64]*
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %51, i64 0, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50, %45
  %56 = bitcast %union.anon* %5 to [6 x i32]*
  %57 = getelementptr inbounds [6 x i32], [6 x i32]* %56, i64 0, i64 0
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @bcopy(i32* %57, i32* %58, i32 6)
  br label %90

60:                                               ; preds = %50, %35
  %61 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %62 = load i32, i32* @TSEC_REG_MACSTNADDR1, align 4
  %63 = call i8* @TSEC_READ(%struct.tsec_softc* %61, i32 %62)
  %64 = ptrtoint i8* %63 to i64
  %65 = bitcast %union.anon* %5 to [2 x i64]*
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %65, i64 0, i64 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %68 = load i32, i32* @TSEC_REG_MACSTNADDR2, align 4
  %69 = call i8* @TSEC_READ(%struct.tsec_softc* %67, i32 %68)
  %70 = ptrtoint i8* %69 to i64
  %71 = bitcast %union.anon* %5 to [2 x i64]*
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %71, i64 0, i64 1
  store i64 %70, i64* %72, align 8
  store i32 0, i32* %6, align 4
  br label %73

73:                                               ; preds = %87, %60
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %74, 6
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = bitcast %union.anon* %5 to [6 x i32]*
  %78 = load i32, i32* %6, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds [6 x i32], [6 x i32]* %77, i64 0, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sub nsw i32 5, %83
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %82, i64 %85
  store i32 %81, i32* %86, align 4
  br label %87

87:                                               ; preds = %76
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %73

90:                                               ; preds = %30, %55, %73
  ret void
}

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i8* @TSEC_READ(%struct.tsec_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
