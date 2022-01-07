; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_rbdr_intr_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vnic/extr_nicvf_main.c_nicvf_rbdr_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nicvf = type { %struct.queue_set* }
%struct.queue_set = type { i32, %struct.rbdr* }
%struct.rbdr = type { i32, i32 }

@NICVF_INTR_RBDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nicvf_rbdr_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_rbdr_intr_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nicvf*, align 8
  %4 = alloca %struct.queue_set*, align 8
  %5 = alloca %struct.rbdr*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.nicvf*
  store %struct.nicvf* %8, %struct.nicvf** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %48, %1
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %12 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %11, i32 0, i32 0
  %13 = load %struct.queue_set*, %struct.queue_set** %12, align 8
  %14 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %9
  %18 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %19 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @nicvf_is_intr_enabled(%struct.nicvf* %18, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %48

24:                                               ; preds = %17
  %25 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %26 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @nicvf_disable_intr(%struct.nicvf* %25, i32 %26, i32 %27)
  %29 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %30 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %29, i32 0, i32 0
  %31 = load %struct.queue_set*, %struct.queue_set** %30, align 8
  store %struct.queue_set* %31, %struct.queue_set** %4, align 8
  %32 = load %struct.queue_set*, %struct.queue_set** %4, align 8
  %33 = getelementptr inbounds %struct.queue_set, %struct.queue_set* %32, i32 0, i32 1
  %34 = load %struct.rbdr*, %struct.rbdr** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %34, i64 %36
  store %struct.rbdr* %37, %struct.rbdr** %5, align 8
  %38 = load %struct.rbdr*, %struct.rbdr** %5, align 8
  %39 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.rbdr*, %struct.rbdr** %5, align 8
  %42 = getelementptr inbounds %struct.rbdr, %struct.rbdr* %41, i32 0, i32 0
  %43 = call i32 @taskqueue_enqueue(i32 %40, i32* %42)
  %44 = load %struct.nicvf*, %struct.nicvf** %3, align 8
  %45 = load i32, i32* @NICVF_INTR_RBDR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @nicvf_clear_intr(%struct.nicvf* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %24, %23
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %9

51:                                               ; preds = %9
  ret void
}

declare dso_local i32 @nicvf_is_intr_enabled(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @nicvf_disable_intr(%struct.nicvf*, i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @nicvf_clear_intr(%struct.nicvf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
