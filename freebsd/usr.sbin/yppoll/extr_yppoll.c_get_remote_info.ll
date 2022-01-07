; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/yppoll/extr_yppoll.c_get_remote_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/yppoll/extr_yppoll.c_get_remote_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ypresp_order = type { i32, i32, i32 }
%struct.ypresp_master = type { i32, i32, i32 }
%struct.ypreq_nokey = type { i8*, i8* }
%struct.timeval = type { i32, i64 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.hostent = type { i64 }

@AF_INET = common dso_local global i32 0, align 4
@RPC_ANYSOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"unknown host %s.\00", align 1
@YPPROG = common dso_local global i32 0, align 4
@YPVERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"clntudp_create: no contact with host %s.\00", align 1
@YPPROC_ORDER = common dso_local global i32 0, align 4
@xdr_ypreq_nokey = common dso_local global i64 0, align 8
@xdr_ypresp_order = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"yp_order: clnt_call\00", align 1
@YPPROC_MASTER = common dso_local global i32 0, align 4
@xdr_ypresp_master = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"yp_master: clnt_call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8**)* @get_remote_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_remote_info(i8* %0, i8* %1, i8* %2, i32* %3, i8** %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.ypresp_order, align 4
  %12 = alloca %struct.ypresp_master, align 4
  %13 = alloca %struct.ypreq_nokey, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.sockaddr_in, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.hostent*, align 8
  %19 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  store i8** %4, i8*** %10, align 8
  %20 = bitcast %struct.sockaddr_in* %15 to i8*
  %21 = call i32 @bzero(i8* %20, i32 12)
  %22 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 0
  store i32 12, i32* %22, align 4
  %23 = load i32, i32* @AF_INET, align 4
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 2
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %25, i32* %16, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call %struct.hostent* @gethostbyname(i8* %26)
  store %struct.hostent* %27, %struct.hostent** %18, align 8
  %28 = load %struct.hostent*, %struct.hostent** %18, align 8
  %29 = icmp eq %struct.hostent* %28, null
  br i1 %29, label %30, label %39

30:                                               ; preds = %5
  %31 = load i8*, i8** %8, align 8
  %32 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 1
  %33 = call i64 @inet_aton(i8* %31, %struct.TYPE_2__* %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i8*, i8** %8, align 8
  %37 = call i32 @errx(i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %36)
  br label %38

38:                                               ; preds = %35, %30
  br label %47

39:                                               ; preds = %5
  %40 = load %struct.hostent*, %struct.hostent** %18, align 8
  %41 = getelementptr inbounds %struct.hostent, %struct.hostent* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %15, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %38
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  store i32 10, i32* %48, align 8
  %49 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load i32, i32* @YPPROG, align 4
  %51 = load i32, i32* @YPVERS, align 4
  %52 = bitcast %struct.timeval* %14 to { i32, i64 }*
  %53 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %52, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32* @clntudp_create(%struct.sockaddr_in* %15, i32 %50, i32 %51, i32 %54, i64 %56, i32* %16)
  store i32* %57, i32** %17, align 8
  %58 = load i32*, i32** %17, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %47
  %61 = load i8*, i8** %8, align 8
  %62 = call i32 @errx(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %60, %47
  %64 = load i8*, i8** %6, align 8
  %65 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %13, i32 0, i32 0
  store i8* %64, i8** %65, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = getelementptr inbounds %struct.ypreq_nokey, %struct.ypreq_nokey* %13, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = bitcast %struct.ypresp_order* %11 to i8*
  %69 = call i32 @bzero(i8* %68, i32 12)
  %70 = load i32*, i32** %17, align 8
  %71 = load i32, i32* @YPPROC_ORDER, align 4
  %72 = load i64, i64* @xdr_ypreq_nokey, align 8
  %73 = trunc i64 %72 to i32
  %74 = load i64, i64* @xdr_ypresp_order, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @clnt_call(i32* %70, i32 %71, i32 %73, %struct.ypreq_nokey* %13, i32 %75, %struct.ypresp_order* %11, %struct.timeval* byval(%struct.timeval) align 8 %14)
  store i32 %76, i32* %19, align 4
  %77 = load i32, i32* %19, align 4
  %78 = load i32, i32* @RPC_SUCCESS, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %63
  %81 = load i32*, i32** %17, align 8
  %82 = call i32 @clnt_perror(i32* %81, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %63
  %84 = getelementptr inbounds %struct.ypresp_order, %struct.ypresp_order* %11, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %9, align 8
  store i32 %85, i32* %86, align 4
  %87 = load i64, i64* @xdr_ypresp_order, align 8
  %88 = trunc i64 %87 to i32
  %89 = bitcast %struct.ypresp_order* %11 to i8*
  %90 = call i32 @xdr_free(i32 %88, i8* %89)
  %91 = getelementptr inbounds %struct.ypresp_order, %struct.ypresp_order* %11, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @ypprot_err(i32 %92)
  store i32 %93, i32* %19, align 4
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* @RPC_SUCCESS, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %131

97:                                               ; preds = %83
  %98 = bitcast %struct.ypresp_master* %12 to i8*
  %99 = call i32 @bzero(i8* %98, i32 12)
  %100 = load i32*, i32** %17, align 8
  %101 = load i32, i32* @YPPROC_MASTER, align 4
  %102 = load i64, i64* @xdr_ypreq_nokey, align 8
  %103 = trunc i64 %102 to i32
  %104 = load i64, i64* @xdr_ypresp_master, align 8
  %105 = trunc i64 %104 to i32
  %106 = bitcast %struct.ypresp_master* %12 to %struct.ypresp_order*
  %107 = call i32 @clnt_call(i32* %100, i32 %101, i32 %103, %struct.ypreq_nokey* %13, i32 %105, %struct.ypresp_order* %106, %struct.timeval* byval(%struct.timeval) align 8 %14)
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* %19, align 4
  %109 = load i32, i32* @RPC_SUCCESS, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %97
  %112 = load i32*, i32** %17, align 8
  %113 = call i32 @clnt_perror(i32* %112, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %114

114:                                              ; preds = %111, %97
  %115 = getelementptr inbounds %struct.ypresp_master, %struct.ypresp_master* %12, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @ypprot_err(i32 %116)
  store i32 %117, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %114
  %121 = getelementptr inbounds %struct.ypresp_master, %struct.ypresp_master* %12, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @strdup(i32 %122)
  %124 = inttoptr i64 %123 to i8*
  %125 = load i8**, i8*** %10, align 8
  store i8* %124, i8** %125, align 8
  br label %126

126:                                              ; preds = %120, %114
  %127 = load i64, i64* @xdr_ypresp_master, align 8
  %128 = trunc i64 %127 to i32
  %129 = bitcast %struct.ypresp_master* %12 to i8*
  %130 = call i32 @xdr_free(i32 %128, i8* %129)
  br label %131

131:                                              ; preds = %126, %83
  %132 = load i32*, i32** %17, align 8
  %133 = call i32 @clnt_destroy(i32* %132)
  %134 = load i32, i32* %19, align 4
  ret i32 %134
}

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local %struct.hostent* @gethostbyname(i8*) #1

declare dso_local i64 @inet_aton(i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @errx(i32, i8*, i8*) #1

declare dso_local i32* @clntudp_create(%struct.sockaddr_in*, i32, i32, i32, i64, i32*) #1

declare dso_local i32 @clnt_call(i32*, i32, i32, %struct.ypreq_nokey*, i32, %struct.ypresp_order*, %struct.timeval* byval(%struct.timeval) align 8) #1

declare dso_local i32 @clnt_perror(i32*, i8*) #1

declare dso_local i32 @xdr_free(i32, i8*) #1

declare dso_local i32 @ypprot_err(i32) #1

declare dso_local i64 @strdup(i32) #1

declare dso_local i32 @clnt_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
