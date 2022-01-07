; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_conn_handoff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iscsi/extr_icl_soft.c_icl_soft_conn_handoff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.icl_conn = type { %struct.socket* }
%struct.socket = type { i64 }
%struct.file = type { i64, %struct.socket*, i32* }

@curthread = common dso_local global i32 0, align 4
@CAP_SOCK_CLIENT = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@badfileops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @icl_soft_conn_handoff(%struct.icl_conn* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.icl_conn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.icl_conn* %0, %struct.icl_conn** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %11 = call i32 @ICL_CONN_LOCK_ASSERT_NOT(%struct.icl_conn* %10)
  %12 = load i32, i32* @curthread, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @CAP_SOCK_CLIENT, align 4
  %15 = call i32 @cap_rights_init(i32* %8, i32 %14)
  %16 = call i32 @fget(i32 %12, i32 %13, i32 %15, %struct.file** %6)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %2
  %22 = load %struct.file*, %struct.file** %6, align 8
  %23 = getelementptr inbounds %struct.file, %struct.file* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @DTYPE_SOCKET, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.file*, %struct.file** %6, align 8
  %29 = load i32, i32* @curthread, align 4
  %30 = call i32 @fdrop(%struct.file* %28, i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %3, align 4
  br label %78

32:                                               ; preds = %21
  %33 = load %struct.file*, %struct.file** %6, align 8
  %34 = getelementptr inbounds %struct.file, %struct.file* %33, i32 0, i32 1
  %35 = load %struct.socket*, %struct.socket** %34, align 8
  store %struct.socket* %35, %struct.socket** %7, align 8
  %36 = load %struct.socket*, %struct.socket** %7, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SOCK_STREAM, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %32
  %42 = load %struct.file*, %struct.file** %6, align 8
  %43 = load i32, i32* @curthread, align 4
  %44 = call i32 @fdrop(%struct.file* %42, i32 %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %3, align 4
  br label %78

46:                                               ; preds = %32
  %47 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %48 = call i32 @ICL_CONN_LOCK(%struct.icl_conn* %47)
  %49 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %50 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %49, i32 0, i32 0
  %51 = load %struct.socket*, %struct.socket** %50, align 8
  %52 = icmp ne %struct.socket* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %46
  %54 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %55 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %54)
  %56 = load %struct.file*, %struct.file** %6, align 8
  %57 = load i32, i32* @curthread, align 4
  %58 = call i32 @fdrop(%struct.file* %56, i32 %57)
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %78

60:                                               ; preds = %46
  %61 = load %struct.file*, %struct.file** %6, align 8
  %62 = getelementptr inbounds %struct.file, %struct.file* %61, i32 0, i32 1
  %63 = load %struct.socket*, %struct.socket** %62, align 8
  %64 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %65 = getelementptr inbounds %struct.icl_conn, %struct.icl_conn* %64, i32 0, i32 0
  store %struct.socket* %63, %struct.socket** %65, align 8
  %66 = load %struct.file*, %struct.file** %6, align 8
  %67 = getelementptr inbounds %struct.file, %struct.file* %66, i32 0, i32 2
  store i32* @badfileops, i32** %67, align 8
  %68 = load %struct.file*, %struct.file** %6, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 1
  store %struct.socket* null, %struct.socket** %69, align 8
  %70 = load %struct.file*, %struct.file** %6, align 8
  %71 = load i32, i32* @curthread, align 4
  %72 = call i32 @fdrop(%struct.file* %70, i32 %71)
  %73 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %74 = call i32 @ICL_CONN_UNLOCK(%struct.icl_conn* %73)
  %75 = load %struct.icl_conn*, %struct.icl_conn** %4, align 8
  %76 = call i32 @icl_conn_start(%struct.icl_conn* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %60, %53, %41, %27, %19
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @ICL_CONN_LOCK_ASSERT_NOT(%struct.icl_conn*) #1

declare dso_local i32 @fget(i32, i32, i32, %struct.file**) #1

declare dso_local i32 @cap_rights_init(i32*, i32) #1

declare dso_local i32 @fdrop(%struct.file*, i32) #1

declare dso_local i32 @ICL_CONN_LOCK(%struct.icl_conn*) #1

declare dso_local i32 @ICL_CONN_UNLOCK(%struct.icl_conn*) #1

declare dso_local i32 @icl_conn_start(%struct.icl_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
