; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_client.c_client_query.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bluetooth/btpand/extr_client.c_client_query.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i64, i32, i32* }

@SDP_ATTR_INVALID = common dso_local global i64 0, align 8
@SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST = common dso_local global i64 0, align 8
@local_bdaddr = common dso_local global i32 0, align 4
@remote_bdaddr = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%s: %m\00", align 1
@service_name = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Searching for %s service at %s\00", align 1
@service_class = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@SDP_ATTR_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"%s service not found\00", align 1
@SDP_UUID_PROTOCOL_L2CAP = common dso_local global i32 0, align 4
@l2cap_psm = common dso_local global i32 0, align 4
@SDP_UUID_PROTOCOL_BNEP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Found PSM %d for service %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%s query failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @client_query to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @client_query() #0 {
  %1 = alloca [512 x i32], align 16
  %2 = alloca %struct.TYPE_3__, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = load i64, i64* @SDP_ATTR_INVALID, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  store i64 %8, i64* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  store i32 2048, i32* %11, align 8
  %12 = getelementptr inbounds [512 x i32], [512 x i32]* %1, i64 0, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  store i32* %12, i32** %13, align 8
  %14 = load i64, i64* @SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST, align 8
  %15 = load i64, i64* @SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST, align 8
  %16 = call i32 @SDP_ATTR_RANGE(i64 %14, i64 %15)
  store i32 %16, i32* %3, align 4
  %17 = call i8* @sdp_open(i32* @local_bdaddr, i32* @remote_bdaddr)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp eq i8* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %0
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 @sdp_error(i8* %21)
  store i32 %22, i32* @errno, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %20, %0
  %25 = load i32, i32* @service_name, align 4
  %26 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EXIT_FAILURE, align 4
  %28 = call i32 @exit(i32 %27) #3
  unreachable

29:                                               ; preds = %20
  %30 = load i32, i32* @service_name, align 4
  %31 = call i32 @bt_ntoa(i32* @remote_bdaddr, i32* null)
  %32 = call i32 @log_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @sdp_search(i8* %33, i32 1, i32* @service_class, i32 1, i32* %3, i32 1, %struct.TYPE_3__* %2)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* @service_name, align 4
  %39 = load i8*, i8** %4, align 8
  %40 = call i32 @sdp_error(i8* %39)
  %41 = call i32 @strerror(i32 %40)
  %42 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %38, i32 %41)
  %43 = load i32, i32* @EXIT_FAILURE, align 4
  %44 = call i32 @exit(i32 %43) #3
  unreachable

45:                                               ; preds = %29
  %46 = load i8*, i8** %4, align 8
  %47 = call i32 @sdp_close(i8* %46)
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SDP_ATTR_OK, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SDP_ATTR_PROTOCOL_DESCRIPTOR_LIST, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %52, %45
  %58 = load i32, i32* @service_name, align 4
  %59 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EXIT_FAILURE, align 4
  %61 = call i32 @exit(i32 %60) #3
  unreachable

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = call i64 @_sdp_get_seq(i32** %63, i32* %69, i32** %6)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %100

72:                                               ; preds = %62
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @_sdp_get_seq(i32** %6, i32* %74, i32** %7)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %100

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @SDP_UUID_PROTOCOL_L2CAP, align 4
  %80 = call i64 @_sdp_match_uuid16(i32** %7, i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i32*, i32** %6, align 8
  %84 = call i64 @_sdp_get_uint16(i32** %7, i32* %83, i32* @l2cap_psm)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %2, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = call i64 @_sdp_get_seq(i32** %6, i32* %88, i32** %7)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %86
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @SDP_UUID_PROTOCOL_BNEP, align 4
  %94 = call i64 @_sdp_match_uuid16(i32** %7, i32* %92, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %91
  %97 = load i32, i32* @l2cap_psm, align 4
  %98 = load i32, i32* @service_name, align 4
  %99 = call i32 @log_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %97, i32 %98)
  ret void

100:                                              ; preds = %91, %86, %82, %77, %72, %62
  %101 = load i32, i32* @service_name, align 4
  %102 = call i32 (i8*, i32, ...) @log_err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EXIT_FAILURE, align 4
  %104 = call i32 @exit(i32 %103) #3
  unreachable
}

declare dso_local i32 @SDP_ATTR_RANGE(i64, i64) #1

declare dso_local i8* @sdp_open(i32*, i32*) #1

declare dso_local i32 @sdp_error(i8*) #1

declare dso_local i32 @log_err(i8*, i32, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @log_info(i8*, i32, i32) #1

declare dso_local i32 @bt_ntoa(i32*, i32*) #1

declare dso_local i32 @sdp_search(i8*, i32, i32*, i32, i32*, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @sdp_close(i8*) #1

declare dso_local i64 @_sdp_get_seq(i32**, i32*, i32**) #1

declare dso_local i64 @_sdp_match_uuid16(i32**, i32*, i32) #1

declare dso_local i64 @_sdp_get_uint16(i32**, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
