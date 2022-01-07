; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_header64_tm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_header64_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@AUT_HEADER64 = common dso_local global i32 0, align 4
@AUDIT_HEADER_VERSION_OPENBSM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_header64_tm(i32 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.timeval* %5 to i64*
  store i64 %3, i64* %12, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %13 = load i32*, i32** %9, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = call i32 @GET_TOKEN_AREA(i32* %13, i32* %14, i32 28)
  %16 = load i32*, i32** %10, align 8
  %17 = load i32, i32* @AUT_HEADER64, align 4
  %18 = call i32 @ADD_U_CHAR(i32* %16, i32 %17)
  %19 = load i32*, i32** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @ADD_U_INT32(i32* %19, i32 %20)
  %22 = load i32*, i32** %10, align 8
  %23 = load i32, i32* @AUDIT_HEADER_VERSION_OPENBSM, align 4
  %24 = call i32 @ADD_U_CHAR(i32* %22, i32 %23)
  %25 = load i32*, i32** %10, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ADD_U_INT16(i32* %25, i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @ADD_U_INT16(i32* %28, i32 %29)
  %31 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sdiv i32 %32, 1000
  store i32 %33, i32* %11, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ADD_U_INT64(i32* %34, i32 %36)
  %38 = load i32*, i32** %10, align 8
  %39 = load i32, i32* %11, align 4
  %40 = call i32 @ADD_U_INT64(i32* %38, i32 %39)
  %41 = load i32*, i32** %9, align 8
  ret i32* %41
}

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i32) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i32) #1

declare dso_local i32 @ADD_U_INT64(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
