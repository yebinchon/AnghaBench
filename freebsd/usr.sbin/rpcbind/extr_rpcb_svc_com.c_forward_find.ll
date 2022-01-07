; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_forward_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_forward_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.finfo = type { i32, i32 }

@NFORWARD = common dso_local global i64 0, align 8
@FINFO = common dso_local global %struct.finfo* null, align 8
@FINFO_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.finfo* (i32)* @forward_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.finfo* @forward_find(i32 %0) #0 {
  %2 = alloca %struct.finfo*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i64, i64* @NFORWARD, align 8
  %7 = trunc i64 %6 to i32
  %8 = srem i32 %5, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.finfo*, %struct.finfo** @FINFO, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.finfo, %struct.finfo* %9, i64 %11
  %13 = getelementptr inbounds %struct.finfo, %struct.finfo* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FINFO_ACTIVE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %1
  %19 = load %struct.finfo*, %struct.finfo** @FINFO, align 8
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.finfo, %struct.finfo* %19, i64 %21
  %23 = getelementptr inbounds %struct.finfo, %struct.finfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %18
  %28 = load %struct.finfo*, %struct.finfo** @FINFO, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.finfo, %struct.finfo* %28, i64 %30
  store %struct.finfo* %31, %struct.finfo** %2, align 8
  br label %33

32:                                               ; preds = %18, %1
  store %struct.finfo* null, %struct.finfo** %2, align 8
  br label %33

33:                                               ; preds = %32, %27
  %34 = load %struct.finfo*, %struct.finfo** %2, align 8
  ret %struct.finfo* %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
