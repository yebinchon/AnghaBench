; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_sock_unix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_sock_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_un = type { i32, i32 }

@AUT_SOCKUNIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_sock_unix(%struct.sockaddr_un* %0) #0 {
  %2 = alloca %struct.sockaddr_un*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  store %struct.sockaddr_un* %0, %struct.sockaddr_un** %2, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32*, i32** %4, align 8
  %7 = load %struct.sockaddr_un*, %struct.sockaddr_un** %2, align 8
  %8 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @strlen(i32 %9)
  %11 = add i64 12, %10
  %12 = add i64 %11, 1
  %13 = call i32 @GET_TOKEN_AREA(i32* %5, i32* %6, i64 %12)
  %14 = load i32*, i32** %4, align 8
  %15 = load i32, i32* @AUT_SOCKUNIX, align 4
  %16 = call i32 @ADD_U_CHAR(i32* %14, i32 %15)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @ADD_U_CHAR(i32* %17, i32 0)
  %19 = load i32*, i32** %4, align 8
  %20 = load %struct.sockaddr_un*, %struct.sockaddr_un** %2, align 8
  %21 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ADD_U_CHAR(i32* %19, i32 %22)
  %24 = load i32*, i32** %4, align 8
  %25 = load %struct.sockaddr_un*, %struct.sockaddr_un** %2, align 8
  %26 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sockaddr_un*, %struct.sockaddr_un** %2, align 8
  %29 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @strlen(i32 %30)
  %32 = add nsw i64 %31, 1
  %33 = call i32 @ADD_STRING(i32* %24, i32 %27, i64 %32)
  %34 = load i32*, i32** %3, align 8
  ret i32* %34
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i64) #1

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_STRING(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
