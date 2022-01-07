; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_loadmsg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_mqueue.c_mqueue_loadmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mqueue_msg = type { i64, i32 }

@M_MQUEUEDATA = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mqueue_msg* (i8*, i64, i32)* @mqueue_loadmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mqueue_msg* @mqueue_loadmsg(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mqueue_msg*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %5, align 8
  %11 = add i64 16, %10
  store i64 %11, i64* %8, align 8
  %12 = load i64, i64* %8, align 8
  %13 = load i32, i32* @M_MQUEUEDATA, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = call %struct.mqueue_msg* @malloc(i64 %12, i32 %13, i32 %14)
  store %struct.mqueue_msg* %15, %struct.mqueue_msg** %7, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = load %struct.mqueue_msg*, %struct.mqueue_msg** %7, align 8
  %18 = bitcast %struct.mqueue_msg* %17 to i8*
  %19 = getelementptr inbounds i8, i8* %18, i64 16
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @copyin(i8* %16, i8* %19, i64 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.mqueue_msg*, %struct.mqueue_msg** %7, align 8
  %26 = load i32, i32* @M_MQUEUEDATA, align 4
  %27 = call i32 @free(%struct.mqueue_msg* %25, i32 %26)
  store %struct.mqueue_msg* null, %struct.mqueue_msg** %7, align 8
  br label %35

28:                                               ; preds = %3
  %29 = load i64, i64* %5, align 8
  %30 = load %struct.mqueue_msg*, %struct.mqueue_msg** %7, align 8
  %31 = getelementptr inbounds %struct.mqueue_msg, %struct.mqueue_msg* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.mqueue_msg*, %struct.mqueue_msg** %7, align 8
  %34 = getelementptr inbounds %struct.mqueue_msg, %struct.mqueue_msg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %35

35:                                               ; preds = %28, %24
  %36 = load %struct.mqueue_msg*, %struct.mqueue_msg** %7, align 8
  ret %struct.mqueue_msg* %36
}

declare dso_local %struct.mqueue_msg* @malloc(i64, i32, i32) #1

declare dso_local i32 @copyin(i8*, i8*, i64) #1

declare dso_local i32 @free(%struct.mqueue_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
