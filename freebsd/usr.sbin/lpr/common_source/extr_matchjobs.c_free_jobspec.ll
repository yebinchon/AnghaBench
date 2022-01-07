; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_free_jobspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_free_jobspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobspec_hdr = type { i32 }
%struct.jobspec = type { %struct.jobspec*, %struct.jobspec* }

@nextjs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @free_jobspec(%struct.jobspec_hdr* %0) #0 {
  %2 = alloca %struct.jobspec_hdr*, align 8
  %3 = alloca %struct.jobspec*, align 8
  store %struct.jobspec_hdr* %0, %struct.jobspec_hdr** %2, align 8
  br label %4

4:                                                ; preds = %34, %1
  %5 = load %struct.jobspec_hdr*, %struct.jobspec_hdr** %2, align 8
  %6 = call i32 @STAILQ_EMPTY(%struct.jobspec_hdr* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  br i1 %8, label %9, label %37

9:                                                ; preds = %4
  %10 = load %struct.jobspec_hdr*, %struct.jobspec_hdr** %2, align 8
  %11 = call %struct.jobspec* @STAILQ_FIRST(%struct.jobspec_hdr* %10)
  store %struct.jobspec* %11, %struct.jobspec** %3, align 8
  %12 = load %struct.jobspec_hdr*, %struct.jobspec_hdr** %2, align 8
  %13 = load i32, i32* @nextjs, align 4
  %14 = call i32 @STAILQ_REMOVE_HEAD(%struct.jobspec_hdr* %12, i32 %13)
  %15 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %16 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %15, i32 0, i32 1
  %17 = load %struct.jobspec*, %struct.jobspec** %16, align 8
  %18 = icmp ne %struct.jobspec* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %9
  %20 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %21 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %20, i32 0, i32 1
  %22 = load %struct.jobspec*, %struct.jobspec** %21, align 8
  %23 = call i32 @free(%struct.jobspec* %22)
  br label %24

24:                                               ; preds = %19, %9
  %25 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %26 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %25, i32 0, i32 0
  %27 = load %struct.jobspec*, %struct.jobspec** %26, align 8
  %28 = icmp ne %struct.jobspec* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %31 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %30, i32 0, i32 0
  %32 = load %struct.jobspec*, %struct.jobspec** %31, align 8
  %33 = call i32 @free(%struct.jobspec* %32)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.jobspec*, %struct.jobspec** %3, align 8
  %36 = call i32 @free(%struct.jobspec* %35)
  br label %4

37:                                               ; preds = %4
  ret void
}

declare dso_local i32 @STAILQ_EMPTY(%struct.jobspec_hdr*) #1

declare dso_local %struct.jobspec* @STAILQ_FIRST(%struct.jobspec_hdr*) #1

declare dso_local i32 @STAILQ_REMOVE_HEAD(%struct.jobspec_hdr*, i32) #1

declare dso_local i32 @free(%struct.jobspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
