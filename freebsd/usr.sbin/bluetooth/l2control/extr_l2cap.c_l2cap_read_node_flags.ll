; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2cap.c_l2cap_read_node_flags.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/l2control/extr_l2cap.c_l2cap_read_node_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ng_btsocket_l2cap_raw_node_flags = type { i32 }

@SIOC_L2CAP_NODE_GET_FLAGS = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Connectionless traffic flags:\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"\09SDP: %s\0A\00", align 1
@NG_L2CAP_CLT_SDP_DISABLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"\09RFCOMM: %s\0A\00", align 1
@NG_L2CAP_CLT_RFCOMM_DISABLED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"\09TCP: %s\0A\00", align 1
@NG_L2CAP_CLT_TCP_DISABLED = common dso_local global i32 0, align 4
@OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8**)* @l2cap_read_node_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_read_node_flags(i32 %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca %struct.ng_btsocket_l2cap_raw_node_flags, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  %9 = call i32 @memset(%struct.ng_btsocket_l2cap_raw_node_flags* %8, i32 0, i32 4)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SIOC_L2CAP_NODE_GET_FLAGS, align 4
  %12 = call i64 @ioctl(i32 %10, i32 %11, %struct.ng_btsocket_l2cap_raw_node_flags* %8, i32 4)
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* @ERROR, align 4
  store i32 %15, i32* %4, align 4
  br label %47

16:                                               ; preds = %3
  %17 = load i32, i32* @stdout, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @stdout, align 4
  %20 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_node_flags, %struct.ng_btsocket_l2cap_raw_node_flags* %8, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NG_L2CAP_CLT_SDP_DISABLED, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %27 = call i32 (i32, i8*, ...) @fprintf(i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %26)
  %28 = load i32, i32* @stdout, align 4
  %29 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_node_flags, %struct.ng_btsocket_l2cap_raw_node_flags* %8, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NG_L2CAP_CLT_RFCOMM_DISABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %36 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %35)
  %37 = load i32, i32* @stdout, align 4
  %38 = getelementptr inbounds %struct.ng_btsocket_l2cap_raw_node_flags, %struct.ng_btsocket_l2cap_raw_node_flags* %8, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @NG_L2CAP_CLT_TCP_DISABLED, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %45 = call i32 (i32, i8*, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* %44)
  %46 = load i32, i32* @OK, align 4
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %16, %14
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @memset(%struct.ng_btsocket_l2cap_raw_node_flags*, i32, i32) #1

declare dso_local i64 @ioctl(i32, i32, %struct.ng_btsocket_l2cap_raw_node_flags*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
