; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_valid_session_conf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_iscsi.c_iscsi_valid_session_conf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_session_conf = type { i8*, i8*, i64, i64* }

@.str = private unnamed_addr constant [20 x i8] c"empty isc_initiator\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"empty isc_target_addr\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"non-empty isc_target for discovery session\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"empty isc_target for non-discovery session\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_session_conf*)* @iscsi_valid_session_conf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_valid_session_conf(%struct.iscsi_session_conf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iscsi_session_conf*, align 8
  store %struct.iscsi_session_conf* %0, %struct.iscsi_session_conf** %3, align 8
  %4 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %5 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds i8, i8* %6, i64 0
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @ISCSI_DEBUG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

13:                                               ; preds = %1
  %14 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %15 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %14, i32 0, i32 1
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 0
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = call i32 @ISCSI_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

23:                                               ; preds = %13
  %24 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %25 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %30 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %29, i32 0, i32 3
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = call i32 @ISCSI_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

37:                                               ; preds = %28, %23
  %38 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %39 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = load %struct.iscsi_session_conf*, %struct.iscsi_session_conf** %3, align 8
  %44 = getelementptr inbounds %struct.iscsi_session_conf, %struct.iscsi_session_conf* %43, i32 0, i32 3
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @ISCSI_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %42, %37
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %49, %35, %21, %11
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @ISCSI_DEBUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
