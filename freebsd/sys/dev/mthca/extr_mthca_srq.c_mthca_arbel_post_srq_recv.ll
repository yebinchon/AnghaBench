; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_mthca_arbel_post_srq_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mthca/extr_mthca_srq.c_mthca_arbel_post_srq_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_recv_wr = type { i32, i32, i64, %struct.ib_recv_wr* }
%struct.mthca_dev = type { i32 }
%struct.mthca_srq = type { i32, i32, i32, i32, i32*, i32*, i32 }
%struct.mthca_next_seg = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"SRQ %06x full\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mthca_arbel_post_srq_recv(%struct.ib_srq* %0, %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %2) #0 {
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_recv_wr*, align 8
  %6 = alloca %struct.ib_recv_wr**, align 8
  %7 = alloca %struct.mthca_dev*, align 8
  %8 = alloca %struct.mthca_srq*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_recv_wr* %1, %struct.ib_recv_wr** %5, align 8
  store %struct.ib_recv_wr** %2, %struct.ib_recv_wr*** %6, align 8
  %16 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %17 = getelementptr inbounds %struct.ib_srq, %struct.ib_srq* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mthca_dev* @to_mdev(i32 %18)
  store %struct.mthca_dev* %19, %struct.mthca_dev** %7, align 8
  %20 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %21 = call %struct.mthca_srq* @to_msrq(%struct.ib_srq* %20)
  store %struct.mthca_srq* %21, %struct.mthca_srq** %8, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %23 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %22, i32 0, i32 3
  %24 = load i64, i64* %9, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %118, %3
  %27 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %28 = icmp ne %struct.ib_recv_wr* %27, null
  br i1 %28, label %29, label %124

29:                                               ; preds = %26
  %30 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %31 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %11, align 4
  %33 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %34 = load i32, i32* %11, align 4
  %35 = call i8* @get_wqe(%struct.mthca_srq* %33, i32 %34)
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = call i32* @wqe_to_link(i8* %36)
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %29
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %7, align 8
  %46 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %47 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %46, i32 0, i32 6
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @mthca_err(%struct.mthca_dev* %45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %10, align 4
  %52 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %53 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %52, %struct.ib_recv_wr** %53, align 8
  br label %124

54:                                               ; preds = %29
  %55 = load i8*, i8** %15, align 8
  %56 = bitcast i8* %55 to %struct.mthca_next_seg*
  %57 = getelementptr inbounds %struct.mthca_next_seg, %struct.mthca_next_seg* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load i8*, i8** %15, align 8
  %59 = getelementptr i8, i8* %58, i64 8
  store i8* %59, i8** %15, align 8
  %60 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %61 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %64 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %54
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %10, align 4
  %73 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %74 = load %struct.ib_recv_wr**, %struct.ib_recv_wr*** %6, align 8
  store %struct.ib_recv_wr* %73, %struct.ib_recv_wr** %74, align 8
  br label %124

75:                                               ; preds = %54
  store i32 0, i32* %14, align 4
  br label %76

76:                                               ; preds = %93, %75
  %77 = load i32, i32* %14, align 4
  %78 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %79 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %76
  %83 = load i8*, i8** %15, align 8
  %84 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %85 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = add nsw i64 %86, %88
  %90 = call i32 @mthca_set_data_seg(i8* %83, i64 %89)
  %91 = load i8*, i8** %15, align 8
  %92 = getelementptr i8, i8* %91, i64 4
  store i8* %92, i8** %15, align 8
  br label %93

93:                                               ; preds = %82
  %94 = load i32, i32* %14, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %76

96:                                               ; preds = %76
  %97 = load i32, i32* %14, align 4
  %98 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %99 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp slt i32 %97, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load i8*, i8** %15, align 8
  %104 = call i32 @mthca_set_data_seg_inval(i8* %103)
  br label %105

105:                                              ; preds = %102, %96
  %106 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %107 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %110 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %109, i32 0, i32 5
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  store i32 %108, i32* %114, align 4
  %115 = load i32, i32* %12, align 4
  %116 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %117 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 8
  br label %118

118:                                              ; preds = %105
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %13, align 4
  %121 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %5, align 8
  %122 = getelementptr inbounds %struct.ib_recv_wr, %struct.ib_recv_wr* %121, i32 0, i32 3
  %123 = load %struct.ib_recv_wr*, %struct.ib_recv_wr** %122, align 8
  store %struct.ib_recv_wr* %123, %struct.ib_recv_wr** %5, align 8
  br label %26

124:                                              ; preds = %70, %44, %26
  %125 = load i32, i32* %13, align 4
  %126 = call i64 @likely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %124
  %129 = load i32, i32* %13, align 4
  %130 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %131 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %132, %129
  store i32 %133, i32* %131, align 8
  %134 = call i32 (...) @wmb()
  %135 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %136 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @cpu_to_be32(i32 %137)
  %139 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %140 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %139, i32 0, i32 4
  %141 = load i32*, i32** %140, align 8
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %128, %124
  %143 = load %struct.mthca_srq*, %struct.mthca_srq** %8, align 8
  %144 = getelementptr inbounds %struct.mthca_srq, %struct.mthca_srq* %143, i32 0, i32 3
  %145 = load i64, i64* %9, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load i32, i32* %10, align 4
  ret i32 %147
}

declare dso_local %struct.mthca_dev* @to_mdev(i32) #1

declare dso_local %struct.mthca_srq* @to_msrq(%struct.ib_srq*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @get_wqe(%struct.mthca_srq*, i32) #1

declare dso_local i32* @wqe_to_link(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mthca_err(%struct.mthca_dev*, i8*, i32) #1

declare dso_local i32 @mthca_set_data_seg(i8*, i64) #1

declare dso_local i32 @mthca_set_data_seg_inval(i8*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
