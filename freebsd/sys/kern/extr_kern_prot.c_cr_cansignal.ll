; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_cr_cansignal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_prot.c_cr_cansignal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i64, i64 }
%struct.proc = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@conservative_signals = common dso_local global i64 0, align 8
@P_SUGID = common dso_local global i32 0, align 4
@PRIV_SIGNAL_SUGID = common dso_local global i32 0, align 4
@PRIV_SIGNAL_DIFFCRED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cr_cansignal(%struct.ucred* %0, %struct.proc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.proc* %1, %struct.proc** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.proc*, %struct.proc** %6, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @PROC_LOCK_ASSERT(%struct.proc* %9, i32 %10)
  %12 = load %struct.ucred*, %struct.ucred** %5, align 8
  %13 = load %struct.proc*, %struct.proc** %6, align 8
  %14 = getelementptr inbounds %struct.proc, %struct.proc* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = call i32 @prison_check(%struct.ucred* %12, %struct.TYPE_4__* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %112

21:                                               ; preds = %3
  %22 = load %struct.ucred*, %struct.ucred** %5, align 8
  %23 = load %struct.proc*, %struct.proc** %6, align 8
  %24 = getelementptr inbounds %struct.proc, %struct.proc* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = call i32 @cr_canseeotheruids(%struct.ucred* %22, %struct.TYPE_4__* %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %4, align 4
  br label %112

30:                                               ; preds = %21
  %31 = load %struct.ucred*, %struct.ucred** %5, align 8
  %32 = load %struct.proc*, %struct.proc** %6, align 8
  %33 = getelementptr inbounds %struct.proc, %struct.proc* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @cr_canseeothergids(%struct.ucred* %31, %struct.TYPE_4__* %34)
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %4, align 4
  br label %112

39:                                               ; preds = %30
  %40 = load i64, i64* @conservative_signals, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %39
  %43 = load %struct.proc*, %struct.proc** %6, align 8
  %44 = getelementptr inbounds %struct.proc, %struct.proc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @P_SUGID, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  switch i32 %50, label %52 [
    i32 0, label %51
    i32 135, label %51
    i32 136, label %51
    i32 133, label %51
    i32 138, label %51
    i32 134, label %51
    i32 131, label %51
    i32 130, label %51
    i32 132, label %51
    i32 137, label %51
    i32 129, label %51
    i32 128, label %51
  ]

51:                                               ; preds = %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49, %49
  br label %61

52:                                               ; preds = %49
  %53 = load %struct.ucred*, %struct.ucred** %5, align 8
  %54 = load i32, i32* @PRIV_SIGNAL_SUGID, align 4
  %55 = call i32 @priv_check_cred(%struct.ucred* %53, i32 %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %112

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %51
  br label %62

62:                                               ; preds = %61, %42, %39
  %63 = load %struct.ucred*, %struct.ucred** %5, align 8
  %64 = getelementptr inbounds %struct.ucred, %struct.ucred* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.proc*, %struct.proc** %6, align 8
  %67 = getelementptr inbounds %struct.proc, %struct.proc* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %65, %70
  br i1 %71, label %72, label %111

72:                                               ; preds = %62
  %73 = load %struct.ucred*, %struct.ucred** %5, align 8
  %74 = getelementptr inbounds %struct.ucred, %struct.ucred* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.proc*, %struct.proc** %6, align 8
  %77 = getelementptr inbounds %struct.proc, %struct.proc* %76, i32 0, i32 1
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %75, %80
  br i1 %81, label %82, label %111

82:                                               ; preds = %72
  %83 = load %struct.ucred*, %struct.ucred** %5, align 8
  %84 = getelementptr inbounds %struct.ucred, %struct.ucred* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.proc*, %struct.proc** %6, align 8
  %87 = getelementptr inbounds %struct.proc, %struct.proc* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %85, %90
  br i1 %91, label %92, label %111

92:                                               ; preds = %82
  %93 = load %struct.ucred*, %struct.ucred** %5, align 8
  %94 = getelementptr inbounds %struct.ucred, %struct.ucred* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.proc*, %struct.proc** %6, align 8
  %97 = getelementptr inbounds %struct.proc, %struct.proc* %96, i32 0, i32 1
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %95, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %92
  %103 = load %struct.ucred*, %struct.ucred** %5, align 8
  %104 = load i32, i32* @PRIV_SIGNAL_DIFFCRED, align 4
  %105 = call i32 @priv_check_cred(%struct.ucred* %103, i32 %104)
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %8, align 4
  store i32 %109, i32* %4, align 4
  br label %112

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %92, %82, %72, %62
  store i32 0, i32* %4, align 4
  br label %112

112:                                              ; preds = %111, %108, %58, %37, %28, %19
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @PROC_LOCK_ASSERT(%struct.proc*, i32) #1

declare dso_local i32 @prison_check(%struct.ucred*, %struct.TYPE_4__*) #1

declare dso_local i32 @cr_canseeotheruids(%struct.ucred*, %struct.TYPE_4__*) #1

declare dso_local i32 @cr_canseeothergids(%struct.ucred*, %struct.TYPE_4__*) #1

declare dso_local i32 @priv_check_cred(%struct.ucred*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
