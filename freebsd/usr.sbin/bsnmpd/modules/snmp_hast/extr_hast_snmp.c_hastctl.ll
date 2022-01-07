; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hast/extr_hast_snmp.c_hastctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bsnmpd/modules/snmp_hast/extr_hast_snmp.c_hastctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i32 }
%struct.hastd_config = type { i32 }
%struct.proto_conn = type { i32 }

@cfgpath = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Unable to setup control connection to %s\00", align 1
@HAST_TIMEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to connect to hastd via %s\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to send command to hastd via %s\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"cannot receive reply from hastd via %s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Error %d received from hastd.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nv*, %struct.nv**)* @hastctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hastctl(%struct.nv* %0, %struct.nv** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nv*, align 8
  %5 = alloca %struct.nv**, align 8
  %6 = alloca %struct.hastd_config*, align 8
  %7 = alloca %struct.proto_conn*, align 8
  %8 = alloca %struct.nv*, align 8
  %9 = alloca i32, align 4
  store %struct.nv* %0, %struct.nv** %4, align 8
  store %struct.nv** %1, %struct.nv*** %5, align 8
  %10 = load i32, i32* @cfgpath, align 4
  %11 = call %struct.hastd_config* @yy_config_parse(i32 %10, i32 1)
  store %struct.hastd_config* %11, %struct.hastd_config** %6, align 8
  %12 = load %struct.hastd_config*, %struct.hastd_config** %6, align 8
  %13 = icmp eq %struct.hastd_config* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %78

15:                                               ; preds = %2
  %16 = load %struct.hastd_config*, %struct.hastd_config** %6, align 8
  %17 = getelementptr inbounds %struct.hastd_config, %struct.hastd_config* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @proto_client(i32* null, i32 %18, %struct.proto_conn** %7)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.hastd_config*, %struct.hastd_config** %6, align 8
  %23 = getelementptr inbounds %struct.hastd_config, %struct.hastd_config* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @pjdlog_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 -1, i32* %3, align 4
  br label %78

26:                                               ; preds = %15
  %27 = load %struct.proto_conn*, %struct.proto_conn** %7, align 8
  %28 = load i32, i32* @HAST_TIMEOUT, align 4
  %29 = call i32 @proto_connect(%struct.proto_conn* %27, i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %38

31:                                               ; preds = %26
  %32 = load %struct.hastd_config*, %struct.hastd_config** %6, align 8
  %33 = getelementptr inbounds %struct.hastd_config, %struct.hastd_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pjdlog_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.proto_conn*, %struct.proto_conn** %7, align 8
  %37 = call i32 @proto_close(%struct.proto_conn* %36)
  store i32 -1, i32* %3, align 4
  br label %78

38:                                               ; preds = %26
  %39 = load %struct.proto_conn*, %struct.proto_conn** %7, align 8
  %40 = load %struct.nv*, %struct.nv** %4, align 8
  %41 = call i32 @hast_proto_send(i32* null, %struct.proto_conn* %39, %struct.nv* %40, i32* null, i32 0)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %50

43:                                               ; preds = %38
  %44 = load %struct.hastd_config*, %struct.hastd_config** %6, align 8
  %45 = getelementptr inbounds %struct.hastd_config, %struct.hastd_config* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pjdlog_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  %48 = load %struct.proto_conn*, %struct.proto_conn** %7, align 8
  %49 = call i32 @proto_close(%struct.proto_conn* %48)
  store i32 -1, i32* %3, align 4
  br label %78

50:                                               ; preds = %38
  %51 = load %struct.proto_conn*, %struct.proto_conn** %7, align 8
  %52 = call i32 @hast_proto_recv_hdr(%struct.proto_conn* %51, %struct.nv** %8)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = load %struct.hastd_config*, %struct.hastd_config** %6, align 8
  %56 = getelementptr inbounds %struct.hastd_config, %struct.hastd_config* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @pjdlog_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.proto_conn*, %struct.proto_conn** %7, align 8
  %60 = call i32 @proto_close(%struct.proto_conn* %59)
  store i32 -1, i32* %3, align 4
  br label %78

61:                                               ; preds = %50
  %62 = load %struct.proto_conn*, %struct.proto_conn** %7, align 8
  %63 = call i32 @proto_close(%struct.proto_conn* %62)
  %64 = load %struct.nv*, %struct.nv** %8, align 8
  %65 = call i32 @nv_get_int16(%struct.nv* %64, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @pjdlog_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %69)
  %71 = load %struct.nv*, %struct.nv** %8, align 8
  %72 = call i32 @nv_free(%struct.nv* %71)
  store i32 -1, i32* %3, align 4
  br label %78

73:                                               ; preds = %61
  %74 = load %struct.nv*, %struct.nv** %8, align 8
  %75 = call i32 @nv_set_error(%struct.nv* %74, i32 0)
  %76 = load %struct.nv*, %struct.nv** %8, align 8
  %77 = load %struct.nv**, %struct.nv*** %5, align 8
  store %struct.nv* %76, %struct.nv** %77, align 8
  store i32 0, i32* %3, align 4
  br label %78

78:                                               ; preds = %73, %68, %54, %43, %31, %21, %14
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.hastd_config* @yy_config_parse(i32, i32) #1

declare dso_local i32 @proto_client(i32*, i32, %struct.proto_conn**) #1

declare dso_local i32 @pjdlog_error(i8*, i32) #1

declare dso_local i32 @proto_connect(%struct.proto_conn*, i32) #1

declare dso_local i32 @proto_close(%struct.proto_conn*) #1

declare dso_local i32 @hast_proto_send(i32*, %struct.proto_conn*, %struct.nv*, i32*, i32) #1

declare dso_local i32 @hast_proto_recv_hdr(%struct.proto_conn*, %struct.nv**) #1

declare dso_local i32 @nv_get_int16(%struct.nv*, i8*) #1

declare dso_local i32 @nv_free(%struct.nv*) #1

declare dso_local i32 @nv_set_error(%struct.nv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
