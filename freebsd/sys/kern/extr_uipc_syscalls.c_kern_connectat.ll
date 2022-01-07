; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_connectat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_connectat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sockaddr = type { i32 }
%struct.socket = type { i32, i32, i32, i32 }
%struct.file = type { %struct.socket* }

@cap_connect_rights = common dso_local global i32 0, align 4
@SS_ISCONNECTING = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@SS_NBIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@PSOCK = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"connec\00", align 1
@EINTR = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@ECAPMODE = common dso_local global i32 0, align 4
@KTR_STRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_connectat(%struct.thread* %0, i32 %1, i32 %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @AUDIT_ARG_FD(i32 %14)
  %16 = load %struct.thread*, %struct.thread** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %19 = call i32 @AUDIT_ARG_SOCKADDR(%struct.thread* %16, i32 %17, %struct.sockaddr* %18)
  %20 = load %struct.thread*, %struct.thread** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @getsock_cap(%struct.thread* %20, i32 %21, i32* @cap_connect_rights, %struct.file** %11, i32* null, i32* null)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %12, align 4
  store i32 %26, i32* %5, align 4
  br label %147

27:                                               ; preds = %4
  %28 = load %struct.file*, %struct.file** %11, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = load %struct.socket*, %struct.socket** %29, align 8
  store %struct.socket* %30, %struct.socket** %10, align 8
  %31 = load %struct.socket*, %struct.socket** %10, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @SS_ISCONNECTING, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %27
  %38 = load i32, i32* @EALREADY, align 4
  store i32 %38, i32* %12, align 4
  br label %142

39:                                               ; preds = %27
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @AT_FDCWD, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = load %struct.socket*, %struct.socket** %10, align 8
  %45 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %46 = load %struct.thread*, %struct.thread** %6, align 8
  %47 = call i32 @soconnect(%struct.socket* %44, %struct.sockaddr* %45, %struct.thread* %46)
  store i32 %47, i32* %12, align 4
  br label %54

48:                                               ; preds = %39
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.socket*, %struct.socket** %10, align 8
  %51 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %52 = load %struct.thread*, %struct.thread** %6, align 8
  %53 = call i32 @soconnectat(i32 %49, %struct.socket* %50, %struct.sockaddr* %51, %struct.thread* %52)
  store i32 %53, i32* %12, align 4
  br label %54

54:                                               ; preds = %48, %43
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %54
  br label %125

58:                                               ; preds = %54
  %59 = load %struct.socket*, %struct.socket** %10, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @SS_NBIO, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.socket*, %struct.socket** %10, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SS_ISCONNECTING, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = load i32, i32* @EINPROGRESS, align 4
  store i32 %73, i32* %12, align 4
  br label %142

74:                                               ; preds = %65, %58
  %75 = load %struct.socket*, %struct.socket** %10, align 8
  %76 = call i32 @SOCK_LOCK(%struct.socket* %75)
  br label %77

77:                                               ; preds = %112, %74
  %78 = load %struct.socket*, %struct.socket** %10, align 8
  %79 = getelementptr inbounds %struct.socket, %struct.socket* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @SS_ISCONNECTING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %77
  %85 = load %struct.socket*, %struct.socket** %10, align 8
  %86 = getelementptr inbounds %struct.socket, %struct.socket* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 0
  br label %89

89:                                               ; preds = %84, %77
  %90 = phi i1 [ false, %77 ], [ %88, %84 ]
  br i1 %90, label %91, label %113

91:                                               ; preds = %89
  %92 = load %struct.socket*, %struct.socket** %10, align 8
  %93 = getelementptr inbounds %struct.socket, %struct.socket* %92, i32 0, i32 3
  %94 = load %struct.socket*, %struct.socket** %10, align 8
  %95 = getelementptr inbounds %struct.socket, %struct.socket* %94, i32 0, i32 2
  %96 = load i32, i32* @PSOCK, align 4
  %97 = load i32, i32* @PCATCH, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @msleep(i32* %93, i32* %95, i32 %98, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %99, i32* %12, align 4
  %100 = load i32, i32* %12, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %91
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @EINTR, align 4
  %105 = icmp eq i32 %103, %104
  br i1 %105, label %110, label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* @ERESTART, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %106, %102
  store i32 1, i32* %13, align 4
  br label %111

111:                                              ; preds = %110, %106
  br label %113

112:                                              ; preds = %91
  br label %77

113:                                              ; preds = %111, %89
  %114 = load i32, i32* %12, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.socket*, %struct.socket** %10, align 8
  %118 = getelementptr inbounds %struct.socket, %struct.socket* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  store i32 %119, i32* %12, align 4
  %120 = load %struct.socket*, %struct.socket** %10, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 1
  store i32 0, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %113
  %123 = load %struct.socket*, %struct.socket** %10, align 8
  %124 = call i32 @SOCK_UNLOCK(%struct.socket* %123)
  br label %125

125:                                              ; preds = %122, %57
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %135, label %128

128:                                              ; preds = %125
  %129 = load i32, i32* @SS_ISCONNECTING, align 4
  %130 = xor i32 %129, -1
  %131 = load %struct.socket*, %struct.socket** %10, align 8
  %132 = getelementptr inbounds %struct.socket, %struct.socket* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  br label %135

135:                                              ; preds = %128, %125
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @ERESTART, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = load i32, i32* @EINTR, align 4
  store i32 %140, i32* %12, align 4
  br label %141

141:                                              ; preds = %139, %135
  br label %142

142:                                              ; preds = %141, %72, %37
  %143 = load %struct.file*, %struct.file** %11, align 8
  %144 = load %struct.thread*, %struct.thread** %6, align 8
  %145 = call i32 @fdrop(%struct.file* %143, %struct.thread* %144)
  %146 = load i32, i32* %12, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %142, %25
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @AUDIT_ARG_SOCKADDR(%struct.thread*, i32, %struct.sockaddr*) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @soconnect(%struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @soconnectat(i32, %struct.socket*, %struct.sockaddr*, %struct.thread*) #1

declare dso_local i32 @SOCK_LOCK(%struct.socket*) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @SOCK_UNLOCK(%struct.socket*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
