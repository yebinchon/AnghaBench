; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_can_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hwpmc/extr_hwpmc_mod.c_pmc_can_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.proc* }
%struct.proc = type { %struct.ucred* }
%struct.ucred = type { i64, i64, i64, i32, i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmc*, %struct.proc*)* @pmc_can_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_can_attach(%struct.pmc* %0, %struct.proc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pmc*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.proc*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pmc* %0, %struct.pmc** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  %11 = load %struct.pmc*, %struct.pmc** %4, align 8
  %12 = getelementptr inbounds %struct.pmc, %struct.pmc* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.proc*, %struct.proc** %14, align 8
  store %struct.proc* %15, %struct.proc** %6, align 8
  %16 = load %struct.proc*, %struct.proc** %5, align 8
  %17 = icmp eq %struct.proc* %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %121

19:                                               ; preds = %2
  %20 = load %struct.proc*, %struct.proc** %6, align 8
  %21 = call i32 @PROC_LOCK(%struct.proc* %20)
  %22 = load %struct.proc*, %struct.proc** %6, align 8
  %23 = getelementptr inbounds %struct.proc, %struct.proc* %22, i32 0, i32 0
  %24 = load %struct.ucred*, %struct.ucred** %23, align 8
  store %struct.ucred* %24, %struct.ucred** %7, align 8
  %25 = load %struct.ucred*, %struct.ucred** %7, align 8
  %26 = call i32 @crhold(%struct.ucred* %25)
  %27 = load %struct.proc*, %struct.proc** %6, align 8
  %28 = call i32 @PROC_UNLOCK(%struct.proc* %27)
  %29 = load %struct.proc*, %struct.proc** %5, align 8
  %30 = call i32 @PROC_LOCK(%struct.proc* %29)
  %31 = load %struct.proc*, %struct.proc** %5, align 8
  %32 = getelementptr inbounds %struct.proc, %struct.proc* %31, i32 0, i32 0
  %33 = load %struct.ucred*, %struct.ucred** %32, align 8
  store %struct.ucred* %33, %struct.ucred** %8, align 8
  %34 = load %struct.ucred*, %struct.ucred** %8, align 8
  %35 = call i32 @crhold(%struct.ucred* %34)
  %36 = load %struct.proc*, %struct.proc** %5, align 8
  %37 = call i32 @PROC_UNLOCK(%struct.proc* %36)
  %38 = load %struct.ucred*, %struct.ucred** %7, align 8
  %39 = getelementptr inbounds %struct.ucred, %struct.ucred* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ucred*, %struct.ucred** %8, align 8
  %42 = getelementptr inbounds %struct.ucred, %struct.ucred* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %40, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %19
  %46 = load %struct.ucred*, %struct.ucred** %7, align 8
  %47 = getelementptr inbounds %struct.ucred, %struct.ucred* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.ucred*, %struct.ucred** %8, align 8
  %50 = getelementptr inbounds %struct.ucred, %struct.ucred* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.ucred*, %struct.ucred** %7, align 8
  %55 = getelementptr inbounds %struct.ucred, %struct.ucred* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.ucred*, %struct.ucred** %8, align 8
  %58 = getelementptr inbounds %struct.ucred, %struct.ucred* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %56, %59
  br label %61

61:                                               ; preds = %53, %45, %19
  %62 = phi i1 [ false, %45 ], [ false, %19 ], [ %60, %53 ]
  %63 = zext i1 %62 to i32
  store i32 %63, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %88, %61
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %64
  %68 = load i32, i32* %10, align 4
  %69 = load %struct.ucred*, %struct.ucred** %8, align 8
  %70 = getelementptr inbounds %struct.ucred, %struct.ucred* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br label %73

73:                                               ; preds = %67, %64
  %74 = phi i1 [ false, %64 ], [ %72, %67 ]
  br i1 %74, label %75, label %91

75:                                               ; preds = %73
  %76 = load %struct.ucred*, %struct.ucred** %8, align 8
  %77 = getelementptr inbounds %struct.ucred, %struct.ucred* %76, i32 0, i32 6
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ucred*, %struct.ucred** %7, align 8
  %84 = call i32 @groupmember(i32 %82, %struct.ucred* %83)
  %85 = icmp ne i32 %84, 0
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %75
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %64

91:                                               ; preds = %73
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load %struct.ucred*, %struct.ucred** %8, align 8
  %96 = getelementptr inbounds %struct.ucred, %struct.ucred* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.ucred*, %struct.ucred** %7, align 8
  %99 = call i32 @groupmember(i32 %97, %struct.ucred* %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.ucred*, %struct.ucred** %8, align 8
  %103 = getelementptr inbounds %struct.ucred, %struct.ucred* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.ucred*, %struct.ucred** %7, align 8
  %106 = call i32 @groupmember(i32 %104, %struct.ucred* %105)
  %107 = icmp ne i32 %106, 0
  %108 = xor i1 %107, true
  br label %109

109:                                              ; preds = %101, %94
  %110 = phi i1 [ true, %94 ], [ %108, %101 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %9, align 4
  br label %112

112:                                              ; preds = %109, %91
  %113 = load %struct.ucred*, %struct.ucred** %8, align 8
  %114 = call i32 @crfree(%struct.ucred* %113)
  %115 = load %struct.ucred*, %struct.ucred** %7, align 8
  %116 = call i32 @crfree(%struct.ucred* %115)
  %117 = load i32, i32* %9, align 4
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %3, align 4
  br label %121

121:                                              ; preds = %112, %18
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @groupmember(i32, %struct.ucred*) #1

declare dso_local i32 @crfree(%struct.ucred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
