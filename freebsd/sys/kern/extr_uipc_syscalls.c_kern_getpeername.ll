; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_getpeername.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_getpeername.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sockaddr = type { i32 }
%struct.socket = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.file = type { %struct.socket* }

@cap_getpeername_rights = common dso_local global i32 0, align 4
@SS_ISCONNECTED = common dso_local global i32 0, align 4
@SS_ISCONFIRMING = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@KTR_STRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_getpeername(%struct.thread* %0, i32 %1, %struct.sockaddr** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.file*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.sockaddr** %2, %struct.sockaddr*** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @AUDIT_ARG_FD(i32 %14)
  %16 = load %struct.thread*, %struct.thread** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @getsock_cap(%struct.thread* %16, i32 %17, i32* @cap_getpeername_rights, %struct.file** %11, i32* null, i32* null)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %92

23:                                               ; preds = %4
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.socket*, %struct.socket** %25, align 8
  store %struct.socket* %26, %struct.socket** %10, align 8
  %27 = load %struct.socket*, %struct.socket** %10, align 8
  %28 = getelementptr inbounds %struct.socket, %struct.socket* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @SS_ISCONNECTED, align 4
  %31 = load i32, i32* @SS_ISCONFIRMING, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %23
  %36 = load i32, i32* @ENOTCONN, align 4
  store i32 %36, i32* %13, align 4
  br label %87

37:                                               ; preds = %23
  %38 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %38, align 8
  %39 = load %struct.socket*, %struct.socket** %10, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @CURVNET_SET(i32 %41)
  %43 = load %struct.socket*, %struct.socket** %10, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 1
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %48, align 8
  %50 = load %struct.socket*, %struct.socket** %10, align 8
  %51 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %52 = call i32 %49(%struct.socket* %50, %struct.sockaddr** %51)
  store i32 %52, i32* %13, align 4
  %53 = call i32 (...) @CURVNET_RESTORE()
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %37
  br label %73

57:                                               ; preds = %37
  %58 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %59 = load %struct.sockaddr*, %struct.sockaddr** %58, align 8
  %60 = icmp eq %struct.sockaddr* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i64 0, i64* %12, align 8
  br label %70

62:                                               ; preds = %57
  %63 = load i64*, i64** %9, align 8
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %66 = load %struct.sockaddr*, %struct.sockaddr** %65, align 8
  %67 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @MIN(i64 %64, i32 %68)
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %62, %61
  %71 = load i64, i64* %12, align 8
  %72 = load i64*, i64** %9, align 8
  store i64 %71, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %56
  %74 = load i32, i32* %13, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %73
  %77 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %78 = load %struct.sockaddr*, %struct.sockaddr** %77, align 8
  %79 = icmp ne %struct.sockaddr* %78, null
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %82 = load %struct.sockaddr*, %struct.sockaddr** %81, align 8
  %83 = load i32, i32* @M_SONAME, align 4
  %84 = call i32 @free(%struct.sockaddr* %82, i32 %83)
  %85 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %85, align 8
  br label %86

86:                                               ; preds = %80, %76, %73
  br label %87

87:                                               ; preds = %86, %35
  %88 = load %struct.file*, %struct.file** %11, align 8
  %89 = load %struct.thread*, %struct.thread** %6, align 8
  %90 = call i32 @fdrop(%struct.file* %88, %struct.thread* %89)
  %91 = load i32, i32* %13, align 4
  store i32 %91, i32* %5, align 4
  br label %92

92:                                               ; preds = %87, %21
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
