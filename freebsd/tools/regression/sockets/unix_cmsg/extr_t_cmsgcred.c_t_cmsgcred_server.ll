; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_cmsgcred.c_t_cmsgcred_server.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/sockets/unix_cmsg/extr_t_cmsgcred.c_t_cmsgcred_server.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.msghdr = type { i32 }
%struct.iovec = type { i32 }
%struct.cmsghdr = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@uc_cfg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"message #%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @t_cmsgcred_server to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @t_cmsgcred_server(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.msghdr, align 4
  %5 = alloca [1 x %struct.iovec], align 4
  %6 = alloca %struct.cmsghdr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %12 = call i64 (...) @uc_sync_send()
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -2, i32* %2, align 4
  br label %89

15:                                               ; preds = %1
  store i32 -1, i32* %10, align 4
  store i32 -2, i32* %11, align 4
  %16 = call i64 @CMSG_SPACE(i32 4)
  store i64 %16, i64* %8, align 8
  %17 = load i64, i64* %8, align 8
  %18 = call i8* @malloc(i64 %17)
  store i8* %18, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 @uc_logmsg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %72

23:                                               ; preds = %15
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0), align 8
  %25 = load i64, i64* @SOCK_STREAM, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @uc_socket_accept(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %72

33:                                               ; preds = %27
  br label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %3, align 4
  store i32 %35, i32* %10, align 4
  br label %36

36:                                               ; preds = %34, %33
  store i32 -1, i32* %11, align 4
  store i32 1, i32* %9, align 4
  br label %37

37:                                               ; preds = %63, %36
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @uc_dbgmsg(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  %44 = getelementptr inbounds [1 x %struct.iovec], [1 x %struct.iovec]* %5, i64 0, i64 0
  %45 = load i8*, i8** %7, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @uc_msghdr_init_server(%struct.msghdr* %4, %struct.iovec* %44, i8* %45, i64 %46)
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @uc_message_recv(i32 %48, %struct.msghdr* %4)
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 -2, i32* %11, align 4
  br label %66

52:                                               ; preds = %41
  %53 = call i64 @uc_check_msghdr(%struct.msghdr* %4, i32 4)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %66

56:                                               ; preds = %52
  %57 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %4)
  store %struct.cmsghdr* %57, %struct.cmsghdr** %6, align 8
  %58 = load %struct.cmsghdr*, %struct.cmsghdr** %6, align 8
  %59 = call i64 @uc_check_scm_creds_cmsgcred(%struct.cmsghdr* %58)
  %60 = icmp slt i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %66

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %37

66:                                               ; preds = %61, %55, %51, %37
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 1, i32 0), align 8
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %66
  br label %72

72:                                               ; preds = %71, %32, %21
  %73 = load i8*, i8** %7, align 8
  %74 = call i32 @free(i8* %73)
  %75 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @uc_cfg, i32 0, i32 0), align 8
  %76 = load i64, i64* @SOCK_STREAM, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %87

78:                                               ; preds = %72
  %79 = load i32, i32* %10, align 4
  %80 = icmp sge i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %78
  %82 = load i32, i32* %10, align 4
  %83 = call i64 @uc_socket_close(i32 %82)
  %84 = icmp slt i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  store i32 -2, i32* %11, align 4
  br label %86

86:                                               ; preds = %85, %81
  br label %87

87:                                               ; preds = %86, %78, %72
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %87, %14
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i64 @uc_sync_send(...) #1

declare dso_local i64 @CMSG_SPACE(i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @uc_logmsg(i8*) #1

declare dso_local i32 @uc_socket_accept(i32) #1

declare dso_local i32 @uc_dbgmsg(i8*, i32) #1

declare dso_local i32 @uc_msghdr_init_server(%struct.msghdr*, %struct.iovec*, i8*, i64) #1

declare dso_local i64 @uc_message_recv(i32, %struct.msghdr*) #1

declare dso_local i64 @uc_check_msghdr(%struct.msghdr*, i32) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @uc_check_scm_creds_cmsgcred(%struct.cmsghdr*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i64 @uc_socket_close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
