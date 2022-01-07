; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_cmsgcred_sockcred.c_t_cmsgcred_sockcred_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_cmsgcred_sockcred.c_t_cmsgcred_sockcred_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.iovec = type { i32 }
%struct.cmsghdr = type { i32 }

@uc_cfg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"setting LOCAL_CREDS\00", align 1
@LOCAL_CREDS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"setsockopt(LOCAL_CREDS)\00", align 1
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"message #%u\00", align 1
@SOCK_DGRAM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t_cmsgcred_sockcred_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_cmsgcred_sockcred_server(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msghdr, align 4
  %4 = alloca [1 x %struct.iovec], align 4
  %5 = alloca %struct.cmsghdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 -1, i32* %13, align 4
  store i32 -2, i32* %14, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 2, i32 0), align 4
  %17 = call i32 @SOCKCREDSIZE(i32 %16)
  %18 = call i64 @CMSG_SPACE(i32 %17)
  store i64 %18, i64* %10, align 8
  %19 = call i64 @CMSG_SPACE(i32 4)
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %10, align 8
  %21 = call i8* @malloc(i64 %20)
  store i8* %21, i8** %7, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i8* @malloc(i64 %22)
  store i8* %23, i8** %8, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %1
  %27 = load i8*, i8** %8, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %1
  %30 = call i32 @uc_logmsg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %110

31:                                               ; preds = %26
  %32 = call i32 (i8*, ...) @uc_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %15, align 4
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @LOCAL_CREDS, align 4
  %35 = call i64 @setsockopt(i32 %33, i32 0, i32 %34, i32* %15, i32 4)
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 @uc_logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %110

39:                                               ; preds = %31
  %40 = call i64 (...) @uc_sync_send()
  %41 = icmp slt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %110

43:                                               ; preds = %39
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0), align 8
  %45 = load i64, i64* @SOCK_STREAM, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @uc_socket_accept(i32 %48)
  store i32 %49, i32* %13, align 4
  %50 = load i32, i32* %13, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %110

53:                                               ; preds = %47
  br label %56

54:                                               ; preds = %43
  %55 = load i32, i32* %2, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %54, %53
  %57 = load i8*, i8** %7, align 8
  store i8* %57, i8** %6, align 8
  %58 = load i64, i64* %10, align 8
  store i64 %58, i64* %9, align 8
  store i32 -1, i32* %14, align 4
  store i32 1, i32* %12, align 4
  br label %59

59:                                               ; preds = %101, %56
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %62 = icmp sle i32 %60, %61
  br i1 %62, label %63, label %104

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = call i32 (i8*, ...) @uc_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  %66 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %4, i64 0, i64 0
  %67 = load i8*, i8** %6, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @uc_msghdr_init_server(%struct.msghdr* %3, %struct.iovec* %66, i8* %67, i64 %68)
  %70 = load i32, i32* %13, align 4
  %71 = call i64 @uc_message_recv(i32 %70, %struct.msghdr* %3)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %63
  store i32 -2, i32* %14, align 4
  br label %104

74:                                               ; preds = %63
  %75 = call i64 @uc_check_msghdr(%struct.msghdr* %3, i32 4)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %104

78:                                               ; preds = %74
  %79 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %3)
  store %struct.cmsghdr* %79, %struct.cmsghdr** %5, align 8
  %80 = load i32, i32* %12, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %86, label %82

82:                                               ; preds = %78
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0), align 8
  %84 = load i64, i64* @SOCK_DGRAM, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %92

86:                                               ; preds = %82, %78
  %87 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %88 = call i64 @uc_check_scm_creds_sockcred(%struct.cmsghdr* %87)
  %89 = icmp slt i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  br label %104

91:                                               ; preds = %86
  br label %98

92:                                               ; preds = %82
  %93 = load %struct.cmsghdr*, %struct.cmsghdr** %5, align 8
  %94 = call i64 @uc_check_scm_creds_cmsgcred(%struct.cmsghdr* %93)
  %95 = icmp slt i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %104

97:                                               ; preds = %92
  br label %98

98:                                               ; preds = %97, %91
  %99 = load i8*, i8** %8, align 8
  store i8* %99, i8** %6, align 8
  %100 = load i64, i64* %11, align 8
  store i64 %100, i64* %9, align 8
  br label %101

101:                                              ; preds = %98
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  br label %59

104:                                              ; preds = %96, %90, %77, %73, %59
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  store i32 0, i32* %14, align 4
  br label %109

109:                                              ; preds = %108, %104
  br label %110

110:                                              ; preds = %109, %52, %42, %37, %29
  %111 = load i8*, i8** %7, align 8
  %112 = call i32 @free(i8* %111)
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @free(i8* %113)
  %115 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0), align 8
  %116 = load i64, i64* @SOCK_STREAM, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %110
  %119 = load i32, i32* %13, align 4
  %120 = icmp sge i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %118
  %122 = load i32, i32* %13, align 4
  %123 = call i64 @uc_socket_close(i32 %122)
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %121
  store i32 -2, i32* %14, align 4
  br label %126

126:                                              ; preds = %125, %121
  br label %127

127:                                              ; preds = %126, %118, %110
  %128 = load i32, i32* %14, align 4
  ret i32 %128
}

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local i32 @SOCKCREDSIZE(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i32 @uc_dbgmsg(i8*, ...) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i64 @uc_sync_send(...) #1

declare dso_local i32 @uc_socket_accept(i32) #1

declare dso_local i32 @uc_msghdr_init_server(%struct.msghdr*, %struct.iovec*, i8*, i64) #1

declare dso_local i64 @uc_message_recv(i32, %struct.msghdr*) #1

declare dso_local i64 @uc_check_msghdr(%struct.msghdr*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @uc_check_scm_creds_sockcred(%struct.cmsghdr*) #1

declare dso_local i64 @uc_check_scm_creds_cmsgcred(%struct.cmsghdr*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @uc_socket_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
