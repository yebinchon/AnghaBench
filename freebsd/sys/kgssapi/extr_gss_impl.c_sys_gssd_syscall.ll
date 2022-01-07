; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_impl.c_sys_gssd_syscall.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kgssapi/extr_gss_impl.c_sys_gssd_syscall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.gssd_syscall_args = type { i32 }
%struct.sockaddr_un = type { i32, i32, i32 }
%struct.netconfig = type { i32 }
%struct.sockaddr = type { i32 }

@MAXPATHLEN = common dso_local global i32 0, align 4
@PRIV_NFS_DAEMON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AF_LOCAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"local\00", align 1
@GSSD = common dso_local global i32 0, align 4
@GSSDVERS = common dso_local global i32 0, align 4
@RPC_MAXDATASIZE = common dso_local global i32 0, align 4
@CLSET_RETRIES = common dso_local global i32 0, align 4
@kgss_gssd_lock = common dso_local global i32 0, align 4
@kgss_gssd_handle = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_gssd_syscall(%struct.thread* %0, %struct.gssd_syscall_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.thread*, align 8
  %5 = alloca %struct.gssd_syscall_args*, align 8
  %6 = alloca %struct.sockaddr_un, align 4
  %7 = alloca %struct.netconfig*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %4, align 8
  store %struct.gssd_syscall_args* %1, %struct.gssd_syscall_args** %5, align 8
  %15 = load i32, i32* @MAXPATHLEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %8, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %9, align 8
  %19 = load %struct.thread*, %struct.thread** %4, align 8
  %20 = load i32, i32* @PRIV_NFS_DAEMON, align 4
  %21 = call i32 @priv_check(%struct.thread* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %85

26:                                               ; preds = %2
  %27 = load %struct.gssd_syscall_args*, %struct.gssd_syscall_args** %5, align 8
  %28 = getelementptr inbounds %struct.gssd_syscall_args, %struct.gssd_syscall_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = trunc i64 %16 to i32
  %31 = call i32 @copyinstr(i32 %29, i8* %18, i32 %30, i32* null)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %85

36:                                               ; preds = %26
  %37 = call i32 @strlen(i8* %18)
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = icmp ugt i64 %39, 4
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %85

43:                                               ; preds = %36
  %44 = getelementptr inbounds i8, i8* %18, i64 0
  %45 = load i8, i8* %44, align 16
  %46 = sext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %71

48:                                               ; preds = %43
  %49 = load i32, i32* @AF_LOCAL, align 4
  %50 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 2
  store i32 %49, i32* %50, align 4
  %51 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strlcpy(i32 %52, i8* %18, i32 4)
  %54 = call i32 @SUN_LEN(%struct.sockaddr_un* %6)
  %55 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %6, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = call %struct.netconfig* @getnetconfigent(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.netconfig* %56, %struct.netconfig** %7, align 8
  %57 = load %struct.netconfig*, %struct.netconfig** %7, align 8
  %58 = bitcast %struct.sockaddr_un* %6 to %struct.sockaddr*
  %59 = load i32, i32* @GSSD, align 4
  %60 = load i32, i32* @GSSDVERS, align 4
  %61 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %62 = load i32, i32* @RPC_MAXDATASIZE, align 4
  %63 = call i32* @clnt_reconnect_create(%struct.netconfig* %57, %struct.sockaddr* %58, i32 %59, i32 %60, i32 %61, i32 %62)
  store i32* %63, i32** %11, align 8
  %64 = load i32*, i32** %11, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %48
  store i32 5, i32* %14, align 4
  %67 = load i32*, i32** %11, align 8
  %68 = load i32, i32* @CLSET_RETRIES, align 4
  %69 = call i32 @CLNT_CONTROL(i32* %67, i32 %68, i32* %14)
  br label %70

70:                                               ; preds = %66, %48
  br label %72

71:                                               ; preds = %43
  store i32* null, i32** %11, align 8
  br label %72

72:                                               ; preds = %71, %70
  %73 = call i32 @mtx_lock(i32* @kgss_gssd_lock)
  %74 = load i32*, i32** @kgss_gssd_handle, align 8
  store i32* %74, i32** %12, align 8
  %75 = load i32*, i32** %11, align 8
  store i32* %75, i32** @kgss_gssd_handle, align 8
  %76 = call i32 @mtx_unlock(i32* @kgss_gssd_lock)
  %77 = load i32*, i32** %12, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @CLNT_CLOSE(i32* %80)
  %82 = load i32*, i32** %12, align 8
  %83 = call i32 @CLNT_RELEASE(i32* %82)
  br label %84

84:                                               ; preds = %79, %72
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %41, %34, %24
  %86 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %86)
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i32*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @SUN_LEN(%struct.sockaddr_un*) #2

declare dso_local %struct.netconfig* @getnetconfigent(i8*) #2

declare dso_local i32* @clnt_reconnect_create(%struct.netconfig*, %struct.sockaddr*, i32, i32, i32, i32) #2

declare dso_local i32 @CLNT_CONTROL(i32*, i32, i32*) #2

declare dso_local i32 @mtx_lock(i32*) #2

declare dso_local i32 @mtx_unlock(i32*) #2

declare dso_local i32 @CLNT_CLOSE(i32*) #2

declare dso_local i32 @CLNT_RELEASE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
