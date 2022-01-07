; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_check_cqe_rx_errs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_check_cqe_rx_errs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.nicvf_drv_stats, %struct.nicvf_hw_stats }
%struct.nicvf_drv_stats = type { i32 }
%struct.nicvf_hw_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.cmp_queue = type { i32 }
%struct.cqe_rx_t = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_check_cqe_rx_errs(%struct.nicvf* %0, %struct.cmp_queue* %1, %struct.cqe_rx_t* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nicvf*, align 8
  %6 = alloca %struct.cmp_queue*, align 8
  %7 = alloca %struct.cqe_rx_t*, align 8
  %8 = alloca %struct.nicvf_hw_stats*, align 8
  %9 = alloca %struct.nicvf_drv_stats*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %5, align 8
  store %struct.cmp_queue* %1, %struct.cmp_queue** %6, align 8
  store %struct.cqe_rx_t* %2, %struct.cqe_rx_t** %7, align 8
  %10 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 1
  store %struct.nicvf_hw_stats* %11, %struct.nicvf_hw_stats** %8, align 8
  %12 = load %struct.nicvf*, %struct.nicvf** %5, align 8
  %13 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %12, i32 0, i32 0
  store %struct.nicvf_drv_stats* %13, %struct.nicvf_drv_stats** %9, align 8
  %14 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %7, align 8
  %15 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %28, label %18

18:                                               ; preds = %3
  %19 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %7, align 8
  %20 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.nicvf_drv_stats*, %struct.nicvf_drv_stats** %9, align 8
  %25 = getelementptr inbounds %struct.nicvf_drv_stats, %struct.nicvf_drv_stats* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  store i32 0, i32* %4, align 4
  br label %153

28:                                               ; preds = %18, %3
  %29 = load %struct.cqe_rx_t*, %struct.cqe_rx_t** %7, align 8
  %30 = getelementptr inbounds %struct.cqe_rx_t, %struct.cqe_rx_t* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  switch i32 %31, label %152 [
    i32 132, label %32
    i32 133, label %37
    i32 134, label %42
    i32 131, label %47
    i32 136, label %52
    i32 145, label %57
    i32 144, label %62
    i32 142, label %67
    i32 146, label %72
    i32 143, label %77
    i32 147, label %82
    i32 151, label %87
    i32 149, label %92
    i32 148, label %97
    i32 150, label %102
    i32 141, label %107
    i32 139, label %112
    i32 140, label %117
    i32 128, label %122
    i32 137, label %127
    i32 130, label %132
    i32 129, label %137
    i32 138, label %142
    i32 135, label %147
  ]

32:                                               ; preds = %28
  %33 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %34 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %33, i32 0, i32 23
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %152

37:                                               ; preds = %28
  %38 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %39 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %38, i32 0, i32 22
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %152

42:                                               ; preds = %28
  %43 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %44 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %43, i32 0, i32 21
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %152

47:                                               ; preds = %28
  %48 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %49 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %48, i32 0, i32 20
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %152

52:                                               ; preds = %28
  %53 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %54 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %53, i32 0, i32 19
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %152

57:                                               ; preds = %28
  %58 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %59 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %58, i32 0, i32 18
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  br label %152

62:                                               ; preds = %28
  %63 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %64 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %63, i32 0, i32 17
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  br label %152

67:                                               ; preds = %28
  %68 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %69 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %68, i32 0, i32 16
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %152

72:                                               ; preds = %28
  %73 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %74 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %73, i32 0, i32 15
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %152

77:                                               ; preds = %28
  %78 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %79 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %78, i32 0, i32 14
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 4
  br label %152

82:                                               ; preds = %28
  %83 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %84 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %83, i32 0, i32 13
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %152

87:                                               ; preds = %28
  %88 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %89 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %88, i32 0, i32 12
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %89, align 4
  br label %152

92:                                               ; preds = %28
  %93 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %94 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %93, i32 0, i32 11
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %152

97:                                               ; preds = %28
  %98 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %99 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %98, i32 0, i32 10
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  br label %152

102:                                              ; preds = %28
  %103 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %104 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %103, i32 0, i32 9
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 4
  br label %152

107:                                              ; preds = %28
  %108 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %109 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %109, align 4
  br label %152

112:                                              ; preds = %28
  %113 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %114 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %113, i32 0, i32 7
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %152

117:                                              ; preds = %28
  %118 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %119 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %119, align 4
  br label %152

122:                                              ; preds = %28
  %123 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %124 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  br label %152

127:                                              ; preds = %28
  %128 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %129 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %152

132:                                              ; preds = %28
  %133 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %134 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  br label %152

137:                                              ; preds = %28
  %138 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %139 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  br label %152

142:                                              ; preds = %28
  %143 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %144 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  br label %152

147:                                              ; preds = %28
  %148 = load %struct.nicvf_hw_stats*, %struct.nicvf_hw_stats** %8, align 8
  %149 = getelementptr inbounds %struct.nicvf_hw_stats, %struct.nicvf_hw_stats* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %149, align 4
  br label %152

152:                                              ; preds = %28, %147, %142, %137, %132, %127, %122, %117, %112, %107, %102, %97, %92, %87, %82, %77, %72, %67, %62, %57, %52, %47, %42, %37, %32
  store i32 1, i32* %4, align 4
  br label %153

153:                                              ; preds = %152, %23
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
