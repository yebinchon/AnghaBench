; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/w/extr_proc_compare.c_proc_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/w/extr_proc_compare.c_proc_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kinfo_proc = type { i64, i64, i64, i32, i32 }

@SZOMB = common dso_local global i64 0, align 8
@TDF_SINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proc_compare(%struct.kinfo_proc* %0, %struct.kinfo_proc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kinfo_proc*, align 8
  %5 = alloca %struct.kinfo_proc*, align 8
  store %struct.kinfo_proc* %0, %struct.kinfo_proc** %4, align 8
  store %struct.kinfo_proc* %1, %struct.kinfo_proc** %5, align 8
  %6 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %7 = icmp eq %struct.kinfo_proc* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %126

9:                                                ; preds = %2
  %10 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %11 = call i32 @ISRUN(%struct.kinfo_proc* %10)
  %12 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %13 = call i32 @ISRUN(%struct.kinfo_proc* %12)
  %14 = call i32 @TESTAB(i32 %11, i32 %13)
  switch i32 %14, label %44 [
    i32 129, label %15
    i32 128, label %16
    i32 130, label %17
  ]

15:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %126

16:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %126

17:                                               ; preds = %9
  %18 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %19 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %22 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = icmp sgt i32 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %126

26:                                               ; preds = %17
  %27 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %28 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %31 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %126

35:                                               ; preds = %26
  %36 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %37 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %40 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %38, %41
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %126

44:                                               ; preds = %9
  %45 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %46 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SZOMB, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %52 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SZOMB, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @TESTAB(i32 %50, i32 %56)
  switch i32 %57, label %69 [
    i32 129, label %58
    i32 128, label %59
    i32 130, label %60
  ]

58:                                               ; preds = %44
  store i32 1, i32* %3, align 4
  br label %126

59:                                               ; preds = %44
  store i32 0, i32* %3, align 4
  br label %126

60:                                               ; preds = %44
  %61 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %62 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %65 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sgt i64 %63, %66
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %3, align 4
  br label %126

69:                                               ; preds = %44
  %70 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %71 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %74 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = icmp sgt i64 %72, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  store i32 0, i32* %3, align 4
  br label %126

78:                                               ; preds = %69
  %79 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %80 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %83 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  store i32 1, i32* %3, align 4
  br label %126

87:                                               ; preds = %78
  %88 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %89 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TDF_SINTR, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %87
  %95 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %96 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @TDF_SINTR, align 4
  %99 = and i32 %97, %98
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %94
  store i32 1, i32* %3, align 4
  br label %126

102:                                              ; preds = %94, %87
  %103 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %104 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TDF_SINTR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %102
  %110 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %111 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @TDF_SINTR, align 4
  %114 = and i32 %112, %113
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %126

117:                                              ; preds = %109, %102
  %118 = load %struct.kinfo_proc*, %struct.kinfo_proc** %5, align 8
  %119 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.kinfo_proc*, %struct.kinfo_proc** %4, align 8
  %122 = getelementptr inbounds %struct.kinfo_proc, %struct.kinfo_proc* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp sgt i64 %120, %123
  %125 = zext i1 %124 to i32
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %117, %116, %101, %86, %77, %60, %59, %58, %35, %34, %25, %16, %15, %8
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @TESTAB(i32, i32) #1

declare dso_local i32 @ISRUN(%struct.kinfo_proc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
