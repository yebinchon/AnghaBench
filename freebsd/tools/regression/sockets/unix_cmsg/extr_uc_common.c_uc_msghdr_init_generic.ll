; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_msghdr_init_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_uc_common.c_uc_msghdr_init_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.msghdr = type { i32, i64, i8*, %struct.iovec*, i64, i32* }
%struct.iovec = type { i32, i32 }

@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.iovec*, i8*)* @uc_msghdr_init_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uc_msghdr_init_generic(%struct.msghdr* %0, %struct.iovec* %1, i8* %2) #0 {
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i8*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %8 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 5
  store i32* null, i32** %8, align 8
  %9 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %10 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 4
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 2), align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %32

13:                                               ; preds = %3
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 2), align 8
  br label %20

18:                                               ; preds = %13
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 1), align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load %struct.iovec*, %struct.iovec** %5, align 8
  %23 = getelementptr inbounds %struct.iovec, %struct.iovec* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0, i32 0), align 8
  %25 = load %struct.iovec*, %struct.iovec** %5, align 8
  %26 = getelementptr inbounds %struct.iovec, %struct.iovec* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.iovec*, %struct.iovec** %5, align 8
  %28 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %29 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %28, i32 0, i32 3
  store %struct.iovec* %27, %struct.iovec** %29, align 8
  %30 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %31 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  br label %37

32:                                               ; preds = %3
  %33 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %33, i32 0, i32 3
  store %struct.iovec* null, %struct.iovec** %34, align 8
  %35 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %36 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %37

37:                                               ; preds = %32, %20
  %38 = load i8*, i8** %6, align 8
  %39 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %40 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load %struct.msghdr*, %struct.msghdr** %4, align 8
  %42 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
