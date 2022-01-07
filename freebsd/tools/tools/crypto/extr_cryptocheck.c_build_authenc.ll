; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_build_authenc.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/crypto/extr_cryptocheck.c_build_authenc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alg = type { i64, i8*, i32, i32, i32, i32 }

@build_authenc.authenc = internal global %struct.alg zeroinitializer, align 8
@T_BLKCIPHER = common dso_local global i64 0, align 8
@T_HMAC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s+%s\00", align 1
@T_AUTHENC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.alg* (%struct.alg*, %struct.alg*)* @build_authenc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.alg* @build_authenc(%struct.alg* %0, %struct.alg* %1) #0 {
  %3 = alloca %struct.alg*, align 8
  %4 = alloca %struct.alg*, align 8
  %5 = alloca i8*, align 8
  store %struct.alg* %0, %struct.alg** %3, align 8
  store %struct.alg* %1, %struct.alg** %4, align 8
  %6 = load %struct.alg*, %struct.alg** %3, align 8
  %7 = getelementptr inbounds %struct.alg, %struct.alg* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @T_BLKCIPHER, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.alg*, %struct.alg** %4, align 8
  %14 = getelementptr inbounds %struct.alg, %struct.alg* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @T_HMAC, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = call i32 @memset(%struct.alg* @build_authenc.authenc, i32 0, i32 32)
  %21 = load %struct.alg*, %struct.alg** %3, align 8
  %22 = getelementptr inbounds %struct.alg, %struct.alg* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = load %struct.alg*, %struct.alg** %4, align 8
  %25 = getelementptr inbounds %struct.alg, %struct.alg* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @asprintf(i8** %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %23, i8* %26)
  %28 = load i8*, i8** %5, align 8
  store i8* %28, i8** getelementptr inbounds (%struct.alg, %struct.alg* @build_authenc.authenc, i32 0, i32 1), align 8
  %29 = load %struct.alg*, %struct.alg** %3, align 8
  %30 = getelementptr inbounds %struct.alg, %struct.alg* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* getelementptr inbounds (%struct.alg, %struct.alg* @build_authenc.authenc, i32 0, i32 5), align 4
  %32 = load %struct.alg*, %struct.alg** %4, align 8
  %33 = getelementptr inbounds %struct.alg, %struct.alg* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* getelementptr inbounds (%struct.alg, %struct.alg* @build_authenc.authenc, i32 0, i32 4), align 8
  %35 = load i64, i64* @T_AUTHENC, align 8
  store i64 %35, i64* getelementptr inbounds (%struct.alg, %struct.alg* @build_authenc.authenc, i32 0, i32 0), align 8
  %36 = load %struct.alg*, %struct.alg** %3, align 8
  %37 = getelementptr inbounds %struct.alg, %struct.alg* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.alg, %struct.alg* @build_authenc.authenc, i32 0, i32 3), align 4
  %39 = load %struct.alg*, %struct.alg** %4, align 8
  %40 = getelementptr inbounds %struct.alg, %struct.alg* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* getelementptr inbounds (%struct.alg, %struct.alg* @build_authenc.authenc, i32 0, i32 2), align 8
  ret %struct.alg* @build_authenc.authenc
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(%struct.alg*, i32, i32) #1

declare dso_local i32 @asprintf(i8**, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
