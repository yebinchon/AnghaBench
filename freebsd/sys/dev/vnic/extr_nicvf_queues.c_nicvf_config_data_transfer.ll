; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_config_data_transfer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_config_data_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i32, i32, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nicvf_config_data_transfer(%struct.nicvf* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nicvf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.queue_set*, align 8
  %8 = alloca i32, align 4
  store %struct.nicvf* %0, %struct.nicvf** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %11 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %10, i32 0, i32 0
  %12 = load %struct.queue_set*, %struct.queue_set** %11, align 8
  store %struct.queue_set* %12, %struct.queue_set** %7, align 8
  %13 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %14 = icmp eq %struct.queue_set* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %158

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %90

19:                                               ; preds = %16
  %20 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %21 = call i64 @nicvf_alloc_resources(%struct.nicvf* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  store i32 %24, i32* %3, align 4
  br label %158

25:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %38, %25
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %29 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %34 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @nicvf_snd_queue_config(%struct.nicvf* %33, %struct.queue_set* %34, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %26

41:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %54, %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %45 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %50 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @nicvf_cmp_queue_config(%struct.nicvf* %49, %struct.queue_set* %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %48
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %42

57:                                               ; preds = %42
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %70, %57
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %61 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %66 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @nicvf_rbdr_config(%struct.nicvf* %65, %struct.queue_set* %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %8, align 4
  br label %58

73:                                               ; preds = %58
  store i32 0, i32* %8, align 4
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %77 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %89

80:                                               ; preds = %74
  %81 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %82 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @nicvf_rcv_queue_config(%struct.nicvf* %81, %struct.queue_set* %82, i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  br label %74

89:                                               ; preds = %74
  br label %157

90:                                               ; preds = %16
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %103, %90
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %94 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %91
  %98 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %99 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 @nicvf_rcv_queue_config(%struct.nicvf* %98, %struct.queue_set* %99, i32 %100, i32 %101)
  br label %103

103:                                              ; preds = %97
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  br label %91

106:                                              ; preds = %91
  store i32 0, i32* %8, align 4
  br label %107

107:                                              ; preds = %119, %106
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %110 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %122

113:                                              ; preds = %107
  %114 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %115 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @nicvf_rbdr_config(%struct.nicvf* %114, %struct.queue_set* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %113
  %120 = load i32, i32* %8, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %8, align 4
  br label %107

122:                                              ; preds = %107
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %135, %122
  %124 = load i32, i32* %8, align 4
  %125 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %126 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %123
  %130 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %131 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %132 = load i32, i32* %8, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @nicvf_snd_queue_config(%struct.nicvf* %130, %struct.queue_set* %131, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %123

138:                                              ; preds = %123
  store i32 0, i32* %8, align 4
  br label %139

139:                                              ; preds = %151, %138
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %142 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %139
  %146 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %147 = load %struct.queue_set*, %struct.queue_set** %7, align 8
  %148 = load i32, i32* %8, align 4
  %149 = load i32, i32* %6, align 4
  %150 = call i32 @nicvf_cmp_queue_config(%struct.nicvf* %146, %struct.queue_set* %147, i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %139

154:                                              ; preds = %139
  %155 = load %struct.nicvf*, %struct.nicvf** %4, align 8
  %156 = call i32 @nicvf_free_resources(%struct.nicvf* %155)
  br label %157

157:                                              ; preds = %154, %89
  store i32 0, i32* %3, align 4
  br label %158

158:                                              ; preds = %157, %23, %15
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i64 @nicvf_alloc_resources(%struct.nicvf*) #1

declare dso_local i32 @nicvf_snd_queue_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_cmp_queue_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_rbdr_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_rcv_queue_config(%struct.nicvf*, %struct.queue_set*, i32, i32) #1

declare dso_local i32 @nicvf_free_resources(%struct.nicvf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
