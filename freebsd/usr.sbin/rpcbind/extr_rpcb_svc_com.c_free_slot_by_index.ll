; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_free_slot_by_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_free_slot_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finfo = type { i32, i64, i32, i32 }

@FINFO = common dso_local global %struct.finfo* null, align 8
@FINFO_ACTIVE = common dso_local global i32 0, align 4
@svc_maxfd = common dso_local global i64 0, align 8
@rpcb_rmtcalls = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @free_slot_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_slot_by_index(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.finfo*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.finfo*, %struct.finfo** @FINFO, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.finfo, %struct.finfo* %5, i64 %7
  store %struct.finfo* %8, %struct.finfo** %4, align 8
  %9 = load %struct.finfo*, %struct.finfo** %4, align 8
  %10 = getelementptr inbounds %struct.finfo, %struct.finfo* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @FINFO_ACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %41

15:                                               ; preds = %1
  %16 = load %struct.finfo*, %struct.finfo** %4, align 8
  %17 = getelementptr inbounds %struct.finfo, %struct.finfo* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @netbuffree(i32 %18)
  %20 = load %struct.finfo*, %struct.finfo** %4, align 8
  %21 = getelementptr inbounds %struct.finfo, %struct.finfo* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @svc_maxfd, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i64, i64* @svc_maxfd, align 8
  %27 = add nsw i64 %26, -1
  store i64 %27, i64* @svc_maxfd, align 8
  br label %28

28:                                               ; preds = %25, %15
  %29 = load %struct.finfo*, %struct.finfo** %4, align 8
  %30 = getelementptr inbounds %struct.finfo, %struct.finfo* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @free(i32 %31)
  %33 = load i32, i32* @FINFO_ACTIVE, align 4
  %34 = xor i32 %33, -1
  %35 = load %struct.finfo*, %struct.finfo** %4, align 8
  %36 = getelementptr inbounds %struct.finfo, %struct.finfo* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = and i32 %37, %34
  store i32 %38, i32* %36, align 8
  %39 = load i32, i32* @rpcb_rmtcalls, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* @rpcb_rmtcalls, align 4
  store i32 1, i32* %2, align 4
  br label %42

41:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %41, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @netbuffree(i32) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
