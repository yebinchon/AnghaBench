; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_block_if.c_blockif_sigcont_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_block_if.c_blockif_sigcont_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blockif_sig_elem = type { i32, i32, i64, i64 }

@blockif_bse_head = common dso_local global %struct.blockif_sig_elem* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @blockif_sigcont_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blockif_sigcont_handler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.blockif_sig_elem*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  br label %8

8:                                                ; preds = %24, %3
  br label %9

9:                                                ; preds = %15, %8
  %10 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** @blockif_bse_head, align 8
  store %struct.blockif_sig_elem* %10, %struct.blockif_sig_elem** %7, align 8
  %11 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** %7, align 8
  %12 = icmp eq %struct.blockif_sig_elem* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  ret void

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** %7, align 8
  %17 = ptrtoint %struct.blockif_sig_elem* %16 to i64
  %18 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** %7, align 8
  %19 = getelementptr inbounds %struct.blockif_sig_elem, %struct.blockif_sig_elem* %18, i32 0, i32 3
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @atomic_cmpset_ptr(i64* bitcast (%struct.blockif_sig_elem** @blockif_bse_head to i64*), i64 %17, i64 %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br i1 %23, label %9, label %24

24:                                               ; preds = %15
  %25 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** %7, align 8
  %26 = getelementptr inbounds %struct.blockif_sig_elem, %struct.blockif_sig_elem* %25, i32 0, i32 0
  %27 = call i32 @pthread_mutex_lock(i32* %26)
  %28 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** %7, align 8
  %29 = getelementptr inbounds %struct.blockif_sig_elem, %struct.blockif_sig_elem* %28, i32 0, i32 2
  store i64 0, i64* %29, align 8
  %30 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** %7, align 8
  %31 = getelementptr inbounds %struct.blockif_sig_elem, %struct.blockif_sig_elem* %30, i32 0, i32 1
  %32 = call i32 @pthread_cond_signal(i32* %31)
  %33 = load %struct.blockif_sig_elem*, %struct.blockif_sig_elem** %7, align 8
  %34 = getelementptr inbounds %struct.blockif_sig_elem, %struct.blockif_sig_elem* %33, i32 0, i32 0
  %35 = call i32 @pthread_mutex_unlock(i32* %34)
  br label %8
}

declare dso_local i32 @atomic_cmpset_ptr(i64*, i64, i64) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pthread_cond_signal(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
