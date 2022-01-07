; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_free_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_queues.c_nicvf_free_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i32, i32, i32, i32*, i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nicvf*)* @nicvf_free_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_free_resources(%struct.nicvf* %0) #0 {
  %2 = alloca %struct.nicvf*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.queue_set*, align 8
  store %struct.nicvf* %0, %struct.nicvf** %2, align 8
  %5 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %6 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %5, i32 0, i32 0
  %7 = load %struct.queue_set*, %struct.queue_set** %6, align 8
  store %struct.queue_set* %7, %struct.queue_set** %4, align 8
  %8 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %9 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %8, i32 0, i32 6
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %35

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %21, %12
  %14 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %15 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %14, i32 0, i32 6
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %18 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %17, i32 0, i32 7
  %19 = call i64 @taskqueue_cancel(i32* %16, i32* %18, i32* null)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %13
  %22 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %23 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %26 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %25, i32 0, i32 7
  %27 = call i32 @taskqueue_drain(i32* %24, i32* %26)
  br label %13

28:                                               ; preds = %13
  %29 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %30 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %29, i32 0, i32 6
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @taskqueue_free(i32* %31)
  %33 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %34 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %33, i32 0, i32 6
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %1
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %51, %35
  %37 = load i32, i32* %3, align 4
  %38 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %39 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %54

42:                                               ; preds = %36
  %43 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %44 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %45 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = call i32 @nicvf_free_rbdr(%struct.nicvf* %43, i32* %49)
  br label %51

51:                                               ; preds = %42
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %36

54:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %70, %54
  %56 = load i32, i32* %3, align 4
  %57 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %58 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp slt i32 %56, %59
  br i1 %60, label %61, label %73

61:                                               ; preds = %55
  %62 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %63 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %64 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = call i32 @nicvf_free_cmp_queue(%struct.nicvf* %62, i32* %68)
  br label %70

70:                                               ; preds = %61
  %71 = load i32, i32* %3, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %3, align 4
  br label %55

73:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %89, %73
  %75 = load i32, i32* %3, align 4
  %76 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %77 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = icmp slt i32 %75, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %74
  %81 = load %struct.nicvf*, %struct.nicvf** %2, align 8
  %82 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %83 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %82, i32 0, i32 3
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = call i32 @nicvf_free_snd_queue(%struct.nicvf* %81, i32* %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %3, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %3, align 4
  br label %74

92:                                               ; preds = %74
  ret void
}

declare dso_local i64 @taskqueue_cancel(i32*, i32*, i32*) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @nicvf_free_rbdr(%struct.nicvf*, i32*) #1

declare dso_local i32 @nicvf_free_cmp_queue(%struct.nicvf*, i32*) #1

declare dso_local i32 @nicvf_free_snd_queue(%struct.nicvf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
