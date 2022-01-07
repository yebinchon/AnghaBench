; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qlist_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_tx.c_sfxge_tx_qlist_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_txq = type { i64, i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"txq->n_pend_desc == 0\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"txq->n_pend_desc too large\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"txq->blocked\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"efx_tx_qdesc_post() failed\00", align 1
@.str.4 = private unnamed_addr constant [45 x i8] c"efx_tx_qdesc_post() refragmented descriptors\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"overfilled TX queue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_txq*)* @sfxge_tx_qlist_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_tx_qlist_post(%struct.sfxge_txq* %0) #0 {
  %2 = alloca %struct.sfxge_txq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sfxge_txq* %0, %struct.sfxge_txq** %2, align 8
  %7 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %8 = call i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq* %7)
  %9 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %10 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %16 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %19 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %17, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %25 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @KASSERT(i32 %29, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %31 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %32 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %3, align 4
  %34 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %35 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %38 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %41 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %44 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %47 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %46, i32 0, i32 3
  %48 = call i32 @efx_tx_qdesc_post(i32 %36, i32 %39, i64 %42, i32 %45, i32* %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @KASSERT(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %53 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %54 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sub i32 %55, %56
  %58 = zext i32 %57 to i64
  %59 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %60 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %58, %61
  %63 = zext i1 %62 to i32
  %64 = call i32 @KASSERT(i32 %63, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0))
  %65 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %66 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %69 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = sub i32 %67, %70
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %74 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %73, i32 0, i32 5
  %75 = load i32, i32* %74, align 4
  %76 = icmp ule i32 %72, %75
  %77 = zext i1 %76 to i32
  %78 = call i32 @KASSERT(i32 %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  %79 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %80 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %79, i32 0, i32 0
  store i64 0, i64* %80, align 8
  %81 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %82 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @EFX_TXQ_LIMIT(i32 %83)
  %85 = zext i32 %84 to i64
  %86 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %87 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %1
  br label %129

95:                                               ; preds = %1
  %96 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %97 = call i32 @sfxge_tx_qreap(%struct.sfxge_txq* %96)
  %98 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %99 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %102 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = sub i32 %100, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %4, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %129

109:                                              ; preds = %95
  %110 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %111 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %110, i32 0, i32 2
  store i32 1, i32* %111, align 8
  %112 = call i32 (...) @mb()
  %113 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %114 = call i32 @sfxge_tx_qreap(%struct.sfxge_txq* %113)
  %115 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %116 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %119 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = sub i32 %117, %120
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %4, align 4
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %109
  %126 = call i32 (...) @mb()
  %127 = load %struct.sfxge_txq*, %struct.sfxge_txq** %2, align 8
  %128 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %127, i32 0, i32 2
  store i32 0, i32* %128, align 8
  br label %129

129:                                              ; preds = %94, %108, %125, %109
  ret void
}

declare dso_local i32 @SFXGE_TXQ_LOCK_ASSERT_OWNED(%struct.sfxge_txq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @efx_tx_qdesc_post(i32, i32, i64, i32, i32*) #1

declare dso_local i32 @EFX_TXQ_LIMIT(i32) #1

declare dso_local i32 @sfxge_tx_qreap(%struct.sfxge_txq*) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
