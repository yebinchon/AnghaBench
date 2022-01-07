; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_sock_inet128.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_sock_inet128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32, i32 }

@AUT_SOCKINET128 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_sock_inet128(%struct.sockaddr_in6* %0) #0 {
  %2 = alloca %struct.sockaddr_in6*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = call i32 @GET_TOKEN_AREA(i32* %5, i32* %6, i32 32)
  %8 = load i32*, i32** %4, align 8
  %9 = load i32, i32* @AUT_SOCKINET128, align 4
  %10 = call i32 @ADD_U_CHAR(i32* %8, i32 %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ADD_U_CHAR(i32* %11, i32 0)
  %13 = load i32*, i32** %4, align 8
  %14 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %15 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ADD_U_CHAR(i32* %13, i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @ADD_U_INT16(i32* %18, i32 %21)
  %23 = load i32*, i32** %4, align 8
  %24 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %2, align 8
  %25 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %24, i32 0, i32 0
  %26 = call i32 @ADD_MEM(i32* %23, i32* %25, i32 16)
  %27 = load i32*, i32** %3, align 8
  ret i32* %27
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

declare dso_local i32 @ADD_MEM(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
