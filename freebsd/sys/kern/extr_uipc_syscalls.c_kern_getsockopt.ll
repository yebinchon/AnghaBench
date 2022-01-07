; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_getsockopt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_syscalls.c_kern_getsockopt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.socket = type { i32 }
%struct.file = type { %struct.socket* }
%struct.sockopt = type { i32, i32, i64, %struct.thread*, i8*, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SOPT_GET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"kern_getsockopt called with bad valseg\00", align 1
@cap_getsockopt_rights = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_getsockopt(%struct.thread* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i64* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64*, align 8
  %16 = alloca %struct.socket*, align 8
  %17 = alloca %struct.file*, align 8
  %18 = alloca %struct.sockopt, align 8
  %19 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i64* %6, i64** %15, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp eq i8* %20, null
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  %23 = load i64*, i64** %15, align 8
  store i64 0, i64* %23, align 8
  br label %24

24:                                               ; preds = %22, %7
  %25 = load i64*, i64** %15, align 8
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %8, align 4
  br label %73

31:                                               ; preds = %24
  %32 = load i32, i32* @SOPT_GET, align 4
  %33 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 5
  store i32 %32, i32* %33, align 8
  %34 = load i32, i32* %11, align 4
  %35 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 0
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %12, align 4
  %37 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 1
  store i32 %36, i32* %37, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 4
  store i8* %38, i8** %39, align 8
  %40 = load i64*, i64** %15, align 8
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 2
  store i64 %41, i64* %42, align 8
  %43 = load i32, i32* %14, align 4
  switch i32 %43, label %49 [
    i32 128, label %44
    i32 129, label %47
  ]

44:                                               ; preds = %31
  %45 = load %struct.thread*, %struct.thread** %9, align 8
  %46 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 3
  store %struct.thread* %45, %struct.thread** %46, align 8
  br label %51

47:                                               ; preds = %31
  %48 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 3
  store %struct.thread* null, %struct.thread** %48, align 8
  br label %51

49:                                               ; preds = %31
  %50 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %47, %44
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @AUDIT_ARG_FD(i32 %52)
  %54 = load %struct.thread*, %struct.thread** %9, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @getsock_cap(%struct.thread* %54, i32 %55, i32* @cap_getsockopt_rights, %struct.file** %17, i32* null, i32* null)
  store i32 %56, i32* %19, align 4
  %57 = load i32, i32* %19, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %51
  %60 = load %struct.file*, %struct.file** %17, align 8
  %61 = getelementptr inbounds %struct.file, %struct.file* %60, i32 0, i32 0
  %62 = load %struct.socket*, %struct.socket** %61, align 8
  store %struct.socket* %62, %struct.socket** %16, align 8
  %63 = load %struct.socket*, %struct.socket** %16, align 8
  %64 = call i32 @sogetopt(%struct.socket* %63, %struct.sockopt* %18)
  store i32 %64, i32* %19, align 4
  %65 = getelementptr inbounds %struct.sockopt, %struct.sockopt* %18, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %15, align 8
  store i64 %66, i64* %67, align 8
  %68 = load %struct.file*, %struct.file** %17, align 8
  %69 = load %struct.thread*, %struct.thread** %9, align 8
  %70 = call i32 @fdrop(%struct.file* %68, %struct.thread* %69)
  br label %71

71:                                               ; preds = %59, %51
  %72 = load i32, i32* %19, align 4
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %71, %29
  %74 = load i32, i32* %8, align 4
  ret i32 %74
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @getsock_cap(%struct.thread*, i32, i32*, %struct.file**, i32*, i32*) #1

declare dso_local i32 @sogetopt(%struct.socket*, %struct.sockopt*) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
