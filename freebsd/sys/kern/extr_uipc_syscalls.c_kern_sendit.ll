; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_sendit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_sendit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64*, i32, i32 }
%struct.msghdr = type { i32, i32*, %struct.iovec* }
%struct.iovec = type { i64 }
%struct.mbuf = type { i32 }
%struct.file = type { i64 }
%struct.uio = type { i32, i32, i64, i64, %struct.thread*, i32, %struct.iovec* }
%struct.socket = type { i32 }

@cap_send_rights = common dso_local global i32 0, align 4
@AT_FDCWD = common dso_local global i32 0, align 4
@cap_send_connect_rights = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@SO_NOSIGPIPE = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@KTR_GENIO = common dso_local global i32 0, align 4
@KTR_STRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_sendit(%struct.thread* %0, i32 %1, %struct.msghdr* %2, i32 %3, %struct.mbuf* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.msghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mbuf*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.uio, align 8
  %16 = alloca %struct.iovec*, align 8
  %17 = alloca %struct.socket*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.msghdr* %2, %struct.msghdr** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.mbuf* %4, %struct.mbuf** %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @AUDIT_ARG_FD(i32 %22)
  store i32* @cap_send_rights, i32** %18, align 8
  %24 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %25 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %6
  %29 = load %struct.thread*, %struct.thread** %8, align 8
  %30 = load i32, i32* @AT_FDCWD, align 4
  %31 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %32 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @AUDIT_ARG_SOCKADDR(%struct.thread* %29, i32 %30, i32* %33)
  store i32* @cap_send_connect_rights, i32** %18, align 8
  br label %35

35:                                               ; preds = %28, %6
  %36 = load %struct.thread*, %struct.thread** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32*, i32** %18, align 8
  %39 = call i32 @getsock_cap(%struct.thread* %36, i32 %37, i32* %38, %struct.file** %14, i32* null, i32* null)
  store i32 %39, i32* %21, align 4
  %40 = load i32, i32* %21, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %44 = call i32 @m_freem(%struct.mbuf* %43)
  %45 = load i32, i32* %21, align 4
  store i32 %45, i32* %7, align 4
  br label %172

46:                                               ; preds = %35
  %47 = load %struct.file*, %struct.file** %14, align 8
  %48 = getelementptr inbounds %struct.file, %struct.file* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.socket*
  store %struct.socket* %50, %struct.socket** %17, align 8
  %51 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %52 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %51, i32 0, i32 2
  %53 = load %struct.iovec*, %struct.iovec** %52, align 8
  %54 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 6
  store %struct.iovec* %53, %struct.iovec** %54, align 8
  %55 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %56 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 0
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* %13, align 4
  %60 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @UIO_WRITE, align 4
  %62 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 5
  store i32 %61, i32* %62, align 8
  %63 = load %struct.thread*, %struct.thread** %8, align 8
  %64 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 4
  store %struct.thread* %63, %struct.thread** %64, align 8
  %65 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 3
  store i64 0, i64* %65, align 8
  %66 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  store i64 0, i64* %66, align 8
  %67 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %68 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %67, i32 0, i32 2
  %69 = load %struct.iovec*, %struct.iovec** %68, align 8
  store %struct.iovec* %69, %struct.iovec** %16, align 8
  store i32 0, i32* %20, align 4
  br label %70

70:                                               ; preds = %89, %46
  %71 = load i32, i32* %20, align 4
  %72 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %73 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp slt i32 %71, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %70
  %77 = load %struct.iovec*, %struct.iovec** %16, align 8
  %78 = getelementptr inbounds %struct.iovec, %struct.iovec* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, %79
  store i64 %82, i64* %80, align 8
  %83 = icmp slt i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %76
  %85 = load i32, i32* @EINVAL, align 4
  store i32 %85, i32* %21, align 4
  %86 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %87 = call i32 @m_freem(%struct.mbuf* %86)
  br label %167

88:                                               ; preds = %76
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %20, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %20, align 4
  %92 = load %struct.iovec*, %struct.iovec** %16, align 8
  %93 = getelementptr inbounds %struct.iovec, %struct.iovec* %92, i32 1
  store %struct.iovec* %93, %struct.iovec** %16, align 8
  br label %70

94:                                               ; preds = %70
  %95 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %19, align 8
  %97 = load %struct.socket*, %struct.socket** %17, align 8
  %98 = load %struct.msghdr*, %struct.msghdr** %10, align 8
  %99 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.thread*, %struct.thread** %8, align 8
  %104 = call i32 @sosend(%struct.socket* %97, i32* %100, %struct.uio* %15, i32 0, %struct.mbuf* %101, i32 %102, %struct.thread* %103)
  store i32 %104, i32* %21, align 4
  %105 = load i32, i32* %21, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %94
  %108 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* %19, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %107
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* @ERESTART, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %124, label %116

116:                                              ; preds = %112
  %117 = load i32, i32* %21, align 4
  %118 = load i32, i32* @EINTR, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* @EWOULDBLOCK, align 4
  %123 = icmp eq i32 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %120, %116, %112
  store i32 0, i32* %21, align 4
  br label %125

125:                                              ; preds = %124, %120, %107
  %126 = load i32, i32* %21, align 4
  %127 = load i32, i32* @EPIPE, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %153

129:                                              ; preds = %125
  %130 = load %struct.socket*, %struct.socket** %17, align 8
  %131 = getelementptr inbounds %struct.socket, %struct.socket* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @SO_NOSIGPIPE, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %153, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* @MSG_NOSIGNAL, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %153, label %141

141:                                              ; preds = %136
  %142 = load %struct.thread*, %struct.thread** %8, align 8
  %143 = getelementptr inbounds %struct.thread, %struct.thread* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = call i32 @PROC_LOCK(i32 %144)
  %146 = load %struct.thread*, %struct.thread** %8, align 8
  %147 = load i32, i32* @SIGPIPE, align 4
  %148 = call i32 @tdsignal(%struct.thread* %146, i32 %147)
  %149 = load %struct.thread*, %struct.thread** %8, align 8
  %150 = getelementptr inbounds %struct.thread, %struct.thread* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @PROC_UNLOCK(i32 %151)
  br label %153

153:                                              ; preds = %141, %136, %129, %125
  br label %154

154:                                              ; preds = %153, %94
  %155 = load i32, i32* %21, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load i64, i64* %19, align 8
  %159 = getelementptr inbounds %struct.uio, %struct.uio* %15, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = sub nsw i64 %158, %160
  %162 = load %struct.thread*, %struct.thread** %8, align 8
  %163 = getelementptr inbounds %struct.thread, %struct.thread* %162, i32 0, i32 0
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  store i64 %161, i64* %165, align 8
  br label %166

166:                                              ; preds = %157, %154
  br label %167

167:                                              ; preds = %166, %84
  %168 = load %struct.file*, %struct.file** %14, align 8
  %169 = load %struct.thread*, %struct.thread** %8, align 8
  %170 = call i32 @fdrop(%struct.file* %168, %struct.thread* %169)
  %171 = load i32, i32* %21, align 4
  store i32 %171, i32* %7, align 4
  br label %172

172:                                              ; preds = %167, %42
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @AUDIT_ARG_SOCKADDR(%struct.thread*, i32, i32*) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @sosend(%struct.socket*, i32*, %struct.uio*, i32, %struct.mbuf*, i32, %struct.thread*) #1

declare dso_local i32 @PROC_LOCK(i32) #1

declare dso_local i32 @tdsignal(%struct.thread*, i32) #1

declare dso_local i32 @PROC_UNLOCK(i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
