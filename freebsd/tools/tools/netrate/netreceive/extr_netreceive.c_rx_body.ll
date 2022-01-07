; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_rx_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netrate/netreceive/extr_netreceive.c_rx_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.td_desc = type { i32, i32, i32, i32, i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"poll on thread\00", align 1
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @rx_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rx_body(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.td_desc*, align 8
  %4 = alloca %struct.pollfd, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.td_desc*
  store %struct.td_desc* %7, %struct.td_desc** %3, align 8
  %8 = load %struct.td_desc*, %struct.td_desc** %3, align 8
  %9 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 2
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* @POLLIN, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  br label %14

14:                                               ; preds = %52, %25, %1
  %15 = call i64 @poll(%struct.pollfd* %4, i32 1, i32 -1)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = call i32 @perror(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %14
  %20 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @POLLIN, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %14

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %42, %26
  %28 = load %struct.td_desc*, %struct.td_desc** %3, align 8
  %29 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.td_desc*, %struct.td_desc** %3, align 8
  %32 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.td_desc*, %struct.td_desc** %3, align 8
  %35 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MSG_DONTWAIT, align 4
  %38 = call i32 @recv(i32 %30, i32 %33, i32 %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %52

42:                                               ; preds = %27
  %43 = load %struct.td_desc*, %struct.td_desc** %3, align 8
  %44 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.td_desc*, %struct.td_desc** %3, align 8
  %49 = getelementptr inbounds %struct.td_desc, %struct.td_desc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %27

52:                                               ; preds = %41
  br label %14
}

declare dso_local i64 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @recv(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
