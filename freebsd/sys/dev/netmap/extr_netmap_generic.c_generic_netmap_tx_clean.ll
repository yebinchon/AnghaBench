; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_netmap_tx_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/netmap/extr_netmap_generic.c_generic_netmap_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netmap_kring = type { i64, i64, i64, i32, i32*, %struct.mbuf** }
%struct.mbuf = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"hwcur = %d, hwtail = %d\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Is this happening?\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"tx completed [%d] -> hwtail %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.netmap_kring*, i32)* @generic_netmap_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @generic_netmap_tx_clean(%struct.netmap_kring* %0, i32 %1) #0 {
  %3 = alloca %struct.netmap_kring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.mbuf*, align 8
  %11 = alloca i32, align 4
  store %struct.netmap_kring* %0, %struct.netmap_kring** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %13 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %14, 1
  store i64 %15, i64* %5, align 8
  %16 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %17 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i64 @nm_next(i64 %18, i64 %19)
  store i64 %20, i64* %6, align 8
  %21 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %22 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %24 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %25 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %24, i32 0, i32 5
  %26 = load %struct.mbuf**, %struct.mbuf*** %25, align 8
  store %struct.mbuf** %26, %struct.mbuf*** %9, align 8
  %27 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %28 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %31 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @nm_prdis(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %32)
  br label %34

34:                                               ; preds = %97, %2
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %103

38:                                               ; preds = %34
  %39 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %40 = load i64, i64* %6, align 8
  %41 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %39, i64 %40
  %42 = load %struct.mbuf*, %struct.mbuf** %41, align 8
  store %struct.mbuf* %42, %struct.mbuf** %10, align 8
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %47 = icmp eq %struct.mbuf* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @nm_prlim(i32 3, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %67

50:                                               ; preds = %45
  %51 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %52 = call i64 @MBUF_QUEUED(%struct.mbuf* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %103

55:                                               ; preds = %50
  %56 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %57 = call i32 @MBUF_REFCNT(%struct.mbuf* %56)
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %61 = call i32 @m_freem(%struct.mbuf* %60)
  %62 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %63 = load i64, i64* %6, align 8
  %64 = getelementptr inbounds %struct.mbuf*, %struct.mbuf** %62, i64 %63
  store %struct.mbuf* null, %struct.mbuf** %64, align 8
  br label %65

65:                                               ; preds = %59, %55
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66, %48
  br label %97

68:                                               ; preds = %38
  %69 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %70 = icmp eq %struct.mbuf* %69, null
  %71 = zext i1 %70 to i32
  %72 = call i64 @unlikely(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %68
  %75 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %76 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %75, i32 0, i32 3
  %77 = call i32 @mtx_lock_spin(i32* %76)
  %78 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %79 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %78, i32 0, i32 4
  %80 = load i32*, i32** %79, align 8
  %81 = icmp eq i32* %80, null
  %82 = zext i1 %81 to i32
  store i32 %82, i32* %11, align 4
  %83 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %84 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %83, i32 0, i32 3
  %85 = call i32 @mtx_unlock_spin(i32* %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %74
  br label %103

89:                                               ; preds = %74
  br label %96

90:                                               ; preds = %68
  %91 = load %struct.mbuf*, %struct.mbuf** %10, align 8
  %92 = call i32 @MBUF_REFCNT(%struct.mbuf* %91)
  %93 = icmp ne i32 %92, 1
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %103

95:                                               ; preds = %90
  br label %96

96:                                               ; preds = %95, %89
  br label %97

97:                                               ; preds = %96, %67
  %98 = load i64, i64* %8, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %6, align 8
  %101 = load i64, i64* %5, align 8
  %102 = call i64 @nm_next(i64 %100, i64 %101)
  store i64 %102, i64* %6, align 8
  br label %34

103:                                              ; preds = %94, %88, %54, %34
  %104 = load i64, i64* %6, align 8
  %105 = load i64, i64* %5, align 8
  %106 = call i64 @nm_prev(i64 %104, i64 %105)
  %107 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %108 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.netmap_kring*, %struct.netmap_kring** %3, align 8
  %111 = getelementptr inbounds %struct.netmap_kring, %struct.netmap_kring* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @nm_prdis(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i64 %109, i64 %112)
  %114 = load i64, i64* %8, align 8
  ret i64 %114
}

declare dso_local i64 @nm_next(i64, i64) #1

declare dso_local i32 @nm_prdis(i8*, i64, i64) #1

declare dso_local i32 @nm_prlim(i32, i8*) #1

declare dso_local i64 @MBUF_QUEUED(%struct.mbuf*) #1

declare dso_local i32 @MBUF_REFCNT(%struct.mbuf*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i64 @nm_prev(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
