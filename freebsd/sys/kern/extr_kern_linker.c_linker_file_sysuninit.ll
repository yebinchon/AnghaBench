; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_sysuninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_linker.c_linker_file_sysuninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.sysinit = type { i64, i64, i32, i32 (i32)* }

@FILE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"linker_file_sysuninit: calling SYSUNINITs for %s\0A\00", align 1
@kld_sx = common dso_local global i32 0, align 4
@SA_XLOCKED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sysuninit_set\00", align 1
@Giant = common dso_local global i32 0, align 4
@SI_SUB_DUMMY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @linker_file_sysuninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @linker_file_sysuninit(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.sysinit**, align 8
  %4 = alloca %struct.sysinit**, align 8
  %5 = alloca %struct.sysinit**, align 8
  %6 = alloca %struct.sysinit**, align 8
  %7 = alloca %struct.sysinit*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %8 = load i32, i32* @FILE, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = call i32 @KLD_DPF(i32 %8, i8* %13)
  %15 = load i32, i32* @SA_XLOCKED, align 4
  %16 = call i32 @sx_assert(i32* @kld_sx, i32 %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %18 = call i64 @linker_file_lookup_set(%struct.TYPE_4__* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), %struct.sysinit*** %3, %struct.sysinit*** %4, i32* null)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  br label %112

21:                                               ; preds = %1
  %22 = load %struct.sysinit**, %struct.sysinit*** %3, align 8
  store %struct.sysinit** %22, %struct.sysinit*** %5, align 8
  br label %23

23:                                               ; preds = %77, %21
  %24 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %25 = load %struct.sysinit**, %struct.sysinit*** %4, align 8
  %26 = icmp ult %struct.sysinit** %24, %25
  br i1 %26, label %27, label %80

27:                                               ; preds = %23
  %28 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %29 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %28, i64 1
  store %struct.sysinit** %29, %struct.sysinit*** %6, align 8
  br label %30

30:                                               ; preds = %73, %27
  %31 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %32 = load %struct.sysinit**, %struct.sysinit*** %4, align 8
  %33 = icmp ult %struct.sysinit** %31, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %30
  %35 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %36 = load %struct.sysinit*, %struct.sysinit** %35, align 8
  %37 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %40 = load %struct.sysinit*, %struct.sysinit** %39, align 8
  %41 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %38, %42
  br i1 %43, label %64, label %44

44:                                               ; preds = %34
  %45 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %46 = load %struct.sysinit*, %struct.sysinit** %45, align 8
  %47 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %50 = load %struct.sysinit*, %struct.sysinit** %49, align 8
  %51 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %44
  %55 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %56 = load %struct.sysinit*, %struct.sysinit** %55, align 8
  %57 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %60 = load %struct.sysinit*, %struct.sysinit** %59, align 8
  %61 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %58, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %54, %34
  br label %73

65:                                               ; preds = %54, %44
  %66 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %67 = load %struct.sysinit*, %struct.sysinit** %66, align 8
  store %struct.sysinit* %67, %struct.sysinit** %7, align 8
  %68 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %69 = load %struct.sysinit*, %struct.sysinit** %68, align 8
  %70 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  store %struct.sysinit* %69, %struct.sysinit** %70, align 8
  %71 = load %struct.sysinit*, %struct.sysinit** %7, align 8
  %72 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  store %struct.sysinit* %71, %struct.sysinit** %72, align 8
  br label %73

73:                                               ; preds = %65, %64
  %74 = load %struct.sysinit**, %struct.sysinit*** %6, align 8
  %75 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %74, i32 1
  store %struct.sysinit** %75, %struct.sysinit*** %6, align 8
  br label %30

76:                                               ; preds = %30
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %79 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %78, i32 1
  store %struct.sysinit** %79, %struct.sysinit*** %5, align 8
  br label %23

80:                                               ; preds = %23
  %81 = call i32 @sx_xunlock(i32* @kld_sx)
  %82 = call i32 @mtx_lock(i32* @Giant)
  %83 = load %struct.sysinit**, %struct.sysinit*** %3, align 8
  store %struct.sysinit** %83, %struct.sysinit*** %5, align 8
  br label %84

84:                                               ; preds = %106, %80
  %85 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %86 = load %struct.sysinit**, %struct.sysinit*** %4, align 8
  %87 = icmp ult %struct.sysinit** %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %84
  %89 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %90 = load %struct.sysinit*, %struct.sysinit** %89, align 8
  %91 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SI_SUB_DUMMY, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %106

96:                                               ; preds = %88
  %97 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %98 = load %struct.sysinit*, %struct.sysinit** %97, align 8
  %99 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %98, i32 0, i32 3
  %100 = load i32 (i32)*, i32 (i32)** %99, align 8
  %101 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %102 = load %struct.sysinit*, %struct.sysinit** %101, align 8
  %103 = getelementptr inbounds %struct.sysinit, %struct.sysinit* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 %100(i32 %104)
  br label %106

106:                                              ; preds = %96, %95
  %107 = load %struct.sysinit**, %struct.sysinit*** %5, align 8
  %108 = getelementptr inbounds %struct.sysinit*, %struct.sysinit** %107, i32 1
  store %struct.sysinit** %108, %struct.sysinit*** %5, align 8
  br label %84

109:                                              ; preds = %84
  %110 = call i32 @mtx_unlock(i32* @Giant)
  %111 = call i32 @sx_xlock(i32* @kld_sx)
  br label %112

112:                                              ; preds = %109, %20
  ret void
}

declare dso_local i32 @KLD_DPF(i32, i8*) #1

declare dso_local i32 @sx_assert(i32*, i32) #1

declare dso_local i64 @linker_file_lookup_set(%struct.TYPE_4__*, i8*, %struct.sysinit***, %struct.sysinit***, i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @sx_xlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
