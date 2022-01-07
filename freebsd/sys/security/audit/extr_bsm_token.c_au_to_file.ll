; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/audit/extr_bsm_token.c_au_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@AUT_OTHER_FILE32 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @au_to_file(i8* %0, i64 %1) #0 {
  %3 = alloca %struct.timeval, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.timeval* %3 to i64*
  store i64 %1, i64* %9, align 4
  store i8* %0, i8** %4, align 8
  store i32* null, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = call i64 @strlen(i8* %10)
  store i64 %11, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add nsw i64 %12, 1
  store i64 %13, i64* %7, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = add i64 20, %16
  %18 = call i32 @GET_TOKEN_AREA(i32* %14, i32* %15, i64 %17)
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %8, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* @AUT_OTHER_FILE32, align 4
  %24 = call i32 @ADD_U_CHAR(i32* %22, i32 %23)
  %25 = load i32*, i32** %6, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ADD_U_INT32(i32* %25, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @ADD_U_INT32(i32* %29, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = call i32 @ADD_U_INT16(i32* %32, i64 %33)
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %4, align 8
  %37 = load i64, i64* %7, align 8
  %38 = call i32 @ADD_STRING(i32* %35, i8* %36, i64 %37)
  %39 = load i32*, i32** %5, align 8
  ret i32* %39
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @GET_TOKEN_AREA(i32*, i32*, i64) #1

declare dso_local i32 @ADD_U_CHAR(i32*, i32) #1

declare dso_local i32 @ADD_U_INT32(i32*, i32) #1

declare dso_local i32 @ADD_U_INT16(i32*, i64) #1

declare dso_local i32 @ADD_STRING(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
