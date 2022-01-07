; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_start_transaction_bio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_devstat.c_devstat_start_transaction_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devstat = type { i32 }
%struct.bio = type { i32 }

@devstat_mutex = common dso_local global i32 0, align 4
@MA_NOTOWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devstat_start_transaction_bio(%struct.devstat* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.devstat*, align 8
  %4 = alloca %struct.bio*, align 8
  store %struct.devstat* %0, %struct.devstat** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %5 = load i32, i32* @MA_NOTOWNED, align 4
  %6 = call i32 @mtx_assert(i32* @devstat_mutex, i32 %5)
  %7 = load %struct.devstat*, %struct.devstat** %3, align 8
  %8 = icmp eq %struct.devstat* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %19

10:                                               ; preds = %2
  %11 = load %struct.bio*, %struct.bio** %4, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 0
  %13 = call i32 @binuptime(i32* %12)
  %14 = load %struct.devstat*, %struct.devstat** %3, align 8
  %15 = load %struct.bio*, %struct.bio** %4, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 0
  %17 = call i32 @devstat_start_transaction(%struct.devstat* %14, i32* %16)
  %18 = call i32 (...) @DTRACE_DEVSTAT_BIO_START()
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @devstat_start_transaction(%struct.devstat*, i32*) #1

declare dso_local i32 @DTRACE_DEVSTAT_BIO_START(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
