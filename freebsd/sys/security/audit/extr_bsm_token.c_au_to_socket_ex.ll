; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_socket_ex.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_socket_ex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr_in6 = type { i32, i32 }

@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@AUT_SOCKET_EX = common dso_local global i32 0, align 4
@AU_IPv4 = common dso_local global i32 0, align 4
@AU_IPv6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_socket_ex(i64 %0, i64 %1, %struct.sockaddr* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.sockaddr_in*, align 8
  %13 = alloca %struct.sockaddr_in6*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i32* null, i32** %11, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @AF_INET, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = call i32 @GET_TOKEN_AREA(i32* %18, i32* %19, i32 32)
  br label %31

21:                                               ; preds = %4
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @AF_INET6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @GET_TOKEN_AREA(i32* %26, i32* %27, i32 56)
  br label %30

29:                                               ; preds = %21
  store i32* null, i32** %5, align 8
  br label %98

30:                                               ; preds = %25
  br label %31

31:                                               ; preds = %30, %17
  %32 = load i32*, i32** %11, align 8
  %33 = load i32, i32* @AUT_SOCKET_EX, align 4
  %34 = call i32 @ADD_U_CHAR(i32* %32, i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @au_domain_to_bsm(i64 %36)
  %38 = call i32 @ADD_U_INT16(i32* %35, i32 %37)
  %39 = load i32*, i32** %11, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @au_socket_type_to_bsm(i64 %40)
  %42 = call i32 @ADD_U_INT16(i32* %39, i32 %41)
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @AF_INET, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %72

46:                                               ; preds = %31
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* @AU_IPv4, align 4
  %49 = call i32 @ADD_U_INT16(i32* %47, i32 %48)
  %50 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %51 = bitcast %struct.sockaddr* %50 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %51, %struct.sockaddr_in** %12, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %54 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %53, i32 0, i32 1
  %55 = call i32 @ADD_MEM(i32* %52, i32* %54, i32 4)
  %56 = load i32*, i32** %11, align 8
  %57 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = call i32 @ADD_MEM(i32* %56, i32* %59, i32 4)
  %61 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %62 = bitcast %struct.sockaddr* %61 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %62, %struct.sockaddr_in** %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %65 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %64, i32 0, i32 1
  %66 = call i32 @ADD_MEM(i32* %63, i32* %65, i32 4)
  %67 = load i32*, i32** %11, align 8
  %68 = load %struct.sockaddr_in*, %struct.sockaddr_in** %12, align 8
  %69 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = call i32 @ADD_MEM(i32* %67, i32* %70, i32 4)
  br label %96

72:                                               ; preds = %31
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* @AU_IPv6, align 4
  %75 = call i32 @ADD_U_INT16(i32* %73, i32 %74)
  %76 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %77 = bitcast %struct.sockaddr* %76 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %77, %struct.sockaddr_in6** %13, align 8
  %78 = load i32*, i32** %11, align 8
  %79 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %80 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %79, i32 0, i32 1
  %81 = call i32 @ADD_MEM(i32* %78, i32* %80, i32 4)
  %82 = load i32*, i32** %11, align 8
  %83 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %84 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %83, i32 0, i32 0
  %85 = call i32 @ADD_MEM(i32* %82, i32* %84, i32 16)
  %86 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %87 = bitcast %struct.sockaddr* %86 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %87, %struct.sockaddr_in6** %13, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %90 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %89, i32 0, i32 1
  %91 = call i32 @ADD_MEM(i32* %88, i32* %90, i32 4)
  %92 = load i32*, i32** %11, align 8
  %93 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %13, align 8
  %94 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %93, i32 0, i32 0
  %95 = call i32 @ADD_MEM(i32* %92, i32* %94, i32 16)
  br label %96

96:                                               ; preds = %72, %46
  %97 = load i32*, i32** %10, align 8
  store i32* %97, i32** %5, align 8
  br label %98

98:                                               ; preds = %96, %29
  %99 = load i32*, i32** %5, align 8
  ret i32* %99
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

declare dso_local i32 @au_domain_to_bsm(i64) #1

declare dso_local i32 @au_socket_type_to_bsm(i64) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
