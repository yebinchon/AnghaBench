; ModuleID = '/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_get_rpc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/nlm/extr_nlm_prot_impl.c_nlm_host_get_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_host = type { i32, i32, i32, %struct.nlm_rpc, %struct.nlm_rpc }
%struct.nlm_rpc = type { i64, i32* }
%struct.sockaddr = type { i32 }

@time_uptime = common dso_local global i64 0, align 8
@NLM_PROG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @nlm_host_get_rpc(%struct.nlm_host* %0, i64 %1) #0 {
  %3 = alloca %struct.nlm_host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nlm_rpc*, align 8
  %6 = alloca i32*, align 8
  store %struct.nlm_host* %0, %struct.nlm_host** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %8 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %7, i32 0, i32 0
  %9 = call i32 @mtx_lock(i32* %8)
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %14 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %13, i32 0, i32 4
  store %struct.nlm_rpc* %14, %struct.nlm_rpc** %5, align 8
  br label %18

15:                                               ; preds = %2
  %16 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %17 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %16, i32 0, i32 3
  store %struct.nlm_rpc* %17, %struct.nlm_rpc** %5, align 8
  br label %18

18:                                               ; preds = %15, %12
  %19 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %20 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %18
  %24 = load i64, i64* @time_uptime, align 8
  %25 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %26 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 120
  %29 = icmp sgt i64 %24, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %23
  %31 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %32 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %6, align 8
  %34 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %35 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %34, i32 0, i32 1
  store i32* null, i32** %35, align 8
  %36 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %37 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %36, i32 0, i32 0
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @CLNT_RELEASE(i32* %39)
  %41 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %42 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %41, i32 0, i32 0
  %43 = call i32 @mtx_lock(i32* %42)
  br label %44

44:                                               ; preds = %30, %23, %18
  %45 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %46 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %89, label %49

49:                                               ; preds = %44
  %50 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %51 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %50, i32 0, i32 0
  %52 = call i32 @mtx_unlock(i32* %51)
  %53 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %54 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %53, i32 0, i32 2
  %55 = bitcast i32* %54 to %struct.sockaddr*
  %56 = load i32, i32* @NLM_PROG, align 4
  %57 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %58 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32* @nlm_get_rpc(%struct.sockaddr* %55, i32 %56, i32 %59)
  store i32* %60, i32** %6, align 8
  %61 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %62 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %61, i32 0, i32 0
  %63 = call i32 @mtx_lock(i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %88

66:                                               ; preds = %49
  %67 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %68 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %80

71:                                               ; preds = %66
  %72 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %73 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %72, i32 0, i32 0
  %74 = call i32 @mtx_unlock(i32* %73)
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @CLNT_DESTROY(i32* %75)
  %77 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %78 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %77, i32 0, i32 0
  %79 = call i32 @mtx_lock(i32* %78)
  br label %87

80:                                               ; preds = %66
  %81 = load i32*, i32** %6, align 8
  %82 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %83 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %82, i32 0, i32 1
  store i32* %81, i32** %83, align 8
  %84 = load i64, i64* @time_uptime, align 8
  %85 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %86 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %87

87:                                               ; preds = %80, %71
  br label %88

88:                                               ; preds = %87, %49
  br label %89

89:                                               ; preds = %88, %44
  %90 = load %struct.nlm_rpc*, %struct.nlm_rpc** %5, align 8
  %91 = getelementptr inbounds %struct.nlm_rpc, %struct.nlm_rpc* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %6, align 8
  %93 = load i32*, i32** %6, align 8
  %94 = icmp ne i32* %93, null
  br i1 %94, label %95, label %98

95:                                               ; preds = %89
  %96 = load i32*, i32** %6, align 8
  %97 = call i32 @CLNT_ACQUIRE(i32* %96)
  br label %98

98:                                               ; preds = %95, %89
  %99 = load %struct.nlm_host*, %struct.nlm_host** %3, align 8
  %100 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %99, i32 0, i32 0
  %101 = call i32 @mtx_unlock(i32* %100)
  %102 = load i32*, i32** %6, align 8
  ret i32* %102
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @CLNT_RELEASE(i32*) #1

declare dso_local i32* @nlm_get_rpc(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @CLNT_DESTROY(i32*) #1

declare dso_local i32 @CLNT_ACQUIRE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
