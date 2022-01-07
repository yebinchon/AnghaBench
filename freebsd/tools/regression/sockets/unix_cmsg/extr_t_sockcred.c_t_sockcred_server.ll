; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_sockcred.c_t_sockcred_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_sockcred.c_t_sockcred_server.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @t_sockcred_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_sockcred_server(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr, align 4
  %6 = alloca [1 x %struct.iovec], align 4
  %7 = alloca %struct.cmsghdr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 -1, i32* %11, align 4
  store i32 -2, i32* %12, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 2, i32 0), align 4
  %15 = call i32 @SOCKCREDSIZE(i32 %14)
  %16 = call i64 @CMSG_SPACE(i32 %15)
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %8, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = call i32 @uc_logmsg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %117

23:                                               ; preds = %2
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %35

26:                                               ; preds = %23
  %27 = call i32 (i8*, ...) @uc_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @LOCAL_CREDS, align 4
  %30 = call i64 @setsockopt(i32 %28, i32 0, i32 %29, i32* %13, i32 4)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @uc_logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %117

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %23
  %36 = call i64 (...) @uc_sync_send()
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  br label %117

39:                                               ; preds = %35
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0), align 8
  %41 = load i64, i64* @SOCK_STREAM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @uc_socket_accept(i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %117

49:                                               ; preds = %43
  br label %52

50:                                               ; preds = %39
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 2
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = call i32 (i8*, ...) @uc_dbgmsg(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %13, align 4
  %57 = load i32, i32* %11, align 4
  %58 = load i32, i32* @LOCAL_CREDS, align 4
  %59 = call i64 @setsockopt(i32 %57, i32 0, i32 %58, i32* %13, i32 4)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = call i32 @uc_logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %117

63:                                               ; preds = %55
  %64 = call i64 (...) @uc_sync_send()
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %117

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %52
  store i32 -1, i32* %12, align 4
  store i32 1, i32* %10, align 4
  br label %69

69:                                               ; preds = %108, %68
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %72 = icmp sle i32 %70, %71
  br i1 %72, label %73, label %111

73:                                               ; preds = %69
  %74 = load i32, i32* %10, align 4
  %75 = call i32 (i8*, ...) @uc_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %6, i64 0, i64 0
  %77 = load i8*, i8** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @uc_msghdr_init_server(%struct.msghdr* %5, %struct.iovec* %76, i8* %77, i64 %78)
  %80 = load i32, i32* %11, align 4
  %81 = call i64 @uc_message_recv(i32 %80, %struct.msghdr* %5)
  %82 = icmp slt i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %73
  store i32 -2, i32* %12, align 4
  br label %111

84:                                               ; preds = %73
  %85 = load i32, i32* %10, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0), align 8
  %89 = load i64, i64* @SOCK_STREAM, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = call i64 @uc_check_msghdr(%struct.msghdr* %5, i32 0)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %111

95:                                               ; preds = %91
  br label %107

96:                                               ; preds = %87, %84
  %97 = call i64 @uc_check_msghdr(%struct.msghdr* %5, i32 4)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %111

100:                                              ; preds = %96
  %101 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %5)
  store %struct.cmsghdr* %101, %struct.cmsghdr** %7, align 8
  %102 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %103 = call i64 @uc_check_scm_creds_sockcred(%struct.cmsghdr* %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %100
  br label %111

106:                                              ; preds = %100
  br label %107

107:                                              ; preds = %106, %95
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %69

111:                                              ; preds = %105, %99, %94, %83, %69
  %112 = load i32, i32* %10, align 4
  %113 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %111
  store i32 0, i32* %12, align 4
  br label %116

116:                                              ; preds = %115, %111
  br label %117

117:                                              ; preds = %116, %66, %61, %48, %38, %32, %21
  %118 = load i8*, i8** %8, align 8
  %119 = call i32 @free(i8* %118)
  %120 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @uc_cfg, i32 0, i32 0), align 8
  %121 = load i64, i64* @SOCK_STREAM, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %132

123:                                              ; preds = %117
  %124 = load i32, i32* %11, align 4
  %125 = icmp sge i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %123
  %127 = load i32, i32* %11, align 4
  %128 = call i64 @uc_socket_close(i32 %127)
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %126
  store i32 -2, i32* %12, align 4
  br label %131

131:                                              ; preds = %130, %126
  br label %132

132:                                              ; preds = %131, %123, %117
  %133 = load i32, i32* %12, align 4
  ret i32 %133
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

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @uc_socket_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
