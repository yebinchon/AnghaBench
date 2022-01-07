; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_qlnx_os.c_qlnx_alloc_mem_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i64, i64 }
%struct.qlnx_fastpath = type { i32*, i32, i32, i32 }

@MCLBYTES = common dso_local global i64 0, align 8
@MJUMPAGESIZE = common dso_local global i64 0, align 8
@MJUM9BYTES = common dso_local global i64 0, align 8
@MJUM16BYTES = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.qlnx_fastpath*)* @qlnx_alloc_mem_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnx_alloc_mem_fp(%struct.TYPE_7__* %0, %struct.qlnx_fastpath* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.qlnx_fastpath*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store %struct.qlnx_fastpath* %1, %struct.qlnx_fastpath** %5, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %9 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %10 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %13 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @qlnx_alloc_mem_sb(%struct.TYPE_7__* %8, i32 %11, i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %118

19:                                               ; preds = %2
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %68

24:                                               ; preds = %19
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MCLBYTES, align 8
  %29 = icmp sle i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %24
  %31 = load i64, i64* @MCLBYTES, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %67

34:                                               ; preds = %24
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MJUMPAGESIZE, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i64, i64* @MJUMPAGESIZE, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 2
  store i64 %41, i64* %43, align 8
  br label %66

44:                                               ; preds = %34
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @MJUM9BYTES, align 8
  %49 = icmp sle i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* @MJUM9BYTES, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  br label %65

54:                                               ; preds = %44
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @MJUM16BYTES, align 8
  %59 = icmp sle i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i64, i64* @MJUM16BYTES, align 8
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  br label %65

65:                                               ; preds = %64, %50
  br label %66

66:                                               ; preds = %65, %40
  br label %67

67:                                               ; preds = %66, %30
  br label %83

68:                                               ; preds = %19
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @MCLBYTES, align 8
  %73 = icmp sle i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @MCLBYTES, align 8
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 2
  store i64 %75, i64* %77, align 8
  br label %82

78:                                               ; preds = %68
  %79 = load i64, i64* @MJUMPAGESIZE, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 2
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %82, %67
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %85 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %86 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @qlnx_alloc_mem_rxq(%struct.TYPE_7__* %84, i32 %87)
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %83
  br label %118

92:                                               ; preds = %83
  store i32 0, i32* %7, align 4
  br label %93

93:                                               ; preds = %114, %92
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %117

99:                                               ; preds = %93
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %101 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %102 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %103 = getelementptr inbounds %struct.qlnx_fastpath, %struct.qlnx_fastpath* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @qlnx_alloc_mem_txq(%struct.TYPE_7__* %100, %struct.qlnx_fastpath* %101, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %99
  br label %118

113:                                              ; preds = %99
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %93

117:                                              ; preds = %93
  store i32 0, i32* %3, align 4
  br label %124

118:                                              ; preds = %112, %91, %18
  %119 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %120 = load %struct.qlnx_fastpath*, %struct.qlnx_fastpath** %5, align 8
  %121 = call i32 @qlnx_free_mem_fp(%struct.TYPE_7__* %119, %struct.qlnx_fastpath* %120)
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %3, align 4
  br label %124

124:                                              ; preds = %118, %117
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @qlnx_alloc_mem_sb(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @qlnx_alloc_mem_rxq(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @qlnx_alloc_mem_txq(%struct.TYPE_7__*, %struct.qlnx_fastpath*, i32) #1

declare dso_local i32 @qlnx_free_mem_fp(%struct.TYPE_7__*, %struct.qlnx_fastpath*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
