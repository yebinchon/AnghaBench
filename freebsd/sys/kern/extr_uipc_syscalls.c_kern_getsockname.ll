; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_getsockname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_getsockname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.sockaddr = type { i32 }
%struct.socket = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.socket*, %struct.sockaddr**)* }
%struct.file = type { %struct.socket* }

@cap_getsockname_rights = common dso_local global i32 0, align 4
@M_SONAME = common dso_local global i32 0, align 4
@KTR_STRUCT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_getsockname(%struct.thread* %0, i32 %1, %struct.sockaddr** %2, i64* %3) #0 {
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
  %18 = call i32 @getsock_cap(%struct.thread* %16, i32 %17, i32* @cap_getsockname_rights, %struct.file** %11, i32* null, i32* null)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %13, align 4
  store i32 %22, i32* %5, align 4
  br label %80

23:                                               ; preds = %4
  %24 = load %struct.file*, %struct.file** %11, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.socket*, %struct.socket** %25, align 8
  store %struct.socket* %26, %struct.socket** %10, align 8
  %27 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %27, align 8
  %28 = load %struct.socket*, %struct.socket** %10, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @CURVNET_SET(i32 %30)
  %32 = load %struct.socket*, %struct.socket** %10, align 8
  %33 = getelementptr inbounds %struct.socket, %struct.socket* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32 (%struct.socket*, %struct.sockaddr**)*, i32 (%struct.socket*, %struct.sockaddr**)** %37, align 8
  %39 = load %struct.socket*, %struct.socket** %10, align 8
  %40 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %41 = call i32 %38(%struct.socket* %39, %struct.sockaddr** %40)
  store i32 %41, i32* %13, align 4
  %42 = call i32 (...) @CURVNET_RESTORE()
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %23
  br label %62

46:                                               ; preds = %23
  %47 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %48 = load %struct.sockaddr*, %struct.sockaddr** %47, align 8
  %49 = icmp eq %struct.sockaddr* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i64 0, i64* %12, align 8
  br label %59

51:                                               ; preds = %46
  %52 = load i64*, i64** %9, align 8
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %55 = load %struct.sockaddr*, %struct.sockaddr** %54, align 8
  %56 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @MIN(i64 %53, i32 %57)
  store i64 %58, i64* %12, align 8
  br label %59

59:                                               ; preds = %51, %50
  %60 = load i64, i64* %12, align 8
  %61 = load i64*, i64** %9, align 8
  store i64 %60, i64* %61, align 8
  br label %62

62:                                               ; preds = %59, %45
  %63 = load %struct.file*, %struct.file** %11, align 8
  %64 = load %struct.thread*, %struct.thread** %6, align 8
  %65 = call i32 @fdrop(%struct.file* %63, %struct.thread* %64)
  %66 = load i32, i32* %13, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %62
  %69 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %70 = load %struct.sockaddr*, %struct.sockaddr** %69, align 8
  %71 = icmp ne %struct.sockaddr* %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  %74 = load %struct.sockaddr*, %struct.sockaddr** %73, align 8
  %75 = load i32, i32* @M_SONAME, align 4
  %76 = call i32 @free(%struct.sockaddr* %74, i32 %75)
  %77 = load %struct.sockaddr**, %struct.sockaddr*** %8, align 8
  store %struct.sockaddr* null, %struct.sockaddr** %77, align 8
  br label %78

78:                                               ; preds = %72, %68, %62
  %79 = load i32, i32* %13, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %78, %21
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @CURVNET_SET(i32) #1

declare dso_local i32 @CURVNET_RESTORE(...) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @free(%struct.sockaddr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
