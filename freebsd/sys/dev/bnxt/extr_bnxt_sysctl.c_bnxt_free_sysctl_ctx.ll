; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_free_sysctl_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_bnxt_sysctl.c_bnxt_free_sysctl_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32*, i32, i32*, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32*, i32 }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.TYPE_3__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnxt_free_sysctl_ctx(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %6 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %5, i32 0, i32 6
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %1
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %10, i32 0, i32 7
  %12 = call i32 @sysctl_ctx_free(i32* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  store i32 %16, i32* %4, align 4
  br label %20

17:                                               ; preds = %9
  %18 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %19 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %18, i32 0, i32 6
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %17, %15
  br label %21

21:                                               ; preds = %20, %1
  %22 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %23 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %22, i32 0, i32 5
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %44

28:                                               ; preds = %21
  %29 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %29, i32 0, i32 5
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = call i32 @sysctl_ctx_free(i32* %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %28
  %37 = load i32, i32* %3, align 4
  store i32 %37, i32* %4, align 4
  br label %43

38:                                               ; preds = %28
  %39 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %40 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %39, i32 0, i32 5
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %38, %36
  br label %44

44:                                               ; preds = %43, %21
  %45 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %46 = call i64 @BNXT_PF(%struct.bnxt_softc* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %49, i32 0, i32 4
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %71

55:                                               ; preds = %48
  %56 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = call i32 @sysctl_ctx_free(i32* %59)
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32, i32* %3, align 4
  store i32 %64, i32* %4, align 4
  br label %70

65:                                               ; preds = %55
  %66 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %67 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %66, i32 0, i32 4
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %65, %63
  br label %71

71:                                               ; preds = %70, %48, %44
  %72 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %73 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %78 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %77, i32 0, i32 3
  %79 = call i32 @sysctl_ctx_free(i32* %78)
  store i32 %79, i32* %3, align 4
  %80 = load i32, i32* %3, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %3, align 4
  store i32 %83, i32* %4, align 4
  br label %87

84:                                               ; preds = %76
  %85 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %86 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %85, i32 0, i32 2
  store i32* null, i32** %86, align 8
  br label %87

87:                                               ; preds = %84, %82
  br label %88

88:                                               ; preds = %87, %71
  %89 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %90 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %105

93:                                               ; preds = %88
  %94 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %95 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %94, i32 0, i32 1
  %96 = call i32 @sysctl_ctx_free(i32* %95)
  store i32 %96, i32* %3, align 4
  %97 = load i32, i32* %3, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %93
  %100 = load i32, i32* %3, align 4
  store i32 %100, i32* %4, align 4
  br label %104

101:                                              ; preds = %93
  %102 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %103 = getelementptr inbounds %struct.bnxt_softc, %struct.bnxt_softc* %102, i32 0, i32 0
  store i32* null, i32** %103, align 8
  br label %104

104:                                              ; preds = %101, %99
  br label %105

105:                                              ; preds = %104, %88
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i32 @sysctl_ctx_free(i32*) #1

declare dso_local i64 @BNXT_PF(%struct.bnxt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
