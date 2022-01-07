; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_find_rmtcallfd_by_netid.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/rpcbind/extr_rpcb_svc_com.c_find_rmtcallfd_by_netid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rmtcallfd_list = type { i32, i32, %struct.rmtcallfd_list* }

@rmthead = common dso_local global %struct.rmtcallfd_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @find_rmtcallfd_by_netid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_rmtcallfd_by_netid(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.rmtcallfd_list*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** @rmthead, align 8
  store %struct.rmtcallfd_list* %5, %struct.rmtcallfd_list** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %8 = icmp ne %struct.rmtcallfd_list* %7, null
  br i1 %8, label %9, label %25

9:                                                ; preds = %6
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %12 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @strcmp(i8* %10, i32 %13)
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %9
  %17 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %18 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %2, align 4
  br label %26

20:                                               ; preds = %9
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %4, align 8
  %23 = getelementptr inbounds %struct.rmtcallfd_list, %struct.rmtcallfd_list* %22, i32 0, i32 2
  %24 = load %struct.rmtcallfd_list*, %struct.rmtcallfd_list** %23, align 8
  store %struct.rmtcallfd_list* %24, %struct.rmtcallfd_list** %4, align 8
  br label %6

25:                                               ; preds = %6
  store i32 -1, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
